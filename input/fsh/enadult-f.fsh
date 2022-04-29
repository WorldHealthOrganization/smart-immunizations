Instance:     IMMZ-Patient-enadult-f
InstanceOf:   IPSPatient
Usage:        #example
// Title: ""
// Description: ""
* name[+].text = "calciumadult-f"
* name[=].use = #official
* birthDate = "1996-04-08"
* gender = #female


Instance: IMMZ-Organization-enadult-f
InstanceOf: Organization
Usage: #example
// Title: ""
// Description: ""
* name = "Government Hospital"


Instance: IMMZ-Immunization-BCG-enadult-f
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#418268006 "Product containing attenuated Bacillus Calmette Guerin (medicinal product)"
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enadult-f)
* location.display = "Vaccination Site"
//Set to a random date between 1996-04-08 (Patient birth date) to 2022-04-29 (date of test-case generation)
* occurrenceDateTime =  "2021-02-02"
* performer.actor = Reference(IMMZ-Organization-enadult-f)
//check what protocol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enadult-f)
//Vaccine name: BCG
//Series name: Product containing attenuated Bacillus Calmette Guerin (medicinal product)
* protocolApplied.doseNumberPositiveInt = 1
* protocolApplied.seriesDosesPositiveInt = 1

Instance: IMMZ-Immunization-Cholera-enadult-f
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#409580000 "CVD 103-HgR live attenuated oral cholera vaccine (product)"
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enadult-f)
* location.display = "Vaccination Site"
//Set to a random date between 1996-04-08 (Patient birth date) to 2022-04-29 (date of test-case generation)
* occurrenceDateTime =  "2021-02-02"
* performer.actor = Reference(IMMZ-Organization-enadult-f)
//check what protocol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enadult-f)
//Vaccine name: Cholera
//Series name: CVD 103-HgR live attenuated oral cholera vaccine (product)
* protocolApplied.doseNumberPositiveInt = 2
* protocolApplied.seriesDosesPositiveInt = 3

Instance: IMMZ-Immunization-Dengue-enadult-f
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#N/A "None"
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enadult-f)
* location.display = "Vaccination Site"
//Set to a random date between 1996-04-08 (Patient birth date) to 2022-04-29 (date of test-case generation)
* occurrenceDateTime =  "2021-02-02"
* performer.actor = Reference(IMMZ-Organization-enadult-f)
//check what protocol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enadult-f)
//Vaccine name: Dengue
//Series name: None
* protocolApplied.doseNumberPositiveInt = 1
* protocolApplied.seriesDosesPositiveInt = 3

Instance: IMMZ-Immunization-Diphtheria-enadult-f
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#68113000 "Haemophilus b oligosaccharide conjugate(diphtheria CRM>197< protein conjugate) vaccine (product)"
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enadult-f)
* location.display = "Vaccination Site"
//Set to a random date between 1996-04-08 (Patient birth date) to 2022-04-29 (date of test-case generation)
* occurrenceDateTime =  "2021-02-02"
* performer.actor = Reference(IMMZ-Organization-enadult-f)
//check what protocol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enadult-f)
//Vaccine name: Diphtheria
//Series name: Haemophilus b oligosaccharide conjugate(diphtheria CRM>197< protein conjugate) vaccine (product)
* protocolApplied.doseNumberPositiveInt = 2
* protocolApplied.seriesDosesPositiveInt = 3

Instance: IMMZ-Immunization-Haemophilus-influenzae-B-enadult-f
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#412373007 "Diphtheria + pertussis + tetanus + Haemophilus influenzae type b vaccine (product)"
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enadult-f)
* location.display = "Vaccination Site"
//Set to a random date between 1996-04-08 (Patient birth date) to 2022-04-29 (date of test-case generation)
* occurrenceDateTime =  "2021-02-02"
* performer.actor = Reference(IMMZ-Organization-enadult-f)
//check what protocol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enadult-f)
//Vaccine name: Haemophilus-influenzae-B
//Series name: Diphtheria + pertussis + tetanus + Haemophilus influenzae type b vaccine (product)
* protocolApplied.doseNumberPositiveInt = 3
* protocolApplied.seriesDosesPositiveInt = 3

Instance: IMMZ-Immunization-Hepatitis-A-enadult-f
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#406324009 "Hepatitis A vaccine injection suspension 0.5 mL prefilled syringe (product)"
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enadult-f)
* location.display = "Vaccination Site"
//Set to a random date between 1996-04-08 (Patient birth date) to 2022-04-29 (date of test-case generation)
* occurrenceDateTime =  "2021-02-02"
* performer.actor = Reference(IMMZ-Organization-enadult-f)
//check what protocol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enadult-f)
//Vaccine name: Hepatitis-A
//Series name: Hepatitis A vaccine injection suspension 0.5 mL prefilled syringe (product)
* protocolApplied.doseNumberPositiveInt = 2
* protocolApplied.seriesDosesPositiveInt = 2

