Instance:     IMMZ-Patient-enchild-f
InstanceOf:   IPSPatient
Usage:        #example
// Title: ""
// Description: ""
* name[+].text = "tinchild-f"
* name[=].use = #official
* birthDate = "2014-08-03"
* gender = #female


Instance: IMMZ-Organization-enchild-f
InstanceOf: Organization
Usage: #example
// Title: ""
// Description: ""
* name = "Government Hospital"


Instance: IMMZ-Immunization-BCG-enchild-f
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#418268006 "Product containing attenuated Bacillus Calmette Guerin (medicinal product)"
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enchild-f)
* location.display = "Vaccination Site"
//Set to a random date between 2014-08-03 (Patient birth date) to 2022-04-29 (date of test-case generation)
* occurrenceDateTime =  "2019-03-20"
* performer.actor = Reference(IMMZ-Organization-enchild-f)
//check what protol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enchild-f)
//Vaccine name: BCG
//Series name: Product containing attenuated Bacillus Calmette Guerin (medicinal product)
* protocolApplied.doseNumberPositiveInt = 1
* protocolApplied.seriesDosesPositiveInt = 1

Instance: IMMZ-Immunization-Cholera-enchild-f
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#35736007 "Cholera vaccine (product)"
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enchild-f)
* location.display = "Vaccination Site"
//Set to a random date between 2014-08-03 (Patient birth date) to 2022-04-29 (date of test-case generation)
* occurrenceDateTime =  "2019-03-20"
* performer.actor = Reference(IMMZ-Organization-enchild-f)
//check what protol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enchild-f)
//Vaccine name: Cholera
//Series name: Cholera vaccine (product)
* protocolApplied.doseNumberPositiveInt = 1
* protocolApplied.seriesDosesPositiveInt = 1

Instance: IMMZ-Immunization-Dengue-enchild-f
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#N/A "None"
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enchild-f)
* location.display = "Vaccination Site"
//Set to a random date between 2014-08-03 (Patient birth date) to 2022-04-29 (date of test-case generation)
* occurrenceDateTime =  "2019-03-20"
* performer.actor = Reference(IMMZ-Organization-enchild-f)
//check what protol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enchild-f)
//Vaccine name: Dengue
//Series name: None
* protocolApplied.doseNumberPositiveInt = 1
* protocolApplied.seriesDosesPositiveInt = 1

Instance: IMMZ-Immunization-Diphtheria-enchild-f
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#426081003 "Diphtheria + tetanus + pertussis + recombinant hepatitis B virus vaccine (product)"
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enchild-f)
* location.display = "Vaccination Site"
//Set to a random date between 2014-08-03 (Patient birth date) to 2022-04-29 (date of test-case generation)
* occurrenceDateTime =  "2019-03-20"
* performer.actor = Reference(IMMZ-Organization-enchild-f)
//check what protol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enchild-f)
//Vaccine name: Diphtheria
//Series name: Diphtheria + tetanus + pertussis + recombinant hepatitis B virus vaccine (product)
* protocolApplied.doseNumberPositiveInt = 1
* protocolApplied.seriesDosesPositiveInt = 1

Instance: IMMZ-Immunization-Haemophilus-influenzae-B-enchild-f
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#412373007 "Diphtheria + pertussis + tetanus + Haemophilus influenzae type b vaccine (product)"
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enchild-f)
* location.display = "Vaccination Site"
//Set to a random date between 2014-08-03 (Patient birth date) to 2022-04-29 (date of test-case generation)
* occurrenceDateTime =  "2019-03-20"
* performer.actor = Reference(IMMZ-Organization-enchild-f)
//check what protol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enchild-f)
//Vaccine name: Haemophilus-influenzae-B
//Series name: Diphtheria + pertussis + tetanus + Haemophilus influenzae type b vaccine (product)
* protocolApplied.doseNumberPositiveInt = 1
* protocolApplied.seriesDosesPositiveInt = 1

Instance: IMMZ-Immunization-Hepatitis-A-enchild-f
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#406324009 "Hepatitis A vaccine injection suspension 0.5 mL prefilled syringe (product)"
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enchild-f)
* location.display = "Vaccination Site"
//Set to a random date between 2014-08-03 (Patient birth date) to 2022-04-29 (date of test-case generation)
* occurrenceDateTime =  "2019-03-20"
* performer.actor = Reference(IMMZ-Organization-enchild-f)
//check what protol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enchild-f)
//Vaccine name: Hepatitis-A
//Series name: Hepatitis A vaccine injection suspension 0.5 mL prefilled syringe (product)
* protocolApplied.doseNumberPositiveInt = 1
* protocolApplied.seriesDosesPositiveInt = 1

