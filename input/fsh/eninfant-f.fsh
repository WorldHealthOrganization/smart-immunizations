Instance:     IMMZ-Patient-eninfant-f
InstanceOf:   IPSPatient
Usage:        #example
// Title: ""
// Description: ""
* name[+].text = "hassiuminfant-f"
* name[=].use = #official
* birthDate = "2022-04-28"
* gender = #female


Instance: IMMZ-Organization-eninfant-f
InstanceOf: Organization
Usage: #example
// Title: ""
// Description: ""
* name = "Government Hospital"


Instance: IMMZ-Immunization-BCG-eninfant-f
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#418268006 "Product containing attenuated Bacillus Calmette Guerin (medicinal product)"
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-eninfant-f)
* location.display = "Vaccination Site"
//Set to a random date between 2022-04-28 (Patient birth date) to 2022-04-29 (date of test-case generation)
* occurrenceDateTime =  "2022-04-28"
* performer.actor = Reference(IMMZ-Organization-eninfant-f)
//check what protol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-eninfant-f)
//Vaccine name: BCG
//Series name: Product containing attenuated Bacillus Calmette Guerin (medicinal product)
* protocolApplied.doseNumberPositiveInt = 1
* protocolApplied.seriesDosesPositiveInt = 1

Instance: IMMZ-Immunization-Hepatitis-B-eninfant-f
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#412403009 "Hepatitis B virus recombinant vaccine (product)"
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-eninfant-f)
* location.display = "Vaccination Site"
//Set to a random date between 2022-04-28 (Patient birth date) to 2022-04-29 (date of test-case generation)
* occurrenceDateTime =  "2022-04-28"
* performer.actor = Reference(IMMZ-Organization-eninfant-f)
//check what protol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-eninfant-f)
//Vaccine name: Hepatitis-B
//Series name: Hepatitis B virus recombinant vaccine (product)
* protocolApplied.doseNumberPositiveInt = 1
* protocolApplied.seriesDosesPositiveInt = 4


Instance: IMMZ-Immunization-Polio-eninfant-f
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#414003004 "Diphtheria + tetanus + pertussis + inactivated poliovirus vaccine (product)"
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-eninfant-f)
* location.display = "Vaccination Site"
//Set to a random date between 2022-04-28 (Patient birth date) to 2022-04-29 (date of test-case generation)
* occurrenceDateTime =  "2022-04-28"
* performer.actor = Reference(IMMZ-Organization-eninfant-f)
//check what protol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-eninfant-f)
//Vaccine name: Polio
//Series name: Diphtheria + tetanus + pertussis + inactivated poliovirus vaccine (product)
* protocolApplied.doseNumberPositiveInt = 1
* protocolApplied.seriesDosesPositiveInt = 5

Instance: preterm-eninfant-f
InstanceOf: Observation
Usage: #example
* status = #final
* code = SCT#302080006 "Finding of birth outcome (finding)"
* subject = Reference(Patient/IMMZ-Patient-eninfant-f)
* effectiveDateTime = "2022-04-28"
* valueCodeableConcept = SCT#367494004 "Premature birth of newborn (finding)"

Instance: birthweightnormal-eninfant-f
InstanceOf: Observation
Usage: #example
* status = #final
* code = SCT#276610007 "Birthweight"
* subject = Reference(Patient/IMMZ-Patient-eninfant-f)
* effectiveDateTime = "2022-04-28"
* valueQuantity = 6855 'g' "gram"