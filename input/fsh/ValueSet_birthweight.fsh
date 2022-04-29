//Example Valuset you can use as a template to create new ones
//change ValueSet name, Id, Title, Description
ValueSet: Birthweight-values
Id: Birthweight-values
Title: "Birthweight valueset"
Description: "Codes representing Birthweight values"
//don't touch status, experimental, immutable
* ^status = #draft
* ^experimental = false
* ^immutable = true
//fill in codes, check AL_CodeSystems.fsh for the short names of the codesystem
* SCT#276610007 "Birthweight"
