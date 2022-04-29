//Example Valuset you can use as a template to create new ones
//change ValueSet name, Id, Title, Description
ValueSet: WCClassCholeraVaccine-values
Id: WCClassCholeraVaccine-values
Title: "WC Class Cholera Vaccine values"
Description: "Codes representing WC Class Cholera Vaccine values"
//don't touch status, experimental, immutable
* ^status = #draft
* ^experimental = false
* ^immutable = true
//fill in codes, check AL_CodeSystems.fsh for the short names of the codesystem
* SCT#991000221105 "Vaccine product containing only Vibrio cholerae antigen (medicinal product)"

