//Example Valuset you can use as a template to create new ones
//change ValueSet name, Id, Title, Description
ValueSet: ARVDrugs-values
Id: ARVDrugs-values
Title: "ARV Drugs values"
Description: "Codes representing ARV Drugs values"
//don't touch status, experimental, immutable
* ^status = #draft
* ^experimental = false
* ^immutable = true
//fill in codes, check AL_CodeSystems.fsh for the short names of the codesystem
* SCT#713540004 "Substance with antiretroviral mechanism of action (substance)"
* SCT#788075003 "Medicinal product acting as antiretroviral agent (product)"