//Example Valuset you can use as a template to create new ones
//change ValueSet name, Id, Title, Description
ValueSet: Preterm-values
Id: Preterm-values
Title: "Preterm valueset"
Description: "Codes representing Preterm values"
//don't touch status, experimental, immutable
* ^status = #draft
* ^experimental = false
* ^immutable = true
//fill in codes, check AL_CodeSystems.fsh for the short names of the codesystem
* SCT#367494004 "Premature birth of newborn (finding)"
* SCT#4886009 "Premature birth of newborn male (finding)"
* SCT#59403008 "Premature birth of newborn female (finding)"