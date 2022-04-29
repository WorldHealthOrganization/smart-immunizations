Instance:     IMMZ-Patient-enteen-m
InstanceOf:   IPSPatient
Usage:        #example
// Title: ""
// Description: ""
* name[+].text = "protactiniumteen-m"
* name[=].use = #official
* birthDate = "2006-11-08"
* gender = #male


Instance: IMMZ-Organization-enteen-m
InstanceOf: Organization
Usage: #example
// Title: ""
// Description: ""
* name = "Government Hospital"


Instance: IMMZ-Immunization-BCG-enteen-m
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#418268006 "Product containing attenuated Bacillus Calmette Guerin (medicinal product)"
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enteen-m)
* location.display = "Vaccination Site"
//Set to a random date between 2006-11-08 (Patient birth date) to 2022-04-29 (date of test-case generation)
* occurrenceDateTime =  "2013-11-17"
* performer.actor = Reference(IMMZ-Organization-enteen-m)
//check what protol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enteen-m)
//Vaccine name: BCG
//Series name: Product containing attenuated Bacillus Calmette Guerin (medicinal product)
* protocolApplied.doseNumberPositiveInt = 1
* protocolApplied.seriesDosesPositiveInt = 1

Instance: IMMZ-Immunization-Cholera-enteen-m
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#409580000 "CVD 103-HgR live attenuated oral cholera vaccine (product)"
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enteen-m)
* location.display = "Vaccination Site"
//Set to a random date between 2006-11-08 (Patient birth date) to 2022-04-29 (date of test-case generation)
* occurrenceDateTime =  "2013-11-17"
* performer.actor = Reference(IMMZ-Organization-enteen-m)
//check what protol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enteen-m)
//Vaccine name: Cholera
//Series name: CVD 103-HgR live attenuated oral cholera vaccine (product)
* protocolApplied.doseNumberPositiveInt = 1
* protocolApplied.seriesDosesPositiveInt = 2

Instance: IMMZ-Immunization-Dengue-enteen-m
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#N/A "None"
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enteen-m)
* location.display = "Vaccination Site"
//Set to a random date between 2006-11-08 (Patient birth date) to 2022-04-29 (date of test-case generation)
* occurrenceDateTime =  "2013-11-17"
* performer.actor = Reference(IMMZ-Organization-enteen-m)
//check what protol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enteen-m)
//Vaccine name: Dengue
//Series name: None
* protocolApplied.doseNumberPositiveInt = 1
* protocolApplied.seriesDosesPositiveInt = 3

Instance: IMMZ-Immunization-Diphtheria-enteen-m
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#68113000 "Haemophilus b oligosaccharide conjugate(diphtheria CRM>197< protein conjugate) vaccine (product)"
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enteen-m)
* location.display = "Vaccination Site"
//Set to a random date between 2006-11-08 (Patient birth date) to 2022-04-29 (date of test-case generation)
* occurrenceDateTime =  "2013-11-17"
* performer.actor = Reference(IMMZ-Organization-enteen-m)
//check what protol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enteen-m)
//Vaccine name: Diphtheria
//Series name: Haemophilus b oligosaccharide conjugate(diphtheria CRM>197< protein conjugate) vaccine (product)
* protocolApplied.doseNumberPositiveInt = 3
* protocolApplied.seriesDosesPositiveInt = 5

Instance: IMMZ-Immunization-Haemophilus-influenzae-B-enteen-m
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#412373007 "Diphtheria + pertussis + tetanus + Haemophilus influenzae type b vaccine (product)"
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enteen-m)
* location.display = "Vaccination Site"
//Set to a random date between 2006-11-08 (Patient birth date) to 2022-04-29 (date of test-case generation)
* occurrenceDateTime =  "2013-11-17"
* performer.actor = Reference(IMMZ-Organization-enteen-m)
//check what protol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enteen-m)
//Vaccine name: Haemophilus-influenzae-B
//Series name: Diphtheria + pertussis + tetanus + Haemophilus influenzae type b vaccine (product)
* protocolApplied.doseNumberPositiveInt = 2
* protocolApplied.seriesDosesPositiveInt = 3

