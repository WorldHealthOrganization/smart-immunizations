const yaml = require('yaml')
const fs = require('fs')
const Dates = require('date-math')

const file = fs.readFileSync(process.argv[2])
const docs = yaml.parseAllDocuments(file.toString())
const fmt = new Intl.DateTimeFormat('en-US', { year: "numeric", month: "numeric", day: "numeric" } )
const now = new Date(Date.parse(fmt.format(new Date())))

const pdef = process.argv[2].replace('Logic','').replace('.yaml','')

for(let doc of docs) {
  let options = doc.toJSON()
  options.birth = shiftDate(options.birth)

  let comments = doc.contents.items[0].commentBefore.split(/\n/)
  console.log("I have a patient I need to check for immunization recommendation using the",pdef,"PlanDefinition with the following details:.")
  console.log(" -", "Patient was born on", options.birth)
  for( let comment of comments) {
    if ( comment.startsWith('  ') ) continue
    if ( comment.match(/ age /)) continue
    if ( comment.startsWith('##') ) {
      console.log("\n\nExpected Output:", comment.replace('##',''),"\n\n")
      break
    }
    console.log(" -", comment)
    
  }

}

function shiftDate( shift, birth ) {

  if ( shift.match(/\d{4,4}-\d{2,2}-\d{2,2}/) ) return shift

  let shifted
  let start = now
  let match = shift.match( /([bn]?)\+?(-?\d+)([wdmyh])/)
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
    case 'h':
      shifted = Dates.hour.shift(start, parseInt(match[2]))
      break
  }
  return shifted.toISOString().replace(/T.+/, '')
}

