Instance:     IMMZ-Patient-enchild-m
InstanceOf:   IPSPatient
Usage:        #example
// Title: ""
// Description: ""
* name[+].text = "phosphoruschild-m"
* name[=].use = #official
* birthDate = "2015-04-15"
* gender = #male


Instance: IMMZ-Organization-enchild-m
InstanceOf: Organization
Usage: #example
// Title: ""
// Description: ""
* name = "Government Hospital"


Instance: IMMZ-Immunization-BCG-enchild-m
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#418268006 "Product containing attenuated Bacillus Calmette Guerin (medicinal product)"
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enchild-m)
* location.display = "Vaccination Site"
//Set to a random date between 2015-04-15 (Patient birth date) to 2022-04-29 (date of test-case generation)
* occurrenceDateTime =  "2021-09-03"
* performer.actor = Reference(IMMZ-Organization-enchild-m)
//check what protol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enchild-m)
//Vaccine name: BCG
//Series name: Product containing attenuated Bacillus Calmette Guerin (medicinal product)
* protocolApplied.doseNumberPositiveInt = 1
* protocolApplied.seriesDosesPositiveInt = 1

Instance: IMMZ-Immunization-Cholera-enchild-m
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#35736007 "Cholera vaccine (product)"
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enchild-m)
* location.display = "Vaccination Site"
//Set to a random date between 2015-04-15 (Patient birth date) to 2022-04-29 (date of test-case generation)
* occurrenceDateTime =  "2021-09-03"
* performer.actor = Reference(IMMZ-Organization-enchild-m)
//check what protol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enchild-m)
//Vaccine name: Cholera
//Series name: Cholera vaccine (product)
* protocolApplied.doseNumberPositiveInt = 1
* protocolApplied.seriesDosesPositiveInt = 1

Instance: IMMZ-Immunization-Dengue-enchild-m
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#N/A "None"
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enchild-m)
* location.display = "Vaccination Site"
//Set to a random date between 2015-04-15 (Patient birth date) to 2022-04-29 (date of test-case generation)
* occurrenceDateTime =  "2021-09-03"
* performer.actor = Reference(IMMZ-Organization-enchild-m)
//check what protol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enchild-m)
//Vaccine name: Dengue
//Series name: None
* protocolApplied.doseNumberPositiveInt = 1
* protocolApplied.seriesDosesPositiveInt = 1

Instance: IMMZ-Immunization-Diphtheria-enchild-m
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#426081003 "Diphtheria + tetanus + pertussis + recombinant hepatitis B virus vaccine (product)"
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enchild-m)
* location.display = "Vaccination Site"
//Set to a random date between 2015-04-15 (Patient birth date) to 2022-04-29 (date of test-case generation)
* occurrenceDateTime =  "2021-09-03"
* performer.actor = Reference(IMMZ-Organization-enchild-m)
//check what protol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enchild-m)
//Vaccine name: Diphtheria
//Series name: Diphtheria + tetanus + pertussis + recombinant hepatitis B virus vaccine (product)
* protocolApplied.doseNumberPositiveInt = 1
* protocolApplied.seriesDosesPositiveInt = 1

Instance: IMMZ-Immunization-Haemophilus-influenzae-B-enchild-m
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#412373007 "Diphtheria + pertussis + tetanus + Haemophilus influenzae type b vaccine (product)"
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enchild-m)
* location.display = "Vaccination Site"
//Set to a random date between 2015-04-15 (Patient birth date) to 2022-04-29 (date of test-case generation)
* occurrenceDateTime =  "2021-09-03"
* performer.actor = Reference(IMMZ-Organization-enchild-m)
//check what protol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enchild-m)
//Vaccine name: Haemophilus-influenzae-B
//Series name: Diphtheria + pertussis + tetanus + Haemophilus influenzae type b vaccine (product)
* protocolApplied.doseNumberPositiveInt = 1
* protocolApplied.seriesDosesPositiveInt = 1

Instance: IMMZ-Immunization-Hepatitis-A-enchild-m
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#406324009 "Hepatitis A vaccine injection suspension 0.5 mL prefilled syringe (product)"
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enchild-m)
* location.display = "Vaccination Site"
//Set to a random date between 2015-04-15 (Patient birth date) to 2022-04-29 (date of test-case generation)
* occurrenceDateTime =  "2021-09-03"
* performer.actor = Reference(IMMZ-Organization-enchild-m)
//check what protol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enchild-m)
//Vaccine name: Hepatitis-A
//Series name: Hepatitis A vaccine injection suspension 0.5 mL prefilled syringe (product)
* protocolApplied.doseNumberPositiveInt = 1
* protocolApplied.seriesDosesPositiveInt = 1

