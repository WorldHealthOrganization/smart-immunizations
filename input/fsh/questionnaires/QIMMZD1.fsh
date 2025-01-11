Instance:     QIMMZD1
InstanceOf:   sdc-questionnaire-extr-smap
Title:        "IMMZ.D1.Capture or update client history"
Description:  "Questionnaire for IMMZ.D1.Capture or update client history"
Usage: #definition

* version = "2025"
* status = #draft
* subjectType = #Patient
* language = #en
* contained[+] = IMMZ.D1.DE103
* contained[+] = IMMZ.D1.DE10
* contained[+] = IMMZ.D1.DE84
* contained[+] = IMMZ.D1.DE87
* contained[+] = IMMZ.D1.DE35
* contained[+] = IMMZ.D1.DE52
* contained[+] = IMMZ.D1.DE56
* contained[+] = IMMZ.D1.DE61
* contained[+] = IMMZ.D1.DE65
* contained[+] = IMMZ.D1.DE68
* contained[+] = IMMZ.D1.DE73
* contained[+] = IMMZ.D1.DE99
* contained[+] = IMMZ.D1.DE77
* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-targetStructureMap"
* extension[=].valueCanonical = "http://smart.who.int/immunizations/StructureMap/"

* insert Question(birthDose, Birth dose, boolean, true, false)
* item[=]
  * code[+] = IMMZ.D1#DE109
  * enableWhen[+]
    * question = "vaccineType"
    * operator = #=
    * answerCoding = IMMZ.Z#DE6
  * enableWhen[+]
    * question = "vaccineType"
    * operator = #=
    * answerCoding = IMMZ.Z#DE14
  * enableBehavior = #any
* insert Question(typeOfDose, Type of dose, choice, true, false)
* item[=]
  * answerValueSet = Canonical(IMMZ.D1.DE103)
  * code[+] = IMMZ.D1#DE103
* insert Question(completedThePrimaryVaccinationSeries, Completed the primary vaccination series, boolean, false, false)
* item[=]
  * code[+] = IMMZ.D1#DE8
* insert Question(completedTheBoosterSeries, Completed the booster series, boolean, false, false)
* item[=]
  * code[+] = IMMZ.D1#DE102
* insert Question(dateWhenPrimaryVaccinationSeriesWasCompleted, Date when primary vaccination series was completed, date, true, false)
* item[=]
  * extension[+]
    * url = "http://hl7.org/fhir/StructureDefinition/maxValue"
    * valueDate = 2100-01-01
      * extension[+]
        * url = "http://hl7.org/fhir/StructureDefinition/cqf-calculatedValue"
        * valueString = "today()"
  * code[+] = IMMZ.D1#DE81
  * enableWhen[+]
    * question = "completedThePrimaryVaccinationSeries"
    * operator = #=
    * answerBoolean = true
* insert Question(hivStatus, HIV status, choice, false, false)
* item[=]
  * answerValueSet = Canonical(IMMZ.D1.DE10)
  * code[+] = IMMZ.D1#DE10
  * code[+] = $LNC#55277-8 "HIV Status"
  * code[+] = $SCT#278977008 "HIV status"
* insert Question(pretermBirth, Preterm birth, boolean, false, false)
* item[=]
  * code[+] = IMMZ.D1#DE15
  * code[+] = $ICD11#KA21.4 "Preterm newborn"
  * code[+] = $LNC#76517-2 "Premature infant"
  * code[+] = $SCT#395507008 "Premature infant (finding)"
* insert Question(immunocompromised, Immunocompromised, boolean, false, false)
* item[=]
  * code[+] = IMMZ.D1#DE16
  * code[+] = $ICD11#4B4Z "Diseases of the immune system, unspecified"
  * code[+] = $LNC#96381-9 "Immune status"
  * code[+] = $SCT#370388006 "Patient immunocompromised (finding)"
* insert Question(currentlyOnArt, Currently on ART, boolean, true, false)
* item[=]
  * code[+] = IMMZ.D1#DE17
  * enableWhen[+]
    * question = "hivStatus"
    * operator = #=
    * answerCoding = IMMZ.D1#DE11
* insert Question(typeOfTbInfectionTestPerformed, Type of TB infection test performed, choice, true, false)
* item[=]
  * answerValueSet = Canonical(IMMZ.D1.DE84)
  * code[+] = IMMZ.D1#DE84
  * enableWhen[+]
    * question = "vaccineType"
    * operator = #=
    * answerCoding = IMMZ.Z#DE1