Instance: IMMZ-Immunization-Hepatitis-B-enadult-f
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#412403009 "Hepatitis B virus recombinant vaccine (product)"
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enadult-f)
* location.display = "Vaccination Site"
//Set to a random date between 1996-04-08 (Patient birth date) to 2022-04-29 (date of test-case generation)
* occurrenceDateTime =  "2021-02-02"
* performer.actor = Reference(IMMZ-Organization-enadult-f)
//check what protocol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enadult-f)
//Vaccine name: Hepatitis-B
//Series name: Hepatitis B virus recombinant vaccine (product)
* protocolApplied.doseNumberPositiveInt = 1
* protocolApplied.seriesDosesPositiveInt = 1

Instance: IMMZ-Immunization-HPV-enadult-f
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#424519000 "Human papillomavirus vaccine (product)"
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enadult-f)
* location.display = "Vaccination Site"
//Set to a random date between 1996-04-08 (Patient birth date) to 2022-04-29 (date of test-case generation)
* occurrenceDateTime =  "2021-02-02"
* performer.actor = Reference(IMMZ-Organization-enadult-f)
//check what protocol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enadult-f)
//Vaccine name: HPV
//Series name: Human papillomavirus vaccine (product)
* protocolApplied.doseNumberPositiveInt = 3
* protocolApplied.seriesDosesPositiveInt = 3

Instance: IMMZ-Immunization-Japanese-Encephalitis-enadult-f
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#333697005 "Japanese B encephalitis vaccine (product)"
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enadult-f)
* location.display = "Vaccination Site"
//Set to a random date between 1996-04-08 (Patient birth date) to 2022-04-29 (date of test-case generation)
* occurrenceDateTime =  "2021-02-02"
* performer.actor = Reference(IMMZ-Organization-enadult-f)
//check what protocol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enadult-f)
//Vaccine name: Japanese-Encephalitis
//Series name: Japanese B encephalitis vaccine (product)
* protocolApplied.doseNumberPositiveInt = 1
* protocolApplied.seriesDosesPositiveInt = 1

Instance: IMMZ-Immunization-Measles-enadult-f
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#386012008 "Measles vaccine (product)"
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enadult-f)
* location.display = "Vaccination Site"
//Set to a random date between 1996-04-08 (Patient birth date) to 2022-04-29 (date of test-case generation)
* occurrenceDateTime =  "2021-02-02"
* performer.actor = Reference(IMMZ-Organization-enadult-f)
//check what protocol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enadult-f)
//Vaccine name: Measles
//Series name: Measles vaccine (product)
* protocolApplied.doseNumberPositiveInt = 2
* protocolApplied.seriesDosesPositiveInt = 2

Instance: IMMZ-Immunization-Meningococcal-enadult-f
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#698026000 "Haemophilus influenzae b (Ross strain) capsular polysaccharide Meningococcal Protein Conjugate Vaccine/Hepatitis B Surface Antigen Vaccine (product)"
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enadult-f)
* location.display = "Vaccination Site"
//Set to a random date between 1996-04-08 (Patient birth date) to 2022-04-29 (date of test-case generation)
* occurrenceDateTime =  "2021-02-02"
* performer.actor = Reference(IMMZ-Organization-enadult-f)
//check what protocol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enadult-f)
//Vaccine name: Meningococcal
//Series name: Haemophilus influenzae b (Ross strain) capsular polysaccharide Meningococcal Protein Conjugate Vaccine/Hepatitis B Surface Antigen Vaccine (product)
* protocolApplied.doseNumberPositiveInt = 1
* protocolApplied.seriesDosesPositiveInt = 2

Instance: IMMZ-Immunization-Mumps-enadult-f
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#376997008 "Mumps virus vaccine live injection solution 0.5mL vial (product)"
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enadult-f)
* location.display = "Vaccination Site"
//Set to a random date between 1996-04-08 (Patient birth date) to 2022-04-29 (date of test-case generation)
* occurrenceDateTime =  "2021-02-02"
* performer.actor = Reference(IMMZ-Organization-enadult-f)
//check what protocol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enadult-f)
//Vaccine name: Mumps
//Series name: Mumps virus vaccine live injection solution 0.5mL vial (product)
* protocolApplied.doseNumberPositiveInt = 1
* protocolApplied.seriesDosesPositiveInt = 2