Instance: IMMZ-Immunization-Hepatitis-B-enchild-f
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#333573007 "Hepatitis B vaccine 40micrograms/mL injection suspension 1ml vial (product)"
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enchild-f)
* location.display = "Vaccination Site"
//Set to a random date between 2014-08-03 (Patient birth date) to 2022-04-29 (date of test-case generation)
* occurrenceDateTime =  "2019-03-20"
* performer.actor = Reference(IMMZ-Organization-enchild-f)
//check what protol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enchild-f)
//Vaccine name: Hepatitis-B
//Series name: Hepatitis B vaccine 40micrograms/mL injection suspension 1ml vial (product)
* protocolApplied.doseNumberPositiveInt = 1
* protocolApplied.seriesDosesPositiveInt = 1

Instance: IMMZ-Immunization-HPV-enchild-f
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#424519000 "Human papillomavirus vaccine (product)"
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enchild-f)
* location.display = "Vaccination Site"
//Set to a random date between 2014-08-03 (Patient birth date) to 2022-04-29 (date of test-case generation)
* occurrenceDateTime =  "2019-03-20"
* performer.actor = Reference(IMMZ-Organization-enchild-f)
//check what protol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enchild-f)
//Vaccine name: HPV
//Series name: Human papillomavirus vaccine (product)
* protocolApplied.doseNumberPositiveInt = 1
* protocolApplied.seriesDosesPositiveInt = 1

Instance: IMMZ-Immunization-Japanese-Encephalitis-enchild-f
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#333697005 "Japanese B encephalitis vaccine (product)"
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enchild-f)
* location.display = "Vaccination Site"
//Set to a random date between 2014-08-03 (Patient birth date) to 2022-04-29 (date of test-case generation)
* occurrenceDateTime =  "2019-03-20"
* performer.actor = Reference(IMMZ-Organization-enchild-f)
//check what protol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enchild-f)
//Vaccine name: Japanese-Encephalitis
//Series name: Japanese B encephalitis vaccine (product)
* protocolApplied.doseNumberPositiveInt = 1
* protocolApplied.seriesDosesPositiveInt = 1

Instance: IMMZ-Immunization-Measles-enchild-f
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#440075005 "Live measles + rubella vaccine injection dose form (product)"
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enchild-f)
* location.display = "Vaccination Site"
//Set to a random date between 2014-08-03 (Patient birth date) to 2022-04-29 (date of test-case generation)
* occurrenceDateTime =  "2019-03-20"
* performer.actor = Reference(IMMZ-Organization-enchild-f)
//check what protol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enchild-f)
//Vaccine name: Measles
//Series name: Live measles + rubella vaccine injection dose form (product)
* protocolApplied.doseNumberPositiveInt = 1
* protocolApplied.seriesDosesPositiveInt = 1

Instance: IMMZ-Immunization-Meningococcal-enchild-f
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#421281005 "Meningococcal A+C vaccine (product)"
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enchild-f)
* location.display = "Vaccination Site"
//Set to a random date between 2014-08-03 (Patient birth date) to 2022-04-29 (date of test-case generation)
* occurrenceDateTime =  "2019-03-20"
* performer.actor = Reference(IMMZ-Organization-enchild-f)
//check what protol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enchild-f)
//Vaccine name: Meningococcal
//Series name: Meningococcal A+C vaccine (product)
* protocolApplied.doseNumberPositiveInt = 1
* protocolApplied.seriesDosesPositiveInt = 1

Instance: IMMZ-Immunization-Mumps-enchild-f
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#90043005 "Mumps live virus vaccine (product)"
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enchild-f)
* location.display = "Vaccination Site"
//Set to a random date between 2014-08-03 (Patient birth date) to 2022-04-29 (date of test-case generation)
* occurrenceDateTime =  "2019-03-20"
* performer.actor = Reference(IMMZ-Organization-enchild-f)
//check what protol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enchild-f)
//Vaccine name: Mumps
//Series name: Mumps live virus vaccine (product)
* protocolApplied.doseNumberPositiveInt = 1
* protocolApplied.seriesDosesPositiveInt = 1

