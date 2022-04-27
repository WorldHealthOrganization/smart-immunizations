//Example Valuset you can use as a template to create new ones
//change ValueSet name, Id, Title, Description
ValueSet: HIVstatus-values
Id: HIVstatus-values
Title: "HIV status valuest"
Description: "Codes representing HIV status values"
//don't touch status, experimental, immutable
* ^status = #draft
* ^experimental = false
* ^immutable = true
//fill in codes, check AL_CodeSystems.fsh for the short names of the codesystem
* SCT#278977008 "Human immunodeficiency virus status (observable entity)"
