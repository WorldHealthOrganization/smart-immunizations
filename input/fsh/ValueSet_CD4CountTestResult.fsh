//Example Valuset you can use as a template to create new ones
//change ValueSet name, Id, Title, Description
ValueSet: CD4CountTestResult-values
Id: CD4CountTestResult-values
Title: "CD4 Count Test Result"
Description: "Codes representing CD4 Count Test Result values"
//don't touch status, experimental, immutable
* ^status = #draft
* ^experimental = false
* ^immutable = true
//fill in codes, check AL_CodeSystems.fsh for the short names of the codesystem
* SCT#313660005 Absolute CD4 count procedure (procedure)

