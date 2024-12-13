const csv = require('@fast-csv/parse')
const fs = require('fs')

const csvFile = process.argv[2]

const camelCase = (str) => {
  return str.toLowerCase().replace(/[-_\W](.)/g, (match, char) => char.toUpperCase())
}

let codesystems = {}
let conceptmaps = {}
let valuesets = {}
let model = []
let quest = []
let currentVS = null
let relationships = {
  'Related to': [ 'relatedto', 'relatedto' ],
  '': [ 'relatedto', 'relatedto' ],
  'Equivalent': [ 'equivalent', 'equivalent' ],
  'Source is narrower than target': [ 'wider', 'narrower' ],
  'Source is broader than target': [ 'narrower', 'wider' ]
}

let title = csvFile.substring(csvFile.lastIndexOf('/')+1).replace(/\.csv$/,'')
let modelName = title.replace(/\W/g, '')
//console.log(title)
model.push("Logical:      " + modelName)
model.push("Title:        \"" + title + "\"")
model.push("Description:  \"Data elements for the " + title + " Data Dictionary.\"")
model.push('')
model.push("* ^name = \"" + title.replace(/\W/g, '_') + "\"")
model.push("* ^status = #active")

quest.push("Instance:     Q" + modelName)
quest.push("InstanceOf:   sdc-questionnaire-extr-smap")
quest.push("Title:        \"" + title + "\"")
quest.push("Description:  \"Questionnaire for " + title + "\"")
quest.push("Usage: #definition")
quest.push('')
quest.push("* version = \"2024\"")
quest.push("* status = #draft")
quest.push("* subjectType = #Patient")
quest.push("* language = #en")
quest.push("* contained[+] = ")
quest.push("* extension[+].url = \"http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-targetStructureMap\"")
quest.push("* extension[=].valueCanonical = \"http://smart.who.int/immunizations/StructureMap/\"")
quest.push('')