Instance: IMMZ-Immunization-Hepatitis-B-enchild-m
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#333573007 "Hepatitis B vaccine 40micrograms/mL injection suspension 1ml vial (product)"
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enchild-m)
* location.display = "Vaccination Site"
//Set to a random date between 2015-04-15 (Patient birth date) to 2022-04-29 (date of test-case generation)
* occurrenceDateTime =  "2021-09-03"
* performer.actor = Reference(IMMZ-Organization-enchild-m)
//check what protol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enchild-m)
//Vaccine name: Hepatitis-B
//Series name: Hepatitis B vaccine 40micrograms/mL injection suspension 1ml vial (product)
* protocolApplied.doseNumberPositiveInt = 1
* protocolApplied.seriesDosesPositiveInt = 1

Instance: IMMZ-Immunization-HPV-enchild-m
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#424519000 "Human papillomavirus vaccine (product)"
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enchild-m)
* location.display = "Vaccination Site"
//Set to a random date between 2015-04-15 (Patient birth date) to 2022-04-29 (date of test-case generation)
* occurrenceDateTime =  "2021-09-03"
* performer.actor = Reference(IMMZ-Organization-enchild-m)
//check what protol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enchild-m)
//Vaccine name: HPV
//Series name: Human papillomavirus vaccine (product)
* protocolApplied.doseNumberPositiveInt = 1
* protocolApplied.seriesDosesPositiveInt = 1

Instance: IMMZ-Immunization-Japanese-Encephalitis-enchild-m
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#333697005 "Japanese B encephalitis vaccine (product)"
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enchild-m)
* location.display = "Vaccination Site"
//Set to a random date between 2015-04-15 (Patient birth date) to 2022-04-29 (date of test-case generation)
* occurrenceDateTime =  "2021-09-03"
* performer.actor = Reference(IMMZ-Organization-enchild-m)
//check what protol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enchild-m)
//Vaccine name: Japanese-Encephalitis
//Series name: Japanese B encephalitis vaccine (product)
* protocolApplied.doseNumberPositiveInt = 1
* protocolApplied.seriesDosesPositiveInt = 1

Instance: IMMZ-Immunization-Measles-enchild-m
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#440075005 "Live measles + rubella vaccine injection dose form (product)"
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enchild-m)
* location.display = "Vaccination Site"
//Set to a random date between 2015-04-15 (Patient birth date) to 2022-04-29 (date of test-case generation)
* occurrenceDateTime =  "2021-09-03"
* performer.actor = Reference(IMMZ-Organization-enchild-m)
//check what protol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enchild-m)
//Vaccine name: Measles
//Series name: Live measles + rubella vaccine injection dose form (product)
* protocolApplied.doseNumberPositiveInt = 1
* protocolApplied.seriesDosesPositiveInt = 1

Instance: IMMZ-Immunization-Meningococcal-enchild-m
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#421281005 "Meningococcal A+C vaccine (product)"
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enchild-m)
* location.display = "Vaccination Site"
//Set to a random date between 2015-04-15 (Patient birth date) to 2022-04-29 (date of test-case generation)
* occurrenceDateTime =  "2021-09-03"
* performer.actor = Reference(IMMZ-Organization-enchild-m)
//check what protol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enchild-m)
//Vaccine name: Meningococcal
//Series name: Meningococcal A+C vaccine (product)
* protocolApplied.doseNumberPositiveInt = 1
* protocolApplied.seriesDosesPositiveInt = 1

Instance: IMMZ-Immunization-Mumps-enchild-m
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#90043005 "Mumps live virus vaccine (product)"
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enchild-m)
* location.display = "Vaccination Site"
//Set to a random date between 2015-04-15 (Patient birth date) to 2022-04-29 (date of test-case generation)
* occurrenceDateTime =  "2021-09-03"
* performer.actor = Reference(IMMZ-Organization-enchild-m)
//check what protol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enchild-m)
//Vaccine name: Mumps
//Series name: Mumps live virus vaccine (product)
* protocolApplied.doseNumberPositiveInt = 1
* protocolApplied.seriesDosesPositiveInt = 1