* insert Question(tbInfectionTestResult, TB infection test result, choice, true, false)
* item[=]
  * answerValueSet = Canonical(IMMZ.D1.DE87)
  * code[+] = IMMZ.D1#DE87
  * enableWhen[+]
    * question = "typeOfTbInfectionTestPerformed"
    * operator = #exists
    * answerBoolean = true
* insert Question(immunologicallyStable, Immunologically stable, boolean, true, false)
* item[=]
  * code[+] = IMMZ.D1#DE93
  * enableWhen[+]
    * question = "vaccineType"
    * operator = #=
    * answerCoding = IMMZ.Z#DE1
  * enableWhen[+]
    * question = "vaccineType"
    * operator = #=
    * answerCoding = IMMZ.Z#DE21
  * enableBehavior = #any
* insert Question(clinicallyWell, Clinically well, boolean, true, false)
* item[=]
  * code[+] = IMMZ.D1#DE94
  * enableWhen[+]
    * question = "vaccineType"
    * operator = #=
    * answerCoding = IMMZ.Z#DE1
* insert Question(birthWeightInGrams, Birth weight in grams, decimal, true, false)
* item[=]
  * extension[+]
    * url = "http://hl7.org/fhir/StructureDefinition/minValue"
    * valueDecimal = 0.0
  * code[+] = IMMZ.D1#DE29
  * code[+] = $ICD11#KA21 "Disorders of newborn related to short gestation or low birth weight, not elsewhere classified"
  * code[+] = $LNC#8339-4 "Birth weight measured"
  * enableWhen[+]
    * question = "vaccineType"
    * operator = #=
    * answerCoding = IMMZ.Z#DE1
  * enableWhen[+]
    * question = "vaccineType"
    * operator = #=
    * answerCoding = IMMZ.Z#DE6
  * enableBehavior = #any
* insert Question(typeOfPoliovirusDose, Type of poliovirus dose, choice, true, false)
* item[=]
  * answerValueSet = Canonical(IMMZ.D1.DE35)
  * code[+] = IMMZ.D1#DE35
  * code[+] = $ICD11#XM0N50 "Poliomyelitis vaccines"
  * enableWhen[+]
    * question = "vaccineType"
    * operator = #=
    * answerCoding = IMMZ.Z#DE14
* insert Question(artStartDate, ART start date, date, true, false)
* item[=]
  * extension[+]
    * url = "http://hl7.org/fhir/StructureDefinition/maxValue"
    * valueDate = 2100-01-01
      * extension[+]
        * url = "http://hl7.org/fhir/StructureDefinition/cqf-calculatedValue"
        * valueString = "today()"
  * code[+] = IMMZ.D1#DE49
  * enableWhen[+]
    * question = "vaccineType"
    * operator = #=
    * answerCoding = IMMZ.Z#DE9
* insert Question(highRiskOfPneumococcalInfection , High risk of pneumococcal infection , boolean, true, false)
* item[=]
  * code[+] = IMMZ.D1#DE96
  * enableWhen[+]
    * question = "vaccineType"
    * operator = #=
    * answerCoding = IMMZ.Z#DE13
* insert Question(typeOfJeDose, Type of JE dose, choice, true, false)
* item[=]
  * answerValueSet = Canonical(IMMZ.D1.DE52)
  * code[+] = IMMZ.D1#DE52
  * enableWhen[+]
    * question = "vaccineType"
    * operator = #=
    * answerCoding = IMMZ.Z#DE8
* insert Question(typeOfTbeDose, Type of TBE dose, choice, true, false)
* item[=]
  * answerValueSet = Canonical(IMMZ.D1.DE56)
  * code[+] = IMMZ.D1#DE56
  * enableWhen[+]
    * question = "vaccineType"
    * operator = #=
    * answerCoding = IMMZ.Z#DE20
* insert Question(typeOfTyphoidDose, Type of typhoid dose, choice, true, false)
* item[=]
  * answerValueSet = Canonical(IMMZ.D1.DE61)
  * code[+] = IMMZ.D1#DE61
  * enableWhen[+]
    * question = "vaccineType"
    * operator = #=
    * answerCoding = IMMZ.Z#DE21
* insert Question(typeOfCholeraDose, Type of cholera dose, choice, true, false)
* item[=]
  * answerValueSet = Canonical(IMMZ.D1.DE65)
  * code[+] = IMMZ.D1#DE65  
  * enableWhen[+]
    * question = "vaccineType"
    * operator = #=
    * answerCoding = IMMZ.Z#DE2
