//Example Valuset you can use as a template to create new ones
//change ValueSet name, Id, Title, Description
ValueSet: HIVstatusvalues
Id: HIVstatus-values
Title: "HIV status values"
Description: "Codes representing HIV status values"
//don't touch status, experimental, immutable
* ^status = #draft
* ^experimental = false
* ^immutable = true
//fill in codes, check AL_CodeSystems.fsh for the short names of the codesystem
* $SCT#278977008 "Human immunodeficiency virus status (observable entity)"
* $ICD11#1C62.Z "Human immunodeficiency virus disease without mention of associated disease or condition, clinical stage unspecified"
* $ICD11#MA14.0 "Laboratory evidence of human immunodeficiency virus"