Instance: IMMZ-Immunization-Pertussis-enchild-m
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#414004005 "Diphtheria + tetanus + pertussis + poliomyelitis + haemophilus influenzae b vaccine (product)"
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enchild-m)
* location.display = "Vaccination Site"
//Set to a random date between 2015-04-15 (Patient birth date) to 2022-04-29 (date of test-case generation)
* occurrenceDateTime =  "2021-09-03"
* performer.actor = Reference(IMMZ-Organization-enchild-m)
//check what protol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enchild-m)
//Vaccine name: Pertussis
//Series name: Diphtheria + tetanus + pertussis + poliomyelitis + haemophilus influenzae b vaccine (product)
* protocolApplied.doseNumberPositiveInt = 1
* protocolApplied.seriesDosesPositiveInt = 1

Instance: IMMZ-Immunization-Pneumococcal-enchild-m
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#333598008 "Pneumococcal vaccine (product)"
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enchild-m)
* location.display = "Vaccination Site"
//Set to a random date between 2015-04-15 (Patient birth date) to 2022-04-29 (date of test-case generation)
* occurrenceDateTime =  "2021-09-03"
* performer.actor = Reference(IMMZ-Organization-enchild-m)
//check what protol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enchild-m)
//Vaccine name: Pneumococcal
//Series name: Pneumococcal vaccine (product)
* protocolApplied.doseNumberPositiveInt = 1
* protocolApplied.seriesDosesPositiveInt = 1

Instance: IMMZ-Immunization-Polio-enchild-m
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#426361005 "Diphtheria toxoid 30 iu/tetanus toxoid 40 iu/acellular pertussis 25micrograms/recombinant hepatitis B virus surface antigen 10micrograms/inactivated poliomyelitis injection solution 0.5mL prefilled syringe (product)"
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enchild-m)
* location.display = "Vaccination Site"
//Set to a random date between 2015-04-15 (Patient birth date) to 2022-04-29 (date of test-case generation)
* occurrenceDateTime =  "2021-09-03"
* performer.actor = Reference(IMMZ-Organization-enchild-m)
//check what protol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enchild-m)
//Vaccine name: Polio
//Series name: Diphtheria toxoid 30 iu/tetanus toxoid 40 iu/acellular pertussis 25micrograms/recombinant hepatitis B virus surface antigen 10micrograms/inactivated poliomyelitis injection solution 0.5mL prefilled syringe (product)
* protocolApplied.doseNumberPositiveInt = 1
* protocolApplied.seriesDosesPositiveInt = 1

Instance: IMMZ-Immunization-Rabies-enchild-m
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#333606008 "Rabies vaccine (product)"
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enchild-m)
* location.display = "Vaccination Site"
//Set to a random date between 2015-04-15 (Patient birth date) to 2022-04-29 (date of test-case generation)
* occurrenceDateTime =  "2021-09-03"
* performer.actor = Reference(IMMZ-Organization-enchild-m)
//check what protol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enchild-m)
//Vaccine name: Rabies
//Series name: Rabies vaccine (product)
* protocolApplied.doseNumberPositiveInt = 1
* protocolApplied.seriesDosesPositiveInt = 1

Instance: IMMZ-Immunization-Rotavirus-enchild-m
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#116077000 "Rotavirus vaccine (product)"
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enchild-m)
* location.display = "Vaccination Site"
//Set to a random date between 2015-04-15 (Patient birth date) to 2022-04-29 (date of test-case generation)
* occurrenceDateTime =  "2021-09-03"
* performer.actor = Reference(IMMZ-Organization-enchild-m)
//check what protol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enchild-m)
//Vaccine name: Rotavirus
//Series name: Rotavirus vaccine (product)
* protocolApplied.doseNumberPositiveInt = 1
* protocolApplied.seriesDosesPositiveInt = 1

Instance: IMMZ-Immunization-Rubella-enchild-m
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#347653005 "Rubella live vaccine powder and solvent for injection solution vial (product)"
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enchild-m)
* location.display = "Vaccination Site"
//Set to a random date between 2015-04-15 (Patient birth date) to 2022-04-29 (date of test-case generation)
* occurrenceDateTime =  "2021-09-03"
* performer.actor = Reference(IMMZ-Organization-enchild-m)
//check what protol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enchild-m)
//Vaccine name: Rubella
//Series name: Rubella live vaccine powder and solvent for injection solution vial (product)
* protocolApplied.doseNumberPositiveInt = 1
* protocolApplied.seriesDosesPositiveInt = 1

