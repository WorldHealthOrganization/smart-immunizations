const csv = require('@fast-csv/parse')
const fs = require('fs')

//const csvFile = 'Annex A IMZ DAK Data Dictionary 20230810.csv'
const csvFile = '01.Annex A_IMMZ DAK_Core Data Dictionary (20240116) D1.csv'

let codesystems = {}
let conceptmaps = {}
let valuesets = {}
let currentVS = null
let relationships = {
  'Related to': [ 'relatedto', 'relatedto' ],
  '': [ 'relatedto', 'relatedto' ],
  'Equivalent': [ 'equivalent', 'equivalent' ],
  'Source is narrower than target': [ 'wider', 'narrower' ],
  'Source is broader than target': [ 'narrower', 'wider' ]
}

fs.createReadStream(csvFile)
  .pipe(csv.parse( {headers:true}) )
  .on('data', row => {
    console.log(row)

    let deid = row['Data Element ID'].replace(/((\S+)\.(\S+)\.DE)\.(\d+)/, '$1$4')
    console.log(deid)
    let label = row['Data Element Label']
    let regex = /((\S+)\.(\S+))\.(DE\d+)/
    let info = deid.match(regex)
    let codesystem = info[1]
    let csName = info[2]+"_"+info[3]
    let dataelement = info[4]
    if ( !codesystems[codesystem] ) {
      codesystems[codesystem] = "CodeSystem: "+codesystem+"\nTitle:        \""+codesystem+" CodeSystem for Data Elements\"\nDescription:  \"CodeSystem for "+codesystem
        +" Data Elements\"\n\n* ^experimental = false\n* ^caseSensitive = false\n* ^name = \""+csName+"\"\n\n"
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
    codesystems[codesystem] += "* #"+dataelement+" \""+label+"\" \""+row['Description and Definition']+"\"\n"
    let type = row['Data Type']
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
    let icd11 = row['ICD-11\nCode'].trim()
    let loinc = row['LOINC version 2.68\nCode'].trim()
    let sct = row['SNOMED GPS Code'].trim()

    if ( icd11 && icd11 != 'Not classifiable in ICD-11' ) {
      let relationship = row['ICD-11 Relationship']
      console.log("HERE",icd11,relationship, relationships[relationship])
      conceptmaps[codesystem].toicd11 += "  * insert ElementMap("+dataelement+", "+icd11+", "+relationships[relationship][0]+")\n"
      conceptmaps[codesystem].fromicd11 += "  * insert ElementMap("+icd11+", "+dataelement+", "+relationships[relationship][1]+")\n"

    }
    if ( loinc && loinc != 'Not classifiable in LOINC') {
      let relationship = row['LOINC version 2.68 Relationship']
      if ( relationship != 'Not related to' ) {
        conceptmaps[codesystem].toloinc += "  * insert ElementMap("+dataelement+", "+loinc+", "+relationships[relationship][0]+")\n"
        conceptmaps[codesystem].fromloinc += "  * insert ElementMap("+loinc+", "+dataelement+", "+relationships[relationship][1]+")\n"
      }
    }
    if ( sct && sct != 'Not classifiable in SNOMED-GPS' ) {
      let relationship = row['SNOMED GPS\nRelationship']
      conceptmaps[codesystem].tosct += "  * insert ElementMap("+dataelement+", "+sct+", "+relationships[relationship][0]+")\n"
      conceptmaps[codesystem].fromsct += "  * insert ElementMap("+sct+", "+dataelement+", "+relationships[relationship][1]+")\n"
    }
  })
  .on('end', () => {
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

