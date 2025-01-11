Invariant:    IMMZ-D-statusNotDone-1
Description:  "Required if input in IMMZ.D.DE1 Immunization event status is Not Done"
Expression:   "%resource.immunizationEventStatus.value = 'DE4' or $this.exists()"
Severity:     #error

Invariant:    IMMZ-D-reqGTZero-1
Description:  "Must be positive decimal value greater than zero (>0.00)"
Expression:   "not($this.exists()) or $this.value > 0"
Severity:     #error

Logical:      IMMZD13
Title:        "IMMZ.D13.Update client record"
Description:  "Data elements for the IMMZ.D13.Update client record Data Dictionary Activity."

* ^meta.profile[+] = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-extr-smap"
* ^meta.profile[+] = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-behave"
* ^name = "IMMZ_D13_Update_client_record"
* ^status = #active
* ^meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablestructuredefinition"
* ^meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablestructuredefinition"
* ^version = "0.2.0"
* ^experimental = false
* ^publisher = "WHO"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability"
* ^extension[=].valueCode = #shareable
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/artifact-versionAlgorithm"
* ^extension[=].valueCoding = http://hl7.org/fhir/version-algorithm#semver
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/artifact-versionPolicy"
* ^extension[=].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/artifact-version-policy-codes#metadata
* ^date = "2025-01-10"

* birthDose 0..1 boolean "Birth dose" "Indicates if the client received a dose within 24 hours of birth. Whether a birth dose is counted as part of the primary series will depend on the antigen"
  * obeys IMMZ-D-reqVType-1
  * ^code[+] = IMMZ.D1#DE109
* typeOfDose 1..1 code "Type of dose" "The type of dose in a series that the client received "
* typeOfDose from IMMZ.D1.DE103 (required)
  * ^code[+] = IMMZ.D1#DE103
* completedThePrimaryVaccinationSeries 0..1 boolean "Completed the primary vaccination series" "Indicates if the client has completed the primary vaccination series of a product/antigen. If the client has not yet completed their primary series, it means they may be expected to receive more doses to complete their vaccination regimen for the respective product/antigen"
  * ^code[+] = IMMZ.D1#DE8
* completedTheBoosterSeries 0..1 boolean "Completed the booster series" "Indicates if the client has completed the booster series of a product/antigen"
  * ^code[+] = IMMZ.D1#DE102
* dateWhenPrimaryVaccinationSeriesWasCompleted 0..1 date "Date when primary vaccination series was completed" "The date when the client completed the primary vaccination series (per product/antigen)"
  * obeys IMMZ-D-reqPrimaryCompleted-1 and IMMZ-D-dateOccurred-1
  * ^code[+] = IMMZ.D1#DE81
* hivStatus 0..1 code "HIV status" "The current HIV status of the client"
* hivStatus from IMMZ.D1.DE10 (required)
  * ^code[+] = IMMZ.D1#DE10
  * ^code[+] = $LNC#55277-8 "HIV Status"
  * ^code[+] = $SCT#278977008 "HIV status"
* typeOfPoliovirusDose 0..1 code "Type of poliovirus dose" "The type of the poliovirus vaccine dose administered to the client"
* typeOfPoliovirusDose from IMMZ.D1.DE35 (required)
  * obeys IMMZ-D-reqVType-4
  * ^code[+] = IMMZ.D1#DE35
  * ^code[+] = $ICD11#XM0N50 "Poliomyelitis vaccines"
* typeOfJeDose 0..1 code "Type of JE dose" "The type of Japanese encephalitis (JE) vaccine dose administered to the client"
* typeOfJeDose from IMMZ.D1.DE52 (required)
  * obeys IMMZ-D-reqVType-8
  * ^code[+] = IMMZ.D1#DE52
* typeOfTbeDose 0..1 code "Type of TBE dose" "The type of tick-borne encephalitis (TBE) vaccine dose administered"
* typeOfTbeDose from IMMZ.D1.DE56 (required)
  * obeys IMMZ-D-reqVType-9
  * ^code[+] = IMMZ.D1#DE56
* typeOfTyphoidDose 0..1 code "Type of typhoid dose" "The type of typhoid vaccine dose administered to the client"
* typeOfTyphoidDose from IMMZ.D1.DE61 (required)
  * obeys IMMZ-D-reqVType-10
  * ^code[+] = IMMZ.D1#DE61
* typeOfCholeraDose 0..1 code "Type of cholera dose" "The type of cholera vaccine dose administered to the client"
* typeOfCholeraDose from IMMZ.D1.DE65 (required)
  * obeys IMMZ-D-reqVType-11
  * ^code[+] = IMMZ.D1#DE65
* typeOfMeningococcalDose 0..1 code "Type of meningococcal dose" "The type of meningococcal vaccine dose administered to the client"
* typeOfMeningococcalDose from IMMZ.D1.DE68 (required)
  * obeys IMMZ-D-reqVType-12
  * ^code[+] = IMMZ.D1#DE68
* typeOfHepatitisADose 0..1 code "Type of hepatitis A dose" "The type of hepatitis A-containing vaccine dose administered to the client"
* typeOfHepatitisADose from IMMZ.D1.DE73 (required)
  * obeys IMMZ-D-reqVType-13
  * ^code[+] = IMMZ.D1#DE73
* typeOfHepatitisBDose 0..1 code "Type of hepatitis B dose" "The type of hepatitis B-containing vaccine dose administered to the client"
* typeOfHepatitisBDose from IMMZ.D1.DE99 (required)
  * obeys IMMZ-D-reqVType-14
  * ^code[+] = IMMZ.D1#DE99
