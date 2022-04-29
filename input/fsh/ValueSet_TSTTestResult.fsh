//Example Valuset you can use as a template to create new ones
//change ValueSet name, Id, Title, Description
ValueSet: TSTTestResult-values
Id: TSTTestResult-values
Title: "TST Test Result"
Description: "Codes representing TST Test Result values"
//don't touch status, experimental, immutable
* ^status = #draft
* ^experimental = false
* ^immutable = true
//fill in codes, check AL_CodeSystems.fsh for the short names of the codesystem
* ICD11#MA14.10 "Abnormal reaction to tuberculin test"
* LNC#39263-9 "Tuberculin screen test status"