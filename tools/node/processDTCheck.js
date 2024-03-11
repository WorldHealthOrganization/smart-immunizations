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

var file, sheetname, rows, cols

[file, sheetname, rows, cols] = process.argv.slice(2)

const workbook = xlsx.parse( file )
let sheet = workbook.filter( (tab) => { return tab.name === sheetname } )

var title, pseudo, rs, re, cs, ce

[ rs, re ] = getRange( rows );

[ cs, ce ] = getRange( cols );

console.log(rs,cs,sheet[0].data[rs][cs])
console.log(re,ce+1,sheet[0].data[re][ce+1])
