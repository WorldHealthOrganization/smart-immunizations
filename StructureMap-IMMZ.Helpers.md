# IMMZ.Helpers - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.Helpers**

## StructureMap: IMMZ.Helpers 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/StructureMap/IMMZ.Helpers | *Version*:0.2.0 |
| Draft as of 2025-11-25 | *Computable Name*:IMMZ.Helpers |

 
Immunization - Transform QuestionnaireResponse to Logical Model Helper groups 

```

map "http://smart.who.int/immunizations/StructureMap/IMMZ.Helpers" = "IMMZ.Helpers"

// Immunization - Transform QuestionnaireResponse to Logical Model Helper groups

uses "http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse" alias QResp as source
uses "http://hl7.org/fhir/StructureDefinition/Bundle" alias Bundle as target

group ItemToValue(source item, target field) {
  item.answer first as answer then {
    answer.value as content -> field.value = content "SetValue";
  } "FirstAnswer";
}

group ItemToCode(source item, target field) {
  item.answer first as answer then {
    answer.value as coding then {
      coding.code as content -> field.value = content "SetCode";
    } "Coding";
  } "FirstAnswer";
}

group ItemToCoding(source item, target field) {
  item.answer first as answer then {
    answer.value as coding then {
      coding.code as code -> field.code = code "SetCode";
      coding.system as system -> field.system = system "SetSystem";
      coding.display as display -> field.display = display "SetDisplay";
    } "Coding";
  } "FirstAnswer";
}

group D1andD13Questions(source qr : QResp, target immz) {
  qr.item as item where linkId = 'birthDose' -> immz.birthDose as field then ItemToValue(item, field) "birthDose";
  qr.item as item where linkId = 'typeOfDose' -> immz.typeOfDose as field then ItemToCoding(item, field) "typeOfDose";
  qr.item as item where linkId = 'completedThePrimaryVaccinationSeries' -> immz.completedThePrimaryVaccinationSeries as field then ItemToValue(item, field) "completedThePrimaryVaccinationSeries";
  qr.item as item where linkId = 'completedTheBoosterSeries' -> immz.completedTheBoosterSeries as field then ItemToValue(item, field) "completedTheBoosterSeries";
  qr.item as item where linkId = 'dateWhenPrimaryVaccinationSeriesWasCompleted' -> immz.dateWhenPrimaryVaccinationSeriesWasCompleted as field then ItemToValue(item, field) "dateWhenPrimaryVaccinationSeriesWasCompleted";
  qr.item as item where linkId = 'hivStatus' -> immz.hivStatus as field then ItemToCoding(item, field) "hivStatus";
  qr.item as item where linkId = 'typeOfPoliovirusDose' -> immz.typeOfPoliovirusDose as field then ItemToCoding(item, field) "typeOfPoliovirusDose";
  qr.item as item where linkId = 'typeOfJeDose' -> immz.typeOfJeDose as field then ItemToCoding(item, field) "typeOfJeDose";
  qr.item as item where linkId = 'typeOfTbeDose' -> immz.typeOfTbeDose as field then ItemToCoding(item, field) "typeOfTbeDose";
  qr.item as item where linkId = 'typeOfTyphoidDose' -> immz.typeOfTyphoidDose as field then ItemToCoding(item, field) "typeOfTyphoidDose";
  qr.item as item where linkId = 'typeOfCholeraDose' -> immz.typeOfCholeraDose as field then ItemToCoding(item, field) "typeOfCholeraDose";
  qr.item as item where linkId = 'typeOfMeningococcalDose' -> immz.typeOfMeningococcalDose as field then ItemToCoding(item, field) "typeOfMeningococcalDose";
  qr.item as item where linkId = 'typeOfHepatitisADose' -> immz.typeOfHepatitisADose as field then ItemToCoding(item, field) "typeOfHepatitisADose";
  qr.item as item where linkId = 'typeOfHepatitisBDose' -> immz.typeOfHepatitisBDose as field then ItemToCoding(item, field) "typeOfHepatitisBDose";
  qr.item as item where linkId = 'vaccineType' -> immz.vaccineType as field then ItemToCoding(item, field) "vaccineType";
  qr.item as item where linkId = 'dateAndTimeOfVaccination' -> immz.dateAndTimeOfVaccination as field then ItemToValue(item, field) "dateAndTimeOfVaccination";
  qr.item as item where linkId = 'contactDate' -> immz.contactDate as field then ItemToValue(item, field) "contactDate";
  qr.item as item where linkId = 'ancContactNumber' -> immz.ancContactNumber as field then ItemToValue(item, field) "ancContactNumber";
  qr.item as item where linkId = 'doseNumber' -> immz.doseNumber as field then ItemToValue(item, field) "doseNumber";
}

group D1Questions(source qr : QResp, target immz) {
  qr.item as item where linkId = 'pretermBirth' -> immz.pretermBirth as field then ItemToValue(item, field) "pretermBirth";
  qr.item as item where linkId = 'immunocompromised' -> immz.immunocompromised as field then ItemToValue(item, field) "immunocompromised";
  qr.item as item where linkId = 'currentlyOnArt' -> immz.currentlyOnArt as field then ItemToValue(item, field) "currentlyOnArt";
  qr.item as item where linkId = 'currentlyOnArt' -> immz.currentlyOnArt as field then ItemToValue(item, field) "currentlyOnArt";
  qr.item as item where linkId = 'typeOfTbInfectionTestPerformed' -> immz.typeOfTbInfectionTestPerformed as field then ItemToCoding(item, field) "typeOfTbInfectionTestPerformed";
  qr.item as item where linkId = 'tbInfectionTestResult' -> immz.tbInfectionTestResult as field then ItemToCoding(item, field) "tbInfectionTestResult";
  qr.item as item where linkId = 'immunologicallyStable' -> immz.immunologicallyStable as field then ItemToValue(item, field) "immunologicallyStable";
  qr.item as item where linkId = 'clinicallyWell' -> immz.clinicallyWell as field then ItemToValue(item, field) "clinicallyWell";
  qr.item as item where linkId = 'birthWeightInGrams' -> immz.birthWeightInGrams as field then ItemToValue(item, field) "birthWeightInGrams";
  qr.item as item where linkId = 'artStartDate' -> immz.artStartDate as field then ItemToValue(item, field) "artStartDate";
  qr.item as item where linkId = 'highRiskOfPneumococcalInfection' -> immz.highRiskOfPneumococcalInfection as field then ItemToValue(item, field) "highRiskOfPneumococcalInfection";
  qr.item as item where linkId = 'ageInMonthsWhenClientReceivedFirstMeningococcalDose' -> immz.ageInMonthsWhenClientReceivedFirstMeningococcalDose as field then ItemToValue(item, field) "ageInMonthsWhenClientReceivedFirstMeningococcalDose";
  qr.item as item where linkId = 'vnaLevel' -> immz.vnaLevel as field then ItemToValue(item, field) "vnaLevel";
  qr.item as item where linkId = 'riskOfOccupationalExposureToRabiesVirus' -> immz.riskOfOccupationalExposureToRabiesVirus as field then ItemToValue(item, field) "riskOfOccupationalExposureToRabiesVirus";
  qr.item as item where linkId = 'dengueSerostatus' -> immz.dengueSerostatus as field then ItemToCoding(item, field) "dengueSerostatus";
}

group D13Questions(source qr : QResp, target immz) {
  qr.item as item where linkId = 'immunizationEventStatus' -> immz.immunizationEventStatus as field then ItemToCoding(item, field) "immunizationEventStatus";
  qr.item as item where linkId = 'reasonVaccineWasNotAdministered' -> immz.reasonVaccineWasNotAdministered as field then ItemToCoding(item, field) "reasonVaccineWasNotAdministered";
  qr.item as item where linkId = 'vaccineBrand' -> immz.vaccineBrand as field then ItemToCoding(item, field) "vaccineBrand";
  qr.item as item where linkId = 'liveVaccine' -> immz.liveVaccine as field then ItemToValue(item, field) "liveVaccine";
  qr.item as item where linkId = 'countryOfVaccination' -> immz.countryOfVaccination as field then ItemToCoding(item, field) "countryOfVaccination";
  qr.item as item where linkId = 'administrativeArea' -> immz.administrativeArea as field then ItemToCoding(item, field) "administrativeArea";
  qr.item as item where linkId = 'vaccineManufacturer' -> immz.vaccineManufacturer as field then ItemToCoding(item, field) "vaccineManufacturer";
  qr.item as item where linkId = 'vaccineBatchNumber' -> immz.vaccineBatchNumber as field then ItemToValue(item, field) "vaccineBatchNumber";
  qr.item as item where linkId = 'vaccineMarketAuthorizationHolder' -> immz.vaccineMarketAuthorizationHolder as field then ItemToCoding(item, field) "vaccineMarketAuthorizationHolder";
  qr.item as item where linkId = 'expirationDate' -> immz.expirationDate as field then ItemToValue(item, field) "expirationDate";
  qr.item as item where linkId = 'doseQuantity' -> immz.doseQuantity as field then ItemToValue(item, field) "doseQuantity";
  qr.item as item where linkId = 'healthWorkerIdentifier' -> immz.healthWorkerIdentifier as field then ItemToValue(item, field) "healthWorkerIdentifier";
  qr.item as item where linkId = 'totalDosesInSeries' -> immz.totalDosesInSeries as field then ItemToValue(item, field) "totalDosesInSeries";
  qr.item as item where linkId = 'diseaseTargeted' -> immz.diseaseTargeted as field then ItemToCoding(item, field) "diseaseTargeted";
  qr.item as item where linkId = 'dueDateOfNextDose' -> immz.dueDateOfNextDose as field then ItemToValue(item, field) "dueDateOfNextDose";
}

group MakeImmzObservation(source patient : Reference, source immid, source code : Coding, source cat : Coding, source value, target bundle : Bundle) {
  value ->  uuid() as oid,  bundle.entry as entry,  entry.fullUrl = append('urn:uuid:', oid),  entry.request as request,  request.method = 'PUT',  request.url = append('Observation/', oid),  entry.resource = create('Observation') as obs then {
    value -> obs.id = oid "SetId";
    immid ->  obs.partOf as partOf,  partOf.reference = append('urn:uuid:', immid) "SetPartOf";
    patient -> obs.subject = patient "SetSubject";
    code -> obs.code = code "SetCode";
    value -> obs.value = value "SetValue";
    cat -> obs.category = cat "SetCategory";
  } "CreateObservation";
}

group MakeObservation(source patient : Reference, source code : Coding, source cat : Coding, source value, target bundle : Bundle) {
  value ->  uuid() as oid,  bundle.entry as entry,  entry.fullUrl = append('urn:uuid:', oid),  entry.request as request,  request.method = 'PUT',  request.url = append('Observation/', oid),  entry.resource = create('Observation') as obs then {
    value -> obs.id = oid "SetId";
    patient -> obs.subject = patient "SetSubject";
    code -> obs.code = code "SetCode";
    value -> obs.value = value "SetValue";
    cat -> obs.category = cat "SetCategory";
  } "CreateObservation";
}

group TypeOfVaccineDose(source typeof : Coding, target ext : Extension) {
  typeof -> ext.url = 'http://smart.who.int/immunizations/StructureDefinition/IMMZTypeOfDose' "SetURL";
  typeof -> ext.value = typeof "SetValue";
}

group MakeImmunization(source patient : Reference, source immid, source immz, target bundle : Bundle) {
  immz.vaccineType as vaccineCode ->  bundle.entry as entry,  entry.fullUrl = append('urn:uuid:', immid),  entry.request as request,  request.method = 'PUT',  request.url = append('Immunization/', immid),  entry.resource = create('Immunization') as imm then {
    // D1 and D13
    immid -> imm.id = immid "SetId";
    patient -> imm.patient = patient "SetPatient";
    vaccineCode -> imm.vaccineCode = vaccineCode "vaccineCode";
    immz.typeOfDose as typeOfDose -> imm.protocolApplied as pa then {
      typeOfDose.code as code -> pa.series = code "SetSeriesToCode"; // if display is missing
      typeOfDose.display as display -> pa.series = display "SetSeriesToDisplay";
      immz.doseNumber as doseNumber -> pa.doseNumber = doseNumber "SetDoseNumber";
      immz.totalDosesInSeries as totalDoses -> pa.seriesDoses = totalDoses;
      immz.diseaseTargeted as disease -> pa.targetDisease = disease;
      immz.dueDateOfNextDose as duedate ->  pa.extension as ext,  ext.url = 'http://smart.who.int/immunizations/StructureDefinition/IMMZDueDateOfNextDose',  ext.value = duedate;
    } "protocolApplied";
    immz.dateAndTimeOfVaccination as occurrence -> imm.occurrence = occurrence;
    immz.typeOfPoliovirusDose as typeof -> imm.extension as ext then TypeOfVaccineDose(typeof, ext);
    immz.typeOfJeDose as typeof -> imm.extension as ext then TypeOfVaccineDose(typeof, ext);
    immz.typeOfTbeDose as typeof -> imm.extension as ext then TypeOfVaccineDose(typeof, ext);
    immz.typeOfTyphoidDose as typeof -> imm.extension as ext then TypeOfVaccineDose(typeof, ext);
    immz.typeOfCholeraDose as typeof -> imm.extension as ext then TypeOfVaccineDose(typeof, ext);
    immz.typeOfMeningococcalDose as typeof -> imm.extension as ext then TypeOfVaccineDose(typeof, ext);
    immz.typeOfHepatitisADose as typeof -> imm.extension as ext then TypeOfVaccineDose(typeof, ext);
    immz.typeOfHepatitisBDose as typeof -> imm.extension as ext then TypeOfVaccineDose(typeof, ext);
    // D1
    immz -> imm.status = 'completed' "SetDefaultStatus";
    // D13
    immz.immunizationEventStatus as status -> imm.status = translate(status, 'http://smart.who.int/immunizations/ConceptMap/IMMZ.D.ConceptMap', 'code');
    immz.reasonVaccineWasNotAdministered as reason -> imm.statusReason = reason;
    immz.vaccineBrand as brand ->  imm.extension as ext,  ext.url = 'http://smart.who.int/immunizations/StructureDefinition/IMMZVaccineBrand',  ext.value = brand;
    immz.liveVaccine as live ->  imm.extension as ext,  ext.url = 'http://smart.who.int/immunizations/StructureDefinition/IMMZLiveVaccine',  ext.value = live;
    immz.countryOfVaccination as country ->  imm.extension as ext,  ext.url = 'http://smart.who.int/immunizations/StructureDefinition/IMMZCountryOfVaccination',  ext.value = country;
    immz.administrativeArea as area ->  imm.extension as ext,  ext.url = 'http://smart.who.int/immunizations/StructureDefinition/IMMZAdministrativeArea',  ext.value = area;
    immz.vaccineManufacturer as vman ->  imm.manufacturer as manufacturer,  manufacturer.identifier as identifier then {
      vman.system as system -> identifier.system = system "SetSystem";
      vman.code as code -> identifier.value = code "SetValue";
    };
    immz.vaccineBatchNumber as batch -> imm.lotNumber = batch;
    immz.vaccineMarketAuthorizationHolder as market ->  imm.extension as ext,  ext.url = 'http://smart.who.int/immunizations/StructureDefinition/IMMZMarketAuthorization',  ext.value = market;
    immz.expirationDate as expiration -> imm.expirationDate = expiration;
    immz.doseQuantity as dosequantity -> imm.doseQuantity = dosequantity;
    immz.healthWorkerIdentifier as hw ->  imm.performer as performer,  performer.actor as actor,  actor.identifier as identifier,  identifier.value = hw;
  } "MakeImmunization";
}

group D1andD13Observations(source patient : Reference, source immid, source immz, target bundle : Bundle) {
  immz -> c('http://terminology.hl7.org/CodeSystem/observation-category', 'survey', 'Survey') as survey then {
    immz.birthDose as content -> c('http://smart.who.int/immunizations/CodeSystem/IMMZ.D', 'DE263', 'Birth dose') as code then MakeImmzObservation(patient, immid, code, survey, content, bundle);
    immz.completedThePrimaryVaccinationSeries as content -> c('http://smart.who.int/immunizations/CodeSystem/IMMZ.D', 'DE203', 'Completed the primary vaccination series') as code then MakeImmzObservation(patient, immid, code, survey, content, bundle);
    immz.completedTheBoosterSeries as content -> c('http://smart.who.int/immunizations/CodeSystem/IMMZ.D', 'DE257', 'Completed the booster series') as code then MakeImmzObservation(patient, immid, code, survey, content, bundle);
    immz.dateWhenPrimaryVaccinationSeriesWasCompleted as content -> c('http://smart.who.int/immunizations/CodeSystem/IMMZ.D', 'DE242', 'Date when primary vaccination series was completed') as code then MakeImmzObservation(patient, immid, code, survey, content, bundle);
    immz.hivStatus as content -> c('http://smart.who.int/immunizations/CodeSystem/IMMZ.D', 'DE204', 'HIV status') as code then MakeImmzObservation(patient, immid, code, survey, content, bundle);
    immz.contactDate as content -> c('http://smart.who.int/immunizations/CodeSystem/IMMZ.D', 'DE201', 'Contact date') as code then MakeImmzObservation(patient, immid, code, survey, content, bundle);
    immz.ancContactNumber as content -> c('http://smart.who.int/immunizations/CodeSystem/IMMZ.D', 'DE202', 'ANC contact number') as code then MakeImmzObservation(patient, immid, code, survey, content, bundle);
  } "DefineCategory";
}

group D1Observations(source patient : Reference, source immid, source immz, target bundle : Bundle) {
  immz -> c('http://terminology.hl7.org/CodeSystem/observation-category', 'survey', 'Survey') as survey then {
    immz.pretermBirth as content -> c('http://smart.who.int/immunizations/CodeSystem/IMMZ.D', 'DE208', 'Preterm birth') as code then MakeImmzObservation(patient, immid, code, survey, content, bundle);
    immz.immunocompromised as content -> c('http://smart.who.int/immunizations/CodeSystem/IMMZ.D', 'DE209', 'Immunocompromised') as code then MakeImmzObservation(patient, immid, code, survey, content, bundle);
    immz.currentlyOnArt as content -> c('http://smart.who.int/immunizations/CodeSystem/IMMZ.D', 'DE210', 'Currently on ART') as code then MakeImmzObservation(patient, immid, code, survey, content, bundle);
    immz.typeOfTbInfectionTestPerformed as content -> c('http://smart.who.int/immunizations/CodeSystem/IMMZ.D', 'DE243', 'Type of TB infection test performed') as code then MakeImmzObservation(patient, immid, code, survey, content, bundle);
    immz.tbInfectionTestResult as content -> c('http://smart.who.int/immunizations/CodeSystem/IMMZ.D', 'DE246', 'TB infection test result') as code then MakeImmzObservation(patient, immid, code, survey, content, bundle);
    immz.immunologicallyStable as content -> c('http://smart.who.int/immunizations/CodeSystem/IMMZ.D', 'DE249', 'Immunologically stable') as code then MakeImmzObservation(patient, immid, code, survey, content, bundle);
    immz.clinicallyWell as content -> c('http://smart.who.int/immunizations/CodeSystem/IMMZ.D', 'DE250', 'Clinically well') as code then MakeImmzObservation(patient, immid, code, survey, content, bundle);
    immz.birthWeightInGrams as value ->  create('Quantity') as content,  content.system = 'http://unitsofmeasure.org',  content.code = 'g',  content.unit = 'g',  content.value = value,  c('http://loinc.org', '8339-4', 'Birth weight Measured') as bwloinc,  c('http://smart.who.int/immunizations/CodeSystem/IMMZ.D', 'DE211', 'Birth weight in grams') as bwdak,  create('CodeableConcept') as code,  code.coding = bwloinc,  code.coding = bwdak,  c('http://terminology.hl7.org/CodeSystem/observation-category', 'vital-signs', 'Vital Signs') as vital then MakeImmzObservation(patient, immid, code, vital, content, bundle);
    immz.artStartDate as content -> c('http://smart.who.int/immunizations/CodeSystem/IMMZ.D', 'DE215', 'ART start date') as code then MakeImmzObservation(patient, immid, code, survey, content, bundle);
    immz.highRiskOfPneumococcalInfection as content -> c('http://smart.who.int/immunizations/CodeSystem/IMMZ.D', 'DE251', 'High risk of pneumococcal infection') as code then MakeImmzObservation(patient, immid, code, survey, content, bundle);
    immz.ageInMonthsWhenClientReceivedFirstMeningococcalDose as value ->  create('Quantity') as content,  content.unit = 'mo',  content.value = value,  c('http://smart.who.int/immunizations/CodeSystem/IMMZ.D', 'DE236', 'Age in months when client received first meningococcal dose') as code then MakeImmzObservation(patient, immid, code, survey, content, bundle);
    immz.vnaLevel as value ->  create('Quantity') as content,  content.system = 'http://unitsofmeasure.org',  content.code = '[IU]/mL',  content.unit = '[IU]/mL',  content.value = value,  c('http://smart.who.int/immunizations/CodeSystem/IMMZ.D', 'DE240', 'VNA level') as code then MakeImmzObservation(patient, immid, code, survey, content, bundle);
    immz.riskOfOccupationalExposureToRabiesVirus as content -> c('http://smart.who.int/immunizations/CodeSystem/IMMZ.D', 'DE253', 'Risk of occupational exposure to rabies virus') as code then MakeImmzObservation(patient, immid, code, survey, content, bundle);
    immz.dengueSerostatus as content -> c('http://smart.who.int/immunizations/CodeSystem/IMMZ.D', 'DE241', 'Dengue serostatus') as code then MakeImmzObservation(patient, immid, code, survey, content, bundle);
  } "DefineCategory";
}


```