Instance: IMMZ-Immunization-Hepatitis-A-enteen-m
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#406324009 "Hepatitis A vaccine injection suspension 0.5 mL prefilled syringe (product)"
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enteen-m)
* location.display = "Vaccination Site"
//Set to a random date between 2006-11-08 (Patient birth date) to 2022-04-29 (date of test-case generation)
* occurrenceDateTime =  "2013-11-17"
* performer.actor = Reference(IMMZ-Organization-enteen-m)
//check what protol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enteen-m)
//Vaccine name: Hepatitis-A
//Series name: Hepatitis A vaccine injection suspension 0.5 mL prefilled syringe (product)
* protocolApplied.doseNumberPositiveInt = 1
* protocolApplied.seriesDosesPositiveInt = 2

Instance: IMMZ-Immunization-Hepatitis-B-enteen-m
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#412403009 "Hepatitis B virus recombinant vaccine (product)"
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enteen-m)
* location.display = "Vaccination Site"
//Set to a random date between 2006-11-08 (Patient birth date) to 2022-04-29 (date of test-case generation)
* occurrenceDateTime =  "2013-11-17"
* performer.actor = Reference(IMMZ-Organization-enteen-m)
//check what protol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enteen-m)
//Vaccine name: Hepatitis-B
//Series name: Hepatitis B virus recombinant vaccine (product)
* protocolApplied.doseNumberPositiveInt = 2
* protocolApplied.seriesDosesPositiveInt = 3

Instance: IMMZ-Immunization-Japanese-Encephalitis-enteen-m
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#333697005 "Japanese B encephalitis vaccine (product)"
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enteen-m)
* location.display = "Vaccination Site"
//Set to a random date between 2006-11-08 (Patient birth date) to 2022-04-29 (date of test-case generation)
* occurrenceDateTime =  "2013-11-17"
* performer.actor = Reference(IMMZ-Organization-enteen-m)
//check what protol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enteen-m)
//Vaccine name: Japanese-Encephalitis
//Series name: Japanese B encephalitis vaccine (product)
* protocolApplied.doseNumberPositiveInt = 1
* protocolApplied.seriesDosesPositiveInt = 1

Instance: IMMZ-Immunization-Measles-enteen-m
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#386012008 "Measles vaccine (product)"
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enteen-m)
* location.display = "Vaccination Site"
//Set to a random date between 2006-11-08 (Patient birth date) to 2022-04-29 (date of test-case generation)
* occurrenceDateTime =  "2013-11-17"
* performer.actor = Reference(IMMZ-Organization-enteen-m)
//check what protol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enteen-m)
//Vaccine name: Measles
//Series name: Measles vaccine (product)
* protocolApplied.doseNumberPositiveInt = 2
* protocolApplied.seriesDosesPositiveInt = 2

Instance: IMMZ-Immunization-Meningococcal-enteen-m
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#698026000 "Haemophilus influenzae b (Ross strain) capsular polysaccharide Meningococcal Protein Conjugate Vaccine/Hepatitis B Surface Antigen Vaccine (product)"
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enteen-m)
* location.display = "Vaccination Site"
//Set to a random date between 2006-11-08 (Patient birth date) to 2022-04-29 (date of test-case generation)
* occurrenceDateTime =  "2013-11-17"
* performer.actor = Reference(IMMZ-Organization-enteen-m)
//check what protol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enteen-m)
//Vaccine name: Meningococcal
//Series name: Haemophilus influenzae b (Ross strain) capsular polysaccharide Meningococcal Protein Conjugate Vaccine/Hepatitis B Surface Antigen Vaccine (product)
* protocolApplied.doseNumberPositiveInt = 1
* protocolApplied.seriesDosesPositiveInt = 1

Instance: IMMZ-Immunization-Mumps-enteen-m
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#376997008 "Mumps virus vaccine live injection solution 0.5mL vial (product)"
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enteen-m)
* location.display = "Vaccination Site"
//Set to a random date between 2006-11-08 (Patient birth date) to 2022-04-29 (date of test-case generation)
* occurrenceDateTime =  "2013-11-17"
* performer.actor = Reference(IMMZ-Organization-enteen-m)
//check what protol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enteen-m)
//Vaccine name: Mumps
//Series name: Mumps virus vaccine live injection solution 0.5mL vial (product)
* protocolApplied.doseNumberPositiveInt = 1
* protocolApplied.seriesDosesPositiveInt = 2