Instance: IMMZ-Immunization-Pertussis-enadult-f
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#421245007 "Diphtheria + pertussis + tetanus vaccine (product)"
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enadult-f)
* location.display = "Vaccination Site"
//Set to a random date between 1996-04-08 (Patient birth date) to 2022-04-29 (date of test-case generation)
* occurrenceDateTime =  "2021-02-02"
* performer.actor = Reference(IMMZ-Organization-enadult-f)
//check what protocol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enadult-f)
//Vaccine name: Pertussis
//Series name: Diphtheria + pertussis + tetanus vaccine (product)
* protocolApplied.doseNumberPositiveInt = 1
* protocolApplied.seriesDosesPositiveInt = 3

Instance: IMMZ-Immunization-Pneumococcal-enadult-f
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#333598008 "Pneumococcal vaccine (product)"
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enadult-f)
* location.display = "Vaccination Site"
//Set to a random date between 1996-04-08 (Patient birth date) to 2022-04-29 (date of test-case generation)
* occurrenceDateTime =  "2021-02-02"
* performer.actor = Reference(IMMZ-Organization-enadult-f)
//check what protocol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enadult-f)
//Vaccine name: Pneumococcal
//Series name: Pneumococcal vaccine (product)
* protocolApplied.doseNumberPositiveInt = 2
* protocolApplied.seriesDosesPositiveInt = 3

Instance: IMMZ-Immunization-Polio-enadult-f
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#414003004 "Diphtheria + tetanus + pertussis + inactivated poliovirus vaccine (product)"
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enadult-f)
* location.display = "Vaccination Site"
//Set to a random date between 1996-04-08 (Patient birth date) to 2022-04-29 (date of test-case generation)
* occurrenceDateTime =  "2021-02-02"
* performer.actor = Reference(IMMZ-Organization-enadult-f)
//check what protocol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enadult-f)
//Vaccine name: Polio
//Series name: Diphtheria + tetanus + pertussis + inactivated poliovirus vaccine (product)
* protocolApplied.doseNumberPositiveInt = 2
* protocolApplied.seriesDosesPositiveInt = 4

Instance: IMMZ-Immunization-Rabies-enadult-f
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#333607004 "Rabies inactivated vaccine powder and solvent for injection solution vial (product)"
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enadult-f)
* location.display = "Vaccination Site"
//Set to a random date between 1996-04-08 (Patient birth date) to 2022-04-29 (date of test-case generation)
* occurrenceDateTime =  "2021-02-02"
* performer.actor = Reference(IMMZ-Organization-enadult-f)
//check what protocol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enadult-f)
//Vaccine name: Rabies
//Series name: Rabies inactivated vaccine powder and solvent for injection solution vial (product)
* protocolApplied.doseNumberPositiveInt = 1
* protocolApplied.seriesDosesPositiveInt = 2

Instance: IMMZ-Immunization-Rotavirus-enadult-f
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#116077000 "Rotavirus vaccine (product)"
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enadult-f)
* location.display = "Vaccination Site"
//Set to a random date between 1996-04-08 (Patient birth date) to 2022-04-29 (date of test-case generation)
* occurrenceDateTime =  "2021-02-02"
* performer.actor = Reference(IMMZ-Organization-enadult-f)
//check what protocol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enadult-f)
//Vaccine name: Rotavirus
//Series name: Rotavirus vaccine (product)
* protocolApplied.doseNumberPositiveInt = 2
* protocolApplied.seriesDosesPositiveInt = 3

Instance: IMMZ-Immunization-Rubella-enadult-f
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#440075005 "Live measles + rubella vaccine injection dose form (product)"
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enadult-f)
* location.display = "Vaccination Site"
//Set to a random date between 1996-04-08 (Patient birth date) to 2022-04-29 (date of test-case generation)
* occurrenceDateTime =  "2021-02-02"
* performer.actor = Reference(IMMZ-Organization-enadult-f)
//check what protocol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enadult-f)
//Vaccine name: Rubella
//Series name: Live measles + rubella vaccine injection dose form (product)
* protocolApplied.doseNumberPositiveInt = 1
* protocolApplied.seriesDosesPositiveInt = 1

Instance: IMMZ-Immunization-Seasonal-Influenza-enadult-f
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#418707004 "Inactivated Influenza surface antigen virosome vaccine prefilled syringe (product)"
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enadult-f)
* location.display = "Vaccination Site"
//Set to a random date between 1996-04-08 (Patient birth date) to 2022-04-29 (date of test-case generation)
* occurrenceDateTime =  "2021-02-02"
* performer.actor = Reference(IMMZ-Organization-enadult-f)
//check what protocol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enadult-f)
//Vaccine name: Seasonal-Influenza
//Series name: Inactivated Influenza surface antigen virosome vaccine prefilled syringe (product)
* protocolApplied.doseNumberPositiveInt = 1
* protocolApplied.seriesDosesPositiveInt = 1

