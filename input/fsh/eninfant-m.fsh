Instance:     IMMZ-Patient-eninfant-m
InstanceOf:   IPSPatient
Usage:        #example
// Title: ""
// Description: ""
* name[+].text = "seleniuminfant-m"
* name[=].use = #official
* birthDate = "2022-04-28"
* gender = #male


Instance: IMMZ-Organization-eninfant-m
InstanceOf: Organization
Usage: #example
// Title: ""
// Description: ""
* name = "Government Hospital"


Instance: IMMZ-Immunization-BCG-eninfant-m
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#418268006 "Product containing attenuated Bacillus Calmette Guerin (medicinal product)"
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-eninfant-m)
* location.display = "Vaccination Site"
//Set to a random date between 2022-04-28 (Patient birth date) to 2022-04-29 (date of test-case generation)
* occurrenceDateTime =  "2022-04-28"
* performer.actor = Reference(IMMZ-Organization-eninfant-m)
//check what protol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-eninfant-m)
//Vaccine name: BCG
//Series name: Product containing attenuated Bacillus Calmette Guerin (medicinal product)
* protocolApplied.doseNumberPositiveInt = 1
* protocolApplied.seriesDosesPositiveInt = 1

Instance: IMMZ-Immunization-Polio-eninfant-m
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#414003004 "Diphtheria + tetanus + pertussis + inactivated poliovirus vaccine (product)"
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-eninfant-m)
* location.display = "Vaccination Site"
//Set to a random date between 2022-04-28 (Patient birth date) to 2022-04-29 (date of test-case generation)
* occurrenceDateTime =  "2022-04-28"
* performer.actor = Reference(IMMZ-Organization-eninfant-m)
//check what protol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-eninfant-m)
//Vaccine name: Polio
//Series name: Diphtheria + tetanus + pertussis + inactivated poliovirus vaccine (product)
* protocolApplied.doseNumberPositiveInt = 1
* protocolApplied.seriesDosesPositiveInt = 5