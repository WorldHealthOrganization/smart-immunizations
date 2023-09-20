//Example Valuset you can use as a template to create new ones
//change ValueSet name, Id, Title, Description
ValueSet: LiveAttenuatedVaccines
Id: LiveAttenuatedVaccines
Title: "Set of live attenuated vaccines"
Description: "Codes representing live attenuated vaccines"
//don't touch status, experimental, immutable
* ^status = #draft
* ^experimental = false
* ^immutable = true
//fill in codes, check AL_CodeSystems.fsh for the short names of the codesystem
* $ICD11#XM8142
* $ICD11#XM72A0
* $ICD11#XM47S0
* $ICD11#XM8L15
* $ICD11#XM8TF3
* $ICD11#XM21H2
* $ICD11#XM4AJ8
* $ICD11#XM9439
* $ICD11#XM2340
* $ICD11#XM79H3
* $ICD11#XM0VX8
* $ICD11#XM0KZ1
* $ICD11#XM4GV0
* $ICD11#XM9PS9
* $ICD11#XM3B09
* $ICD11#XM5V64
* $ICD11#XM33K4
* $ICD11#XM0NS8
* $ICD11#XM3418
* $ICD11#XM5DF6