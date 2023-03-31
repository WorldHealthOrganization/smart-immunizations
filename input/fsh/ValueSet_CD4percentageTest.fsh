//Example Valuset you can use as a template to create new ones
//change ValueSet name, Id, Title, Description
ValueSet: CD4percentageTestvalues
Id: CD4percentageTest-values
Title: "CD4 Percentage Test"
Description: "Codes representing CD4 Percentage Test values"
//don't touch status, experimental, immutable
* ^status = #draft
* ^experimental = false
* ^immutable = true
//fill in codes, check AL_CodeSystems.fsh for the short names of the codesystem
* SCT#313938009 "CD4 percent count (procedure)"
* SCT#413069009 "Percentage CD4 (T4 cells) count (procedure)"
* LNC#80223-1 "CD4 cells/100 lymphocytes in Specimen"