* insert Question(typeOfMeningococcalDose, Type of meningococcal dose, choice, true, false)
* item[=]
  * answerValueSet = Canonical(IMMZ.D1.DE68)
  * code[+] = IMMZ.D1#DE68
  * enableWhen[+]
    * question = "vaccineType"
    * operator = #=
    * answerCoding = IMMZ.Z#DE10
* insert Question(ageInMonthsWhenClientReceivedFirstMeningococcalDose, Age in months when client received first meningococcal dose, decimal, true, false)
* item[=]
  * extension[+]
    * url = "http://hl7.org/fhir/StructureDefinition/minValue"
    * valueDecimal = 0.0
  * code[+] = IMMZ.D1#DE72
  * enableWhen[+]
    * question = "vaccineType"
    * operator = #=
    * answerCoding = IMMZ.Z#DE10
* insert Question(typeOfHepatitisADose, Type of hepatitis A dose, choice, true, false)
* item[=]
  * answerValueSet = Canonical(IMMZ.D1.DE73)
  * code[+] = IMMZ.D1#DE73
  * enableWhen[+]
    * question = "vaccineType"
    * operator = #=
    * answerCoding = IMMZ.Z#DE5
* insert Question(typeOfHepatitisBDose, Type of hepatitis B dose, choice, true, false)
* item[=]
  * answerValueSet = Canonical(IMMZ.D1.DE99)
  * code[+] = IMMZ.D1#DE99
  * enableWhen[+]
    * question = "vaccineType"
    * operator = #=
    * answerCoding = IMMZ.Z#DE6
* insert Question(vnaLevel, VNA level, decimal, true, false)
* item[=]
  * extension[+]
    * url = "http://hl7.org/fhir/StructureDefinition/minValue"
    * valueDecimal = 0.0
  * code[+] = IMMZ.D1#DE76
  * enableWhen[+]
    * question = "vaccineType"
    * operator = #=
    * answerCoding = IMMZ.Z#DE15
* insert Question(riskOfOccupationalExposureToRabiesVirus, Risk of occupational exposure to rabies virus, boolean, true, false)
* item[=]
  * code[+] = IMMZ.D1#DE98
  * enableWhen[+]
    * question = "vaccineType"
    * operator = #=
    * answerCoding = IMMZ.Z#DE15
* insert Question(dengueSerostatus, Dengue serostatus, choice, false, false)
* item[=]
  * answerValueSet = Canonical(IMMZ.D1.DE77)
  * code[+] = IMMZ.D1#DE77
  * enableWhen[+]
    * question = "vaccineType"
    * operator = #=
    * answerCoding = IMMZ.Z#DE25
* insert Question(vaccineType, Vaccine type, choice, true, false)
* item[=]
  * answerValueSet = Canonical(IMMZ.Z.VS)
  * code[+] = IMMZ.D#DE19
  * code[+] = $LNC#39236-5 "Vaccine code (CPT [Current Procedural Terminology]) CPHS (Children's Preventative Health System)"
  * code[+] = $SCT#787859002 "Vaccine product (medicinal product)"
* insert Question(dateAndTimeOfVaccination, Date and time of vaccination, dateTime, true, false)
* item[=]
  * code[+] = IMMZ.D#DE20
  * code[+] = $LNC#30952-6 "Date and time of vaccination"
* insert Question(contactDate, Contact date, dateTime, false, false)
* item[=]
  * extension[+]
    * url = "http://hl7.org/fhir/StructureDefinition/maxValue"
    * valueDateTime = 2100-01-01
      * extension[+]
        * url = "http://hl7.org/fhir/StructureDefinition/cqf-calculatedValue"
        * valueString = "now()"
  * code[+] = IMMZ.D#DE201
  * code[+] = $LNC#21975-8 "Date last contact"
  * code[+] = $SCT#406543005 "Date of visit"
* insert Question(ancContactNumber, ANC contact number, integer, false, false)
* item[=]
  * code[+] = IMMZ.D#DE202
  * code[+] = $LNC#75612-2 "Number of visits to this health-care entity in the last 12 months"
  * code[+] = $SCT#3401000175105 "Total number of prenatal care visits"
* insert Question(doseNumber, Dose number, integer, true, false)
* item[=]
  * extension[+]
    * url = "http://hl7.org/fhir/StructureDefinition/minValue"
    * valueInteger = 0
  * code[+] = IMMZ.D#DE124
