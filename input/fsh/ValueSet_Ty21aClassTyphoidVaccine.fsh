//Example Valuset you can use as a template to create new ones
//change ValueSet name, Id, Title, Description
ValueSet:Ty21aClassTyphoidVaccine-values
Id: Ty21aClassTyphoidVaccine-values
Title: "Ty21a Class Typhoid Vaccine values"
Description: "Codes representing Ty21a Class Typhoid Vaccine values"
//don't touch status, experimental, immutable
* ^status = #draft
* ^experimental = false
* ^immutable = true
//fill in codes, check AL_CodeSystems.fsh for the short names of the codesystem
* SCT#961000221100 "Vaccine product containing only Salmonella enterica subspecies enterica serovar Typhi antigen (medicinal product)"
* ICD11#XM8BU8 "Typhoid vaccines"