Instance: IMMZ-Immunization-Seasonal-Influenza-enchild-m
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#418707004 "Inactivated Influenza surface antigen virosome vaccine prefilled syringe (product)"
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enchild-m)
* location.display = "Vaccination Site"
//Set to a random date between 2015-04-15 (Patient birth date) to 2022-04-29 (date of test-case generation)
* occurrenceDateTime =  "2021-09-03"
* performer.actor = Reference(IMMZ-Organization-enchild-m)
//check what protol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enchild-m)
//Vaccine name: Seasonal-Influenza
//Series name: Inactivated Influenza surface antigen virosome vaccine prefilled syringe (product)
* protocolApplied.doseNumberPositiveInt = 1
* protocolApplied.seriesDosesPositiveInt = 1

Instance: IMMZ-Immunization-Tetanus-enchild-m
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#427806004 "Diphtheria + tetanus + haemophilus influenzae type b vaccine (product)"
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enchild-m)
* location.display = "Vaccination Site"
//Set to a random date between 2015-04-15 (Patient birth date) to 2022-04-29 (date of test-case generation)
* occurrenceDateTime =  "2021-09-03"
* performer.actor = Reference(IMMZ-Organization-enchild-m)
//check what protol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enchild-m)
//Vaccine name: Tetanus
//Series name: Diphtheria + tetanus + haemophilus influenzae type b vaccine (product)
* protocolApplied.doseNumberPositiveInt = 1
* protocolApplied.seriesDosesPositiveInt = 1

Instance: IMMZ-Immunization-Tick-Borne-Encephalitis-enchild-m
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#333699008 "Tick-borne encephalitis vaccine (product)"
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enchild-m)
* location.display = "Vaccination Site"
//Set to a random date between 2015-04-15 (Patient birth date) to 2022-04-29 (date of test-case generation)
* occurrenceDateTime =  "2021-09-03"
* performer.actor = Reference(IMMZ-Organization-enchild-m)
//check what protol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enchild-m)
//Vaccine name: Tick-Borne-Encephalitis
//Series name: Tick-borne encephalitis vaccine (product)
* protocolApplied.doseNumberPositiveInt = 1
* protocolApplied.seriesDosesPositiveInt = 1

Instance: IMMZ-Immunization-Typhoid-enchild-m
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#333707007 "Hepatitis A+typhoid vaccine (product)"
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enchild-m)
* location.display = "Vaccination Site"
//Set to a random date between 2015-04-15 (Patient birth date) to 2022-04-29 (date of test-case generation)
* occurrenceDateTime =  "2021-09-03"
* performer.actor = Reference(IMMZ-Organization-enchild-m)
//check what protol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enchild-m)
//Vaccine name: Typhoid
//Series name: Hepatitis A+typhoid vaccine (product)
* protocolApplied.doseNumberPositiveInt = 1
* protocolApplied.seriesDosesPositiveInt = 1

Instance: IMMZ-Immunization-Varicella-enchild-m
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#419771007 "Measles/mumps/rubella/varicella vaccine powder and solvent for injection solution vial (product)"
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enchild-m)
* location.display = "Vaccination Site"
//Set to a random date between 2015-04-15 (Patient birth date) to 2022-04-29 (date of test-case generation)
* occurrenceDateTime =  "2021-09-03"
* performer.actor = Reference(IMMZ-Organization-enchild-m)
//check what protol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enchild-m)
//Vaccine name: Varicella
//Series name: Measles/mumps/rubella/varicella vaccine powder and solvent for injection solution vial (product)
* protocolApplied.doseNumberPositiveInt = 1
* protocolApplied.seriesDosesPositiveInt = 1

Instance: IMMZ-Immunization-Yellow-Fever-enchild-m
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#333652001 "Yellow fever live vaccine injection solution vial (product)"
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enchild-m)
* location.display = "Vaccination Site"
//Set to a random date between 2015-04-15 (Patient birth date) to 2022-04-29 (date of test-case generation)
* occurrenceDateTime =  "2021-09-03"
* performer.actor = Reference(IMMZ-Organization-enchild-m)
//check what protol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enchild-m)
//Vaccine name: Yellow-Fever
//Series name: Yellow fever live vaccine injection solution vial (product)
* protocolApplied.doseNumberPositiveInt = 1
* protocolApplied.seriesDosesPositiveInt = 1