//Example Valuset you can use as a template to create new ones
//change ValueSet name, Id, Title, Description
ValueSet: WC-rBSClassCholeraVaccine-values
Id: WC-rBSClassCholeraVaccine-values
Title: "WC-rBS Class Cholera Vaccine values"
Description: "Codes representing WC-rBS Class Cholera Vaccine values"
//don't touch status, experimental, immutable
* ^status = #draft
* ^experimental = false
* ^immutable = true
//fill in codes, check AL_CodeSystems.fsh for the short names of the codesystem
* SCT#991000221105 "Vaccine product containing only Vibrio cholerae antigen (medicinal product)"

