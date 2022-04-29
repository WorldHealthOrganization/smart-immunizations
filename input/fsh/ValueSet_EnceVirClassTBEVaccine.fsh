//Example Valuset you can use as a template to create new ones
//change ValueSet name, Id, Title, Description
ValueSet: EnceVirClassTBEVaccine-values
Id: EnceVirClassTBEVaccine-values
Title: "EnceVir Class TBE Vaccine values"
Description: "Codes representing EnceVir Class TBE Vaccine values"
//don't touch status, experimental, immutable
* ^status = #draft
* ^experimental = false
* ^immutable = true
//fill in codes, check AL_CodeSystems.fsh for the short names of the codesystem
* SCT#871719005  "Vaccine product containing only Tick-borne encephalitis virus antigen (medicinal product)"
* SCT#836403007 "Vaccine product containing Tick-borne encephalitis virus antigen (medicinal product)"