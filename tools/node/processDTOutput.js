const xlsx = require('node-xlsx')
const fs = require('fs')

const getRange = ( nums, offset ) => {
  let match = nums.match(/(\d+)-(\d+)/)
  let start, end
  if ( match ) {
    start = match[1]
    end = match[2]
  } else {
    start = nums
    end = nums
  }
  return [ parseInt(start)-offset, parseInt(end)-offset ]
}

var file, sheetname, rowoffset, rows, cols, prefix, dt;

[file, sheetname, rowoffset, rows, cols, prefix, dt] = process.argv.slice(2);
// output and guidance are expected to be +1 and +2 from the last column.  Even if blank, all columns should be listed.
rowoffset = parseInt(rowoffset)

const workbook = xlsx.parse( file )
let sheet = workbook.filter( (tab) => { return tab.name === sheetname } );
let sheetdisplay = sheetname.replace(/\s/,"")
sheet = sheet[0].data

let rs = getRange( rows, rowoffset )
let cs = getRange( cols, 0 )

let top = rs[0]

let table = sheet[top-2][cs[0]]
let dtmod = 0
if ( dt == "single" ) {
  table = sheet[top-5][cs[0]+1]
  dtmod = 1
  dt = ""
} else if ( dt == "CI" ) {
  table = sheet[top-1][cs[0]]
  dtmod = 2
}
let did = sheet[top-6+dtmod][cs[0]+1]
let rule = sheet[top-5+dtmod][cs[0]+1]
let trigger = sheet[top-4+dtmod][cs[0]+1]

let enclib = fs.createWriteStream("output/IMMZ"+prefix+sheetdisplay+dt+"Logic.fsh")
enclib.write(`
Instance: IMMZ${prefix}${sheetdisplay}${dt}Logic
InstanceOf: Library
Title: "IMMZ${prefix}${sheetdisplay}${dt}Logic"
Description: "This library defines decision support logic for the ${did} decision table in the Immunization CPG"
Usage: #definition

* insert LogicLibrary( IMMZ${prefix}${sheetdisplay}${dt}Logic )
`)
enclib.close()

let logic = fs.createWriteStream("output/IMMZ"+prefix+sheetdisplay+dt+"Logic.cql")

let draftCI = ""
if ( dt == "CI" ) {
  draftCI = `/*
  @dynamicValue: Draft Medication Request ID for ${sheetdisplay} dose
  */
  define "Draft Medication Request ID for ${sheetdisplay} dose":
    First(Encounter."Draft Medication Request for ${sheetdisplay} dose").id

`
}

logic.write(`
/*
 * Library: IMMZ${prefix}${sheetdisplay}${dt}Logic (${did})
 * Rule: ${rule}
 * Decision Table: ${table}
 * Trigger: ${trigger}
 */
library IMMZ${prefix}${sheetdisplay}${dt}Logic

using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1'

include IMMZ${prefix}${sheetdisplay}EncounterElements called Encounter

parameter Today Date default Today()

context Patient

${draftCI}
`)

let pdef = fs.createWriteStream("output/IMMZ"+prefix+sheetdisplay+dt+".fsh")

pdef.write(`
Instance: IMMZ${prefix}${sheetdisplay}${dt}
InstanceOf: http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-recommendationdefinition
Title: "${did}"
Description: """
${did}
${table}
"""
Usage: #definition

* insert PlanDefMain( IMMZ${prefix}${sheetdisplay}${dt}, 0.1.0 )

* insert PlanDefCommunicationRequestAction([[Check for Guidance for the patient regarding ${did}.]], [["""
    Show Guidance for the patient regarding ${did}.
  """]], Has Guidance, Guidance)
`)


let prevtitles = []
let outputs = {}

let yaml = fs.createWriteStream("output/examples.yaml")

