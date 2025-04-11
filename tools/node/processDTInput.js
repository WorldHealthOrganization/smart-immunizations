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

// node processDTInput.js FILE.xlsx ANTIGENTAB R-R C-C DID 
// node processDTinput.js FILE.xlsx Measles 6-12 0-2 D2DT 
// Sometimes the indices for the rows/cols are a bit off so may need to adjust for that

var file, sheetname, rows, cols, prefix

[file, sheetname, rows, cols, prefix] = process.argv.slice(2)
let cqlname = sheetname.replace(/\s/,"")


const workbook = xlsx.parse( file )
let sheet = workbook.filter( (tab) => { return tab.name === sheetname } )

var title, pseudo, rs, re, cs, ce

[ rs, re ] = getRange( rows );

[ cs, ce ] = getRange( cols );

let tabledesc = sheet[0].data[rs-2][cs]
if ( tabledesc == "Trigger" ) tabledesc = sheet[0].data[rs-1][cs]
if ( tabledesc == "Inputs" ) tabledesc = null

let eleoutput = {}
let encoutput = {}
for( let c = cs; c <= ce; c++ ) {
  for ( let r = rs; r <= re; r++ ) {
    //if ( sheet[0].data[r] && sheet[0].data[r][c] && sheet[0].data[r][c] != '-' ) {
    if ( sheet[0].data[r] && sheet[0].data[r][c] && sheet[0].data[r][c].trim().length > 3 ) {
      [ title, pseudo ] = sheet[0].data[r][c].split( "\n", 2 )
      title = title.trim()
      if (!pseudo) pseudo = ""
      pseudo = pseudo.trim()
      eleoutput[title+pseudo] = "/*\n@input: " + title + "\n@pseudocode: " + pseudo + "\n" 
      + (tabledesc ? "@decision: " + tabledesc + "\n" : "" ) + "*/\ndefine \""+title+"\":\n  Elements.\""+title+"\"\n\n"
      encoutput[title+pseudo] = "/*\n@input: " + title + "\n@pseudocode: " + pseudo + "\n"
      + (tabledesc ? "@decision: " + tabledesc + "\n" : "" ) + "*/\ndefine \""+title+"\":\n  Encounter.\""+title+"\"\n\n"
    }
  }
}

let elelib = fs.createWriteStream("output/IMMZ"+prefix+cqlname+"Elements.fsh")
elelib.write(`
Instance: IMMZ${prefix}${cqlname}Elements
InstanceOf: Library
Title: "IMMZ${prefix}${cqlname}Elements"
Description: "This library defines context-independent elements for ${sheetname} used throughout the Immunization CPG"
Usage: #definition

* insert LogicLibrary( IMMZ${prefix}${cqlname}Elements )
`)
elelib.close()

let elements = fs.createWriteStream("output/IMMZ"+prefix+cqlname+"Elements.cql")

elements.write(`
/*
  * Library: IMMZ${prefix}${cqlname}Elements
  */
library IMMZ${prefix}${cqlname}Elements

using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1'

include WHOConcepts
include WHOCommon called WC
include WHOElements called WE

include IMMZCommon called Common
include IMMZConcepts called Concepts
include IMMZElements called Elements

context Patient

`)

elements.write(Object.values(eleoutput).join(""))
elements.close()

let enclib = fs.createWriteStream("output/IMMZ"+prefix+cqlname+"EncounterElements.fsh")
enclib.write(`
Instance: IMMZ${prefix}${cqlname}EncounterElements
InstanceOf: Library
Title: "IMMZ${prefix}${cqlname}EncounterElements"
Description: "This library defines encounter-based elements for ${sheetname} used throughout the Immunization CPG"
Usage: #definition

* insert LogicLibrary( IMMZ${prefix}${cqlname}EncounterElements )
`)
enclib.close()

let encounter = fs.createWriteStream("output/IMMZ"+prefix+cqlname+"EncounterElements.cql")

encounter.write(`
/*
  * Library: IMMZ${prefix}${cqlname}EncounterElements
  */
library IMMZ${prefix}${cqlname}EncounterElements

using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1'

include WHOConcepts
include WHOCommon called WC
include WHOElements called WE

include IMMZCommon called Common
include IMMZConcepts called Concepts

include IMMZEncounterElements called Encounter

include IMMZ${prefix}${cqlname}Elements called ${cqlname}Elements

parameter Today Date default Today()
parameter EncounterId String

context Patient

`)

encounter.write(Object.values(encoutput).join(""))