fs.createReadStream(csvFile)
  .pipe(csv.parse( {headers:true}) )
  .on('data', row => {
    //console.log(row)

    let deid = row['Data element ID'].replace(/((\S+)\.(\S+)\.DE)\.(\d+)/, '$1$4')
    //console.log(deid)
    let label = row['Data element label']
    let regex = /((\S+)\.(\S+))\.(DE\d+)/
    let info = deid.match(regex)
    let codesystem = info[1]
    let csName = info[2]+"_"+info[3]
    let dataelement = info[4]
    let type = row['Data type']

    fieldName = camelCase(label)

    if ( type != 'Codes' ) {
      model.push("* " + fieldName + " " + (row['Required'] == 'R' ? '1' : '0') + "..1 "
        + (type == 'Coding' ? 'code' : 'string') + " \""+label+"\" \""+row['Description and definition'] 
        + "\"")
      if ( type == 'Coding' ) {
        model.push("* " + fieldName + " from " + codesystem + "." + dataelement + " (required)")
      }
      model.push("  * code[+] = " + codesystem + "#" + dataelement )

      quest.push("* insert Question(" + fieldName + ", " + label
        + ", " + (type == 'Coding' ? 'choice' : 'string') + ", " 
        + (row['Required'] == 'R' ? 'true' : 'false') + ", false)")
      quest.push("* item[=]")
      quest.push("  * code[+] = " + codesystem + "#" + dataelement )
    }
    if ( !codesystems[codesystem] ) {
      codesystems[codesystem] = "CodeSystem: "+codesystem+"\nTitle:        \""+codesystem+" CodeSystem for Data Elements\"\nDescription:  \"CodeSystem for "+codesystem
        +" Data Elements\"\n\n* ^experimental = false\n* ^caseSensitive = false\n* ^name = \""+csName+"\"\n* ^status = #active\n\n"
      conceptmaps[codesystem] = {}
      conceptmaps[codesystem].header = "Instance: "+codesystem+".ConceptMap\nInstanceOf: ConceptMap\nDescription:  \"Mapping to and from "+codesystem+" Data Dictionary to other codesystems.\"\nUsage:        #definition\n\n"
      conceptmaps[codesystem].header += "* name = \""+csName+"_ConceptMap\"\n* title = \"ConceptMap to and from "+codesystem+" DataElements\"\n* status = #active\n* experimental = false\n* date = \"2024-01-19\"\n\n"
      conceptmaps[codesystem].toicd11 = "* group[+]\n  * source = Canonical("+codesystem+")\n  * target = $ICD11\n"
      conceptmaps[codesystem].fromicd11 = "* group[+]\n  * source = $ICD11\n  * target = Canonical("+codesystem+")\n"
      conceptmaps[codesystem].toloinc = "* group[+]\n  * source = Canonical("+codesystem+")\n  * target = $LNC\n"
      conceptmaps[codesystem].fromloinc = "* group[+]\n  * source = $LNC\n  * target = Canonical("+codesystem+")\n"
      conceptmaps[codesystem].tosct = "* group[+]\n  * source = Canonical("+codesystem+")\n  * target = $SCT\n"
      conceptmaps[codesystem].fromsct = "* group[+]\n  * source = $SCT\n  * target = Canonical("+codesystem+")\n"
    }
    codesystems[codesystem] += "* #"+dataelement+" \""+label+"\" \""+row['Description and definition']+"\"\n"
    if ( currentVS ) {
      if ( type == 'Codes' ) {
        valuesets[currentVS] += "* "+codesystem+"#"+dataelement+" \""+label+"\"\n"
      } else {
        currentVS = null
      }
    }

    if ( type == 'Coding' ) {
      currentVS = deid
      if ( valuesets[deid] ) {
        console.error("Codes for "+deid+" already exists!!")
      }
      valuesets[deid] = "ValueSet: "+deid+"\nTitle: \""+deid+" ValueSet for "+label+"\"\nDescription: \"ValueSet for "+label+" for "+deid+"\"\n\n* ^status = #active\n* ^name = \""+csName+"_"+dataelement+"\"\n\n"
    }
    let icd11 = row['ICD-11\ncode'].trim()
    let loinc = row['LOINC version 2.68\ncode'].trim()
    let sct = row['SNOMED GPS code'].trim()

    if ( icd11 && !icd11.startsWith('Not classifiable in ICD-11') ) {
      let relationship = row['ICD-11 relationship']
      //console.log("HERE",icd11,relationship, relationships[relationship])
      conceptmaps[codesystem].toicd11 += "  * insert ElementMap("+dataelement+", "+icd11+", "+relationships[relationship][0]+")\n"
      conceptmaps[codesystem].fromicd11 += "  * insert ElementMap("+icd11+", "+dataelement+", "+relationships[relationship][1]+")\n"
      if ( type !== 'Codes') {
        model.push("  * code[+] = $ICD11#" + icd11 + " \""+row['ICD-11\ncomments/considerations'].replace(/Code title:\s+/,'') + "\"")
        quest.push("  * code[+] = $ICD11#" + icd11 + " \""+row['ICD-11\ncomments/considerations'].replace(/Code title:\s+/,'') + "\"")
      }
    }
    if ( loinc && !loinc.startsWith('Not classifiable in LOINC') ) {
      let relationship = row['LOINC version 2.68 relationship']
      if ( relationship != 'Not related to' ) {
        conceptmaps[codesystem].toloinc += "  * insert ElementMap("+dataelement+", "+loinc+", "+relationships[relationship][0]+")\n"
        conceptmaps[codesystem].fromloinc += "  * insert ElementMap("+loinc+", "+dataelement+", "+relationships[relationship][1]+")\n"
      }
      if ( type !== 'Codes') {
        model.push("  * code[+] = $LNC#" + loinc + " \""+row['LOINC version 2.68\ncomments/considerations'].replace(/Long common name:\s+/,'') + "\"")
        quest.push("  * code[+] = $LNC#" + loinc + " \""+row['LOINC version 2.68\ncomments/considerations'].replace(/Long common name:\s+/,'') + "\"")
      }
    }
    if ( sct && !sct.startsWith('Not classifiable in SNOMED GPS') ) {
      let relationship = row['SNOMED GPS\nrelationship']
      conceptmaps[codesystem].tosct += "  * insert ElementMap("+dataelement+", "+sct+", "+relationships[relationship][0]+")\n"
      conceptmaps[codesystem].fromsct += "  * insert ElementMap("+sct+", "+dataelement+", "+relationships[relationship][1]+")\n"
      if ( type !== 'Codes') {
        model.push("  * code[+] = $SCT#" + sct + " \""+row['SNOMED GPS \ncomments/considerations'].replace(/Code title:\s+/,'') + "\"")
        quest.push("  * code[+] = $SCT#" + sct + " \""+row['SNOMED GPS \ncomments/considerations'].replace(/Code title:\s+/,'') + "\"")
      }
    }
  })
  .on('end', () => {
    //console.log(model)
    let modelFile = fs.createWriteStream("output/"+modelName+".fsh")
    modelFile.write(model.join("\n"))
    modelFile.close()

    let questFile = fs.createWriteStream("output/Q"+modelName+".fsh")
    questFile.write(quest.join("\n"))
    questFile.close()    

    for( cs in codesystems ) {
      let file = fs.createWriteStream("output/"+cs+".fsh")
      file.write(codesystems[cs])
      file.close()
      let cm = fs.createWriteStream("output/"+cs+".ConceptMap.fsh")
      cm.write(conceptmaps[cs].header)
      cm.write(conceptmaps[cs].toicd11)
      cm.write(conceptmaps[cs].fromicd11)
      cm.write("\n")
      cm.write(conceptmaps[cs].toloinc)
      cm.write(conceptmaps[cs].fromloinc)
      cm.write("\n")
      cm.write(conceptmaps[cs].tosct)
      cm.write(conceptmaps[cs].fromsct)
      cm.write("\n")
      cm.close()
    }

    for( vs in valuesets ) {
      let file = fs.createWriteStream("output/"+vs+".fsh")
      file.write(valuesets[vs])
      file.close()
    }

  })

