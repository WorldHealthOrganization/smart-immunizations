const yaml = require('yaml')
const fs = require('fs')
const Dates = require('date-math')

const file = fs.readFileSync(process.argv[2])
const docs = yaml.parseAllDocuments(file.toString())
const fmt = new Intl.DateTimeFormat('en-US', { dateStyle: 'long' } )
const now = Dates.day.floor(new Date(Date.parse(fmt.format(new Date()))))

let directory = "."
if ( process.argv[3] ) directory = process.argv[3] 

for(let doc of docs) {
  let options = doc.toJS()
  
  options.birth = shiftDate(options.birth)
  const topDir = directory + "/" + options.id
  //fs.mkdirSync(topDir, true)

  fs.mkdirSync(topDir+"/Patient", {recursive: true})
  let patient = makePatient( options.id, options.patient, options.birth )
  fs.writeFileSync( topDir + "/Patient/" + options.id +".json", Buffer.from( JSON.stringify(patient,null,2) ))
  if ( options.immunization ) {
    fs.mkdirSync(topDir+"/Immunization", {recursive: true})
    for( let immz in options.immunization ) {
      let immzr = makeImmunization( immz, options.id, options.immunization[immz], options.birth )
      fs.writeFileSync( topDir+"/Immunization/"+immzr.id+".json", Buffer.from( JSON.stringify(immzr,null,2)))
    }
  }
  if ( options.condition ) {
    fs.mkdirSync(topDir+"/Condition", {recursive: true})
    for( let cond in options.condition ) {
      let condr = makeCondition( cond, options.id, options.condition[cond], options.birth )
      fs.writeFileSync( topDir+"/Condition/"+condr.id+".json", Buffer.from( JSON.stringify(condr,null,2)))
    }
  }

}

function shiftDate( shift, birth ) {

  if ( shift.match(/\d{4,4}-\d{2,2}-\{2,2}/) ) return shift

  let shifted
  let start = now
  let match = shift.match( /([bn]?)\+?(-?\d+)([wdmy])/)
  if ( match[1] == 'b' ) start = new Date(birth)
  switch( match[3] ) {
    case 'd':
      shifted = Dates.day.shift(start, parseInt(match[2]))
      break
    case 'w':
      shifted = Dates.week.shift(start, parseInt(match[2]))
      break
    case 'm':
      shifted = Dates.month.shift(start, parseInt(match[2]))
      break
    case 'y':
      shifted = Dates.year.shift(start, parseInt(match[2]))
      break
  }
  return shifted.toISOString().replace(/T.+/, '')
}

function copyFHIR( resource, options, birth ) {
  if ( options.fhir ) {
    let elements = options.fhir
    for( let element in elements ) {
      if ( element.endsWith('Date') || element.endsWith('DateTime') ) {
        elements[element] = shiftDate( elements[element], birth )
      }
      resource[element] = elements[element]
    }
  }
}

function makePatient ( id, options, birth ) {

  let patient = {
    "resourceType": "Patient",
    "id": "",
    "name": [
      {
        "text": "",
        "use": "official"
      }
    ]
  }
  patient.id = id
  if ( options.name ) {
    patient.name[0].text = options.name 
  } else {
    patient.name[0].text = id
  }
  if ( birth ) {
    patient.birthDate = birth
  }
  copyFHIR( patient, options, birth )

  return patient
}

function makeImmunization( immz, patient, options, birth ) {
  let immunization = {
    "resourceType": "Immunization",
    "id": "",
    "status": "completed",
    "vaccineCode": {
      "coding": []
    },
    "expirationDate": "2024-12-31",
    "lotNumber": "123",
    "patient": {
      "reference": "Patient/"
    },
    "location": {
      "display": "Vaccination Site"
    },
    "occurrenceDateTime": "2023-12-03"
  }
  
  immunization.id = immz+"-"+patient
  immunization.patient.reference = "Patient/"+patient
  immunization.vaccineCode.coding[0] = options.vaccine
  copyFHIR( immunization, options, birth )

  return immunization
}

function makeCondition( cond, patient, options, birth ) {
  let condition = {
    "resourceType": "Condition",
    "id": "",
    "clinicalStatus": {
      "coding": [
        {
          "code": "active"
        }
      ]
    },
    "code": {
      "coding": []
    },
    "subject": {
      "reference": "Patient/"
    },
    "recordedDate": "2023-11-03"
  }

  condition.id = cond+"-"+patient
  condition.subject.reference = "Patient/"+patient
  condition.code.coding[0] = options.code
  copyFHIR( condition, options, birth )

  return condition
}