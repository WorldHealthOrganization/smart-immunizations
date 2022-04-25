//Example Valuset you can use as a template to create new ones
//change ValueSet name, Id, Title, Description
ValueSet: Immunocompromised-values
Id: Immunocompromised-values
Title: "Immunocompromised valueset"
Description: "Codes representing Immunocompromised values"
//don't touch status, experimental, immutable
* ^status = #draft
* ^experimental = false
* ^immutable = true
//fill in codes, check AL_CodeSystems.fsh for the short names of the codesystem
* SCT#370388006 "Patient immunocompromised"
* SCT#370391006 "Patient immunosuppressed"