for ( let r = rs[0]; r <= rs[1]; r++ ) {
  let expression = [];
  let testid = (r+rowoffset < 10 ? "0" : "" ) + (r+rowoffset) + "."
  let examples = []
  for( let c = cs[0]; c <= cs[1]; c++ ) {
    let content = []
    //if ( sheet[r] && sheet[r][c] && sheet[r][c] != '-' ) {
    if ( sheet[r] && sheet[r][c] && sheet[r][c].trim().length > 3 ) {
      content = sheet[r][c].split( "\n", 2 )
      prevtitles[c] = content[0].trim()
    }
    if ( !content[0] && !sheet[r][c] ) content[0] = prevtitles[c]
    if ( content[0] ) {
      testid += c
      expression.push( 'Encounter."' + content[0].trim() + '"' )
      examples.push( "#" + c + ". " + content[0] + ( content[1] ? "\n#   " + content[1] : "" ) )
    }
  }
  examples.push( "### " + sheet[r][cs[1]+1].split("\n").join("\n### ") )

  let exampletext = examples.join("\n")
  yaml.write(`---
${exampletext}
id: "${testid}"
birth: 
patient:
  fhir:
    gender: female
`)
if ( dt == "CI" ) {
  for( let c = cs[0]; c <= cs[1]; c++ ) {
    if ( sheet[r][c].length < 3 ) continue
    let ci = sheet[r][c].match(/.*"(.+)"$/)
    if ( !ci ) ci = sheet[r][c].match(/.*"(.+)"[^"]*$/)
    let ciid = ci[1].replace(/\W/g, '').toLowerCase()
    yaml.write(`contraindication:
    ${ciid}:
      code: DE
      display: "${ci[1]}"
      effectiveDateTime: -1d
`)
  }
  let mrname = sheetdisplay.toLowerCase()
  yaml.write(`medicationrequest:
  ${mrname}:
    medication:
      code: 
      system: "http://id.who.int/icd/release/11/mms"
      display: ""
    fhir:
      authoredOn: 0d
      status: draft
      intent: proposal
`)
}

  let content = sheet[r][1+cs[1]].split( "\n", 2 );
  if ( content[0].trim().length > 3 ) {
  if ( !content[1] ) content[1] = ""
    content[0] = content[0].trim()
    content[1] = content[1].trim()
    if ( !outputs[ content[0] ] ) outputs[ content[0] ] = []
    outputs[ content[0] ].push( { content, expression: expression.join("\n    and "), guidance: sheet[r][parseInt(cs[1])+2], 
      testid: testid, testidx: (r+rowoffset) } )
  }
}
yaml.close()

const displayGuidance = ( title, guidance, comment ) => {
  logic.write( "/*\n@output: " + title + " Guidance" + comment + "\n*/\ndefine \""+title+" Guidance\":\n")
  logic.write( "  " + guidance + "\n\n" )
}

const displayOutput = ( title, pseudo, expression, guidance ) => {
  logic.write( "/*\n@output: " + title + "\n@pseudocode: " + pseudo + "\n*/\ndefine \""+title+"\":\n")
  logic.write( "  " + expression + "\n\n" )
  
  if ( guidance ) {
    displayGuidance( title, "'"+guidance.replace(/'/g, '\\\'')+"'", "\n@guidance: "+guidance )
  }
}

logic.write( "/*\n@dynamicValue: Guidance\n*/\ndefine \"Guidance\":\n  case\n" 
  + Object.keys(outputs).map((title) => "    when \"" + title +"\" then \""+ title +" Guidance\"" ).join("\n") 
  + "\n    else ''\n  end\n\ndefine \"Has Guidance\":\n  \"Guidance\" is not null and \"Guidance\" != ''\n\n" )

let tests = []

for( let title in outputs ) {

  let output = outputs[title]
  if ( output.length === 1 ) {
    tests[output[0].testidx] = "    when Patient.id = '"+(output[0].testid)+"' then \""+output[0].content[0]+"\" and \"Guidance\" = '" + output[0].guidance.replace(/'/, '\\\'') + "'"

    displayOutput( output[0].content[0], output[0].content[1], output[0].expression, output[0].guidance )

  } else {
    let guidances = []
    let comment = []
    let titles = []
    for( let idx in output ) {
      let display = parseInt(idx) + 1
      let title = output[idx].content[0] + " Case " + display
      displayOutput( title, output[idx].content[1], output[idx].expression )
      tests[output[idx].testidx] = "    when Patient.id = '"+output[idx].testid+"' then \""+title+"\" and \"Guidance\" = '" + output[idx].guidance.replace(/'/, '\\\'') + "'"
      guidances.push( "    when \""+ title + "\" then '" + output[idx].guidance.replace(/'/, '\\\'') + "'" )
      comment.push( "@guidance: " + output[idx].guidance )
      titles.push( "\"" + title + "\"" )
    }

    displayOutput( output[0].content[0], output[0].content[1], titles.join("\n    or ") )
    displayGuidance( output[0].content[0], "case\n" + guidances.join("\n") + "\n    else ''\n  end", "\n"+comment.join("\n") )
  }
}

logic.write(`
/*
@test: Test expected results based on example patients
*/
define "Test Validation":
  case
`)
logic.write(tests.filter((test) => test.length > 0).join("\n")+"\n")
logic.write("    else 'No test case set'\n  end\n")

//logic.write( "/*\n@output: " + content[0] + "\n@pseudocode: " + content[1] + "\n*/\ndefine \""+content[0]+"\":")
//logic.write( "  " + expression.join( "\n    and ") + "\n" )

//logic.write( "/*\n@output: " + content[0] + " Guidance\n@guidance: " + content[1] + "\n*/\ndefine \""+content[0]+" Guidance\":")
//logic.write( "  '" + sheet[r][parseInt(cs[1])+2] + "'\n" )

logic.close()