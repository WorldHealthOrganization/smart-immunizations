//Example Valuset you can use as a template to create new ones
//change ValueSet name, Id, Title, Description
ValueSet: IGRATestResult-values
Id: IGRATestResult-values
Title: "IGRA Test Result values"
Description: "Codes representing IGRA Test Result values"
//don't touch status, experimental, immutable
* ^status = #draft
* ^experimental = false
* ^immutable = true
//fill in codes, check AL_CodeSystems.fsh for the short names of the codesystem
* 