Instance: IMMZ-Immunization-Tetanus-enadult-f
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#425555004 "Haemophilus influenzae Type b + tetanus vaccine (product)"
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enadult-f)
* location.display = "Vaccination Site"
//Set to a random date between 1996-04-08 (Patient birth date) to 2022-04-29 (date of test-case generation)
* occurrenceDateTime =  "2021-02-02"
* performer.actor = Reference(IMMZ-Organization-enadult-f)
//check what protocol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enadult-f)
//Vaccine name: Tetanus
//Series name: Haemophilus influenzae Type b + tetanus vaccine (product)
* protocolApplied.doseNumberPositiveInt = 1
* protocolApplied.seriesDosesPositiveInt = 3

Instance: IMMZ-Immunization-Tick-Borne-Encephalitis-enadult-f
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#333699008 "Tick-borne encephalitis vaccine (product)"
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enadult-f)
* location.display = "Vaccination Site"
//Set to a random date between 1996-04-08 (Patient birth date) to 2022-04-29 (date of test-case generation)
* occurrenceDateTime =  "2021-02-02"
* performer.actor = Reference(IMMZ-Organization-enadult-f)
//check what protocol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enadult-f)
//Vaccine name: Tick-Borne-Encephalitis
//Series name: Tick-borne encephalitis vaccine (product)
* protocolApplied.doseNumberPositiveInt = 2
* protocolApplied.seriesDosesPositiveInt = 3

Instance: IMMZ-Immunization-Typhoid-enadult-f
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#333708002 "Hepatitis A 1440u//typhoid 25mcg vaccine injection solution 1mL prefilled syringe (product)"
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enadult-f)
* location.display = "Vaccination Site"
//Set to a random date between 1996-04-08 (Patient birth date) to 2022-04-29 (date of test-case generation)
* occurrenceDateTime =  "2021-02-02"
* performer.actor = Reference(IMMZ-Organization-enadult-f)
//check what protocol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enadult-f)
//Vaccine name: Typhoid
//Series name: Hepatitis A 1440u//typhoid 25mcg vaccine injection solution 1mL prefilled syringe (product)
* protocolApplied.doseNumberPositiveInt = 3
* protocolApplied.seriesDosesPositiveInt = 3

Instance: IMMZ-Immunization-Varicella-enadult-f
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#412530002 "Varicella virus live vaccine (product)"
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enadult-f)
* location.display = "Vaccination Site"
//Set to a random date between 1996-04-08 (Patient birth date) to 2022-04-29 (date of test-case generation)
* occurrenceDateTime =  "2021-02-02"
* performer.actor = Reference(IMMZ-Organization-enadult-f)
//check what protocol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enadult-f)
//Vaccine name: Varicella
//Series name: Varicella virus live vaccine (product)
* protocolApplied.doseNumberPositiveInt = 1
* protocolApplied.seriesDosesPositiveInt = 2

Instance: IMMZ-Immunization-Yellow-Fever-enadult-f
InstanceOf: IPSImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* vaccineCode = SCT#56844000 "Yellow fever vaccine (product)"
* expirationDate = "2024-06-30"
* lotNumber = "123"
* patient = Reference(IMMZ-Patient-enadult-f)
* location.display = "Vaccination Site"
//Set to a random date between 1996-04-08 (Patient birth date) to 2022-04-29 (date of test-case generation)
* occurrenceDateTime =  "2021-02-02"
* performer.actor = Reference(IMMZ-Organization-enadult-f)
//check what protocol applied requirements there are
* protocolApplied.authority = Reference(IMMZ-Organization-enadult-f)
//Vaccine name: Yellow-Fever
//Series name: Yellow fever vaccine (product)
* protocolApplied.doseNumberPositiveInt = 1
* protocolApplied.seriesDosesPositiveInt = 1

Instance: sicklecell-enadult-f
InstanceOf: Condition
Usage: #example
* clinicalStatus = #active
* code = SCT#127040003 "Sickle cell-hemoglobin SS disease (disorder)"
* subject = Reference(Patient/IMMZ-Patient-enadult-f)
* recordedDate = "2022-02-02"

Instance: vnalevelabove-enadult-f
InstanceOf: Observation
Usage: #example
* status = #final
* code = LNC#6524-3 "Rabies virus neutralizing antibody [Units/volume] in Serum by Neutralization test"
* subject = Reference(Patient/IMMZ-Patient-enadult-f)
* effectiveDateTime = "2022-02-02"
* valueQuantity = 0.7 'IU/mL' "international unit/milliliter"