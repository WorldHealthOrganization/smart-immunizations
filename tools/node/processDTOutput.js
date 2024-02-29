const xlsx = require('node-xlsx')

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

var file, sheetname, rows, cols, dt;

[file, sheetname, rows, cols, dt] = process.argv.slice(2);
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


console.log(`
/*
 * Library: IMMZD2DT${sheetdisplay}${dt} (${did})
 * Rule: ${rule}
 * Decision Table: ${table}
 * Trigger: ${trigger}
 */
library IMMZD2DT${sheetdisplay}${dt}
// Start Skeleton CQL
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1'
include IMMZCommon called IMMZCom
include IMMZConcepts called IMMZc
include IMMZConfig called IMMZCon
include IMMZVaccineLibrary called IMMZvl
include FHIRCommon called FC
include IMMZD2DT${sheetdisplay}Input called input

// End Skeleton CQL
context Patient

`)



let prevtitles = []
let outputs = {}


for ( let r = rs[0]; r <= rs[1]; r++ ) {
  let expression = [];
  for( let c = cs[0]; c <= cs[1]; c++ ) {
    let content = []
    if ( sheet[r] && sheet[r][c] && sheet[r][c] != '-' ) {
      content = sheet[r][c].split( "\n", 2 )
      prevtitles[c] = content[0].trim()
    }
    if ( !content[0] && sheet[r][c] != '-' ) content[0] = prevtitles[c]
    if ( content[0] ) {
      expression.push( 'input."' + content[0].trim() + '"' )
    }
  }

  let content = sheet[r][1+cs[1]].split( "\n", 2 );
  if ( !content[1] ) content[1] = ""
  content[0] = content[0].trim()
  content[1] = content[1].trim()
  if ( !outputs[ content[0] ] ) outputs[ content[0] ] = []
  outputs[ content[0] ].push( { content, expression: expression.join("\n    and "), guidance: sheet[r][parseInt(cs[1])+2] } )
  
}

const displayGuidance = ( title, guidance, comment ) => {
  console.log( "/*\n@output: " + title + " Guidance" + comment + "\n*/\ndefine \""+title+" Guidance\":")
  console.log( "  " + guidance + "\n" )
}

const displayOutput = ( title, pseudo, expression, guidance ) => {
  console.log( "/*\n@output: " + title + "\n@pseudocode: " + pseudo + "\n*/\ndefine \""+title+"\":")
  console.log( "  " + expression + "\n" )
  
  if ( guidance ) {
    displayGuidance( title, "'"+guidance.replace(/'/, '\\\'')+"'", "\n@guidance: "+guidance )
  }
}

console.log( "/*\n@dynamicValue: Guidance\n*/\ndefine \"Guidance\":\n  case\n" 
  + Object.keys(outputs).map((title) => "    when \"" + title +"\" then \""+ title +" Guidance\"" ).join("\n") + "\n    else ''\n  end\n" )

for( let title in outputs ) {

  let output = outputs[title]
  if ( output.length === 1 ) {

    displayOutput( output[0].content[0], output[0].content[1], output[0].expression, output[0].guidance )

  } else {
    let guidances = []
    let comment = []
    let titles = []
    for( let idx in output ) {
      let display = parseInt(idx) + 1
      let title = output[idx].content[0] + " Case " + display
      displayOutput( title, output[idx].content[1], output[idx].expression )
      guidances.push( "    when \""+ title + "\" then '" + output[idx].guidance.replace(/'/, '\\\'') + "'" )
      comment.push( "@guidance: " + output[idx].guidance )
      titles.push( "\"" + title + "\"" )
    }

    displayOutput( output[0].content[0], output[0].content[1], titles.join("\n    or ") )
    displayGuidance( output[0].content[0], "case\n" + guidances.join("\n") + "\n    else ''\n  end", "\n"+comment.join("\n") )
  }
}


//console.log( "/*\n@output: " + content[0] + "\n@pseudocode: " + content[1] + "\n*/\ndefine \""+content[0]+"\":")
//console.log( "  " + expression.join( "\n    and ") + "\n" )

//console.log( "/*\n@output: " + content[0] + " Guidance\n@guidance: " + content[1] + "\n*/\ndefine \""+content[0]+" Guidance\":")
//console.log( "  '" + sheet[r][parseInt(cs[1])+2] + "'\n" )