Instance: IMMZ-Immunization-Pertussis-enteen-m
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#421245007 "Diphtheria + pertussis + tetanus vaccine (product)"
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enteen-m)
* location.display = "Vaccination Site"
//Set to a random date between 2006-11-08 (Patient birth date) to 2022-04-29 (date of test-case generation)
* occurrenceDateTime =  "2013-11-17"
* performer.actor = Reference(IMMZ-Organization-enteen-m)
//check what protol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enteen-m)
//Vaccine name: Pertussis
//Series name: Diphtheria + pertussis + tetanus vaccine (product)
* protocolApplied.doseNumberPositiveInt = 1
* protocolApplied.seriesDosesPositiveInt = 3

Instance: IMMZ-Immunization-Pneumococcal-enteen-m
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#333598008 "Pneumococcal vaccine (product)"
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enteen-m)
* location.display = "Vaccination Site"
//Set to a random date between 2006-11-08 (Patient birth date) to 2022-04-29 (date of test-case generation)
* occurrenceDateTime =  "2013-11-17"
* performer.actor = Reference(IMMZ-Organization-enteen-m)
//check what protol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enteen-m)
//Vaccine name: Pneumococcal
//Series name: Pneumococcal vaccine (product)
* protocolApplied.doseNumberPositiveInt = 2
* protocolApplied.seriesDosesPositiveInt = 2

Instance: IMMZ-Immunization-Polio-enteen-m
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#414003004 "Diphtheria + tetanus + pertussis + inactivated poliovirus vaccine (product)"
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enteen-m)
* location.display = "Vaccination Site"
//Set to a random date between 2006-11-08 (Patient birth date) to 2022-04-29 (date of test-case generation)
* occurrenceDateTime =  "2013-11-17"
* performer.actor = Reference(IMMZ-Organization-enteen-m)
//check what protol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enteen-m)
//Vaccine name: Polio
//Series name: Diphtheria + tetanus + pertussis + inactivated poliovirus vaccine (product)
* protocolApplied.doseNumberPositiveInt = 2
* protocolApplied.seriesDosesPositiveInt = 5

Instance: IMMZ-Immunization-Rabies-enteen-m
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#333607004 "Rabies inactivated vaccine powder and solvent for injection solution vial (product)"
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enteen-m)
* location.display = "Vaccination Site"
//Set to a random date between 2006-11-08 (Patient birth date) to 2022-04-29 (date of test-case generation)
* occurrenceDateTime =  "2013-11-17"
* performer.actor = Reference(IMMZ-Organization-enteen-m)
//check what protol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enteen-m)
//Vaccine name: Rabies
//Series name: Rabies inactivated vaccine powder and solvent for injection solution vial (product)
* protocolApplied.doseNumberPositiveInt = 1
* protocolApplied.seriesDosesPositiveInt = 2

Instance: IMMZ-Immunization-Rotavirus-enteen-m
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#116077000 "Rotavirus vaccine (product)"
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enteen-m)
* location.display = "Vaccination Site"
//Set to a random date between 2006-11-08 (Patient birth date) to 2022-04-29 (date of test-case generation)
* occurrenceDateTime =  "2013-11-17"
* performer.actor = Reference(IMMZ-Organization-enteen-m)
//check what protol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enteen-m)
//Vaccine name: Rotavirus
//Series name: Rotavirus vaccine (product)
* protocolApplied.doseNumberPositiveInt = 2
* protocolApplied.seriesDosesPositiveInt = 3

Instance: IMMZ-Immunization-Rubella-enteen-m
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#440075005 "Live measles + rubella vaccine injection dose form (product)"
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enteen-m)
* location.display = "Vaccination Site"
//Set to a random date between 2006-11-08 (Patient birth date) to 2022-04-29 (date of test-case generation)
* occurrenceDateTime =  "2013-11-17"
* performer.actor = Reference(IMMZ-Organization-enteen-m)
//check what protol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enteen-m)
//Vaccine name: Rubella
//Series name: Live measles + rubella vaccine injection dose form (product)
* protocolApplied.doseNumberPositiveInt = 1
* protocolApplied.seriesDosesPositiveInt = 1