## Resource Content

```json
{
  "resourceType" : "StructureMap",
  "id" : "IMMZ.Helpers",
  "url" : "http://smart.who.int/immunizations/StructureMap/IMMZ.Helpers",
  "version" : "0.2.0",
  "name" : "IMMZ.Helpers",
  "status" : "draft",
  "date" : "2025-11-25T19:41:02+00:00",
  "publisher" : "WHO",
  "contact" : [
    {
      "name" : "WHO",
      "telecom" : [
        {
          "system" : "url",
          "value" : "http://who.int"
        }
      ]
    }
  ],
  "description" : "Immunization - Transform QuestionnaireResponse to Logical Model Helper groups",
  "structure" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse",
      "mode" : "source",
      "alias" : "QResp"
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/Bundle",
      "mode" : "target",
      "alias" : "Bundle"
    }
  ],
  "group" : [
    {
      "name" : "ItemToValue",
      "typeMode" : "none",
      "input" : [
        {
          "name" : "item",
          "mode" : "source"
        },
        {
          "name" : "field",
          "mode" : "target"
        }
      ],
      "rule" : [
        {
          "name" : "FirstAnswer",
          "source" : [
            {
              "context" : "item",
              "element" : "answer",
              "listMode" : "first",
              "variable" : "answer"
            }
          ],
          "rule" : [
            {
              "name" : "SetValue",
              "source" : [
                {
                  "context" : "answer",
                  "element" : "value",
                  "variable" : "content"
                }
              ],
              "target" : [
                {
                  "context" : "field",
                  "contextType" : "variable",
                  "element" : "value",
                  "transform" : "copy",
                  "parameter" : [
                    {
                      "valueId" : "content"
                    }
                  ]
                }
              ]
            }
          ]
        }
      ]
    },
    {
      "name" : "ItemToCode",
      "typeMode" : "none",
      "input" : [
        {
          "name" : "item",
          "mode" : "source"
        },
        {
          "name" : "field",
          "mode" : "target"
        }
      ],
      "rule" : [
        {
          "name" : "FirstAnswer",
          "source" : [
            {
              "context" : "item",
              "element" : "answer",
              "listMode" : "first",
              "variable" : "answer"
            }
          ],
          "rule" : [
            {
              "name" : "Coding",
              "source" : [
                {
                  "context" : "answer",
                  "element" : "value",
                  "variable" : "coding"
                }
              ],
              "rule" : [
                {
                  "name" : "SetCode",
                  "source" : [
                    {
                      "context" : "coding",
                      "element" : "code",
                      "variable" : "content"
                    }
                  ],
                  "target" : [
                    {
                      "context" : "field",
                      "contextType" : "variable",
                      "element" : "value",
                      "transform" : "copy",
                      "parameter" : [
                        {
                          "valueId" : "content"
                        }
                      ]
                    }
                  ]
                }
              ]
            }
          ]
        }
      ]
    },
    {
      "name" : "ItemToCoding",
      "typeMode" : "none",
      "input" : [
        {
          "name" : "item",
          "mode" : "source"
        },
        {
          "name" : "field",
          "mode" : "target"
        }
      ],
      "rule" : [
        {
          "name" : "FirstAnswer",
          "source" : [
            {
              "context" : "item",
              "element" : "answer",
              "listMode" : "first",
              "variable" : "answer"
            }
          ],
          "rule" : [
            {
              "name" : "Coding",
              "source" : [
                {
                  "context" : "answer",
                  "element" : "value",
                  "variable" : "coding"
                }
              ],
              "rule" : [
                {
                  "name" : "SetCode",
                  "source" : [
                    {
                      "context" : "coding",
                      "element" : "code",
                      "variable" : "code"
                    }
                  ],
                  "target" : [
                    {
                      "context" : "field",
                      "contextType" : "variable",
                      "element" : "code",
                      "transform" : "copy",
                      "parameter" : [
                        {
                          "valueId" : "code"
                        }
                      ]
                    }
                  ]
                },
                {
                  "name" : "SetSystem",
                  "source" : [
                    {
                      "context" : "coding",
                      "element" : "system",
                      "variable" : "system"
                    }
                  ],
                  "target" : [
                    {
                      "context" : "field",
                      "contextType" : "variable",
                      "element" : "system",
                      "transform" : "copy",
                      "parameter" : [
                        {
                          "valueId" : "system"
                        }
                      ]
                    }
                  ]
                },
                {
                  "name" : "SetDisplay",
                  "source" : [
                    {
                      "context" : "coding",
                      "element" : "display",
                      "variable" : "display"
                    }
                  ],
                  "target" : [
                    {
                      "context" : "field",
                      "contextType" : "variable",
                      "element" : "display",
                      "transform" : "copy",
                      "parameter" : [
                        {
                          "valueId" : "display"
                        }
                      ]
                    }
                  ]
                }
              ]
            }
          ]
        }
      ]
    },
    {
      "name" : "D1andD13Questions",
      "typeMode" : "none",
      "input" : [
        {
          "name" : "qr",
          "type" : "QResp",
          "mode" : "source"
        },
        {
          "name" : "immz",
          "mode" : "target"
        }
      ],
      "rule" : [
        {
          "name" : "birthDose",
          "source" : [
            {
              "context" : "qr",
              "element" : "item",
              "variable" : "item",
              "condition" : "linkId = 'birthDose'"
            }
          ],
          "target" : [
            {
              "context" : "immz",
              "contextType" : "variable",
              "element" : "birthDose",
              "variable" : "field"
            }
          ],
          "dependent" : [
            {
              "name" : "ItemToValue",
              "variable" : ["item", "field"]
            }
          ]
        },
        {
          "name" : "typeOfDose",
          "source" : [
            {
              "context" : "qr",
              "element" : "item",
              "variable" : "item",
              "condition" : "linkId = 'typeOfDose'"
            }
          ],
          "target" : [
            {
              "context" : "immz",
              "contextType" : "variable",
              "element" : "typeOfDose",
              "variable" : "field"
            }
          ],
          "dependent" : [
            {
              "name" : "ItemToCoding",
              "variable" : ["item", "field"]
            }
          ]
        },
        {
          "name" : "completedThePrimaryVaccinationSeries",
          "source" : [
            {
              "context" : "qr",
              "element" : "item",
              "variable" : "item",
              "condition" : "linkId = 'completedThePrimaryVaccinationSeries'"
            }
          ],
          "target" : [
            {
              "context" : "immz",
              "contextType" : "variable",
              "element" : "completedThePrimaryVaccinationSeries",
              "variable" : "field"
            }
          ],
          "dependent" : [
            {
              "name" : "ItemToValue",
              "variable" : ["item", "field"]
            }
          ]
        },
        {
          "name" : "completedTheBoosterSeries",
          "source" : [
            {
              "context" : "qr",
              "element" : "item",
              "variable" : "item",
              "condition" : "linkId = 'completedTheBoosterSeries'"
            }
          ],
          "target" : [
            {
              "context" : "immz",
              "contextType" : "variable",
              "element" : "completedTheBoosterSeries",
              "variable" : "field"
            }
          ],
          "dependent" : [
            {
              "name" : "ItemToValue",
              "variable" : ["item", "field"]
            }
          ]
        },
        {
          "name" : "dateWhenPrimaryVaccinationSeriesWasCompleted",
          "source" : [
            {
              "context" : "qr",
              "element" : "item",
              "variable" : "item",
              "condition" : "linkId = 'dateWhenPrimaryVaccinationSeriesWasCompleted'"
            }
          ],
          "target" : [
            {
              "context" : "immz",
              "contextType" : "variable",
              "element" : "dateWhenPrimaryVaccinationSeriesWasCompleted",
              "variable" : "field"
            }
          ],
          "dependent" : [
            {
              "name" : "ItemToValue",
              "variable" : ["item", "field"]
            }
          ]
        },
        {
          "name" : "hivStatus",
          "source" : [
            {
              "context" : "qr",
              "element" : "item",
              "variable" : "item",
              "condition" : "linkId = 'hivStatus'"
            }
          ],
          "target" : [
            {
              "context" : "immz",
              "contextType" : "variable",
              "element" : "hivStatus",
              "variable" : "field"
            }
          ],
          "dependent" : [
            {
              "name" : "ItemToCoding",
              "variable" : ["item", "field"]
            }
          ]
        },
        {
          "name" : "typeOfPoliovirusDose",
          "source" : [
            {
              "context" : "qr",
              "element" : "item",
              "variable" : "item",
              "condition" : "linkId = 'typeOfPoliovirusDose'"
            }
          ],
          "target" : [
            {
              "context" : "immz",
              "contextType" : "variable",
              "element" : "typeOfPoliovirusDose",
              "variable" : "field"
            }
          ],
          "dependent" : [
            {
              "name" : "ItemToCoding",
              "variable" : ["item", "field"]
            }
          ]
        },
        {
          "name" : "typeOfJeDose",
          "source" : [
            {
              "context" : "qr",
              "element" : "item",
              "variable" : "item",
              "condition" : "linkId = 'typeOfJeDose'"
            }
          ],
          "target" : [
            {
              "context" : "immz",
              "contextType" : "variable",
              "element" : "typeOfJeDose",
              "variable" : "field"
            }
          ],
          "dependent" : [
            {
              "name" : "ItemToCoding",
              "variable" : ["item", "field"]
            }
          ]
        },
        {
          "name" : "typeOfTbeDose",
          "source" : [
            {
              "context" : "qr",
              "element" : "item",
              "variable" : "item",
              "condition" : "linkId = 'typeOfTbeDose'"
            }
          ],
          "target" : [
            {
              "context" : "immz",
              "contextType" : "variable",
              "element" : "typeOfTbeDose",
              "variable" : "field"
            }
          ],
          "dependent" : [
            {
              "name" : "ItemToCoding",
              "variable" : ["item", "field"]
            }
          ]
        },
        {
          "name" : "typeOfTyphoidDose",
          "source" : [
            {
              "context" : "qr",
              "element" : "item",
              "variable" : "item",
              "condition" : "linkId = 'typeOfTyphoidDose'"
            }
          ],
          "target" : [
            {
              "context" : "immz",
              "contextType" : "variable",
              "element" : "typeOfTyphoidDose",
              "variable" : "field"
            }
          ],
          "dependent" : [
            {
              "name" : "ItemToCoding",
              "variable" : ["item", "field"]
            }
          ]
        },
        {
          "name" : "typeOfCholeraDose",
          "source" : [
            {
              "context" : "qr",
              "element" : "item",
              "variable" : "item",
              "condition" : "linkId = 'typeOfCholeraDose'"
            }
          ],
          "target" : [
            {
              "context" : "immz",
              "contextType" : "variable",
              "element" : "typeOfCholeraDose",
              "variable" : "field"
            }
          ],
          "dependent" : [
            {
              "name" : "ItemToCoding",
              "variable" : ["item", "field"]
            }
          ]
        },
        {
          "name" : "typeOfMeningococcalDose",
          "source" : [
            {
              "context" : "qr",
              "element" : "item",
              "variable" : "item",
              "condition" : "linkId = 'typeOfMeningococcalDose'"
            }
          ],
          "target" : [
            {
              "context" : "immz",
              "contextType" : "variable",
              "element" : "typeOfMeningococcalDose",
              "variable" : "field"
            }
          ],
          "dependent" : [
            {
              "name" : "ItemToCoding",
              "variable" : ["item", "field"]
            }
          ]
        },
        {
          "name" : "typeOfHepatitisADose",
          "source" : [
            {
              "context" : "qr",
              "element" : "item",
              "variable" : "item",
              "condition" : "linkId = 'typeOfHepatitisADose'"
            }
          ],
          "target" : [
            {
              "context" : "immz",
              "contextType" : "variable",
              "element" : "typeOfHepatitisADose",
              "variable" : "field"
            }
          ],
          "dependent" : [
            {
              "name" : "ItemToCoding",
              "variable" : ["item", "field"]
            }
          ]
        },
        {
          "name" : "typeOfHepatitisBDose",
          "source" : [
            {
              "context" : "qr",
              "element" : "item",
              "variable" : "item",
              "condition" : "linkId = 'typeOfHepatitisBDose'"
            }
          ],
          "target" : [
            {
              "context" : "immz",
              "contextType" : "variable",
              "element" : "typeOfHepatitisBDose",
              "variable" : "field"
            }
          ],
          "dependent" : [
            {
              "name" : "ItemToCoding",
              "variable" : ["item", "field"]
            }
          ]
        },
        {
          "name" : "vaccineType",
          "source" : [
            {
              "context" : "qr",
              "element" : "item",
              "variable" : "item",
              "condition" : "linkId = 'vaccineType'"
            }
          ],
          "target" : [
            {
              "context" : "immz",
              "contextType" : "variable",
              "element" : "vaccineType",
              "variable" : "field"
            }
          ],
          "dependent" : [
            {
              "name" : "ItemToCoding",
              "variable" : ["item", "field"]
            }
          ]
        },
        {
          "name" : "dateAndTimeOfVaccination",
          "source" : [
            {
              "context" : "qr",
              "element" : "item",
              "variable" : "item",
              "condition" : "linkId = 'dateAndTimeOfVaccination'"
            }
          ],
          "target" : [
            {
              "context" : "immz",
              "contextType" : "variable",
              "element" : "dateAndTimeOfVaccination",
              "variable" : "field"
            }
          ],
          "dependent" : [
            {
              "name" : "ItemToValue",
              "variable" : ["item", "field"]
            }
          ]
        },
        {
          "name" : "contactDate",
          "source" : [
            {
              "context" : "qr",
              "element" : "item",
              "variable" : "item",
              "condition" : "linkId = 'contactDate'"
            }
          ],
          "target" : [
            {
              "context" : "immz",
              "contextType" : "variable",
              "element" : "contactDate",
              "variable" : "field"
            }
          ],
          "dependent" : [
            {
              "name" : "ItemToValue",
              "variable" : ["item", "field"]
            }
          ]
        },
        {
          "name" : "ancContactNumber",
          "source" : [
            {
              "context" : "qr",
              "element" : "item",
              "variable" : "item",
              "condition" : "linkId = 'ancContactNumber'"
            }
          ],
          "target" : [
            {
              "context" : "immz",
              "contextType" : "variable",
              "element" : "ancContactNumber",
              "variable" : "field"
            }
          ],
          "dependent" : [
            {
              "name" : "ItemToValue",
              "variable" : ["item", "field"]
            }
          ]
        },
        {
          "name" : "doseNumber",
          "source" : [
            {
              "context" : "qr",
              "element" : "item",
              "variable" : "item",
              "condition" : "linkId = 'doseNumber'"
            }
          ],
          "target" : [
            {
              "context" : "immz",
              "contextType" : "variable",
              "element" : "doseNumber",
              "variable" : "field"
            }
          ],
          "dependent" : [
            {
              "name" : "ItemToValue",
              "variable" : ["item", "field"]
            }
          ]
        }
      ]
    },
    {
      "name" : "D1Questions",
      "typeMode" : "none",
      "input" : [
        {
          "name" : "qr",
          "type" : "QResp",
          "mode" : "source"
        },
        {
          "name" : "immz",
          "mode" : "target"
        }
      ],
      "rule" : [
        {
          "name" : "pretermBirth",
          "source" : [
            {
              "context" : "qr",
              "element" : "item",
              "variable" : "item",
              "condition" : "linkId = 'pretermBirth'"
            }
          ],
          "target" : [
            {
              "context" : "immz",
              "contextType" : "variable",
              "element" : "pretermBirth",
              "variable" : "field"
            }
          ],
          "dependent" : [
            {
              "name" : "ItemToValue",
              "variable" : ["item", "field"]
            }
          ]
        },
        {
          "name" : "immunocompromised",
          "source" : [
            {
              "context" : "qr",
              "element" : "item",
              "variable" : "item",
              "condition" : "linkId = 'immunocompromised'"
            }
          ],
          "target" : [
            {
              "context" : "immz",
              "contextType" : "variable",
              "element" : "immunocompromised",
              "variable" : "field"
            }
          ],
          "dependent" : [
            {
              "name" : "ItemToValue",
              "variable" : ["item", "field"]
            }
          ]
        },
        {
          "name" : "currentlyOnArt",
          "source" : [
            {
              "context" : "qr",
              "element" : "item",
              "variable" : "item",
              "condition" : "linkId = 'currentlyOnArt'"
            }
          ],
          "target" : [
            {
              "context" : "immz",
              "contextType" : "variable",
              "element" : "currentlyOnArt",
              "variable" : "field"
            }
          ],
          "dependent" : [
            {
              "name" : "ItemToValue",
              "variable" : ["item", "field"]
            }
          ]
        },
        {
          "name" : "currentlyOnArt",
          "source" : [
            {
              "context" : "qr",
              "element" : "item",
              "variable" : "item",
              "condition" : "linkId = 'currentlyOnArt'"
            }
          ],
          "target" : [
            {
              "context" : "immz",
              "contextType" : "variable",
              "element" : "currentlyOnArt",
              "variable" : "field"
            }
          ],
          "dependent" : [
            {
              "name" : "ItemToValue",
              "variable" : ["item", "field"]
            }
          ]
        },
        {
          "name" : "typeOfTbInfectionTestPerformed",
          "source" : [
            {
              "context" : "qr",
              "element" : "item",
              "variable" : "item",
              "condition" : "linkId = 'typeOfTbInfectionTestPerformed'"
            }
          ],
          "target" : [
            {
              "context" : "immz",
              "contextType" : "variable",
              "element" : "typeOfTbInfectionTestPerformed",
              "variable" : "field"
            }
          ],
          "dependent" : [
            {
              "name" : "ItemToCoding",
              "variable" : ["item", "field"]
            }
          ]
        },
        {
          "name" : "tbInfectionTestResult",
          "source" : [
            {
              "context" : "qr",
              "element" : "item",
              "variable" : "item",
              "condition" : "linkId = 'tbInfectionTestResult'"
            }
          ],
          "target" : [
            {
              "context" : "immz",
              "contextType" : "variable",
              "element" : "tbInfectionTestResult",
              "variable" : "field"
            }
          ],
          "dependent" : [
            {
              "name" : "ItemToCoding",
              "variable" : ["item", "field"]
            }
          ]
        },
        {
          "name" : "immunologicallyStable",
          "source" : [
            {
              "context" : "qr",
              "element" : "item",
              "variable" : "item",
              "condition" : "linkId = 'immunologicallyStable'"
            }
          ],
          "target" : [
            {
              "context" : "immz",
              "contextType" : "variable",
              "element" : "immunologicallyStable",
              "variable" : "field"
            }
          ],
          "dependent" : [
            {
              "name" : "ItemToValue",
              "variable" : ["item", "field"]
            }
          ]
        },
        {
          "name" : "clinicallyWell",
          "source" : [
            {
              "context" : "qr",
              "element" : "item",
              "variable" : "item",
              "condition" : "linkId = 'clinicallyWell'"
            }
          ],
          "target" : [
            {
              "context" : "immz",
              "contextType" : "variable",
              "element" : "clinicallyWell",
              "variable" : "field"
            }
          ],
          "dependent" : [
            {
              "name" : "ItemToValue",
              "variable" : ["item", "field"]
            }
          ]
        },
        {
          "name" : "birthWeightInGrams",
          "source" : [
            {
              "context" : "qr",
              "element" : "item",
              "variable" : "item",
              "condition" : "linkId = 'birthWeightInGrams'"
            }
          ],
          "target" : [
            {
              "context" : "immz",
              "contextType" : "variable",
              "element" : "birthWeightInGrams",
              "variable" : "field"
            }
          ],
          "dependent" : [
            {
              "name" : "ItemToValue",
              "variable" : ["item", "field"]
            }
          ]
        },
        {
          "name" : "artStartDate",
          "source" : [
            {
              "context" : "qr",
              "element" : "item",
              "variable" : "item",
              "condition" : "linkId = 'artStartDate'"
            }
          ],
          "target" : [
            {
              "context" : "immz",
              "contextType" : "variable",
              "element" : "artStartDate",
              "variable" : "field"
            }
          ],
          "dependent" : [
            {
              "name" : "ItemToValue",
              "variable" : ["item", "field"]
            }
          ]
        },
        {
          "name" : "highRiskOfPneumococcalInfection",
          "source" : [
            {
              "context" : "qr",
              "element" : "item",
              "variable" : "item",
              "condition" : "linkId = 'highRiskOfPneumococcalInfection'"
            }
          ],
          "target" : [
            {
              "context" : "immz",
              "contextType" : "variable",
              "element" : "highRiskOfPneumococcalInfection",
              "variable" : "field"
            }
          ],
          "dependent" : [
            {
              "name" : "ItemToValue",
              "variable" : ["item", "field"]
            }
          ]
        },
        {
          "name" : "ageInMonthsWhenClientReceivedFirstMeningococcalDose",
          "source" : [
            {
              "context" : "qr",
              "element" : "item",
              "variable" : "item",
              "condition" : "linkId = 'ageInMonthsWhenClientReceivedFirstMeningococcalDose'"
            }
          ],
          "target" : [
            {
              "context" : "immz",
              "contextType" : "variable",
              "element" : "ageInMonthsWhenClientReceivedFirstMeningococcalDose",
              "variable" : "field"
            }
          ],
          "dependent" : [
            {
              "name" : "ItemToValue",
              "variable" : ["item", "field"]
            }
          ]
        },
        {
          "name" : "vnaLevel",
          "source" : [
            {
              "context" : "qr",
              "element" : "item",
              "variable" : "item",
              "condition" : "linkId = 'vnaLevel'"
            }
          ],
          "target" : [
            {
              "context" : "immz",
              "contextType" : "variable",
              "element" : "vnaLevel",
              "variable" : "field"
            }
          ],
          "dependent" : [
            {
              "name" : "ItemToValue",
              "variable" : ["item", "field"]
            }
          ]
        },
        {
          "name" : "riskOfOccupationalExposureToRabiesVirus",
          "source" : [
            {
              "context" : "qr",
              "element" : "item",
              "variable" : "item",
              "condition" : "linkId = 'riskOfOccupationalExposureToRabiesVirus'"
            }
          ],
          "target" : [
            {
              "context" : "immz",
              "contextType" : "variable",
              "element" : "riskOfOccupationalExposureToRabiesVirus",
              "variable" : "field"
            }
          ],
          "dependent" : [
            {
              "name" : "ItemToValue",
              "variable" : ["item", "field"]
            }
          ]
        },
        {
          "name" : "dengueSerostatus",
          "source" : [
            {
              "context" : "qr",
              "element" : "item",
              "variable" : "item",
              "condition" : "linkId = 'dengueSerostatus'"
            }
          ],
          "target" : [
            {
              "context" : "immz",
              "contextType" : "variable",
              "element" : "dengueSerostatus",
              "variable" : "field"
            }
          ],
          "dependent" : [
            {
              "name" : "ItemToCoding",
              "variable" : ["item", "field"]
            }
          ]
        }
      ]
    },
    {
      "name" : "D13Questions",
      "typeMode" : "none",
      "input" : [
        {
          "name" : "qr",
          "type" : "QResp",
          "mode" : "source"
        },
        {
          "name" : "immz",
          "mode" : "target"
        }
      ],
      "rule" : [
        {
          "name" : "immunizationEventStatus",
          "source" : [
            {
              "context" : "qr",
              "element" : "item",
              "variable" : "item",
              "condition" : "linkId = 'immunizationEventStatus'"
            }
          ],
          "target" : [
            {
              "context" : "immz",
              "contextType" : "variable",
              "element" : "immunizationEventStatus",
              "variable" : "field"
            }
          ],
          "dependent" : [
            {
              "name" : "ItemToCoding",
              "variable" : ["item", "field"]
            }
          ]
        },
        {
          "name" : "reasonVaccineWasNotAdministered",
          "source" : [
            {
              "context" : "qr",
              "element" : "item",
              "variable" : "item",
              "condition" : "linkId = 'reasonVaccineWasNotAdministered'"
            }
          ],
          "target" : [
            {
              "context" : "immz",
              "contextType" : "variable",
              "element" : "reasonVaccineWasNotAdministered",
              "variable" : "field"
            }
          ],
          "dependent" : [
            {
              "name" : "ItemToCoding",
              "variable" : ["item", "field"]
            }
          ]
        },
        {
          "name" : "vaccineBrand",
          "source" : [
            {
              "context" : "qr",
              "element" : "item",
              "variable" : "item",
              "condition" : "linkId = 'vaccineBrand'"
            }
          ],
          "target" : [
            {
              "context" : "immz",
              "contextType" : "variable",
              "element" : "vaccineBrand",
              "variable" : "field"
            }
          ],
          "dependent" : [
            {
              "name" : "ItemToCoding",
              "variable" : ["item", "field"]
            }
          ]
        },
        {
          "name" : "liveVaccine",
          "source" : [
            {
              "context" : "qr",
              "element" : "item",
              "variable" : "item",
              "condition" : "linkId = 'liveVaccine'"
            }
          ],
          "target" : [
            {
              "context" : "immz",
              "contextType" : "variable",
              "element" : "liveVaccine",
              "variable" : "field"
            }
          ],
          "dependent" : [
            {
              "name" : "ItemToValue",
              "variable" : ["item", "field"]
            }
          ]
        },
        {
          "name" : "countryOfVaccination",
          "source" : [
            {
              "context" : "qr",
              "element" : "item",
              "variable" : "item",
              "condition" : "linkId = 'countryOfVaccination'"
            }
          ],
          "target" : [
            {
              "context" : "immz",
              "contextType" : "variable",
              "element" : "countryOfVaccination",
              "variable" : "field"
            }
          ],
          "dependent" : [
            {
              "name" : "ItemToCoding",
              "variable" : ["item", "field"]
            }
          ]
        },
        {
          "name" : "administrativeArea",
          "source" : [
            {
              "context" : "qr",
              "element" : "item",
              "variable" : "item",
              "condition" : "linkId = 'administrativeArea'"
            }
          ],
          "target" : [
            {
              "context" : "immz",
              "contextType" : "variable",
              "element" : "administrativeArea",
              "variable" : "field"
            }
          ],
          "dependent" : [
            {
              "name" : "ItemToCoding",
              "variable" : ["item", "field"]
            }
          ]
        },
        {
          "name" : "vaccineManufacturer",
          "source" : [
            {
              "context" : "qr",
              "element" : "item",
              "variable" : "item",
              "condition" : "linkId = 'vaccineManufacturer'"
            }
          ],
          "target" : [
            {
              "context" : "immz",
              "contextType" : "variable",
              "element" : "vaccineManufacturer",
              "variable" : "field"
            }
          ],
          "dependent" : [
            {
              "name" : "ItemToCoding",
              "variable" : ["item", "field"]
            }
          ]
        },
        {
          "name" : "vaccineBatchNumber",
          "source" : [
            {
              "context" : "qr",
              "element" : "item",
              "variable" : "item",
              "condition" : "linkId = 'vaccineBatchNumber'"
            }
          ],
          "target" : [
            {
              "context" : "immz",
              "contextType" : "variable",
              "element" : "vaccineBatchNumber",
              "variable" : "field"
            }
          ],
          "dependent" : [
            {
              "name" : "ItemToValue",
              "variable" : ["item", "field"]
            }
          ]
        },
        {
          "name" : "vaccineMarketAuthorizationHolder",
          "source" : [
            {
              "context" : "qr",
              "element" : "item",
              "variable" : "item",
              "condition" : "linkId = 'vaccineMarketAuthorizationHolder'"
            }
          ],
          "target" : [
            {
              "context" : "immz",
              "contextType" : "variable",
              "element" : "vaccineMarketAuthorizationHolder",
              "variable" : "field"
            }
          ],
          "dependent" : [
            {
              "name" : "ItemToCoding",
              "variable" : ["item", "field"]
            }
          ]
        },
        {
          "name" : "expirationDate",
          "source" : [
            {
              "context" : "qr",
              "element" : "item",
              "variable" : "item",
              "condition" : "linkId = 'expirationDate'"
            }
          ],
          "target" : [
            {
              "context" : "immz",
              "contextType" : "variable",
              "element" : "expirationDate",
              "variable" : "field"
            }
          ],
          "dependent" : [
            {
              "name" : "ItemToValue",
              "variable" : ["item", "field"]
            }
          ]
        },
        {
          "name" : "doseQuantity",
          "source" : [
            {
              "context" : "qr",
              "element" : "item",
              "variable" : "item",
              "condition" : "linkId = 'doseQuantity'"
            }
          ],
          "target" : [
            {
              "context" : "immz",
              "contextType" : "variable",
              "element" : "doseQuantity",
              "variable" : "field"
            }
          ],
          "dependent" : [
            {
              "name" : "ItemToValue",
              "variable" : ["item", "field"]
            }
          ]
        },
        {
          "name" : "healthWorkerIdentifier",
          "source" : [
            {
              "context" : "qr",
              "element" : "item",
              "variable" : "item",
              "condition" : "linkId = 'healthWorkerIdentifier'"
            }
          ],
          "target" : [
            {
              "context" : "immz",
              "contextType" : "variable",
              "element" : "healthWorkerIdentifier",
              "variable" : "field"
            }
          ],
          "dependent" : [
            {
              "name" : "ItemToValue",
              "variable" : ["item", "field"]
            }
          ]
        },
        {
          "name" : "totalDosesInSeries",
          "source" : [
            {
              "context" : "qr",
              "element" : "item",
              "variable" : "item",
              "condition" : "linkId = 'totalDosesInSeries'"
            }
          ],
          "target" : [
            {
              "context" : "immz",
              "contextType" : "variable",
              "element" : "totalDosesInSeries",
              "variable" : "field"
            }
          ],
          "dependent" : [
            {
              "name" : "ItemToValue",
              "variable" : ["item", "field"]
            }
          ]
        },
        {
          "name" : "diseaseTargeted",
          "source" : [
            {
              "context" : "qr",
              "element" : "item",
              "variable" : "item",
              "condition" : "linkId = 'diseaseTargeted'"
            }
          ],
          "target" : [
            {
              "context" : "immz",
              "contextType" : "variable",
              "element" : "diseaseTargeted",
              "variable" : "field"
            }
          ],
          "dependent" : [
            {
              "name" : "ItemToCoding",
              "variable" : ["item", "field"]
            }
          ]
        },
        {
          "name" : "dueDateOfNextDose",
          "source" : [
            {
              "context" : "qr",
              "element" : "item",
              "variable" : "item",
              "condition" : "linkId = 'dueDateOfNextDose'"
            }
          ],
          "target" : [
            {
              "context" : "immz",
              "contextType" : "variable",
              "element" : "dueDateOfNextDose",
              "variable" : "field"
            }
          ],
          "dependent" : [
            {
              "name" : "ItemToValue",
              "variable" : ["item", "field"]
            }
          ]
        }
      ]
    },
    {
      "name" : "MakeImmzObservation",
      "typeMode" : "none",
      "input" : [
        {
          "name" : "patient",
          "type" : "Reference",
          "mode" : "source"
        },
        {
          "name" : "immid",
          "mode" : "source"
        },
        {
          "name" : "code",
          "type" : "Coding",
          "mode" : "source"
        },
        {
          "name" : "cat",
          "type" : "Coding",
          "mode" : "source"
        },
        {
          "name" : "value",
          "mode" : "source"
        },
        {
          "name" : "bundle",
          "type" : "Bundle",
          "mode" : "target"
        }
      ],
      "rule" : [
        {
          "name" : "CreateObservation",
          "source" : [
            {
              "context" : "value"
            }
          ],
          "target" : [
            {
              "contextType" : "variable",
              "variable" : "oid",
              "transform" : "uuid"
            },
            {
              "context" : "bundle",
              "contextType" : "variable",
              "element" : "entry",
              "variable" : "entry"
            },
            {
              "context" : "entry",
              "contextType" : "variable",
              "element" : "fullUrl",
              "transform" : "append",
              "parameter" : [
                {
                  "valueString" : "urn:uuid:"
                },
                {
                  "valueId" : "oid"
                }
              ]
            },
            {
              "context" : "entry",
              "contextType" : "variable",
              "element" : "request",
              "variable" : "request"
            },
            {
              "context" : "request",
              "contextType" : "variable",
              "element" : "method",
              "transform" : "copy",
              "parameter" : [
                {
                  "valueString" : "PUT"
                }
              ]
            },
            {
              "context" : "request",
              "contextType" : "variable",
              "element" : "url",
              "transform" : "append",
              "parameter" : [
                {
                  "valueString" : "Observation/"
                },
                {
                  "valueId" : "oid"
                }
              ]
            },
            {
              "context" : "entry",
              "contextType" : "variable",
              "element" : "resource",
              "variable" : "obs",
              "transform" : "create",
              "parameter" : [
                {
                  "valueString" : "Observation"
                }
              ]
            }
          ],
          "rule" : [
            {
              "name" : "SetId",
              "source" : [
                {
                  "context" : "value"
                }
              ],
              "target" : [
                {
                  "context" : "obs",
                  "contextType" : "variable",
                  "element" : "id",
                  "transform" : "copy",
                  "parameter" : [
                    {
                      "valueId" : "oid"
                    }
                  ]
                }
              ]
            },
            {
              "name" : "SetPartOf",
              "source" : [
                {
                  "context" : "immid"
                }
              ],
              "target" : [
                {
                  "context" : "obs",
                  "contextType" : "variable",
                  "element" : "partOf",
                  "variable" : "partOf"
                },
                {
                  "context" : "partOf",
                  "contextType" : "variable",
                  "element" : "reference",
                  "transform" : "append",
                  "parameter" : [
                    {
                      "valueString" : "urn:uuid:"
                    },
                    {
                      "valueId" : "immid"
                    }
                  ]
                }
              ]
            },
            {
              "name" : "SetSubject",
              "source" : [
                {
                  "context" : "patient"
                }
              ],
              "target" : [
                {
                  "context" : "obs",
                  "contextType" : "variable",
                  "element" : "subject",
                  "transform" : "copy",
                  "parameter" : [
                    {
                      "valueId" : "patient"
                    }
                  ]
                }
              ]
            },
            {
              "name" : "SetCode",
              "source" : [
                {
                  "context" : "code"
                }
              ],
              "target" : [
                {
                  "context" : "obs",
                  "contextType" : "variable",
                  "element" : "code",
                  "transform" : "copy",
                  "parameter" : [
                    {
                      "valueId" : "code"
                    }
                  ]
                }
              ]
            },
            {
              "name" : "SetValue",
              "source" : [
                {
                  "context" : "value"
                }
              ],
              "target" : [
                {
                  "context" : "obs",
                  "contextType" : "variable",
                  "element" : "value",
                  "transform" : "copy",
                  "parameter" : [
                    {
                      "valueId" : "value"
                    }
                  ]
                }
              ]
            },
            {
              "name" : "SetCategory",
              "source" : [
                {
                  "context" : "cat"
                }
              ],
              "target" : [
                {
                  "context" : "obs",
                  "contextType" : "variable",
                  "element" : "category",
                  "transform" : "copy",
                  "parameter" : [
                    {
                      "valueId" : "cat"
                    }
                  ]
                }
              ]
            }
          ]
        }
      ]
    },
    {
      "name" : "MakeObservation",
      "typeMode" : "none",
      "input" : [
        {
          "name" : "patient",
          "type" : "Reference",
          "mode" : "source"
        },
        {
          "name" : "code",
          "type" : "Coding",
          "mode" : "source"
        },
        {
          "name" : "cat",
          "type" : "Coding",
          "mode" : "source"
        },
        {
          "name" : "value",
          "mode" : "source"
        },
        {
          "name" : "bundle",
          "type" : "Bundle",
          "mode" : "target"
        }
      ],
      "rule" : [
        {
          "name" : "CreateObservation",
          "source" : [
            {
              "context" : "value"
            }
          ],
          "target" : [
            {
              "contextType" : "variable",
              "variable" : "oid",
              "transform" : "uuid"
            },
            {
              "context" : "bundle",
              "contextType" : "variable",
              "element" : "entry",
              "variable" : "entry"
            },
            {
              "context" : "entry",
              "contextType" : "variable",
              "element" : "fullUrl",
              "transform" : "append",
              "parameter" : [
                {
                  "valueString" : "urn:uuid:"
                },
                {
                  "valueId" : "oid"
                }
              ]
            },
            {
              "context" : "entry",
              "contextType" : "variable",
              "element" : "request",
              "variable" : "request"
            },
            {
              "context" : "request",
              "contextType" : "variable",
              "element" : "method",
              "transform" : "copy",
              "parameter" : [
                {
                  "valueString" : "PUT"
                }
              ]
            },
            {
              "context" : "request",
              "contextType" : "variable",
              "element" : "url",
              "transform" : "append",
              "parameter" : [
                {
                  "valueString" : "Observation/"
                },
                {
                  "valueId" : "oid"
                }
              ]
            },
            {
              "context" : "entry",
              "contextType" : "variable",
              "element" : "resource",
              "variable" : "obs",
              "transform" : "create",
              "parameter" : [
                {
                  "valueString" : "Observation"
                }
              ]
            }
          ],
          "rule" : [
            {
              "name" : "SetId",
              "source" : [
                {
                  "context" : "value"
                }
              ],
              "target" : [
                {
                  "context" : "obs",
                  "contextType" : "variable",
                  "element" : "id",
                  "transform" : "copy",
                  "parameter" : [
                    {
                      "valueId" : "oid"
                    }
                  ]
                }
              ]
            },
            {
              "name" : "SetSubject",
              "source" : [
                {
                  "context" : "patient"
                }
              ],
              "target" : [
                {
                  "context" : "obs",
                  "contextType" : "variable",
                  "element" : "subject",
                  "transform" : "copy",
                  "parameter" : [
                    {
                      "valueId" : "patient"
                    }
                  ]
                }
              ]
            },
            {
              "name" : "SetCode",
              "source" : [
                {
                  "context" : "code"
                }
              ],
              "target" : [
                {
                  "context" : "obs",
                  "contextType" : "variable",
                  "element" : "code",
                  "transform" : "copy",
                  "parameter" : [
                    {
                      "valueId" : "code"
                    }
                  ]
                }
              ]
            },
            {
              "name" : "SetValue",
              "source" : [
                {
                  "context" : "value"
                }
              ],
              "target" : [
                {
                  "context" : "obs",
                  "contextType" : "variable",
                  "element" : "value",
                  "transform" : "copy",
                  "parameter" : [
                    {
                      "valueId" : "value"
                    }
                  ]
                }
              ]
            },
            {
              "name" : "SetCategory",
              "source" : [
                {
                  "context" : "cat"
                }
              ],
              "target" : [
                {
                  "context" : "obs",
                  "contextType" : "variable",
                  "element" : "category",
                  "transform" : "copy",
                  "parameter" : [
                    {
                      "valueId" : "cat"
                    }
                  ]
                }
              ]
            }
          ]
        }
      ]
    },
    {
      "name" : "TypeOfVaccineDose",
      "typeMode" : "none",
      "input" : [
        {
          "name" : "typeof",
          "type" : "Coding",
          "mode" : "source"
        },
        {
          "name" : "ext",
          "type" : "Extension",
          "mode" : "target"
        }
      ],
      "rule" : [
        {
          "name" : "SetURL",
          "source" : [
            {
              "context" : "typeof"
            }
          ],
          "target" : [
            {
              "context" : "ext",
              "contextType" : "variable",
              "element" : "url",
              "transform" : "copy",
              "parameter" : [
                {
                  "valueString" : "http://smart.who.int/immunizations/StructureDefinition/IMMZTypeOfDose"
                }
              ]
            }
          ]
        },
        {
          "name" : "SetValue",
          "source" : [
            {
              "context" : "typeof"
            }
          ],
          "target" : [
            {
              "context" : "ext",
              "contextType" : "variable",
              "element" : "value",
              "transform" : "copy",
              "parameter" : [
                {
                  "valueId" : "typeof"
                }
              ]
            }
          ]
        }
      ]
    },
    {
      "name" : "MakeImmunization",
      "typeMode" : "none",
      "input" : [
        {
          "name" : "patient",
          "type" : "Reference",
          "mode" : "source"
        },
        {
          "name" : "immid",
          "mode" : "source"
        },
        {
          "name" : "immz",
          "mode" : "source"
        },
        {
          "name" : "bundle",
          "type" : "Bundle",
          "mode" : "target"
        }
      ],
      "rule" : [
        {
          "name" : "MakeImmunization",
          "source" : [
            {
              "context" : "immz",
              "element" : "vaccineType",
              "variable" : "vaccineCode"
            }
          ],
          "target" : [
            {
              "context" : "bundle",
              "contextType" : "variable",
              "element" : "entry",
              "variable" : "entry"
            },
            {
              "context" : "entry",
              "contextType" : "variable",
              "element" : "fullUrl",
              "transform" : "append",
              "parameter" : [
                {
                  "valueString" : "urn:uuid:"
                },
                {
                  "valueId" : "immid"
                }
              ]
            },
            {
              "context" : "entry",
              "contextType" : "variable",
              "element" : "request",
              "variable" : "request"
            },
            {
              "context" : "request",
              "contextType" : "variable",
              "element" : "method",
              "transform" : "copy",
              "parameter" : [
                {
                  "valueString" : "PUT"
                }
              ]
            },
            {
              "context" : "request",
              "contextType" : "variable",
              "element" : "url",
              "transform" : "append",
              "parameter" : [
                {
                  "valueString" : "Immunization/"
                },
                {
                  "valueId" : "immid"
                }
              ]
            },
            {
              "context" : "entry",
              "contextType" : "variable",
              "element" : "resource",
              "variable" : "imm",
              "transform" : "create",
              "parameter" : [
                {
                  "valueString" : "Immunization"
                }
              ]
            }
          ],
          "rule" : [
            {
              "name" : "SetId",
              "source" : [
                {
                  "context" : "immid"
                }
              ],
              "target" : [
                {
                  "context" : "imm",
                  "contextType" : "variable",
                  "element" : "id",
                  "transform" : "copy",
                  "parameter" : [
                    {
                      "valueId" : "immid"
                    }
                  ]
                }
              ]
            },
            {
              "name" : "SetPatient",
              "source" : [
                {
                  "context" : "patient"
                }
              ],
              "target" : [
                {
                  "context" : "imm",
                  "contextType" : "variable",
                  "element" : "patient",
                  "transform" : "copy",
                  "parameter" : [
                    {
                      "valueId" : "patient"
                    }
                  ]
                }
              ]
            },
            {
              "name" : "vaccineCode",
              "source" : [
                {
                  "context" : "vaccineCode"
                }
              ],
              "target" : [
                {
                  "context" : "imm",
                  "contextType" : "variable",
                  "element" : "vaccineCode",
                  "transform" : "copy",
                  "parameter" : [
                    {
                      "valueId" : "vaccineCode"
                    }
                  ]
                }
              ]
            },
            {
              "name" : "protocolApplied",
              "source" : [
                {
                  "context" : "immz",
                  "element" : "typeOfDose",
                  "variable" : "typeOfDose"
                }
              ],
              "target" : [
                {
                  "context" : "imm",
                  "contextType" : "variable",
                  "element" : "protocolApplied",
                  "variable" : "pa"
                }
              ],
              "rule" : [
                {
                  "name" : "SetSeriesToCode",
                  "source" : [
                    {
                      "context" : "typeOfDose",
                      "element" : "code",
                      "variable" : "code"
                    }
                  ],
                  "target" : [
                    {
                      "context" : "pa",
                      "contextType" : "variable",
                      "element" : "series",
                      "transform" : "copy",
                      "parameter" : [
                        {
                          "valueId" : "code"
                        }
                      ]
                    }
                  ],
                  "documentation" : "if display is missing"
                },
                {
                  "name" : "SetSeriesToDisplay",
                  "source" : [
                    {
                      "context" : "typeOfDose",
                      "element" : "display",
                      "variable" : "display"
                    }
                  ],
                  "target" : [
                    {
                      "context" : "pa",
                      "contextType" : "variable",
                      "element" : "series",
                      "transform" : "copy",
                      "parameter" : [
                        {
                          "valueId" : "display"
                        }
                      ]
                    }
                  ]
                },
                {
                  "name" : "SetDoseNumber",
                  "source" : [
                    {
                      "context" : "immz",
                      "element" : "doseNumber",
                      "variable" : "doseNumber"
                    }
                  ],
                  "target" : [
                    {
                      "context" : "pa",
                      "contextType" : "variable",
                      "element" : "doseNumber",
                      "transform" : "copy",
                      "parameter" : [
                        {
                          "valueId" : "doseNumber"
                        }
                      ]
                    }
                  ]
                },
                {
                  "name" : "totalDosesInSeries",
                  "source" : [
                    {
                      "context" : "immz",
                      "element" : "totalDosesInSeries",
                      "variable" : "totalDoses"
                    }
                  ],
                  "target" : [
                    {
                      "context" : "pa",
                      "contextType" : "variable",
                      "element" : "seriesDoses",
                      "transform" : "copy",
                      "parameter" : [
                        {
                          "valueId" : "totalDoses"
                        }
                      ]
                    }
                  ]
                },
                {
                  "name" : "diseaseTargeted",
                  "source" : [
                    {
                      "context" : "immz",
                      "element" : "diseaseTargeted",
                      "variable" : "disease"
                    }
                  ],
                  "target" : [
                    {
                      "context" : "pa",
                      "contextType" : "variable",
                      "element" : "targetDisease",
                      "transform" : "copy",
                      "parameter" : [
                        {
                          "valueId" : "disease"
                        }
                      ]
                    }
                  ]
                },
                {
                  "name" : "dueDateOfNextDose",
                  "source" : [
                    {
                      "context" : "immz",
                      "element" : "dueDateOfNextDose",
                      "variable" : "duedate"
                    }
                  ],
                  "target" : [
                    {
                      "context" : "pa",
                      "contextType" : "variable",
                      "element" : "extension",
                      "variable" : "ext"
                    },
                    {
                      "context" : "ext",
                      "contextType" : "variable",
                      "element" : "url",
                      "transform" : "copy",
                      "parameter" : [
                        {
                          "valueString" : "http://smart.who.int/immunizations/StructureDefinition/IMMZDueDateOfNextDose"
                        }
                      ]
                    },
                    {
                      "context" : "ext",
                      "contextType" : "variable",
                      "element" : "value",
                      "transform" : "copy",
                      "parameter" : [
                        {
                          "valueId" : "duedate"
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            {
              "name" : "dateAndTimeOfVaccination",
              "source" : [
                {
                  "context" : "immz",
                  "element" : "dateAndTimeOfVaccination",
                  "variable" : "occurrence"
                }
              ],
              "target" : [
                {
                  "context" : "imm",
                  "contextType" : "variable",
                  "element" : "occurrence",
                  "transform" : "copy",
                  "parameter" : [
                    {
                      "valueId" : "occurrence"
                    }
                  ]
                }
              ]
            },
            {
              "name" : "typeOfPoliovirusDose",
              "source" : [
                {
                  "context" : "immz",
                  "element" : "typeOfPoliovirusDose",
                  "variable" : "typeof"
                }
              ],
              "target" : [
                {
                  "context" : "imm",
                  "contextType" : "variable",
                  "element" : "extension",
                  "variable" : "ext"
                }
              ],
              "dependent" : [
                {
                  "name" : "TypeOfVaccineDose",
                  "variable" : ["typeof", "ext"]
                }
              ]
            },
            {
              "name" : "typeOfJeDose",
              "source" : [
                {
                  "context" : "immz",
                  "element" : "typeOfJeDose",
                  "variable" : "typeof"
                }
              ],
              "target" : [
                {
                  "context" : "imm",
                  "contextType" : "variable",
                  "element" : "extension",
                  "variable" : "ext"
                }
              ],
              "dependent" : [
                {
                  "name" : "TypeOfVaccineDose",
                  "variable" : ["typeof", "ext"]
                }
              ]
            },
            {
              "name" : "typeOfTbeDose",
              "source" : [
                {
                  "context" : "immz",
                  "element" : "typeOfTbeDose",
                  "variable" : "typeof"
                }
              ],
              "target" : [
                {
                  "context" : "imm",
                  "contextType" : "variable",
                  "element" : "extension",
                  "variable" : "ext"
                }
              ],
              "dependent" : [
                {
                  "name" : "TypeOfVaccineDose",
                  "variable" : ["typeof", "ext"]
                }
              ]
            },
            {
              "name" : "typeOfTyphoidDose",
              "source" : [
                {
                  "context" : "immz",
                  "element" : "typeOfTyphoidDose",
                  "variable" : "typeof"
                }
              ],
              "target" : [
                {
                  "context" : "imm",
                  "contextType" : "variable",
                  "element" : "extension",
                  "variable" : "ext"
                }
              ],
              "dependent" : [
                {
                  "name" : "TypeOfVaccineDose",
                  "variable" : ["typeof", "ext"]
                }
              ]
            },
            {
              "name" : "typeOfCholeraDose",
              "source" : [
                {
                  "context" : "immz",
                  "element" : "typeOfCholeraDose",
                  "variable" : "typeof"
                }
              ],
              "target" : [
                {
                  "context" : "imm",
                  "contextType" : "variable",
                  "element" : "extension",
                  "variable" : "ext"
                }
              ],
              "dependent" : [
                {
                  "name" : "TypeOfVaccineDose",
                  "variable" : ["typeof", "ext"]
                }
              ]
            },
            {
              "name" : "typeOfMeningococcalDose",
              "source" : [
                {
                  "context" : "immz",
                  "element" : "typeOfMeningococcalDose",
                  "variable" : "typeof"
                }
              ],
              "target" : [
                {
                  "context" : "imm",
                  "contextType" : "variable",
                  "element" : "extension",
                  "variable" : "ext"
                }
              ],
              "dependent" : [
                {
                  "name" : "TypeOfVaccineDose",
                  "variable" : ["typeof", "ext"]
                }
              ]
            },
            {
              "name" : "typeOfHepatitisADose",
              "source" : [
                {
                  "context" : "immz",
                  "element" : "typeOfHepatitisADose",
                  "variable" : "typeof"
                }
              ],
              "target" : [
                {
                  "context" : "imm",
                  "contextType" : "variable",
                  "element" : "extension",
                  "variable" : "ext"
                }
              ],
              "dependent" : [
                {
                  "name" : "TypeOfVaccineDose",
                  "variable" : ["typeof", "ext"]
                }
              ]
            },
            {
              "name" : "typeOfHepatitisBDose",
              "source" : [
                {
                  "context" : "immz",
                  "element" : "typeOfHepatitisBDose",
                  "variable" : "typeof"
                }
              ],
              "target" : [
                {
                  "context" : "imm",
                  "contextType" : "variable",
                  "element" : "extension",
                  "variable" : "ext"
                }
              ],
              "dependent" : [
                {
                  "name" : "TypeOfVaccineDose",
                  "variable" : ["typeof", "ext"]
                }
              ]
            },
            {
              "name" : "SetDefaultStatus",
              "source" : [
                {
                  "context" : "immz"
                }
              ],
              "target" : [
                {
                  "context" : "imm",
                  "contextType" : "variable",
                  "element" : "status",
                  "transform" : "copy",
                  "parameter" : [
                    {
                      "valueString" : "completed"
                    }
                  ]
                }
              ]
            },
            {
              "name" : "immunizationEventStatus",
              "source" : [
                {
                  "context" : "immz",
                  "element" : "immunizationEventStatus",
                  "variable" : "status"
                }
              ],
              "target" : [
                {
                  "context" : "imm",
                  "contextType" : "variable",
                  "element" : "status",
                  "transform" : "translate",
                  "parameter" : [
                    {
                      "valueId" : "status"
                    },
                    {
                      "valueString" : "http://smart.who.int/immunizations/ConceptMap/IMMZ.D.ConceptMap"
                    },
                    {
                      "valueString" : "code"
                    }
                  ]
                }
              ]
            },
            {
              "name" : "reasonVaccineWasNotAdministered",
              "source" : [
                {
                  "context" : "immz",
                  "element" : "reasonVaccineWasNotAdministered",
                  "variable" : "reason"
                }
              ],
              "target" : [
                {
                  "context" : "imm",
                  "contextType" : "variable",
                  "element" : "statusReason",
                  "transform" : "copy",
                  "parameter" : [
                    {
                      "valueId" : "reason"
                    }
                  ]
                }
              ]
            },
            {
              "name" : "vaccineBrand",
              "source" : [
                {
                  "context" : "immz",
                  "element" : "vaccineBrand",
                  "variable" : "brand"
                }
              ],
              "target" : [
                {
                  "context" : "imm",
                  "contextType" : "variable",
                  "element" : "extension",
                  "variable" : "ext"
                },
                {
                  "context" : "ext",
                  "contextType" : "variable",
                  "element" : "url",
                  "transform" : "copy",
                  "parameter" : [
                    {
                      "valueString" : "http://smart.who.int/immunizations/StructureDefinition/IMMZVaccineBrand"
                    }
                  ]
                },
                {
                  "context" : "ext",
                  "contextType" : "variable",
                  "element" : "value",
                  "transform" : "copy",
                  "parameter" : [
                    {
                      "valueId" : "brand"
                    }
                  ]
                }
              ]
            },
            {
              "name" : "liveVaccine",
              "source" : [
                {
                  "context" : "immz",
                  "element" : "liveVaccine",
                  "variable" : "live"
                }
              ],
              "target" : [
                {
                  "context" : "imm",
                  "contextType" : "variable",
                  "element" : "extension",
                  "variable" : "ext"
                },
                {
                  "context" : "ext",
                  "contextType" : "variable",
                  "element" : "url",
                  "transform" : "copy",
                  "parameter" : [
                    {
                      "valueString" : "http://smart.who.int/immunizations/StructureDefinition/IMMZLiveVaccine"
                    }
                  ]
                },
                {
                  "context" : "ext",
                  "contextType" : "variable",
                  "element" : "value",
                  "transform" : "copy",
                  "parameter" : [
                    {
                      "valueId" : "live"
                    }
                  ]
                }
              ]
            },
            {
              "name" : "countryOfVaccination",
              "source" : [
                {
                  "context" : "immz",
                  "element" : "countryOfVaccination",
                  "variable" : "country"
                }
              ],
              "target" : [
                {
                  "context" : "imm",
                  "contextType" : "variable",
                  "element" : "extension",
                  "variable" : "ext"
                },
                {
                  "context" : "ext",
                  "contextType" : "variable",
                  "element" : "url",
                  "transform" : "copy",
                  "parameter" : [
                    {
                      "valueString" : "http://smart.who.int/immunizations/StructureDefinition/IMMZCountryOfVaccination"
                    }
                  ]
                },
                {
                  "context" : "ext",
                  "contextType" : "variable",
                  "element" : "value",
                  "transform" : "copy",
                  "parameter" : [
                    {
                      "valueId" : "country"
                    }
                  ]
                }
              ]
            },
            {
              "name" : "administrativeArea",
              "source" : [
                {
                  "context" : "immz",
                  "element" : "administrativeArea",
                  "variable" : "area"
                }
              ],
              "target" : [
                {
                  "context" : "imm",
                  "contextType" : "variable",
                  "element" : "extension",
                  "variable" : "ext"
                },
                {
                  "context" : "ext",
                  "contextType" : "variable",
                  "element" : "url",
                  "transform" : "copy",
                  "parameter" : [
                    {
                      "valueString" : "http://smart.who.int/immunizations/StructureDefinition/IMMZAdministrativeArea"
                    }
                  ]
                },
                {
                  "context" : "ext",
                  "contextType" : "variable",
                  "element" : "value",
                  "transform" : "copy",
                  "parameter" : [
                    {
                      "valueId" : "area"
                    }
                  ]
                }
              ]
            },
            {
              "name" : "vaccineManufacturer",
              "source" : [
                {
                  "context" : "immz",
                  "element" : "vaccineManufacturer",
                  "variable" : "vman"
                }
              ],
              "target" : [
                {
                  "context" : "imm",
                  "contextType" : "variable",
                  "element" : "manufacturer",
                  "variable" : "manufacturer"
                },
                {
                  "context" : "manufacturer",
                  "contextType" : "variable",
                  "element" : "identifier",
                  "variable" : "identifier"
                }
              ],
              "rule" : [
                {
                  "name" : "SetSystem",
                  "source" : [
                    {
                      "context" : "vman",
                      "element" : "system",
                      "variable" : "system"
                    }
                  ],
                  "target" : [
                    {
                      "context" : "identifier",
                      "contextType" : "variable",
                      "element" : "system",
                      "transform" : "copy",
                      "parameter" : [
                        {
                          "valueId" : "system"
                        }
                      ]
                    }
                  ]
                },
                {
                  "name" : "SetValue",
                  "source" : [
                    {
                      "context" : "vman",
                      "element" : "code",
                      "variable" : "code"
                    }
                  ],
                  "target" : [
                    {
                      "context" : "identifier",
                      "contextType" : "variable",
                      "element" : "value",
                      "transform" : "copy",
                      "parameter" : [
                        {
                          "valueId" : "code"
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            {
              "name" : "vaccineBatchNumber",
              "source" : [
                {
                  "context" : "immz",
                  "element" : "vaccineBatchNumber",
                  "variable" : "batch"
                }
              ],
              "target" : [
                {
                  "context" : "imm",
                  "contextType" : "variable",
                  "element" : "lotNumber",
                  "transform" : "copy",
                  "parameter" : [
                    {
                      "valueId" : "batch"
                    }
                  ]
                }
              ]
            },
            {
              "name" : "vaccineMarketAuthorizationHolder",
              "source" : [
                {
                  "context" : "immz",
                  "element" : "vaccineMarketAuthorizationHolder",
                  "variable" : "market"
                }
              ],
              "target" : [
                {
                  "context" : "imm",
                  "contextType" : "variable",
                  "element" : "extension",
                  "variable" : "ext"
                },
                {
                  "context" : "ext",
                  "contextType" : "variable",
                  "element" : "url",
                  "transform" : "copy",
                  "parameter" : [
                    {
                      "valueString" : "http://smart.who.int/immunizations/StructureDefinition/IMMZMarketAuthorization"
                    }
                  ]
                },
                {
                  "context" : "ext",
                  "contextType" : "variable",
                  "element" : "value",
                  "transform" : "copy",
                  "parameter" : [
                    {
                      "valueId" : "market"
                    }
                  ]
                }
              ]
            },
            {
              "name" : "expirationDate",
              "source" : [
                {
                  "context" : "immz",
                  "element" : "expirationDate",
                  "variable" : "expiration"
                }
              ],
              "target" : [
                {
                  "context" : "imm",
                  "contextType" : "variable",
                  "element" : "expirationDate",
                  "transform" : "copy",
                  "parameter" : [
                    {
                      "valueId" : "expiration"
                    }
                  ]
                }
              ]
            },
            {
              "name" : "doseQuantity",
              "source" : [
                {
                  "context" : "immz",
                  "element" : "doseQuantity",
                  "variable" : "dosequantity"
                }
              ],
              "target" : [
                {
                  "context" : "imm",
                  "contextType" : "variable",
                  "element" : "doseQuantity",
                  "transform" : "copy",
                  "parameter" : [
                    {
                      "valueId" : "dosequantity"
                    }
                  ]
                }
              ]
            },
            {
              "name" : "healthWorkerIdentifier",
              "source" : [
                {
                  "context" : "immz",
                  "element" : "healthWorkerIdentifier",
                  "variable" : "hw"
                }
              ],
              "target" : [
                {
                  "context" : "imm",
                  "contextType" : "variable",
                  "element" : "performer",
                  "variable" : "performer"
                },
                {
                  "context" : "performer",
                  "contextType" : "variable",
                  "element" : "actor",
                  "variable" : "actor"
                },
                {
                  "context" : "actor",
                  "contextType" : "variable",
                  "element" : "identifier",
                  "variable" : "identifier"
                },
                {
                  "context" : "identifier",
                  "contextType" : "variable",
                  "element" : "value",
                  "transform" : "copy",
                  "parameter" : [
                    {
                      "valueId" : "hw"
                    }
                  ]
                }
              ]
            }
          ]
        }
      ]
    },
    {
      "name" : "D1andD13Observations",
      "typeMode" : "none",
      "input" : [
        {
          "name" : "patient",
          "type" : "Reference",
          "mode" : "source"
        },
        {
          "name" : "immid",
          "mode" : "source"
        },
        {
          "name" : "immz",
          "mode" : "source"
        },
        {
          "name" : "bundle",
          "type" : "Bundle",
          "mode" : "target"
        }
      ],
      "rule" : [
        {
          "name" : "DefineCategory",
          "source" : [
            {
              "context" : "immz"
            }
          ],
          "target" : [
            {
              "contextType" : "variable",
              "variable" : "survey",
              "transform" : "c",
              "parameter" : [
                {
                  "valueString" : "http://terminology.hl7.org/CodeSystem/observation-category"
                },
                {
                  "valueString" : "survey"
                },
                {
                  "valueString" : "Survey"
                }
              ]
            }
          ],
          "rule" : [
            {
              "name" : "birthDose",
              "source" : [
                {
                  "context" : "immz",
                  "element" : "birthDose",
                  "variable" : "content"
                }
              ],
              "target" : [
                {
                  "contextType" : "variable",
                  "variable" : "code",
                  "transform" : "c",
                  "parameter" : [
                    {
                      "valueString" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D"
                    },
                    {
                      "valueString" : "DE263"
                    },
                    {
                      "valueString" : "Birth dose"
                    }
                  ]
                }
              ],
              "dependent" : [
                {
                  "name" : "MakeImmzObservation",
                  "variable" : ["patient", "immid", "code", "survey", "content", "bundle"]
                }
              ]
            },
            {
              "name" : "completedThePrimaryVaccinationSeries",
              "source" : [
                {
                  "context" : "immz",
                  "element" : "completedThePrimaryVaccinationSeries",
                  "variable" : "content"
                }
              ],
              "target" : [
                {
                  "contextType" : "variable",
                  "variable" : "code",
                  "transform" : "c",
                  "parameter" : [
                    {
                      "valueString" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D"
                    },
                    {
                      "valueString" : "DE203"
                    },
                    {
                      "valueString" : "Completed the primary vaccination series"
                    }
                  ]
                }
              ],
              "dependent" : [
                {
                  "name" : "MakeImmzObservation",
                  "variable" : ["patient", "immid", "code", "survey", "content", "bundle"]
                }
              ]
            },
            {
              "name" : "completedTheBoosterSeries",
              "source" : [
                {
                  "context" : "immz",
                  "element" : "completedTheBoosterSeries",
                  "variable" : "content"
                }
              ],
              "target" : [
                {
                  "contextType" : "variable",
                  "variable" : "code",
                  "transform" : "c",
                  "parameter" : [
                    {
                      "valueString" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D"
                    },
                    {
                      "valueString" : "DE257"
                    },
                    {
                      "valueString" : "Completed the booster series"
                    }
                  ]
                }
              ],
              "dependent" : [
                {
                  "name" : "MakeImmzObservation",
                  "variable" : ["patient", "immid", "code", "survey", "content", "bundle"]
                }
              ]
            },
            {
              "name" : "dateWhenPrimaryVaccinationSeriesWasCompleted",
              "source" : [
                {
                  "context" : "immz",
                  "element" : "dateWhenPrimaryVaccinationSeriesWasCompleted",
                  "variable" : "content"
                }
              ],
              "target" : [
                {
                  "contextType" : "variable",
                  "variable" : "code",
                  "transform" : "c",
                  "parameter" : [
                    {
                      "valueString" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D"
                    },
                    {
                      "valueString" : "DE242"
                    },
                    {
                      "valueString" : "Date when primary vaccination series was completed"
                    }
                  ]
                }
              ],
              "dependent" : [
                {
                  "name" : "MakeImmzObservation",
                  "variable" : ["patient", "immid", "code", "survey", "content", "bundle"]
                }
              ]
            },
            {
              "name" : "hivStatus",
              "source" : [
                {
                  "context" : "immz",
                  "element" : "hivStatus",
                  "variable" : "content"
                }
              ],
              "target" : [
                {
                  "contextType" : "variable",
                  "variable" : "code",
                  "transform" : "c",
                  "parameter" : [
                    {
                      "valueString" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D"
                    },
                    {
                      "valueString" : "DE204"
                    },
                    {
                      "valueString" : "HIV status"
                    }
                  ]
                }
              ],
              "dependent" : [
                {
                  "name" : "MakeImmzObservation",
                  "variable" : ["patient", "immid", "code", "survey", "content", "bundle"]
                }
              ]
            },
            {
              "name" : "contactDate",
              "source" : [
                {
                  "context" : "immz",
                  "element" : "contactDate",
                  "variable" : "content"
                }
              ],
              "target" : [
                {
                  "contextType" : "variable",
                  "variable" : "code",
                  "transform" : "c",
                  "parameter" : [
                    {
                      "valueString" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D"
                    },
                    {
                      "valueString" : "DE201"
                    },
                    {
                      "valueString" : "Contact date"
                    }
                  ]
                }
              ],
              "dependent" : [
                {
                  "name" : "MakeImmzObservation",
                  "variable" : ["patient", "immid", "code", "survey", "content", "bundle"]
                }
              ]
            },
            {
              "name" : "ancContactNumber",
              "source" : [
                {
                  "context" : "immz",
                  "element" : "ancContactNumber",
                  "variable" : "content"
                }
              ],
              "target" : [
                {
                  "contextType" : "variable",
                  "variable" : "code",
                  "transform" : "c",
                  "parameter" : [
                    {
                      "valueString" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D"
                    },
                    {
                      "valueString" : "DE202"
                    },
                    {
                      "valueString" : "ANC contact number"
                    }
                  ]
                }
              ],
              "dependent" : [
                {
                  "name" : "MakeImmzObservation",
                  "variable" : ["patient", "immid", "code", "survey", "content", "bundle"]
                }
              ]
            }
          ]
        }
      ]
    },
    {
      "name" : "D1Observations",
      "typeMode" : "none",
      "input" : [
        {
          "name" : "patient",
          "type" : "Reference",
          "mode" : "source"
        },
        {
          "name" : "immid",
          "mode" : "source"
        },
        {
          "name" : "immz",
          "mode" : "source"
        },
        {
          "name" : "bundle",
          "type" : "Bundle",
          "mode" : "target"
        }
      ],
      "rule" : [
        {
          "name" : "DefineCategory",
          "source" : [
            {
              "context" : "immz"
            }
          ],
          "target" : [
            {
              "contextType" : "variable",
              "variable" : "survey",
              "transform" : "c",
              "parameter" : [
                {
                  "valueString" : "http://terminology.hl7.org/CodeSystem/observation-category"
                },
                {
                  "valueString" : "survey"
                },
                {
                  "valueString" : "Survey"
                }
              ]
            }
          ],
          "rule" : [
            {
              "name" : "pretermBirth",
              "source" : [
                {
                  "context" : "immz",
                  "element" : "pretermBirth",
                  "variable" : "content"
                }
              ],
              "target" : [
                {
                  "contextType" : "variable",
                  "variable" : "code",
                  "transform" : "c",
                  "parameter" : [
                    {
                      "valueString" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D"
                    },
                    {
                      "valueString" : "DE208"
                    },
                    {
                      "valueString" : "Preterm birth"
                    }
                  ]
                }
              ],
              "dependent" : [
                {
                  "name" : "MakeImmzObservation",
                  "variable" : ["patient", "immid", "code", "survey", "content", "bundle"]
                }
              ]
            },
            {
              "name" : "immunocompromised",
              "source" : [
                {
                  "context" : "immz",
                  "element" : "immunocompromised",
                  "variable" : "content"
                }
              ],
              "target" : [
                {
                  "contextType" : "variable",
                  "variable" : "code",
                  "transform" : "c",
                  "parameter" : [
                    {
                      "valueString" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D"
                    },
                    {
                      "valueString" : "DE209"
                    },
                    {
                      "valueString" : "Immunocompromised"
                    }
                  ]
                }
              ],
              "dependent" : [
                {
                  "name" : "MakeImmzObservation",
                  "variable" : ["patient", "immid", "code", "survey", "content", "bundle"]
                }
              ]
            },
            {
              "name" : "currentlyOnArt",
              "source" : [
                {
                  "context" : "immz",
                  "element" : "currentlyOnArt",
                  "variable" : "content"
                }
              ],
              "target" : [
                {
                  "contextType" : "variable",
                  "variable" : "code",
                  "transform" : "c",
                  "parameter" : [
                    {
                      "valueString" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D"
                    },
                    {
                      "valueString" : "DE210"
                    },
                    {
                      "valueString" : "Currently on ART"
                    }
                  ]
                }
              ],
              "dependent" : [
                {
                  "name" : "MakeImmzObservation",
                  "variable" : ["patient", "immid", "code", "survey", "content", "bundle"]
                }
              ]
            },
            {
              "name" : "typeOfTbInfectionTestPerformed",
              "source" : [
                {
                  "context" : "immz",
                  "element" : "typeOfTbInfectionTestPerformed",
                  "variable" : "content"
                }
              ],
              "target" : [
                {
                  "contextType" : "variable",
                  "variable" : "code",
                  "transform" : "c",
                  "parameter" : [
                    {
                      "valueString" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D"
                    },
                    {
                      "valueString" : "DE243"
                    },
                    {
                      "valueString" : "Type of TB infection test performed"
                    }
                  ]
                }
              ],
              "dependent" : [
                {
                  "name" : "MakeImmzObservation",
                  "variable" : ["patient", "immid", "code", "survey", "content", "bundle"]
                }
              ]
            },
            {
              "name" : "tbInfectionTestResult",
              "source" : [
                {
                  "context" : "immz",
                  "element" : "tbInfectionTestResult",
                  "variable" : "content"
                }
              ],
              "target" : [
                {
                  "contextType" : "variable",
                  "variable" : "code",
                  "transform" : "c",
                  "parameter" : [
                    {
                      "valueString" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D"
                    },
                    {
                      "valueString" : "DE246"
                    },
                    {
                      "valueString" : "TB infection test result"
                    }
                  ]
                }
              ],
              "dependent" : [
                {
                  "name" : "MakeImmzObservation",
                  "variable" : ["patient", "immid", "code", "survey", "content", "bundle"]
                }
              ]
            },
            {
              "name" : "immunologicallyStable",
              "source" : [
                {
                  "context" : "immz",
                  "element" : "immunologicallyStable",
                  "variable" : "content"
                }
              ],
              "target" : [
                {
                  "contextType" : "variable",
                  "variable" : "code",
                  "transform" : "c",
                  "parameter" : [
                    {
                      "valueString" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D"
                    },
                    {
                      "valueString" : "DE249"
                    },
                    {
                      "valueString" : "Immunologically stable"
                    }
                  ]
                }
              ],
              "dependent" : [
                {
                  "name" : "MakeImmzObservation",
                  "variable" : ["patient", "immid", "code", "survey", "content", "bundle"]
                }
              ]
            },
            {
              "name" : "clinicallyWell",
              "source" : [
                {
                  "context" : "immz",
                  "element" : "clinicallyWell",
                  "variable" : "content"
                }
              ],
              "target" : [
                {
                  "contextType" : "variable",
                  "variable" : "code",
                  "transform" : "c",
                  "parameter" : [
                    {
                      "valueString" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D"
                    },
                    {
                      "valueString" : "DE250"
                    },
                    {
                      "valueString" : "Clinically well"
                    }
                  ]
                }
              ],
              "dependent" : [
                {
                  "name" : "MakeImmzObservation",
                  "variable" : ["patient", "immid", "code", "survey", "content", "bundle"]
                }
              ]
            },
            {
              "name" : "birthWeightInGrams",
              "source" : [
                {
                  "context" : "immz",
                  "element" : "birthWeightInGrams",
                  "variable" : "value"
                }
              ],
              "target" : [
                {
                  "contextType" : "variable",
                  "variable" : "content",
                  "transform" : "create",
                  "parameter" : [
                    {
                      "valueString" : "Quantity"
                    }
                  ]
                },
                {
                  "context" : "content",
                  "contextType" : "variable",
                  "element" : "system",
                  "transform" : "copy",
                  "parameter" : [
                    {
                      "valueString" : "http://unitsofmeasure.org"
                    }
                  ]
                },
                {
                  "context" : "content",
                  "contextType" : "variable",
                  "element" : "code",
                  "transform" : "copy",
                  "parameter" : [
                    {
                      "valueString" : "g"
                    }
                  ]
                },
                {
                  "context" : "content",
                  "contextType" : "variable",
                  "element" : "unit",
                  "transform" : "copy",
                  "parameter" : [
                    {
                      "valueString" : "g"
                    }
                  ]
                },
                {
                  "context" : "content",
                  "contextType" : "variable",
                  "element" : "value",
                  "transform" : "copy",
                  "parameter" : [
                    {
                      "valueId" : "value"
                    }
                  ]
                },
                {
                  "contextType" : "variable",
                  "variable" : "bwloinc",
                  "transform" : "c",
                  "parameter" : [
                    {
                      "valueString" : "http://loinc.org"
                    },
                    {
                      "valueString" : "8339-4"
                    },
                    {
                      "valueString" : "Birth weight Measured"
                    }
                  ]
                },
                {
                  "contextType" : "variable",
                  "variable" : "bwdak",
                  "transform" : "c",
                  "parameter" : [
                    {
                      "valueString" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D"
                    },
                    {
                      "valueString" : "DE211"
                    },
                    {
                      "valueString" : "Birth weight in grams"
                    }
                  ]
                },
                {
                  "contextType" : "variable",
                  "variable" : "code",
                  "transform" : "create",
                  "parameter" : [
                    {
                      "valueString" : "CodeableConcept"
                    }
                  ]
                },
                {
                  "context" : "code",
                  "contextType" : "variable",
                  "element" : "coding",
                  "transform" : "copy",
                  "parameter" : [
                    {
                      "valueId" : "bwloinc"
                    }
                  ]
                },
                {
                  "context" : "code",
                  "contextType" : "variable",
                  "element" : "coding",
                  "transform" : "copy",
                  "parameter" : [
                    {
                      "valueId" : "bwdak"
                    }
                  ]
                },
                {
                  "contextType" : "variable",
                  "variable" : "vital",
                  "transform" : "c",
                  "parameter" : [
                    {
                      "valueString" : "http://terminology.hl7.org/CodeSystem/observation-category"
                    },
                    {
                      "valueString" : "vital-signs"
                    },
                    {
                      "valueString" : "Vital Signs"
                    }
                  ]
                }
              ],
              "dependent" : [
                {
                  "name" : "MakeImmzObservation",
                  "variable" : ["patient", "immid", "code", "vital", "content", "bundle"]
                }
              ]
            },
            {
              "name" : "artStartDate",
              "source" : [
                {
                  "context" : "immz",
                  "element" : "artStartDate",
                  "variable" : "content"
                }
              ],
              "target" : [
                {
                  "contextType" : "variable",
                  "variable" : "code",
                  "transform" : "c",
                  "parameter" : [
                    {
                      "valueString" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D"
                    },
                    {
                      "valueString" : "DE215"
                    },
                    {
                      "valueString" : "ART start date"
                    }
                  ]
                }
              ],
              "dependent" : [
                {
                  "name" : "MakeImmzObservation",
                  "variable" : ["patient", "immid", "code", "survey", "content", "bundle"]
                }
              ]
            },
            {
              "name" : "highRiskOfPneumococcalInfection",
              "source" : [
                {
                  "context" : "immz",
                  "element" : "highRiskOfPneumococcalInfection",
                  "variable" : "content"
                }
              ],
              "target" : [
                {
                  "contextType" : "variable",
                  "variable" : "code",
                  "transform" : "c",
                  "parameter" : [
                    {
                      "valueString" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D"
                    },
                    {
                      "valueString" : "DE251"
                    },
                    {
                      "valueString" : "High risk of pneumococcal infection"
                    }
                  ]
                }
              ],
              "dependent" : [
                {
                  "name" : "MakeImmzObservation",
                  "variable" : ["patient", "immid", "code", "survey", "content", "bundle"]
                }
              ]
            },
            {
              "name" : "ageInMonthsWhenClientReceivedFirstMeningococcalDose",
              "source" : [
                {
                  "context" : "immz",
                  "element" : "ageInMonthsWhenClientReceivedFirstMeningococcalDose",
                  "variable" : "value"
                }
              ],
              "target" : [
                {
                  "contextType" : "variable",
                  "variable" : "content",
                  "transform" : "create",
                  "parameter" : [
                    {
                      "valueString" : "Quantity"
                    }
                  ]
                },
                {
                  "context" : "content",
                  "contextType" : "variable",
                  "element" : "unit",
                  "transform" : "copy",
                  "parameter" : [
                    {
                      "valueString" : "mo"
                    }
                  ]
                },
                {
                  "context" : "content",
                  "contextType" : "variable",
                  "element" : "value",
                  "transform" : "copy",
                  "parameter" : [
                    {
                      "valueId" : "value"
                    }
                  ]
                },
                {
                  "contextType" : "variable",
                  "variable" : "code",
                  "transform" : "c",
                  "parameter" : [
                    {
                      "valueString" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D"
                    },
                    {
                      "valueString" : "DE236"
                    },
                    {
                      "valueString" : "Age in months when client received first meningococcal dose"
                    }
                  ]
                }
              ],
              "dependent" : [
                {
                  "name" : "MakeImmzObservation",
                  "variable" : ["patient", "immid", "code", "survey", "content", "bundle"]
                }
              ]
            },
            {
              "name" : "vnaLevel",
              "source" : [
                {
                  "context" : "immz",
                  "element" : "vnaLevel",
                  "variable" : "value"
                }
              ],
              "target" : [
                {
                  "contextType" : "variable",
                  "variable" : "content",
                  "transform" : "create",
                  "parameter" : [
                    {
                      "valueString" : "Quantity"
                    }
                  ]
                },
                {
                  "context" : "content",
                  "contextType" : "variable",
                  "element" : "system",
                  "transform" : "copy",
                  "parameter" : [
                    {
                      "valueString" : "http://unitsofmeasure.org"
                    }
                  ]
                },
                {
                  "context" : "content",
                  "contextType" : "variable",
                  "element" : "code",
                  "transform" : "copy",
                  "parameter" : [
                    {
                      "valueString" : "[IU]/mL"
                    }
                  ]
                },
                {
                  "context" : "content",
                  "contextType" : "variable",
                  "element" : "unit",
                  "transform" : "copy",
                  "parameter" : [
                    {
                      "valueString" : "[IU]/mL"
                    }
                  ]
                },
                {
                  "context" : "content",
                  "contextType" : "variable",
                  "element" : "value",
                  "transform" : "copy",
                  "parameter" : [
                    {
                      "valueId" : "value"
                    }
                  ]
                },
                {
                  "contextType" : "variable",
                  "variable" : "code",
                  "transform" : "c",
                  "parameter" : [
                    {
                      "valueString" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D"
                    },
                    {
                      "valueString" : "DE240"
                    },
                    {
                      "valueString" : "VNA level"
                    }
                  ]
                }
              ],
              "dependent" : [
                {
                  "name" : "MakeImmzObservation",
                  "variable" : ["patient", "immid", "code", "survey", "content", "bundle"]
                }
              ]
            },
            {
              "name" : "riskOfOccupationalExposureToRabiesVirus",
              "source" : [
                {
                  "context" : "immz",
                  "element" : "riskOfOccupationalExposureToRabiesVirus",
                  "variable" : "content"
                }
              ],
              "target" : [
                {
                  "contextType" : "variable",
                  "variable" : "code",
                  "transform" : "c",
                  "parameter" : [
                    {
                      "valueString" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D"
                    },
                    {
                      "valueString" : "DE253"
                    },
                    {
                      "valueString" : "Risk of occupational exposure to rabies virus"
                    }
                  ]
                }
              ],
              "dependent" : [
                {
                  "name" : "MakeImmzObservation",
                  "variable" : ["patient", "immid", "code", "survey", "content", "bundle"]
                }
              ]
            },
            {
              "name" : "dengueSerostatus",
              "source" : [
                {
                  "context" : "immz",
                  "element" : "dengueSerostatus",
                  "variable" : "content"
                }
              ],
              "target" : [
                {
                  "contextType" : "variable",
                  "variable" : "code",
                  "transform" : "c",
                  "parameter" : [
                    {
                      "valueString" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D"
                    },
                    {
                      "valueString" : "DE241"
                    },
                    {
                      "valueString" : "Dengue serostatus"
                    }
                  ]
                }
              ],
              "dependent" : [
                {
                  "name" : "MakeImmzObservation",
                  "variable" : ["patient", "immid", "code", "survey", "content", "bundle"]
                }
              ]
            }
          ]
        }
      ]
    }
  ]
}

```
