//Example Valuset you can use as a template to create new ones
//change ValueSet name, Id, Title, Description
ValueSet: MenAconjugatevaccine-values
Id: MenAconjugatevaccine-values
Title: "MenA conjugate vaccine values"
Description: "Codes representing MenA conjugate vaccine values"
//don't touch status, experimental, immutable
* ^status = #draft
* ^experimental = false
* ^immutable = true
//fill in codes, check AL_CodeSystems.fsh for the short names of the codesystem
* ICD11#XM2WV4 "Meningococcal vaccines"

