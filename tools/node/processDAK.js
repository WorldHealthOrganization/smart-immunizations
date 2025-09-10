(async () => {
  const chalk = await import('chalk').then(chalk => chalk.default) 


const xlsx = require('node-xlsx')
const fs = require('fs')
const path = require('path')
const yaml = require('yaml')
const readline = require('readline')
const { program } = require('commander')

const INPUTDIR = path.join("..","..","input")

const RUNTIME = new Date().toISOString()
const RUNDATE = RUNTIME.substring(0,10)

program
  .requiredOption('-f, --file <XLSX File>', 'You must include the DAK XLSX file')
  .requiredOption('-s, --sheets <sheets...>', 'Specify which sheets to process')
  .option('-a, --all', 'Create all resource types')
  .option('--codes', 'Create CodeSystem and ValueSets resources for the decision tables in the given sheets')
  .option('--elements', 'Create the CQL Elements and EncounterElements files for each sheet')
  .option('--logic', 'Create the CQL Logic files for each sheet including PlanDefinitions, test files, and examples')
  .option('--existing', "Load data from existing resources and error if some aren't found.")

program.parse()

const options = program.opts()

var file = options.file
var dak = {_inputs: {}, _outputs: {}}

const workbook = xlsx.parse( file )

const cleanCell = (cell) => {
  if ( cell ) {
    return cell.trim().replaceAll(/ +/g, " ")
  } else { 
    return null
  }
}

const isEmpty = (cell) => {
  return cell === undefined || cell === null || !cell || cell == "" || cell.match(/^\s*$/) !== null
}

const loadXPut = (xput) => {
  let firstline = xput.indexOf("\n")
  let display, pseudo = ""
  if ( firstline !== -1 ) {
    display = xput.slice(0, firstline).trim()
    pseudo = xput.slice(firstline+1).trim()
  } else {
    display = xput.trim()
  }
  return {
    code: display + "-" + pseudo.length,
    display: display,
    pseudo: pseudo
  }
}

const loadDT = async (sheet, startrow, startcol, dak, sheetname, initialrow, schedulecol ) => {
  console.log(chalk.green("DECISION"), sheetname, startrow, startcol,sheet[startrow][startcol+1],(schedulecol ? sheet[startrow][schedulecol+1] : ""))

  let disease = dak[sheetname]

  let did = sheet[startrow][startcol+1]


  if ( disease.tables[did] ) {
    console.error(did, "table already exists for",sheetname)
    process.exit(0)
  }
  disease.tables[did] = { 
    did: did, 
    name: "", 
    short: "", 
    type: "", 
    file: "", 
    rule: "", 
    trigger: "", 
    rows: {} 
  }
  let dectable = disease.tables[did]
  dectable.short = did.split('.').pop().replace(/(?:^|\s|[-_\.])(.)/g, (match, letter) => letter.toUpperCase())
  let matches = did.match(/IMMZ\.([^.]+)\.([^.]+)\..+/)
  dectable.type = matches[1]+matches[2]
  if ( dectable.type == "D2DT" ) {
    dectable.file = "IMMZ" + dectable.type + disease.short + ( disease.short != dectable.short ? dectable.short : "" )
  } else if ( dectable.type == "D5DT" ) {
    dectable.file = "IMMZ" + dectable.type + dectable.short 
  }

  let ttype = dectable.did.split('.').slice(0,3).join('.')
  if ( !dak._inputs[ttype] ) dak._inputs[ttype] = {}
  if ( !dak._outputs[ttype] ) dak._outputs[ttype] = {}
  let inputs = dak._inputs[ttype]
  let outputs = dak._outputs[ttype]

  let outputcol = -1
  let skipnext = false
  let prevout, prevguidance
  let previn = []

  // Decision Table (or Contraindication)
  for( let row = startrow+1; row < sheet.length; row++ ) {
    // End of table
    // If all columns except the first are empty except for the row right after Inputs (when it exists)
    //  then it's the end of table
    let intable = outputcol === -1 || row === startrow + 4
    for( let endcheck = startcol+1; endcheck <= outputcol; endcheck++ ) {
      if ( !isEmpty( sheet[row][endcheck] ) ) intable = true
    }
    if ( sheet[row].length === 0 || !intable ) {
      console.log(chalk.yellow("ENDING"),sheetname,row)
      break
    }

    if ( skipnext ) {
      skipnext = false
      continue
    }

    let tablerow = true

    if ( sheet[row][startcol] === "Business rule" ) {
      dectable.rule = sheet[row][startcol+1]
    } else if ( sheet[row][startcol] === "Trigger" ) {
      dectable.trigger = sheet[row][startcol+1]
    } else if ( sheet[row][startcol] === "Inputs" || sheet[row][startcol] == "Potential contraindications" ) {
      for( let col = startcol; col < sheet[row].length; col++ ) {
        if ( sheet[row][col] === "Output" ) outputcol = col
      }
      if ( outputcol === -1 ) {
        console.error( "Failed to find Output column!" )
        process.exit(0)
      }
      // If there is only one input column, then this won't work.  This shouldn't happen.
      for( let tcheck = startcol+1; tcheck < outputcol; tcheck++ ) {
        if ( sheet[row+1][tcheck] != null ) tablerow = false
      }
      if ( sheet[row+1][outputcol] != null ) tablerow = false 
      if ( tablerow ) {
        dectable.name = sheet[row+1][startcol]
        skipnext = true
      } else if ( sheet[row][startcol] == "Potential contraindications" ) {
        dectable.name = sheet[row][startcol]
      } else {
        dectable.name = dectable.did
      }
    } else if ( outputcol !== -1 ) {

      if ( !sheet[row][outputcol] ) sheet[row][outputcol] = prevout
      prevout = sheet[row][outputcol]
      if ( !sheet[row][outputcol+1] ) sheet[row][outputcol+1] = prevguidance
      prevguidance = sheet[row][outputcol+1]

      let xlidx = row + 2 - initialrow

      if ( !isEmpty(sheet[row][outputcol]) ) {
        let content = loadXPut( sheet[row][outputcol] )
        if ( !outputs[content.code] ) {
          outputs[content.code] = content
          outputs[content.code].table = new Set()
        } 
        outputs[content.code].table.add( dectable.did )
        dectable.rows[xlidx] = { 
          inputs: [],
          output: {
            code: content.code,
            display: content.display,
            pseudo: content.pseudo
          },
          guidance: sheet[row][outputcol+1]
        }
      } else {
        // Skip if there is no output content
        continue
      }


      for( let col = startcol; col < outputcol; col++ ) {
        
        if ( !sheet[row][col] ) sheet[row][col] = previn[col]
        previn[col] = sheet[row][col]

        if ( sheet[row][col] && sheet[row][col].length > 3 ) {
          let content = loadXPut(sheet[row][col])
          if ( !inputs[content.code] ) {
            inputs[content.code] = content
            inputs[content.code].table = new Set()
          } 
          inputs[content.code].table.add( dectable.did )

          dectable.rows[xlidx].inputs.push( {
            code: content.code,
            display: content.display,
            pseudo: content.pseudo
          } )

        }
      }


    } else {
      console.error(outputcol,"Not sure how this was reached.  Check DAK.")
      process.exit(0)
    }

  }


  // Schedule Table
  if ( schedulecol ) {
    dectable.schedule = { sid: sheet[startrow][schedulecol+1], name: "", type: "", rows: {} }
    let matches = dectable.schedule.sid.match(/IMMZ\.([^.]+)\.([^.]+)\..+/)
    dectable.schedule.type = matches[1]+matches[2]
    let logicrow = startrow+4
    if ( sheet[logicrow][schedulecol+1] ) { // No table description, straight to logic
      dectable.schedule.name = dectable.schedule.sid
    } else {
      dectable.schedule.name = sheet[logicrow][schedulecol]
      logicrow++
    }

    let sprev = [] // To handle merged cells
    for( let row = logicrow; row < sheet.length; row++ ) {
      let srow = sheet[row].slice(schedulecol)
      if ( srow.length === 0 ) break // end of table
      for ( let col = 0; col < 10; col++ ) {
        if ( !srow[col] ) srow[col] = sprev[col]
        sprev[col] = srow[col]
      }
      let xlidx = row + 2 - initialrow
      let trigger = srow[2].split("\n", 2)
      let complete = srow[0].split("\n", 2)
      dectable.schedule.rows[xlidx] = {
        name: srow[0],
        desc: srow[1],
        trigger_event: loadXPut(srow[2]),
        trigger_date: srow[3],
        create: srow[4],
        due_date: srow[5],
        overdue: srow[6],
        expiration: srow[7],
        completion: loadXPut(srow[8])
      }
      
    }

  }

}

const loadCS = async (csfile) => {
  const codes = fs.createReadStream(csfile)
  codes.on('error', (err) => {
    console.error(err)
    return null
  })
  const rl = readline.createInterface({
    input: codes,
    crlfDelay: Infinity
  })

  let map = {}
  for await ( let line of rl ) {
    if ( line.match(/^\*/) ) {
      let matches = line.match(/^\* #(DE\d+) "(.+)" "(.+)"\s*$/)
      if ( matches && matches.length == 4 ) {
        map[ matches[2] ] = matches[1]
      }
    }
  }
  return map
}

const loadCQL = async (cqlfile) => {
  const cql = fs.createReadStream(cqlfile)
  cql.on('error', (err) => {
    console.log(err)
    return null
  })


  const rl = readline.createInterface({
    input: cql,
    crlfDelay: Infinity
  })

  let define = null
  let incomment = true
  let expressions = {}
  for await (let line of rl) {

    line = line.trimEnd()
    if ( incomment ) {
      if ( line.match(/\*\//) ) {
        line = line.replace(/.*\*\//, "")
        incomment = false
      } else {
        continue
      }
    }

    line = line.replace(/\/\*.*\*\//, "").replace(/\/\/.*$/, "").replace()

    if ( line.match( /\/\*/ ) ) {
      line = line.replace(/\/\*.*/, "")
      incomment = true
    }

    if ( isEmpty(line) ) continue

    let finddef = line.match(/define "(.+)":/)
    if ( finddef ) {
      define = finddef[1]
      if ( expressions[define] ) {
        console.error("Found",define,"more than once when reading",cqlfile)
        process.exit(0)
      }
      expressions[define] = ""
      continue
    }
    if ( define ) {
      expressions[define] += line + "\n"
    }

  }
  return expressions

}

const loadOldDTName = async(dir, short) => {
  let find = new RegExp("IMMZD.+"+short+".*Logic\.cql")
  let nameMap = {}
  let files
  try {
    files = fs.readdirSync(dir).filter(file => file.match(find))
  } catch (err) {
    console.error(err)
    return null
  }
  for( let file of files ) {
    const cql = fs.createReadStream(path.join(dir,file))
    cql.on('error', (err) => {
      console.error(err)
      return null
    })

    const rl = readline.createInterface({
      input: cql,
      crlfDelay: Infinity
    })

    for await (let line of rl) {
      let library = line.match(/\* Library: (\S+) \((.+)\)/)
      if ( library ) {
        nameMap[ library[2] ] = library[1]
      }
    }
  }
  return nameMap
}

const loadDTPD = async (dir, short) => {

  let find = new RegExp("IMMZD.+"+short)
  let findtype = new RegExp("IMMZ(D.+)"+short)
  let customLines = {}
  let files
  try {
    files = fs.readdirSync(dir).filter(file => file.match(find))
  } catch (err) {
    console.error(err)
    return null
  }
  for( let file of files ) {
    const pdef = fs.createReadStream(path.join(dir,file))
    pdef.on('error', (err) => {
      console.error(err)
      return null
    })

    let typematch = file.match(findtype)
    let type = typematch[1]

    const rl = readline.createInterface({
      input: pdef,
      crlfDelay: Infinity
    })

    let did = null
    let started = false
    let inheader = true
    for await (let line of rl) {
      let title = line.match(/^Title: "(.+)"/)
      if ( title ) {
        did = title[1]
        customLines[did] = []
      }
      if ( isEmpty(line) ) continue
      if ( line.match(/^Usage: #definition/) ) {
        inheader = false
        continue
      }
      if ( inheader ) continue
      // These are the lines added by the script for decision tables so don't include those.
      if ( line.match(/\* insert PlanDefMain/) ) {
        continue
      }
      if ( line.match(/^\*/) ) started = true
      if ( type != "D18S" && line.match(/\* insert PlanDefCommunicationRequestAction/) ) {
        started = false
      }

      if ( started ) customLines[did].push(line)
    }
    pdef.close()

  }

  return customLines
}

const createLibrary = ( file, desc ) => {
  let lib = fs.createWriteStream( path.join("output","libraries",file+".fsh") )
  lib.write(`Instance: ${file}
InstanceOf: Library
Title: "${file}"
Description: "${desc}"
Usage: #definition

* insert LogicLibrary( ${file} )
`)
  lib.close()
}

const createElementsCQL = ( vaccine, type, short, elements ) => {
  let file = type+short

  let cql = fs.createWriteStream( path.join("output","cql","IMMZ"+file+elements+".cql") )

  let encextra = ""
  if ( elements == "EncounterElements" ) {
    encextra = `
include IMMZ${file}Elements called ${short}Elements

parameter Today Date default Today()
parameter EncounterId String
`
  }

  cql.write(`
/*
  * Library: IMMZ${file}${elements}
  */
library IMMZ${file}${elements}

using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1'

include WHOConcepts
include WHOCommon called WC
include WHOElements called WE

include IMMZCommon called Common
include IMMZConcepts called Concepts
include IMMZ${elements} called ${elements}
${encextra}
context Patient
`)
  return cql
}

const addElementsDefaults = ( file, vaccine, type, short, elements, prev, code ) => {
  if ( type == "D2DT" ) {
    file.write(`
/*
@internal: ${vaccine} containing Doses Administered to Patient
*/
define "${vaccine} Doses Administered to Patient":
`)
    if ( prev[vaccine+" Doses Administered to Patient"] ) {
      file.write(prev[vaccine+" Doses Administered to Patient"])
      delete prev[vaccine+" Doses Administered to Patient"]
    } else {
      file.write(`
  ${elements}."Doses Administered to Patient" I
  where
    I.vaccineCode in Concepts."${code.display}"
`)
    }

    file.write(`
/*
@internal: ${vaccine} containing Doses Administered to Patient that are in the Primary series
*/
define "${vaccine} Primary Series Doses Administered to Patient":
`)
    if ( prev[vaccine+" Primary Series Doses Administered to Patient"] ) {
      file.write(prev[vaccine+" Primary Series Doses Administered to Patient"])
      delete prev[vaccine+" Primary Series Doses Administered to Patient"]
     } else {
      file.write(`
  "${vaccine} Doses Administered to Patient".seriesPrimary()
`)
    }

    file.write(`
/*
@internal: Number of ${vaccine} Primary Series doses
*/
define "Number of ${vaccine} Primary Series Doses Administered":
`)
    if ( prev["Number of "+vaccine+" Primary Series Doses Administered"] ) {
      file.write(prev["Number of "+vaccine+" Primary Series Doses Administered"])
      delete prev["Number of "+vaccine+" Primary Series Doses Administered"]
    } else {
      file.write(`
  Count("${vaccine} Primary Series Doses Administered to Patient")
`)
    }

  } else if ( type == "D5DT" ) {
    file.write(`
/*
@internal: Draft Medication Request for ${vaccine} dose
*/
define "Draft Medication Request for ${vaccine} dose":
`)
    if ( prev["Draft Medication Request for "+vaccine+" dose"] ) {
      file.write(prev["Draft Medication Request for "+vaccine+" dose"])
      delete prev["Draft Medication Request for "+vaccine+" dose"]
    } else {
      file.write(`
  ${elements}."Draft Medication Request for Patient" MR 
    where MR.medication in Concepts."${code.display}"
`)
    }
    
  } else {
    console.error("Don't know how to handle type", type, "for elements defaults.")
    process.exit(0)
  }
}

const addElementsDefinition = ( file, vaccine, type, short, elements, expr, details, defaultcql ) => {
  let decision = [...details.decision].map( (table) => "@decision: "+table ).join("\n")
  if ( !defaultcql ) {
    defaultcql = "  " + elements +".\""+expr+"\" //TODO: default content, please review\n"
  }

  file.write(`
/*
@input: ${details.display}
@pseudocode: ${details.pseudo}
@code: ${details.code}
${decision}
*/
define "${expr}":
${defaultcql}`)
}

const addMissingDefinitions = ( file, missing ) => {
  for( const define in missing ) {
    file.write(`
*/
@internal: ${define}
*/
define "${define}":
${missing[define]}`)
    delete missing[define]
  }
}

const createCodeSystem = ( prefix, xput ) => {
  let file = prefix+xput
  let csfile = fs.createWriteStream( path.join("output","codesystems",file+".fsh") )
  csfile.write(`CodeSystem: ${file}
Title:        "${file} CodeSystem for Decision Table ${xput}"
Description:  "CodeSystem for Decision Table ${xput}"

* ^experimental = false
* ^caseSensitive = false
* ^status = #active
* ^property[+].code = #table
* ^property[=].description = "Decision Table ID"
* ^property[=].type = #string

`)

  return csfile
}

const createValueSet = ( vsid, did, rule, trigger, table ) => {
  let vsfile = fs.createWriteStream( path.join("output","valuesets",vsid+".fsh") )
  let vsname = did.replace(/[^A-Za-z0-9_]/g, "_")

  vsfile.write(`ValueSet: ${vsid}
Title: "${vsid} ValueSet for Decision Table"
Description: """
ValueSet ${vsid} for ${did}.
Business rule: ${rule}
Trigger: ${trigger}
Table: ${table}
"""

* ^status = #active
* ^expansion.timestamp = ${RUNTIME}
    
`)

  return vsfile
}

const createMedRequestActivity = ( vaccine, short, type, code ) => {
  let file = "IMMZ"+type+short+"MR"
  let desc = vaccine +" MedicationRequest ActivityDefinition"
  let update = "false"
  if ( type == "D2DT" ) {
    desc = "Provide "+vaccine+" immunization"
  } else if ( type == "D5DT" ) {
    desc = vaccine+" immunization contraindication"
    update = "true"
  }
  let actdef = fs.createWriteStream( path.join("output","activitydefinitions",file+".fsh") )
  actdef.write(`Instance: ${file}
InstanceOf: http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-immunizationactivity|2.0.0
Title: "${file}"
Description: "${desc}"
Usage: #definition

* insert MedicationRequestActivityDefinition( ${type}${short}, 0.1.0, ${RUNDATE}, ${update}, IMMZ.Z#${code.code} "${code.display}")
`)
  actdef.close()
}

const createPlanDef = ( file, did, name, existing, hasGuidance ) => {
  let pdef = fs.createWriteStream( path.join("output","plandefinitions",file+".fsh") )
  pdef.write(`Instance: ${file}
InstanceOf: http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-recommendationdefinition
Title: "${did}"
Description: """
${did}
${name}
"""
Usage: #definition

* insert PlanDefMain( ${file}, 0.1.0 )

`)
  if ( existing.length == 0 ) {
    pdef.write("//TODO: Add needed actions for this plandefinition, e.g., create MedicationRequest\n")
  }
  for( let line of existing ) {
    pdef.write(line+"\n")
  }
  if ( hasGuidance ) {
    pdef.write(`
* insert PlanDefCommunicationRequestAction([[Check for Guidance for the patient regarding ${did}.]], [["""
Show Guidance for the patient regarding ${did}.
"""]], Has Guidance, Guidance)
`)
    pdef.close()
    return null
  } else {
    return pdef
  }

}

const createLogicCQL = ( file, vaccine, short, did, type, rule, name, trigger ) => {
  let logic = fs.createWriteStream( path.join("output","cql",file+".cql") )
  let draftExpr = ""
  if ( type == "D5DT" ) {
    draftExpr = `/*
  @dynamicValue: Draft Medication Request ID for ${vaccine} dose
  */
  define "Draft Medication Request ID for ${vaccine} dose":
    First(Encounter."Draft Medication Request for ${vaccine} dose").id

`
  }

  logic.write(`/*
 * Library: ${file} (${did})
 * Rule: ${rule}
 * Decision Table: ${name}
 * Trigger: ${trigger}
 */
library ${file}

using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1'

include IMMZ${type}${short}EncounterElements called Encounter

parameter Today Date default Today()

context Patient

${draftExpr}
`)
  return logic
}

const createScheduleCQL = ( file, short, sid, name ) => {
  let logic = fs.createWriteStream( path.join("output","cql",file+".cql") )

  logic.write(`/*
 * Library: ${file} (${sid})
 * Schedule Table: ${name}
 */
library ${file}

using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1'

include WHOCommon called WC

include IMMZCommon called Common
include IMMZConcepts called Concepts

include IMMZEncounterElements called IE
include IMMZD2DT${short}EncounterElements called Encounter

parameter Today Date default Today()

context Patient

`)

  return logic
}

const displayGuidance = ( logic, title, guidance, comment ) => {
  logic.write(`/*
@output: ${title} Guidance
${comment}
*/
define "${title} Guidance":
  ${guidance}

`)
}

const displayOutput = ( logic, title, pseudo, expression, guidance ) => {
  logic.write(`/*
@output: ${title}
@pseudocode: ${pseudo}
*/
define "${title}":
  ${expression}

`)
  
  if ( guidance ) {
    displayGuidance( logic, title, "'"+guidance.replace(/'/g, '\\\'')+"'", "@guidance: "+guidance )
  }
}

const createFeature = ( file, did, table, type, code ) => {
  let feature = fs.createWriteStream( path.join("output","tests",file) )
  feature.write(`
Feature: ${did} Decision Table ${table}

  Background: Set the date to use for all tests
    Given call read('../IMMZ${type}.feature@defaults')
    And applyParams.parameter[1].resource.parameter[0].valueDate = "${RUNDATE}"
    And resultWithMedication.contained[2].medicationCodeableConcept.coding.code = "${code.replace(/#/,"")}"

`)
  return feature
}

const loadExamples = ( prefix, dir ) => {
  let file = path.join(prefix, dir, "examples.yaml")
  if ( !fs.existsSync( file ) ) {
    file = path.join(prefix, dir, dir+".yaml" )
    if ( !fs.existsSync( file ) ) {
      console.error("Unable to find existing examples for", prefix, dir )
      process.exit(0)
    }
  }
  const exFile = fs.readFileSync(file)
  const docs = yaml.parseAllDocuments(exFile.toString())

  let examples = []
  for ( let doc of docs ) {
    examples.push( doc.toJSON() )
  }
  return examples
}

const vaccineCodesMap = await loadCS( path.join(INPUTDIR, "fsh","codesystems","IMMZ.Z.fsh") )
if ( vaccineCodesMap === null ) {
  console.error("Unable to load vaccine codes from input/fsh/codesystems/IMMZ.Z.fsh")
  process.exit(0)
}

// Load the Excel into a JSON object
for( const tab of workbook ) {
  if ( !options.sheets.includes(tab.name) ) continue

  let vaccineConcepts = Object.keys(vaccineCodesMap)
  let codeIdx = vaccineConcepts.findIndex( concept => concept.match(tab.name) )
  if ( codeIdx == -1 ) {
    console.error("Unable to find matching vaccine code for "+tab.name)
    process.exit(0)
  }

  dak[tab.name] = { 
    vaccine: tab.name, 
    short: tab.name.replace(/\s/, ""), 
    code: { code: vaccineCodesMap[vaccineConcepts[codeIdx]], display: vaccineConcepts[codeIdx] }, 
    tables: {} 
  }
  const sheet = tab.data
  let initialrow = null
  let dt = {}
  let st = {}
  for( const row in sheet ) {
    for( const col in sheet[row] ) {
      sheet[row][col] = cleanCell(sheet[row][col])
      if ( sheet[row][col] == "Decision ID" ) {
        if ( initialrow === null ) initialrow = row
        dt[row] = parseInt(col)
      } else if ( sheet[row][col] == "Schedule ID" ) {
        st[row] = parseInt(col)
      }
    }
  }

  for( const row in dt ) {
    await loadDT( sheet, parseInt(row), dt[row], dak, tab.name, initialrow, st[row] )
  }

}

console.log(JSON.stringify(dak,(_key, value) => (value instanceof Set ? [...value] : value),2))

if ( options.all || options.elements ) {

  for( const vaccine in dak ) {
    if ( vaccine.startsWith('_') ) continue
    let eleprev = { D2DT: {}, D5DT: {} }
    let encprev = { D2DT: {}, D5DT: {} }

    if ( options.existing ) {
      eleprev.D2DT = await loadCQL( path.join(INPUTDIR,"cql","IMMZD2DT"+dak[vaccine].short+"Elements.cql") )

      encprev.D2DT = await loadCQL( path.join(INPUTDIR,"cql","IMMZD2DT"+dak[vaccine].short+"EncounterElements.cql") )
      eleprev.D5DT = await loadCQL( path.join(INPUTDIR,"cql","IMMZD5DT"+dak[vaccine].short+"Elements.cql") )
      encprev.D5DT = await loadCQL( path.join(INPUTDIR,"cql","IMMZD5DT"+dak[vaccine].short+"EncounterElements.cql") )
      if ( eleprev.D2DT === null || encprev.D2DT === null || eleprev.D5DT === null || encprev.D5DT === null ) {
        console.log("Unable to load exising CQL expressions for",dak[vaccine].short)
        process.exit(0)
      }
    }

    let defines = { D2DT: {}, D5DT: {} }

    for( const table in dak[vaccine].tables ) {
      // let matches = table.match(/IMMZ\.([^.]+)\.([^.]+)\..+/)
      // let type = matches[1]+matches[2]
      let type = dak[vaccine].tables[table].type
      let rows = dak[vaccine].tables[table].rows
      for( const row in rows ) {
        for( const input of rows[row].inputs ) {
          let decision = dak[vaccine].tables[table].did
          if ( dak[vaccine].tables[table].name != dak[vaccine].tables[table].did ) decision += ": " + dak[vaccine].tables[table].name
          if ( !defines[type][input.display] ) {
            defines[type][input.display] = input
            defines[type][input.display].decision = new Set() 
          }
          defines[type][input.display].decision.add( decision )

        }
      }
    }

    for( const type in defines ) {

      createLibrary( "IMMZ"+type+dak[vaccine].short+"Elements", 
        "This library defines context-independent elements for "+dak[vaccine].vaccine+" used throughout the Immunization CPG" )
      createLibrary( "IMMZ"+type+dak[vaccine].short+"EncounterElements", 
        "This library defines context-independent elements for "+dak[vaccine].vaccine+" used throughout the Immunization CPG" )

      let elefile = createElementsCQL( dak[vaccine].vaccine, type, dak[vaccine].short, "Elements" )
      let encfile = createElementsCQL( dak[vaccine].vaccine, type, dak[vaccine].short, "EncounterElements" )

      addElementsDefaults( elefile, dak[vaccine].vaccine, type, dak[vaccine].short, "Elements", eleprev[type], dak[vaccine].code )
      addElementsDefaults( encfile, dak[vaccine].vaccine, type, dak[vaccine].short, "Encounter", encprev[type], dak[vaccine].code )

      for( const define in defines[type] ) {
        if ( options.existing && (!eleprev[type][ define ] || !encprev[type][define]) ) {
          console.error(define,"NOT FOUND IN Elements or EncounterElements",type,"FOR",vaccine)
          process.exit(0)
        }
        addElementsDefinition( elefile, dak[vaccine].vaccine, type, dak[vaccine].short, "Elements", define, defines[type][define], eleprev[type][define] )
        delete eleprev[type][define]
        addElementsDefinition( encfile, dak[vaccine].vaccine, type, dak[vaccine].short, "Encounter", define, defines[type][define], encprev[type][define] )
        delete encprev[type][define]
      }

      addMissingDefinitions( elefile, eleprev[type] )
      addMissingDefinitions( encfile, encprev[type] )

      elefile.close()
      encfile.close()

    }

  }

}

if ( options.all || options.codes ) {

  for( const xput of [ "_inputs", "_outputs" ] ) {
    for( const type in dak[xput] ) {
      let prefix = type.replace(/\./g, "")
      let nameput = xput.replace(/_([a-z])/, (match, letter) => letter.toUpperCase() )
      let csfile = createCodeSystem( prefix, nameput )
      for( const code of Object.keys(dak[xput][type]).sort() ) {
        let details = dak[xput][type][code]
        csfile.write(`
* #${details.code} "${details.display}" "${details.pseudo.replace(/([^\\])"/g, '$1\\"').replace(/^"/, '\\"')}"`)
        for( let table of details.table ) {
          csfile.write(`
  * ^property[+].code = #table
  * ^property[=].valueString = "${table}"`)
        }
      }
    }
  }

  for( const vaccine in dak ) {
    if ( vaccine.startsWith('_') ) continue

    for( const table in dak[vaccine].tables ) {

      let dectable = dak[vaccine].tables[table]

      let vsfile = createValueSet( dectable.file, dectable.did, dectable.rule, dectable.trigger, dectable.name )

      let vscodeseen = {}
      let rows = dectable.rows
      for( const row in rows ) {
        for( const input of rows[row].inputs ) {
          if ( vscodeseen[input.code] ) continue
          vscodeseen[input.code] = true
          vsfile.write(`
* insert AddWithExpandCanonical( IMMZ${dectable.type}Inputs, #"${input.code}", [[${input.display}]] )`)
        }
        if ( !vscodeseen[rows[row].output.code]) {
          vsfile.write(`
* insert AddWithExpandCanonical( IMMZ${dectable.type}Outputs, #"${rows[row].output.code}", [[${rows[row].output.display}]] )`)
        } else {
          vscodeseen[rows[row].output.code] = true
        }

      }

    }
  }
}

if ( options.all || options.logic ) {
  for( const vaccine in dak ) {
    if ( vaccine.startsWith('_') ) continue

    createMedRequestActivity( dak[vaccine].vaccine, dak[vaccine].short, "D2DT", dak[vaccine].code )
    createMedRequestActivity( dak[vaccine].vaccine, dak[vaccine].short, "D5DT", dak[vaccine].code )

    let PDlines = {}
    let oldNameMap = {}
    if ( options.existing ) {
      PDlines = await loadDTPD( path.join(INPUTDIR, "fsh", "plandefinitions"), dak[vaccine].short ) 
      oldNameMap = await loadOldDTName( path.join(INPUTDIR, "cql"), dak[vaccine].short )
    }

    for( const table in dak[vaccine].tables ) {
      let dectable = dak[vaccine].tables[table]
      
      if ( options.existing && ( !PDlines[dectable.did] || !oldNameMap[dectable.did] ) ) {
        console.error("Unable to find existing PlanDefinition or example file name for", dectable.did)
        process.exit(0)
      }
      createPlanDef( dectable.file, dectable.did, dectable.name, PDlines[dectable.did] || [], true )

      let oldExamples = loadExamples( path.join(INPUTDIR, "tests", "plandefinition" ), oldNameMap[dectable.did] )

      createLibrary( dectable.file+"Logic", 
        "This library defines decision support logic for the "+dectable.did+" decision table in the Immunization CPG")
      let schedfile = null
      let schedlogic = null
      let schedPD = null
      if ( dectable.schedule ) {
        schedfile = dectable.file.replace("IMMZ"+dectable.type, "IMMZ"+dectable.schedule.type)
        createLibrary( schedfile+"Logic",
          "This library defines decision support logic for the "+dectable.schedule.sid+" table in the Immunization CPG"
        )
        schedlogic = createScheduleCQL( schedfile+"Logic", dak[vaccine].short,
          dectable.schedule.sid, dectable.schedule.name )
        schedPD = createPlanDef( schedfile, dectable.schedule.sid, dectable.schedule.name, [], false )
      }

      // create the files that will need writes per row
      let logic = createLogicCQL( dectable.file+"Logic", dak[vaccine].vaccine, dak[vaccine].short, 
        dectable.did, dectable.type, dectable.rule, dectable.name, dectable.trigger )
      let example = fs.createWriteStream( path.join("output", "examples", dectable.file+"Logic.yaml"))
      let feature = createFeature( dectable.file+".feature", dectable.did, dectable.name, dectable.type, dak[vaccine].code.code)

      let outputs = {}

      if ( options.existing && oldExamples.length != Object.keys(dectable.rows).length ) {
        console.error("Existing examples number doesn't match rows in the table for", dectable.did, oldExamples.length, Object.keys(dectable.rows).length)
        process.exit(0)
      }

      for( let idx in dectable.rows ) {
        let inputs = dectable.rows[idx].inputs
        let expression = []
        let testid = dak[vaccine].short + (parseInt(idx) < 10 ? "0" : "" ) + idx + "." + inputs.length
        let examples = []
        let scenario = []
        for( let input of inputs ) {
          expression.push( 'Encounter."' + input.display + '"' )
          scenario.push( input.display )
          examples.push( "#" + input.display + ( !isEmpty(input.pseudo) ? "\n#   " + input.pseudo : "" ) )
        }

        let scenariotext = ""
        if ( scenario.length > 2 ) {
          scenario[scenario.length-1] = "and " + scenario[scenario.length-1]
          scenariotext = scenario.join(", ")
        } else if ( scenario.length > 1 ) {
          scenariotext = scenario.join(" and ")
        } else {
          scenariotext = scenario.join(" ")
        }
        scenariotext += ": " + dectable.rows[idx].output.display
        feature.write(`
  @patient=${testid}
  Scenario: ${scenariotext}
    Given call read('../../IMMZ.feature@create') { "file": "./data/tests-${testid}-bundle.json" }

    And url urlBase
    And path 'PlanDefinition/${dectable.file}/$apply'
    And applyParams.parameter[0].valueString = 'Patient/${testid}'
    And request applyParams
    When method post
    Then status 200
    And RESULT.contained[0].subject.reference = 'Patient/${testid}'
    And RESULT.contained[1].payload.contentString = "${dectable.rows[idx].guidance.replace(/\n/, "\\n").replace(/"/, '\"')}"
    And match response contains deep RESULT

    And call read('../../IMMZ.feature@delete') { "file": "./data/del-${testid}-bundle.json" }
  
`)
        examples.push( "### " + dectable.rows[idx].output.display 
          + ( !isEmpty(dectable.rows[idx].output.pseudo) ? "\n### "+dectable.rows[idx].output.pseudo : "" ) )
        let exampletext = examples.join("\n")
        // TODO: Lookup old example file and include it instead with the right text and testid
        example.write(`---
${exampletext}
`)
        if ( options.existing ) {
          let existingExample = oldExamples.shift()
          existingExample.id = testid
          example.write(yaml.stringify(existingExample) )
        } else {
          example.write(`id: "${testid}"
birth:
patient:
  fhir:
    gender: female
`)
          if ( dectable.type == "D5DT" ) {
            for( let input of inputs ) {
              let ci = input.pseudo.match(/.*"(.+)"$/)
              if ( !ci ) ci = input.pseudo.match(/.*"(.+)"[^"]*$/)
              let ciid = ci[1].replace(/\W/g, '').toLowerCase()
              example.write(`contraindication:
  ${ciid}:
    code: DE
    display: "${ci[1]}"
    effectiveDateTime: -1d
`)
            }
            let mrname = dak[vaccine].short.toLowerCase()
            example.write(`medicationrequest:
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
        }

        let output = dectable.rows[idx].output
        if ( !outputs[ output.display ] ) outputs[output.display] = []
        outputs[ output.display ].push( {
          pseudo: output.pseudo,
          expression: expression.join("\n    and "),
          guidance: dectable.rows[idx].guidance,
          testid: testid,
          testidx: idx
        } )
      }

      let tests = []
      let schedtests = []
      for( let title in outputs ) {
        let output = outputs[title]
        if ( output.length === 1 ) {
          tests[output[0].testidx] = "    when Patient.id = '"+(output[0].testid)+"' then \""+title+"\" and \"Guidance\" = '" + output[0].guidance.replace(/'/, '\\\'') + "'"
          displayOutput( logic, title, output[0].pseudo, output[0].expression, output[0].guidance )
        } else {
          let guidances = []
          let comment = []
          let titles = []
          for( let idx in output ) {
            let display = title + " Case " + (parseInt(idx)+1)
            displayOutput( logic, display, output[idx].pseudo, output[idx].expression )
            tests[output[idx].testidx] = "    when Patient.id = '"+output[idx].testid+"' then \""+display+"\" and \"Guidance\" = '" 
              + output[idx].guidance.replace(/'/, '\\\'') + "'"
            schedtests[output[idx].testidx] = "    when Patient.id = '"+output[idx].testid+"' then \"\" //TODO: Set correct expression here"
            guidances.push( "    when \""+ display + "\" then '" + output[idx].guidance.replace(/'/, '\\\'') + "'" )
            comment.push( "@guidance = " + output[idx].guidance )
            titles.push( "\"" + display + "\"" )
          }

          displayOutput( logic, title, output[0].pseudo, titles.join("\n    or ") )
          displayGuidance( logic, title, "case\n" + guidances.join("\n") + "\n    else ''\n  end", comment.join("\n") )

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
      logic.close()

      if ( dectable.schedule ) {
        let schedprev = {}
        let oldschedfile = ""
        if ( options.existing ) {
          oldschedfile = oldNameMap[dectable.did].replace("IMMZ"+dectable.type, "IMMZ"+dectable.schedule.type)
          schedprev = await loadCQL( path.join(INPUTDIR,"cql",oldschedfile+".cql") )
        }
        for ( let idx in dectable.schedule.rows ) {
          let row = dectable.schedule.rows[idx]
          let schedname = row.name

          let expr = {}

          expr[schedname] = `  not "${row.completion.display}"
    and "${schedname} Expiration" > Today
    // TODO: Complete the rest of the requirements from the pseudocode
`
          let createmsg = "'" + row.create.replace(/'/g, '\\\'') + "'"
          if ( !row.due_date.startsWith('To be determined by Member States') ) createmsg += " + '\nDue Date: ' + ToString(\""+row.name+" Due Date\")"
          if ( !row.overdue.startsWith('To be determined by Member States') ) createmsg += " + '\nOverdue: ' + ToString(\""+row.name+" Overdue\")"
          if ( !row.expiration.startsWith('To be determined by Member States') ) createmsg += " + '\nExpiration: ' + ToString(\""+row.name+" Expiration\")"

          const ifDue = (thenresult, elseresult) => {
            return `  if "$schedname}"
  then ${thenresult}
  else ${elseresult}
`
          }

          expr[schedname+" Create"] = ifDue( createmsg, "''" )

          expr[schedname+" Due Date"]= ( row.due_date.startsWith("To be determined") ? "null" : ifDue( "//TODO: Due Date code", "null" ) )
          expr[schedname+" Overdue"] = ( row.overdue.startsWith("To be determined") ? "null" : ifDue( "//TODO: Overdue code", "null" ) )
          expr[schedname+" Expiration"] = ( row.expiration.startsWith("To be determined") ? "null" : "//TODO: Expiration code" )

          expr[row.completion.display] = "//TODO: Completion code"

          if ( options.existing ) {
            for( let define in expr ) {
              if ( !schedprev[define] ) {
                console.error("Unable to find", define, "in existing CQL for", oldschedfile, schedprev)
                process.exit(0)
              } else {
                expr[define] = schedprev[define]
                delete schedprev[define]
              }
            }

          }

          schedlogic.write(`
/*
@output: ${schedname}
@description: ${row.desc}
@trigger: ${row.trigger_event.display}
@pseudo: ${row.trigger_event.pseudo}
@triggerDate: ${row.trigger_date}
*/
define "${schedname}":
${expr[schedname]}

/*
@output: ${schedname} Create
@create: ${row.create}
*/
define "${schedname} Create":
${expr[schedname+" Create"]}

/*
@dynamicValue: ${schedname} Due Date
@pseudocode: ${row.due_date}
*/
define "${schedname} Due Date":
${expr[schedname+" Due Date"]}

/*
@dynamicValue: ${schedname} Overdue
@pseudocode: ${row.overdue}
*/
define "${schedname} Overdue":
${expr[schedname+" Overdue"]}

/*
@dynamicValue: ${schedname} Expiration
@pseudocode: ${row.expiration}
*/
define "${schedname} Expiration":
${expr[schedname+" Expiration"]}
  
/*
@complete: ${row.completion.display}
@pseudocode: ${row.completion.pseudo}
*/
define "${row.completion.display}":
${expr[row.completion.display]}

`)


          schedPD.write(`
* insert PlanDefCommunicationRequestAction([[${schedname}]], [["""
${row.desc}
Trigger event: ${row.trigger_event.display}
Trigger pseudo: ${row.trigger_event.pseudo}
Trigger date: ${row.trigger_date}
Create condition: ${row.create}
"""]], [[${schedname}]], [[${schedname} Create]])
`)

        }

        schedPD.close()

        if ( options.existing ) {
          let oldTests = schedprev["Test Validation"].replace(/(?:^|\n)/g, (match) => match+"//")
          delete schedprev["Test Validation"]

          addMissingDefinitions( schedlogic, schedprev )
          // See old validation as a comment if it exists
          schedlogic.write(oldTests)
        }
        schedlogic.write(`
/*
@test: Test expected results based on example patients
*/
define "Test Validation":
  case
`)
        schedlogic.write(schedtests.filter(test => test.length > 0).join("\n") + "\n")
        schedlogic.write("    else 'No test case set'\n  end\n")
        schedlogic.close()

      }
    }
  }
}


})().catch(console.error)