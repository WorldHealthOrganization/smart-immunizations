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
  return [ start, end ]
}

var file, sheetname, rows, cols

[file, sheetname, rows, cols] = process.argv.slice(2)

const workbook = xlsx.parse( file )
let sheet = workbook.filter( (tab) => { return tab.name === sheetname } )

var title, pseudo, rs, re, cs, ce

[ rs, re ] = getRange( rows );

[ cs, ce ] = getRange( cols );

for( let c = cs; c <= ce; c++ ) {
  for ( let r = rs; r <= re; r++ ) {
    if ( sheet[0].data[r] && sheet[0].data[r][c] && sheet[0].data[r][c] != '-' ) {
      [ title, pseudo ] = sheet[0].data[r][c].split( "\n", 2 )
      title = trim(title)
      pseudo = trim(pseudo)
      console.log( "/*\n@input: " + title + "\n@pseudocode: " + pseudo + "\n*/\ndefine \""+title+"\":\n\n")
    }
  }
}