Instance: IMMZ-Immunization-Pertussis-enchild-f
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#414004005 "Diphtheria + tetanus + pertussis + poliomyelitis + haemophilus influenzae b vaccine (product)"
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enchild-f)
* location.display = "Vaccination Site"
//Set to a random date between 2014-08-03 (Patient birth date) to 2022-04-29 (date of test-case generation)
* occurrenceDateTime =  "2019-03-20"
* performer.actor = Reference(IMMZ-Organization-enchild-f)
//check what protol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enchild-f)
//Vaccine name: Pertussis
//Series name: Diphtheria + tetanus + pertussis + poliomyelitis + haemophilus influenzae b vaccine (product)
* protocolApplied.doseNumberPositiveInt = 1
* protocolApplied.seriesDosesPositiveInt = 1

Instance: IMMZ-Immunization-Pneumococcal-enchild-f
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#333598008 "Pneumococcal vaccine (product)"
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enchild-f)
* location.display = "Vaccination Site"
//Set to a random date between 2014-08-03 (Patient birth date) to 2022-04-29 (date of test-case generation)
* occurrenceDateTime =  "2019-03-20"
* performer.actor = Reference(IMMZ-Organization-enchild-f)
//check what protol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enchild-f)
//Vaccine name: Pneumococcal
//Series name: Pneumococcal vaccine (product)
* protocolApplied.doseNumberPositiveInt = 1
* protocolApplied.seriesDosesPositiveInt = 1

Instance: IMMZ-Immunization-Polio-enchild-f
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#426361005 "Diphtheria toxoid 30 iu/tetanus toxoid 40 iu/acellular pertussis 25micrograms/recombinant hepatitis B virus surface antigen 10micrograms/inactivated poliomyelitis injection solution 0.5mL prefilled syringe (product)"
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enchild-f)
* location.display = "Vaccination Site"
//Set to a random date between 2014-08-03 (Patient birth date) to 2022-04-29 (date of test-case generation)
* occurrenceDateTime =  "2019-03-20"
* performer.actor = Reference(IMMZ-Organization-enchild-f)
//check what protol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enchild-f)
//Vaccine name: Polio
//Series name: Diphtheria toxoid 30 iu/tetanus toxoid 40 iu/acellular pertussis 25micrograms/recombinant hepatitis B virus surface antigen 10micrograms/inactivated poliomyelitis injection solution 0.5mL prefilled syringe (product)
* protocolApplied.doseNumberPositiveInt = 1
* protocolApplied.seriesDosesPositiveInt = 1

Instance: IMMZ-Immunization-Rabies-enchild-f
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#333606008 "Rabies vaccine (product)"
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enchild-f)
* location.display = "Vaccination Site"
//Set to a random date between 2014-08-03 (Patient birth date) to 2022-04-29 (date of test-case generation)
* occurrenceDateTime =  "2019-03-20"
* performer.actor = Reference(IMMZ-Organization-enchild-f)
//check what protol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enchild-f)
//Vaccine name: Rabies
//Series name: Rabies vaccine (product)
* protocolApplied.doseNumberPositiveInt = 1
* protocolApplied.seriesDosesPositiveInt = 1

Instance: IMMZ-Immunization-Rotavirus-enchild-f
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#116077000 "Rotavirus vaccine (product)"
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enchild-f)
* location.display = "Vaccination Site"
//Set to a random date between 2014-08-03 (Patient birth date) to 2022-04-29 (date of test-case generation)
* occurrenceDateTime =  "2019-03-20"
* performer.actor = Reference(IMMZ-Organization-enchild-f)
//check what protol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enchild-f)
//Vaccine name: Rotavirus
//Series name: Rotavirus vaccine (product)
* protocolApplied.doseNumberPositiveInt = 1
* protocolApplied.seriesDosesPositiveInt = 1

Instance: IMMZ-Immunization-Rubella-enchild-f
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#347653005 "Rubella live vaccine powder and solvent for injection solution vial (product)"
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enchild-f)
* location.display = "Vaccination Site"
//Set to a random date between 2014-08-03 (Patient birth date) to 2022-04-29 (date of test-case generation)
* occurrenceDateTime =  "2019-03-20"
* performer.actor = Reference(IMMZ-Organization-enchild-f)
//check what protol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enchild-f)
//Vaccine name: Rubella
//Series name: Rubella live vaccine powder and solvent for injection solution vial (product)
* protocolApplied.doseNumberPositiveInt = 1
* protocolApplied.seriesDosesPositiveInt = 1

