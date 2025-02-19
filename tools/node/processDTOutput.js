const xlsx = require('node-xlsx')
const fs = require('fs')

const getRange = ( nums ) => {
  let match = nums.match(/(\d+)-(\d+)/)
  let start, end
  if ( match ) {
    start = match[1]
    end = match[2]
  } else {
    start = nums
    end = nums
  }
  return [ parseInt(start), parseInt(end) ]
}

var file, sheetname, rows, cols, prefix, dt;

[file, sheetname, rows, cols, prefix, dt] = process.argv.slice(2);
// output and guidance are expected to be +1 and +2 from the last column.  Even if blank, all columns should be listed.

const workbook = xlsx.parse( file )
let sheet = workbook.filter( (tab) => { return tab.name === sheetname } );
let sheetdisplay = sheetname.replace(/\s/,"")
sheet = sheet[0].data

let rs = getRange( rows )
let cs = getRange( cols )

let top = parseInt(rs[0])

let did = sheet[top-6][cs[0]+1]
let rule = sheet[top-5][cs[0]+1]
let trigger = sheet[top-4][cs[0]+1]
let table = sheet[top-2][cs[0]]

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

logic.write(`
/*
 * Library: IMMZ${prefix}${sheetdisplay}${dt} (${did})
 * Rule: ${rule}
 * Decision Table: ${table}
 * Trigger: ${trigger}
 */
library IMMZ${prefix}${sheetdisplay}${dt}

using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1'

include IMMZCommon called Common
include IMMZConcepts called Concepts

include IMMZEncounterElements called IE
include IMMZ${prefix}${sheetdisplay}EncounterElements called Encounter

parameter Today default Today()

context Patient


`)



let prevtitles = []
let outputs = {}


for ( let r = rs[0]; r <= rs[1]; r++ ) {
  let expression = [];
  for( let c = cs[0]; c <= cs[1]; c++ ) {
    let content = []
    //if ( sheet[r] && sheet[r][c] && sheet[r][c] != '-' ) {
    if ( sheet[r] && sheet[r][c] && sheet[r][c].trim().length > 3 ) {
      content = sheet[r][c].split( "\n", 2 )
      prevtitles[c] = content[0].trim()
    }
    if ( !content[0] && !sheet[r][c] ) content[0] = prevtitles[c]
    if ( content[0] ) {
      expression.push( 'Encounter."' + content[0].trim() + '"' )
    }
  }

  let content = sheet[r][1+cs[1]].split( "\n", 2 );
  if ( content[0].trim().length > 3 ) {
  if ( !content[1] ) content[1] = ""
    content[0] = content[0].trim()
    content[1] = content[1].trim()
    if ( !outputs[ content[0] ] ) outputs[ content[0] ] = []
    outputs[ content[0] ].push( { content, expression: expression.join("\n    and "), guidance: sheet[r][parseInt(cs[1])+2], testid: (r+1) } )
  }
}

const displayGuidance = ( title, guidance, comment ) => {
  logic.write( "/*\n@output: " + title + " Guidance" + comment + "\n*/\ndefine \""+title+" Guidance\":\n")
  logic.write( "  " + guidance + "\n\n" )
}

const displayOutput = ( title, pseudo, expression, guidance ) => {
  logic.write( "/*\n@output: " + title + "\n@pseudocode: " + pseudo + "\n*/\ndefine \""+title+"\":\n")
  logic.write( "  " + expression + "\n\n" )
  
  if ( guidance ) {
    displayGuidance( title, "'"+guidance.replace(/'/, '\\\'')+"'", "\n@guidance: "+guidance )
  }
}

logic.write( "/*\n@dynamicValue: Guidance\n*/\ndefine \"Guidance\":\n  case\n" 
  + Object.keys(outputs).map((title) => "    when \"" + title +"\" then \""+ title +" Guidance\"" ).join("\n") + "\n    else ''\n  end\n\n" )

let tests = []

for( let title in outputs ) {

  let output = outputs[title]
  if ( output.length === 1 ) {
    tests[output[0].testid] = "    when Patient.id = '"+output[0].testid+".' then \""+output[0].content[0]+"\" and \"Guidance\" = '" + output[0].guidance.replace(/'/, '\\\'') + "'"

    displayOutput( output[0].content[0], output[0].content[1], output[0].expression, output[0].guidance )

  } else {
    let guidances = []
    let comment = []
    let titles = []
    for( let idx in output ) {
      let display = parseInt(idx) + 1
      let title = output[idx].content[0] + " Case " + display
      displayOutput( title, output[idx].content[1], output[idx].expression )
      tests[output[idx].testid] = "    when Patient.id = '"+output[idx].testid+".' then \""+title+"\" and \"Guidance\" = '" + output[idx].guidance.replace(/'/, '\\\'') + "'"
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
  case`)
logic.write(tests.filter((test) => test.length > 0).join("\n")+"\n")
logic.write("    else 'No test case set'\n  end\n")

//logic.write( "/*\n@output: " + content[0] + "\n@pseudocode: " + content[1] + "\n*/\ndefine \""+content[0]+"\":")
//logic.write( "  " + expression.join( "\n    and ") + "\n" )

//logic.write( "/*\n@output: " + content[0] + " Guidance\n@guidance: " + content[1] + "\n*/\ndefine \""+content[0]+" Guidance\":")
//logic.write( "  '" + sheet[r][parseInt(cs[1])+2] + "'\n" )

logic.close()