* vaccineType 1..1 code "Vaccine type" "Vaccine type/category that was administered or was to be administered. Any vaccine code available in the IMMZ.Z Vaccine library list of codes applies in this data element"
* vaccineType from IMMZ.Z.VS (required)
  * ^code[+] = IMMZ.D#DE19
  * ^code[+] = $LNC#39236-5 "Vaccine code (CPT [Current Procedural Terminology]) CPHS (Children's Preventative Health System)"
  * ^code[+] = $SCT#787859002 "Vaccine product (medicinal product)"
* dateAndTimeOfVaccination 1..1 dateTime "Date and time of vaccination" "Represents the visit/encounter date, which is the date and time when each vaccine was administered to the client"
  * ^code[+] = IMMZ.D#DE20
  * ^code[+] = $LNC#30952-6 "Date and time of vaccination"
* contactDate 0..1 dateTime "Contact date" "The date and time of the client's contact"
  * obeys IMMZ-D-dateTimeOccurred-1
  * ^code[+] = IMMZ.D#DE201
  * ^code[+] = $LNC#21975-8 "Date last contact"
  * ^code[+] = $SCT#406543005 "Date of visit"
* ancContactNumber 0..1 integer "ANC contact number" "The antenatal care (ANC) contact or visit number "
  * ^code[+] = IMMZ.D#DE202
  * ^code[+] = $LNC#75612-2 "Number of visits to this health-care entity in the last 12 months"
  * ^code[+] = $SCT#3401000175105 "Total number of prenatal care visits"
* doseNumber 1..1 integer "Dose number" "Vaccine dose number including dose number within series"
  * obeys IMMZ-D-reqGTEZero-1
  * ^code[+] = IMMZ.D#DE124
* immunizationEventStatus 1..1 code "Immunization event status" "The current status of the individual immunization event"
* immunizationEventStatus from IMMZ.D.DE1 (required)
  * ^code[+] = IMMZ.D#DE1
* reasonVaccineWasNotAdministered 0..1 code "Reason vaccine was not administered" "The reason this immunization event was not performed"
* reasonVaccineWasNotAdministered from IMMZ.D.DE5 (required)
  * obeys IMMZ-D-statusNotDone-1
  * ^code[+] = IMMZ.D#DE5
  * ^code[+] = $ICD11#QC04 "Immunization not carried out"
* vaccineBrand 1..1 code "Vaccine brand" "The brand or trade name used to refer to the vaccine received"
* vaccineBrand from IMMZ.D.DE18 (required)
  * ^code[+] = IMMZ.D#DE18
* liveVaccine 0..1 boolean "Live vaccine" "Uses a living but weakened version of the virus or one that is very similar"
  * ^code[+] = IMMZ.D#DE173
* countryOfVaccination 1..1 code "Country of vaccination" "The service delivery country where the vaccine administration occurred"
* countryOfVaccination from http://hl7.org/fhir/ValueSet/iso3166-1-3 (required)
  * ^code[+] = IMMZ.D#DE21
* administrativeArea 0..1 code "Administrative area" "The service delivery location (location name, city, municipality, town or village) where the vaccine administration occurred"
* administrativeArea from IMMZ.D.DE22 (required)
  * ^code[+] = IMMZ.D#DE22
  * ^code[+] = $LNC#72060-7 "Where was vaccine received"
* vaccineManufacturer  1..1 code "Vaccine manufacturer " "The manufacturer of the vaccine product"
* vaccineManufacturer  from IMMZ.D.DE23 (required)
  * ^code[+] = IMMZ.D#DE23
  * ^code[+] = $LNC#30957-5 "Manufacturer name [Identifier] Vaccine"
* vaccineBatchNumber 0..1 string "Vaccine batch number" "Batch number or lot number of vaccine"
  * ^code[+] = IMMZ.D#DE24
  * ^code[+] = $LNC#30959-1 "Lot number [Identifier] Vaccine"
* vaccineMarketAuthorizationHolder 1..1 code "Vaccine market authorization holder" "Name of the market authorization holder of the vaccine received. If market authorization holder is unknown, vaccine manufacturer is REQUIRED"
* vaccineMarketAuthorizationHolder from IMMZ.D.DE25 (required)
  * ^code[+] = IMMZ.D#DE25
* expirationDate 0..1 date "Expiration date" "The expiration date of the vaccine"
  * ^code[+] = IMMZ.D#DE26
  * ^code[+] = $LNC#74066-2 "Expiration date of medication (Agency for Healthcare Research and Quality [AHRQ])"
* doseQuantity  0..1 decimal "Dose quantity " "The quantity of vaccine product that was administered"
  * obeys IMMZ-D-reqGTZero-1
  * ^code[+] = IMMZ.D#DE34
  * ^code[+] = $LNC#82745-1 "Doses of vaccine given per symptom onset"
* healthWorkerIdentifier 0..1 string "Health worker identifier" "The person, organization or role of the entity that performed the act of giving the vaccine to the client. The implementing system can choose to populate this field using data from a health worker registry or health-care facility registry"
  * ^code[+] = IMMZ.D#DE35
* totalDosesInSeries 0..1 decimal "Total doses in series" "The recommended number of doses for immunity according to the national immunization schedule (which may be based on product, age, etc.)"
  * obeys IMMZ-D-reqGTZero-1
  * ^code[+] = IMMZ.D#DE125
* diseaseTargeted 0..1 code "Disease targeted" "Vaccine-preventable disease being targeted"
* diseaseTargeted from IMMZ.D.DE126 (required)
  * ^code[+] = IMMZ.D#DE126
* dueDateOfNextDose 0..1 date "Due date of next dose" "Date on which the next vaccination should be administered, if a next dose is required"
  * ^code[+] = IMMZ.D#DE149