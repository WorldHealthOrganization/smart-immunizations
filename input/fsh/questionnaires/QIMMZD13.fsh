Instance:     QIMMZD13
InstanceOf:   sdc-questionnaire-extr-smap
Title:        "IMMZ.D13.Update client record"
Description:  "Questionnaire for IMMZ.D13.Update client record"
Usage: #definition

* version = "2025"
* status = #draft
* subjectType = #Patient
* language = #en
* contained[+] = IMMZ.D1.DE103
* contained[+] = IMMZ.D1.DE10
* contained[+] = IMMZ.D1.DE35
* contained[+] = IMMZ.D1.DE52
* contained[+] = IMMZ.D1.DE56
* contained[+] = IMMZ.D1.DE61
* contained[+] = IMMZ.D1.DE65
* contained[+] = IMMZ.D1.DE68
* contained[+] = IMMZ.D1.DE73
* contained[+] = IMMZ.D1.DE99
* contained[+] = IMMZ.D.DE1
* contained[+] = IMMZ.D.DE5
* contained[+] = IMMZ.D.DE18
* contained[+] = IMMZ.D.DE22
* contained[+] = IMMZ.D.DE23
* contained[+] = IMMZ.D.DE25
* contained[+] = IMMZ.D.DE126
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
* insert Question(typeOfPoliovirusDose, Type of poliovirus dose, choice, true, false)
* item[=]
  * answerValueSet = Canonical(IMMZ.D1.DE35)
  * code[+] = IMMZ.D1#DE35
  * code[+] = $ICD11#XM0N50 "Poliomyelitis vaccines"
  * enableWhen[+]
    * question = "vaccineType"
    * operator = #=
    * answerCoding = IMMZ.Z#DE14 
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
* insert Question(typeOfHepatitisADose, Type of hepatitis A dose, choice, false, false)
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
* insert Question(immunizationEventStatus, Immunization event status, choice, true, false)
* item[=]
  * answerValueSet = Canonical(IMMZ.D.DE1)
  * code[+] = IMMZ.D#DE1
* insert Question(reasonVaccineWasNotAdministered, Reason vaccine was not administered, choice, true, false)
* item[=]
  * answerValueSet = Canonical(IMMZ.D.DE5)
  * code[+] = IMMZ.D#DE5
  * code[+] = $ICD11#QC04 "Immunization not carried out"
  * enableWhen[+]
    * question = "immunizationEventStatus"
    * operator = #=
    * answerCoding = IMMZ.D#DE4
* insert Question(vaccineBrand, Vaccine brand, choice, true, false)
* item[=]
  * answerValueSet = Canonical(IMMZ.D.DE18)
  * code[+] = IMMZ.D#DE18
* insert Question(liveVaccine, Live vaccine, boolean, false, false)
* item[=]
  * code[+] = IMMZ.D#DE173
* insert Question(countryOfVaccination, Country of vaccination, choice, true, false)
* item[=]
  * answerValueSet = "http://hl7.org/fhir/ValueSet/iso3166-1-3"
  * code[+] = IMMZ.D#DE21
* insert Question(administrativeArea, Administrative area, choice, false, false)
* item[=]
  * answerValueSet = Canonical(IMMZ.D.DE22)
  * code[+] = IMMZ.D#DE22
  * code[+] = $LNC#72060-7 "Where was vaccine received"
* insert Question(vaccineManufacturer , Vaccine manufacturer , choice, true, false)
* item[=]
  * answerValueSet = Canonical(IMMZ.D.DE23)
  * code[+] = IMMZ.D#DE23
  * code[+] = $LNC#30957-5 "Manufacturer name [Identifier] Vaccine"
* insert Question(vaccineBatchNumber, Vaccine batch number, string, false, false)
* item[=]
  * code[+] = IMMZ.D#DE24
  * code[+] = $LNC#30959-1 "Lot number [Identifier] Vaccine"
* insert Question(vaccineMarketAuthorizationHolder, Vaccine market authorization holder, choice, true, false)
* item[=]
  * answerValueSet = Canonical(IMMZ.D.DE25)
  * code[+] = IMMZ.D#DE25
* insert Question(expirationDate, Expiration date, date, false, false)
* item[=]
  * code[+] = IMMZ.D#DE26
  * code[+] = $LNC#74066-2 "Expiration date of medication (Agency for Healthcare Research and Quality [AHRQ])"
* insert Question(doseQuantity, Dose quantity , decimal, false, false)
* item[=]
  * extension[+]
    * url = "http://hl7.org/fhir/StructureDefinition/minValue"
    * valueDecimal = 0.00001
  * code[+] = IMMZ.D#DE34
  * code[+] = $LNC#82745-1 "Doses of vaccine given per symptom onset"
* insert Question(healthWorkerIdentifier, Health worker identifier, string, false, false)
* item[=]
  * code[+] = IMMZ.D#DE35
* insert Question(totalDosesInSeries, Total doses in series, integer, false, false)
* item[=]
  * extension[+]
    * url = "http://hl7.org/fhir/StructureDefinition/minValue"
    * valueInteger = 1
  * code[+] = IMMZ.D#DE125
* insert Question(diseaseTargeted, Disease targeted, choice, false, false)
* item[=]
  * answerValueSet = Canonical(IMMZ.D.DE126)
  * code[+] = IMMZ.D#DE126
* insert Question(dueDateOfNextDose, Due date of next dose, date, false, false)
* item[=]
  * code[+] = IMMZ.D#DE149