Instance: IMMZ-Immunization-Seasonal-Influenza-enchild-f
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#418707004 "Inactivated Influenza surface antigen virosome vaccine prefilled syringe (product)"
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enchild-f)
* location.display = "Vaccination Site"
//Set to a random date between 2014-08-03 (Patient birth date) to 2022-04-29 (date of test-case generation)
* occurrenceDateTime =  "2019-03-20"
* performer.actor = Reference(IMMZ-Organization-enchild-f)
//check what protol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enchild-f)
//Vaccine name: Seasonal-Influenza
//Series name: Inactivated Influenza surface antigen virosome vaccine prefilled syringe (product)
* protocolApplied.doseNumberPositiveInt = 1
* protocolApplied.seriesDosesPositiveInt = 1

Instance: IMMZ-Immunization-Tetanus-enchild-f
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#427806004 "Diphtheria + tetanus + haemophilus influenzae type b vaccine (product)"
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enchild-f)
* location.display = "Vaccination Site"
//Set to a random date between 2014-08-03 (Patient birth date) to 2022-04-29 (date of test-case generation)
* occurrenceDateTime =  "2019-03-20"
* performer.actor = Reference(IMMZ-Organization-enchild-f)
//check what protol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enchild-f)
//Vaccine name: Tetanus
//Series name: Diphtheria + tetanus + haemophilus influenzae type b vaccine (product)
* protocolApplied.doseNumberPositiveInt = 1
* protocolApplied.seriesDosesPositiveInt = 1

Instance: IMMZ-Immunization-Tick-Borne-Encephalitis-enchild-f
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#333699008 "Tick-borne encephalitis vaccine (product)"
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enchild-f)
* location.display = "Vaccination Site"
//Set to a random date between 2014-08-03 (Patient birth date) to 2022-04-29 (date of test-case generation)
* occurrenceDateTime =  "2019-03-20"
* performer.actor = Reference(IMMZ-Organization-enchild-f)
//check what protol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enchild-f)
//Vaccine name: Tick-Borne-Encephalitis
//Series name: Tick-borne encephalitis vaccine (product)
* protocolApplied.doseNumberPositiveInt = 1
* protocolApplied.seriesDosesPositiveInt = 1

Instance: IMMZ-Immunization-Typhoid-enchild-f
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#333707007 "Hepatitis A+typhoid vaccine (product)"
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enchild-f)
* location.display = "Vaccination Site"
//Set to a random date between 2014-08-03 (Patient birth date) to 2022-04-29 (date of test-case generation)
* occurrenceDateTime =  "2019-03-20"
* performer.actor = Reference(IMMZ-Organization-enchild-f)
//check what protol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enchild-f)
//Vaccine name: Typhoid
//Series name: Hepatitis A+typhoid vaccine (product)
* protocolApplied.doseNumberPositiveInt = 1
* protocolApplied.seriesDosesPositiveInt = 1

Instance: IMMZ-Immunization-Varicella-enchild-f
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#419771007 "Measles/mumps/rubella/varicella vaccine powder and solvent for injection solution vial (product)"
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enchild-f)
* location.display = "Vaccination Site"
//Set to a random date between 2014-08-03 (Patient birth date) to 2022-04-29 (date of test-case generation)
* occurrenceDateTime =  "2019-03-20"
* performer.actor = Reference(IMMZ-Organization-enchild-f)
//check what protol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enchild-f)
//Vaccine name: Varicella
//Series name: Measles/mumps/rubella/varicella vaccine powder and solvent for injection solution vial (product)
* protocolApplied.doseNumberPositiveInt = 1
* protocolApplied.seriesDosesPositiveInt = 1

Instance: IMMZ-Immunization-Yellow-Fever-enchild-f
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#333652001 "Yellow fever live vaccine injection solution vial (product)"
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enchild-f)
* location.display = "Vaccination Site"
//Set to a random date between 2014-08-03 (Patient birth date) to 2022-04-29 (date of test-case generation)
* occurrenceDateTime =  "2019-03-20"
* performer.actor = Reference(IMMZ-Organization-enchild-f)
//check what protol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enchild-f)
//Vaccine name: Yellow-Fever
//Series name: Yellow fever live vaccine injection solution vial (product)
* protocolApplied.doseNumberPositiveInt = 1
* protocolApplied.seriesDosesPositiveInt = 1