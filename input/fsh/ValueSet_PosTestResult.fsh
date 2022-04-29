//Example Valuset you can use as a template to create new ones
//change ValueSet name, Id, Title, Description
ValueSet: PositiveTestResult-values
Id: PositiveTestResult-values
Title: "Positive Test Result valuest"
Description: "Codes representing Positive Test Result values"
//don't touch status, experimental, immutable
* ^status = #draft
* ^experimental = false
* ^immutable = true
//fill in codes, check AL_CodeSystems.fsh for the short names of the codesystem
* SCT#10828004 "Positive (qualifier value)"