Instance: IMMZ-Immunization-Seasonal-Influenza-enteen-m
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#418707004 "Inactivated Influenza surface antigen virosome vaccine prefilled syringe (product)"
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enteen-m)
* location.display = "Vaccination Site"
//Set to a random date between 2006-11-08 (Patient birth date) to 2022-04-29 (date of test-case generation)
* occurrenceDateTime =  "2013-11-17"
* performer.actor = Reference(IMMZ-Organization-enteen-m)
//check what protol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enteen-m)
//Vaccine name: Seasonal-Influenza
//Series name: Inactivated Influenza surface antigen virosome vaccine prefilled syringe (product)
* protocolApplied.doseNumberPositiveInt = 2
* protocolApplied.seriesDosesPositiveInt = 2

Instance: IMMZ-Immunization-Tetanus-enteen-m
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#425555004 "Haemophilus influenzae Type b + tetanus vaccine (product)"
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enteen-m)
* location.display = "Vaccination Site"
//Set to a random date between 2006-11-08 (Patient birth date) to 2022-04-29 (date of test-case generation)
* occurrenceDateTime =  "2013-11-17"
* performer.actor = Reference(IMMZ-Organization-enteen-m)
//check what protol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enteen-m)
//Vaccine name: Tetanus
//Series name: Haemophilus influenzae Type b + tetanus vaccine (product)
* protocolApplied.doseNumberPositiveInt = 3
* protocolApplied.seriesDosesPositiveInt = 3

Instance: IMMZ-Immunization-Tick-Borne-Encephalitis-enteen-m
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#333699008 "Tick-borne encephalitis vaccine (product)"
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enteen-m)
* location.display = "Vaccination Site"
//Set to a random date between 2006-11-08 (Patient birth date) to 2022-04-29 (date of test-case generation)
* occurrenceDateTime =  "2013-11-17"
* performer.actor = Reference(IMMZ-Organization-enteen-m)
//check what protol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enteen-m)
//Vaccine name: Tick-Borne-Encephalitis
//Series name: Tick-borne encephalitis vaccine (product)
* protocolApplied.doseNumberPositiveInt = 1
* protocolApplied.seriesDosesPositiveInt = 3

Instance: IMMZ-Immunization-Typhoid-enteen-m
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#333708002 "Hepatitis A 1440u//typhoid 25mcg vaccine injection solution 1mL prefilled syringe (product)"
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enteen-m)
* location.display = "Vaccination Site"
//Set to a random date between 2006-11-08 (Patient birth date) to 2022-04-29 (date of test-case generation)
* occurrenceDateTime =  "2013-11-17"
* performer.actor = Reference(IMMZ-Organization-enteen-m)
//check what protol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enteen-m)
//Vaccine name: Typhoid
//Series name: Hepatitis A 1440u//typhoid 25mcg vaccine injection solution 1mL prefilled syringe (product)
* protocolApplied.doseNumberPositiveInt = 2
* protocolApplied.seriesDosesPositiveInt = 3

Instance: IMMZ-Immunization-Varicella-enteen-m
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#412530002 "Varicella virus live vaccine (product)"
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enteen-m)
* location.display = "Vaccination Site"
//Set to a random date between 2006-11-08 (Patient birth date) to 2022-04-29 (date of test-case generation)
* occurrenceDateTime =  "2013-11-17"
* performer.actor = Reference(IMMZ-Organization-enteen-m)
//check what protol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enteen-m)
//Vaccine name: Varicella
//Series name: Varicella virus live vaccine (product)
* protocolApplied.doseNumberPositiveInt = 1
* protocolApplied.seriesDosesPositiveInt = 2

Instance: IMMZ-Immunization-Yellow-Fever-enteen-m
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#56844000 "Yellow fever vaccine (product)"
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enteen-m)
* location.display = "Vaccination Site"
//Set to a random date between 2006-11-08 (Patient birth date) to 2022-04-29 (date of test-case generation)
* occurrenceDateTime =  "2013-11-17"
* performer.actor = Reference(IMMZ-Organization-enteen-m)
//check what protol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enteen-m)
//Vaccine name: Yellow-Fever
//Series name: Yellow fever vaccine (product)
* protocolApplied.doseNumberPositiveInt = 1
* protocolApplied.seriesDosesPositiveInt = 1







