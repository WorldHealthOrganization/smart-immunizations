# IMMZ.Helpers - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.Helpers**

## StructureMap: IMMZ.Helpers 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/StructureMap/IMMZ.Helpers | *Version*:0.2.0 |
| Draft as of 2026-04-03 | *Computable Name*:IMMZ.Helpers |

 
Immunization - Transform QuestionnaireResponse to Logical Model Helper groups 



## Resource Content

```json
{
  "resourceType" : "StructureMap",
  "id" : "IMMZ.Helpers",
  "url" : "http://smart.who.int/immunizations/StructureMap/IMMZ.Helpers",
  "version" : "0.2.0",
  "name" : "IMMZ.Helpers",
  "status" : "draft",
  "date" : "2026-04-03T22:35:55+00:00",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "Immunization - Transform QuestionnaireResponse to Logical Model Helper groups",
  "structure" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse",
    "mode" : "source",
    "alias" : "QResp"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/Bundle",
    "mode" : "target",
    "alias" : "Bundle"
  }],
  "group" : [{
    "name" : "ItemToValue",
    "typeMode" : "none",
    "input" : [{
      "name" : "item",
      "mode" : "source"
    },
    {
      "name" : "field",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "FirstAnswer",
      "source" : [{
        "context" : "item",
        "element" : "answer",
        "listMode" : "first",
        "variable" : "answer"
      }],
      "rule" : [{
        "name" : "SetValue",
        "source" : [{
          "context" : "answer",
          "element" : "value",
          "variable" : "content"
        }],
        "target" : [{
          "context" : "field",
          "contextType" : "variable",
          "element" : "value",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "content"
          }]
        }]
      }]
    }]
  },
  {
    "name" : "ItemToCode",
    "typeMode" : "none",
    "input" : [{
      "name" : "item",
      "mode" : "source"
    },
    {
      "name" : "field",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "FirstAnswer",
      "source" : [{
        "context" : "item",
        "element" : "answer",
        "listMode" : "first",
        "variable" : "answer"
      }],
      "rule" : [{
        "name" : "Coding",
        "source" : [{
          "context" : "answer",
          "element" : "value",
          "variable" : "coding"
        }],
        "rule" : [{
          "name" : "SetCode",
          "source" : [{
            "context" : "coding",
            "element" : "code",
            "variable" : "content"
          }],
          "target" : [{
            "context" : "field",
            "contextType" : "variable",
            "element" : "value",
            "transform" : "copy",
            "parameter" : [{
              "valueId" : "content"
            }]
          }]
        }]
      }]
    }]
  },
  {
    "name" : "ItemToCoding",
    "typeMode" : "none",
    "input" : [{
      "name" : "item",
      "mode" : "source"
    },
    {
      "name" : "field",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "FirstAnswer",
      "source" : [{
        "context" : "item",
        "element" : "answer",
        "listMode" : "first",
        "variable" : "answer"
      }],
      "rule" : [{
        "name" : "Coding",
        "source" : [{
          "context" : "answer",
          "element" : "value",
          "variable" : "coding"
        }],
        "rule" : [{
          "name" : "SetCode",
          "source" : [{
            "context" : "coding",
            "element" : "code",
            "variable" : "code"
          }],
          "target" : [{
            "context" : "field",
            "contextType" : "variable",
            "element" : "code",
            "transform" : "copy",
            "parameter" : [{
              "valueId" : "code"
            }]
          }]
        },
        {
          "name" : "SetSystem",
          "source" : [{
            "context" : "coding",
            "element" : "system",
            "variable" : "system"
          }],
          "target" : [{
            "context" : "field",
            "contextType" : "variable",
            "element" : "system",
            "transform" : "copy",
            "parameter" : [{
              "valueId" : "system"
            }]
          }]
        },
        {
          "name" : "SetDisplay",
          "source" : [{
            "context" : "coding",
            "element" : "display",
            "variable" : "display"
          }],
          "target" : [{
            "context" : "field",
            "contextType" : "variable",
            "element" : "display",
            "transform" : "copy",
            "parameter" : [{
              "valueId" : "display"
            }]
          }]
        }]
      }]
    }]
  },
  {
    "name" : "D1andD13Questions",
    "typeMode" : "none",
    "input" : [{
      "name" : "qr",
      "type" : "QResp",
      "mode" : "source"
    },
    {
      "name" : "immz",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "birthDose",
      "source" : [{
        "context" : "qr",
        "element" : "item",
        "variable" : "item",
        "condition" : "linkId = 'birthDose'"
      }],
      "target" : [{
        "context" : "immz",
        "contextType" : "variable",
        "element" : "birthDose",
        "variable" : "field"
      }],
      "dependent" : [{
        "name" : "ItemToValue",
        "variable" : ["item", "field"]
      }]
    },
    {
      "name" : "typeOfDose",
      "source" : [{
        "context" : "qr",
        "element" : "item",
        "variable" : "item",
        "condition" : "linkId = 'typeOfDose'"
      }],
      "target" : [{
        "context" : "immz",
        "contextType" : "variable",
        "element" : "typeOfDose",
        "variable" : "field"
      }],
      "dependent" : [{
        "name" : "ItemToCoding",
        "variable" : ["item", "field"]
      }]
    },
    {
      "name" : "completedThePrimaryVaccinationSeries",
      "source" : [{
        "context" : "qr",
        "element" : "item",
        "variable" : "item",
        "condition" : "linkId = 'completedThePrimaryVaccinationSeries'"
      }],
      "target" : [{
        "context" : "immz",
        "contextType" : "variable",
        "element" : "completedThePrimaryVaccinationSeries",
        "variable" : "field"
      }],
      "dependent" : [{
        "name" : "ItemToValue",
        "variable" : ["item", "field"]
      }]
    },
    {
      "name" : "completedTheBoosterSeries",
      "source" : [{
        "context" : "qr",
        "element" : "item",
        "variable" : "item",
        "condition" : "linkId = 'completedTheBoosterSeries'"
      }],
      "target" : [{
        "context" : "immz",
        "contextType" : "variable",
        "element" : "completedTheBoosterSeries",
        "variable" : "field"
      }],
      "dependent" : [{
        "name" : "ItemToValue",
        "variable" : ["item", "field"]
      }]
    },
    {
      "name" : "dateWhenPrimaryVaccinationSeriesWasCompleted",
      "source" : [{
        "context" : "qr",
        "element" : "item",
        "variable" : "item",
        "condition" : "linkId = 'dateWhenPrimaryVaccinationSeriesWasCompleted'"
      }],
      "target" : [{
        "context" : "immz",
        "contextType" : "variable",
        "element" : "dateWhenPrimaryVaccinationSeriesWasCompleted",
        "variable" : "field"
      }],
      "dependent" : [{
        "name" : "ItemToValue",
        "variable" : ["item", "field"]
      }]
    },
    {
      "name" : "hivStatus",
      "source" : [{
        "context" : "qr",
        "element" : "item",
        "variable" : "item",
        "condition" : "linkId = 'hivStatus'"
      }],
      "target" : [{
        "context" : "immz",
        "contextType" : "variable",
        "element" : "hivStatus",
        "variable" : "field"
      }],
      "dependent" : [{
        "name" : "ItemToCoding",
        "variable" : ["item", "field"]
      }]
    },
    {
      "name" : "typeOfPoliovirusDose",
      "source" : [{
        "context" : "qr",
        "element" : "item",
        "variable" : "item",
        "condition" : "linkId = 'typeOfPoliovirusDose'"
      }],
      "target" : [{
        "context" : "immz",
        "contextType" : "variable",
        "element" : "typeOfPoliovirusDose",
        "variable" : "field"
      }],
      "dependent" : [{
        "name" : "ItemToCoding",
        "variable" : ["item", "field"]
      }]
    },
    {
      "name" : "typeOfJeDose",
      "source" : [{
        "context" : "qr",
        "element" : "item",
        "variable" : "item",
        "condition" : "linkId = 'typeOfJeDose'"
      }],
      "target" : [{
        "context" : "immz",
        "contextType" : "variable",
        "element" : "typeOfJeDose",
        "variable" : "field"
      }],
      "dependent" : [{
        "name" : "ItemToCoding",
        "variable" : ["item", "field"]
      }]
    },
    {
      "name" : "typeOfTbeDose",
      "source" : [{
        "context" : "qr",
        "element" : "item",
        "variable" : "item",
        "condition" : "linkId = 'typeOfTbeDose'"
      }],
      "target" : [{
        "context" : "immz",
        "contextType" : "variable",
        "element" : "typeOfTbeDose",
        "variable" : "field"
      }],
      "dependent" : [{
        "name" : "ItemToCoding",
        "variable" : ["item", "field"]
      }]
    },
    {
      "name" : "typeOfTyphoidDose",
      "source" : [{
        "context" : "qr",
        "element" : "item",
        "variable" : "item",
        "condition" : "linkId = 'typeOfTyphoidDose'"
      }],
      "target" : [{
        "context" : "immz",
        "contextType" : "variable",
        "element" : "typeOfTyphoidDose",
        "variable" : "field"
      }],
      "dependent" : [{
        "name" : "ItemToCoding",
        "variable" : ["item", "field"]
      }]
    },
    {
      "name" : "typeOfCholeraDose",
      "source" : [{
        "context" : "qr",
        "element" : "item",
        "variable" : "item",
        "condition" : "linkId = 'typeOfCholeraDose'"
      }],
      "target" : [{
        "context" : "immz",
        "contextType" : "variable",
        "element" : "typeOfCholeraDose",
        "variable" : "field"
      }],
      "dependent" : [{
        "name" : "ItemToCoding",
        "variable" : ["item", "field"]
      }]
    },
    {
      "name" : "typeOfMeningococcalDose",
      "source" : [{
        "context" : "qr",
        "element" : "item",
        "variable" : "item",
        "condition" : "linkId = 'typeOfMeningococcalDose'"
      }],
      "target" : [{
        "context" : "immz",
        "contextType" : "variable",
        "element" : "typeOfMeningococcalDose",
        "variable" : "field"
      }],
      "dependent" : [{
        "name" : "ItemToCoding",
        "variable" : ["item", "field"]
      }]
    },
    {
      "name" : "typeOfHepatitisADose",
      "source" : [{
        "context" : "qr",
        "element" : "item",
        "variable" : "item",
        "condition" : "linkId = 'typeOfHepatitisADose'"
      }],
      "target" : [{
        "context" : "immz",
        "contextType" : "variable",
        "element" : "typeOfHepatitisADose",
        "variable" : "field"
      }],
      "dependent" : [{
        "name" : "ItemToCoding",
        "variable" : ["item", "field"]
      }]
    },
    {
      "name" : "typeOfHepatitisBDose",
      "source" : [{
        "context" : "qr",
        "element" : "item",
        "variable" : "item",
        "condition" : "linkId = 'typeOfHepatitisBDose'"
      }],
      "target" : [{
        "context" : "immz",
        "contextType" : "variable",
        "element" : "typeOfHepatitisBDose",
        "variable" : "field"
      }],
      "dependent" : [{
        "name" : "ItemToCoding",
        "variable" : ["item", "field"]
      }]
    },
    {
      "name" : "vaccineType",
      "source" : [{
        "context" : "qr",
        "element" : "item",
        "variable" : "item",
        "condition" : "linkId = 'vaccineType'"
      }],
      "target" : [{
        "context" : "immz",
        "contextType" : "variable",
        "element" : "vaccineType",
        "variable" : "field"
      }],
      "dependent" : [{
        "name" : "ItemToCoding",
        "variable" : ["item", "field"]
      }]
    },
    {
      "name" : "dateAndTimeOfVaccination",
      "source" : [{
        "context" : "qr",
        "element" : "item",
        "variable" : "item",
        "condition" : "linkId = 'dateAndTimeOfVaccination'"
      }],
      "target" : [{
        "context" : "immz",
        "contextType" : "variable",
        "element" : "dateAndTimeOfVaccination",
        "variable" : "field"
      }],
      "dependent" : [{
        "name" : "ItemToValue",
        "variable" : ["item", "field"]
      }]
    },
    {
      "name" : "contactDate",
      "source" : [{
        "context" : "qr",
        "element" : "item",
        "variable" : "item",
        "condition" : "linkId = 'contactDate'"
      }],
      "target" : [{
        "context" : "immz",
        "contextType" : "variable",
        "element" : "contactDate",
        "variable" : "field"
      }],
      "dependent" : [{
        "name" : "ItemToValue",
        "variable" : ["item", "field"]
      }]
    },
    {
      "name" : "ancContactNumber",
      "source" : [{
        "context" : "qr",
        "element" : "item",
        "variable" : "item",
        "condition" : "linkId = 'ancContactNumber'"
      }],
      "target" : [{
        "context" : "immz",
        "contextType" : "variable",
        "element" : "ancContactNumber",
        "variable" : "field"
      }],
      "dependent" : [{
        "name" : "ItemToValue",
        "variable" : ["item", "field"]
      }]
    },
    {
      "name" : "doseNumber",
      "source" : [{
        "context" : "qr",
        "element" : "item",
        "variable" : "item",
        "condition" : "linkId = 'doseNumber'"
      }],
      "target" : [{
        "context" : "immz",
        "contextType" : "variable",
        "element" : "doseNumber",
        "variable" : "field"
      }],
      "dependent" : [{
        "name" : "ItemToValue",
        "variable" : ["item", "field"]
      }]
    }]
  },
  {
    "name" : "D1Questions",
    "typeMode" : "none",
    "input" : [{
      "name" : "qr",
      "type" : "QResp",
      "mode" : "source"
    },
    {
      "name" : "immz",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "pretermBirth",
      "source" : [{
        "context" : "qr",
        "element" : "item",
        "variable" : "item",
        "condition" : "linkId = 'pretermBirth'"
      }],
      "target" : [{
        "context" : "immz",
        "contextType" : "variable",
        "element" : "pretermBirth",
        "variable" : "field"
      }],
      "dependent" : [{
        "name" : "ItemToValue",
        "variable" : ["item", "field"]
      }]
    },
    {
      "name" : "immunocompromised",
      "source" : [{
        "context" : "qr",
        "element" : "item",
        "variable" : "item",
        "condition" : "linkId = 'immunocompromised'"
      }],
      "target" : [{
        "context" : "immz",
        "contextType" : "variable",
        "element" : "immunocompromised",
        "variable" : "field"
      }],
      "dependent" : [{
        "name" : "ItemToValue",
        "variable" : ["item", "field"]
      }]
    },
    {
      "name" : "currentlyOnArt",
      "source" : [{
        "context" : "qr",
        "element" : "item",
        "variable" : "item",
        "condition" : "linkId = 'currentlyOnArt'"
      }],
      "target" : [{
        "context" : "immz",
        "contextType" : "variable",
        "element" : "currentlyOnArt",
        "variable" : "field"
      }],
      "dependent" : [{
        "name" : "ItemToValue",
        "variable" : ["item", "field"]
      }]
    },
    {
      "name" : "currentlyOnArt",
      "source" : [{
        "context" : "qr",
        "element" : "item",
        "variable" : "item",
        "condition" : "linkId = 'currentlyOnArt'"
      }],
      "target" : [{
        "context" : "immz",
        "contextType" : "variable",
        "element" : "currentlyOnArt",
        "variable" : "field"
      }],
      "dependent" : [{
        "name" : "ItemToValue",
        "variable" : ["item", "field"]
      }]
    },
    {
      "name" : "typeOfTbInfectionTestPerformed",
      "source" : [{
        "context" : "qr",
        "element" : "item",
        "variable" : "item",
        "condition" : "linkId = 'typeOfTbInfectionTestPerformed'"
      }],
      "target" : [{
        "context" : "immz",
        "contextType" : "variable",
        "element" : "typeOfTbInfectionTestPerformed",
        "variable" : "field"
      }],
      "dependent" : [{
        "name" : "ItemToCoding",
        "variable" : ["item", "field"]
      }]
    },
    {
      "name" : "tbInfectionTestResult",
      "source" : [{
        "context" : "qr",
        "element" : "item",
        "variable" : "item",
        "condition" : "linkId = 'tbInfectionTestResult'"
      }],
      "target" : [{
        "context" : "immz",
        "contextType" : "variable",
        "element" : "tbInfectionTestResult",
        "variable" : "field"
      }],
      "dependent" : [{
        "name" : "ItemToCoding",
        "variable" : ["item", "field"]
      }]
    },
    {
      "name" : "immunologicallyStable",
      "source" : [{
        "context" : "qr",
        "element" : "item",
        "variable" : "item",
        "condition" : "linkId = 'immunologicallyStable'"
      }],
      "target" : [{
        "context" : "immz",
        "contextType" : "variable",
        "element" : "immunologicallyStable",
        "variable" : "field"
      }],
      "dependent" : [{
        "name" : "ItemToValue",
        "variable" : ["item", "field"]
      }]
    },
    {
      "name" : "clinicallyWell",
      "source" : [{
        "context" : "qr",
        "element" : "item",
        "variable" : "item",
        "condition" : "linkId = 'clinicallyWell'"
      }],
      "target" : [{
        "context" : "immz",
        "contextType" : "variable",
        "element" : "clinicallyWell",
        "variable" : "field"
      }],
      "dependent" : [{
        "name" : "ItemToValue",
        "variable" : ["item", "field"]
      }]
    },
    {
      "name" : "birthWeightInGrams",
      "source" : [{
        "context" : "qr",
        "element" : "item",
        "variable" : "item",
        "condition" : "linkId = 'birthWeightInGrams'"
      }],
      "target" : [{
        "context" : "immz",
        "contextType" : "variable",
        "element" : "birthWeightInGrams",
        "variable" : "field"
      }],
      "dependent" : [{
        "name" : "ItemToValue",
        "variable" : ["item", "field"]
      }]
    },
    {
      "name" : "artStartDate",
      "source" : [{
        "context" : "qr",
        "element" : "item",
        "variable" : "item",
        "condition" : "linkId = 'artStartDate'"
      }],
      "target" : [{
        "context" : "immz",
        "contextType" : "variable",
        "element" : "artStartDate",
        "variable" : "field"
      }],
      "dependent" : [{
        "name" : "ItemToValue",
        "variable" : ["item", "field"]
      }]
    },
    {
      "name" : "highRiskOfPneumococcalInfection",
      "source" : [{
        "context" : "qr",
        "element" : "item",
        "variable" : "item",
        "condition" : "linkId = 'highRiskOfPneumococcalInfection'"
      }],
      "target" : [{
        "context" : "immz",
        "contextType" : "variable",
        "element" : "highRiskOfPneumococcalInfection",
        "variable" : "field"
      }],
      "dependent" : [{
        "name" : "ItemToValue",
        "variable" : ["item", "field"]
      }]
    },
    {
      "name" : "ageInMonthsWhenClientReceivedFirstMeningococcalDose",
      "source" : [{
        "context" : "qr",
        "element" : "item",
        "variable" : "item",
        "condition" : "linkId = 'ageInMonthsWhenClientReceivedFirstMeningococcalDose'"
      }],
      "target" : [{
        "context" : "immz",
        "contextType" : "variable",
        "element" : "ageInMonthsWhenClientReceivedFirstMeningococcalDose",
        "variable" : "field"
      }],
      "dependent" : [{
        "name" : "ItemToValue",
        "variable" : ["item", "field"]
      }]
    },
    {
      "name" : "vnaLevel",
      "source" : [{
        "context" : "qr",
        "element" : "item",
        "variable" : "item",
        "condition" : "linkId = 'vnaLevel'"
      }],
      "target" : [{
        "context" : "immz",
        "contextType" : "variable",
        "element" : "vnaLevel",
        "variable" : "field"
      }],
      "dependent" : [{
        "name" : "ItemToValue",
        "variable" : ["item", "field"]
      }]
    },
    {
      "name" : "riskOfOccupationalExposureToRabiesVirus",
      "source" : [{
        "context" : "qr",
        "element" : "item",
        "variable" : "item",
        "condition" : "linkId = 'riskOfOccupationalExposureToRabiesVirus'"
      }],
      "target" : [{
        "context" : "immz",
        "contextType" : "variable",
        "element" : "riskOfOccupationalExposureToRabiesVirus",
        "variable" : "field"
      }],
      "dependent" : [{
        "name" : "ItemToValue",
        "variable" : ["item", "field"]
      }]
    },
    {
      "name" : "dengueSerostatus",
      "source" : [{
        "context" : "qr",
        "element" : "item",
        "variable" : "item",
        "condition" : "linkId = 'dengueSerostatus'"
      }],
      "target" : [{
        "context" : "immz",
        "contextType" : "variable",
        "element" : "dengueSerostatus",
        "variable" : "field"
      }],
      "dependent" : [{
        "name" : "ItemToCoding",
        "variable" : ["item", "field"]
      }]
    }]
  },
  {
    "name" : "D13Questions",
    "typeMode" : "none",
    "input" : [{
      "name" : "qr",
      "type" : "QResp",
      "mode" : "source"
    },
    {
      "name" : "immz",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "immunizationEventStatus",
      "source" : [{
        "context" : "qr",
        "element" : "item",
        "variable" : "item",
        "condition" : "linkId = 'immunizationEventStatus'"
      }],
      "target" : [{
        "context" : "immz",
        "contextType" : "variable",
        "element" : "immunizationEventStatus",
        "variable" : "field"
      }],
      "dependent" : [{
        "name" : "ItemToCoding",
        "variable" : ["item", "field"]
      }]
    },
    {
      "name" : "reasonVaccineWasNotAdministered",
      "source" : [{
        "context" : "qr",
        "element" : "item",
        "variable" : "item",
        "condition" : "linkId = 'reasonVaccineWasNotAdministered'"
      }],
      "target" : [{
        "context" : "immz",
        "contextType" : "variable",
        "element" : "reasonVaccineWasNotAdministered",
        "variable" : "field"
      }],
      "dependent" : [{
        "name" : "ItemToCoding",
        "variable" : ["item", "field"]
      }]
    },
    {
      "name" : "vaccineBrand",
      "source" : [{
        "context" : "qr",
        "element" : "item",
        "variable" : "item",
        "condition" : "linkId = 'vaccineBrand'"
      }],
      "target" : [{
        "context" : "immz",
        "contextType" : "variable",
        "element" : "vaccineBrand",
        "variable" : "field"
      }],
      "dependent" : [{
        "name" : "ItemToCoding",
        "variable" : ["item", "field"]
      }]
    },
    {
      "name" : "liveVaccine",
      "source" : [{
        "context" : "qr",
        "element" : "item",
        "variable" : "item",
        "condition" : "linkId = 'liveVaccine'"
      }],
      "target" : [{
        "context" : "immz",
        "contextType" : "variable",
        "element" : "liveVaccine",
        "variable" : "field"
      }],
      "dependent" : [{
        "name" : "ItemToValue",
        "variable" : ["item", "field"]
      }]
    },
    {
      "name" : "countryOfVaccination",
      "source" : [{
        "context" : "qr",
        "element" : "item",
        "variable" : "item",
        "condition" : "linkId = 'countryOfVaccination'"
      }],
      "target" : [{
        "context" : "immz",
        "contextType" : "variable",
        "element" : "countryOfVaccination",
        "variable" : "field"
      }],
      "dependent" : [{
        "name" : "ItemToCoding",
        "variable" : ["item", "field"]
      }]
    },
    {
      "name" : "administrativeArea",
      "source" : [{
        "context" : "qr",
        "element" : "item",
        "variable" : "item",
        "condition" : "linkId = 'administrativeArea'"
      }],
      "target" : [{
        "context" : "immz",
        "contextType" : "variable",
        "element" : "administrativeArea",
        "variable" : "field"
      }],
      "dependent" : [{
        "name" : "ItemToCoding",
        "variable" : ["item", "field"]
      }]
    },
    {
      "name" : "vaccineManufacturer",
      "source" : [{
        "context" : "qr",
        "element" : "item",
        "variable" : "item",
        "condition" : "linkId = 'vaccineManufacturer'"
      }],
      "target" : [{
        "context" : "immz",
        "contextType" : "variable",
        "element" : "vaccineManufacturer",
        "variable" : "field"
      }],
      "dependent" : [{
        "name" : "ItemToCoding",
        "variable" : ["item", "field"]
      }]
    },
    {
      "name" : "vaccineBatchNumber",
      "source" : [{
        "context" : "qr",
        "element" : "item",
        "variable" : "item",
        "condition" : "linkId = 'vaccineBatchNumber'"
      }],
      "target" : [{
        "context" : "immz",
        "contextType" : "variable",
        "element" : "vaccineBatchNumber",
        "variable" : "field"
      }],
      "dependent" : [{
        "name" : "ItemToValue",
        "variable" : ["item", "field"]
      }]
    },
    {
      "name" : "vaccineMarketAuthorizationHolder",
      "source" : [{
        "context" : "qr",
        "element" : "item",
        "variable" : "item",
        "condition" : "linkId = 'vaccineMarketAuthorizationHolder'"
      }],
      "target" : [{
        "context" : "immz",
        "contextType" : "variable",
        "element" : "vaccineMarketAuthorizationHolder",
        "variable" : "field"
      }],
      "dependent" : [{
        "name" : "ItemToCoding",
        "variable" : ["item", "field"]
      }]
    },
    {
      "name" : "expirationDate",
      "source" : [{
        "context" : "qr",
        "element" : "item",
        "variable" : "item",
        "condition" : "linkId = 'expirationDate'"
      }],
      "target" : [{
        "context" : "immz",
        "contextType" : "variable",
        "element" : "expirationDate",
        "variable" : "field"
      }],
      "dependent" : [{
        "name" : "ItemToValue",
        "variable" : ["item", "field"]
      }]
    },
    {
      "name" : "doseQuantity",
      "source" : [{
        "context" : "qr",
        "element" : "item",
        "variable" : "item",
        "condition" : "linkId = 'doseQuantity'"
      }],
      "target" : [{
        "context" : "immz",
        "contextType" : "variable",
        "element" : "doseQuantity",
        "variable" : "field"
      }],
      "dependent" : [{
        "name" : "ItemToValue",
        "variable" : ["item", "field"]
      }]
    },
    {
      "name" : "healthWorkerIdentifier",
      "source" : [{
        "context" : "qr",
        "element" : "item",
        "variable" : "item",
        "condition" : "linkId = 'healthWorkerIdentifier'"
      }],
      "target" : [{
        "context" : "immz",
        "contextType" : "variable",
        "element" : "healthWorkerIdentifier",
        "variable" : "field"
      }],
      "dependent" : [{
        "name" : "ItemToValue",
        "variable" : ["item", "field"]
      }]
    },
    {
      "name" : "totalDosesInSeries",
      "source" : [{
        "context" : "qr",
        "element" : "item",
        "variable" : "item",
        "condition" : "linkId = 'totalDosesInSeries'"
      }],
      "target" : [{
        "context" : "immz",
        "contextType" : "variable",
        "element" : "totalDosesInSeries",
        "variable" : "field"
      }],
      "dependent" : [{
        "name" : "ItemToValue",
        "variable" : ["item", "field"]
      }]
    },
    {
      "name" : "diseaseTargeted",
      "source" : [{
        "context" : "qr",
        "element" : "item",
        "variable" : "item",
        "condition" : "linkId = 'diseaseTargeted'"
      }],
      "target" : [{
        "context" : "immz",
        "contextType" : "variable",
        "element" : "diseaseTargeted",
        "variable" : "field"
      }],
      "dependent" : [{
        "name" : "ItemToCoding",
        "variable" : ["item", "field"]
      }]
    },
    {
      "name" : "dueDateOfNextDose",
      "source" : [{
        "context" : "qr",
        "element" : "item",
        "variable" : "item",
        "condition" : "linkId = 'dueDateOfNextDose'"
      }],
      "target" : [{
        "context" : "immz",
        "contextType" : "variable",
        "element" : "dueDateOfNextDose",
        "variable" : "field"
      }],
      "dependent" : [{
        "name" : "ItemToValue",
        "variable" : ["item", "field"]
      }]
    }]
  },
  {
    "name" : "MakeImmzObservation",
    "typeMode" : "none",
    "input" : [{
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
    }],
    "rule" : [{
      "name" : "CreateObservation",
      "source" : [{
        "context" : "value"
      }],
      "target" : [{
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
        "parameter" : [{
          "valueString" : "urn:uuid:"
        },
        {
          "valueId" : "oid"
        }]
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
        "parameter" : [{
          "valueString" : "PUT"
        }]
      },
      {
        "context" : "request",
        "contextType" : "variable",
        "element" : "url",
        "transform" : "append",
        "parameter" : [{
          "valueString" : "Observation/"
        },
        {
          "valueId" : "oid"
        }]
      },
      {
        "context" : "entry",
        "contextType" : "variable",
        "element" : "resource",
        "variable" : "obs",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "Observation"
        }]
      }],
      "rule" : [{
        "name" : "SetId",
        "source" : [{
          "context" : "value"
        }],
        "target" : [{
          "context" : "obs",
          "contextType" : "variable",
          "element" : "id",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "oid"
          }]
        }]
      },
      {
        "name" : "SetPartOf",
        "source" : [{
          "context" : "immid"
        }],
        "target" : [{
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
          "parameter" : [{
            "valueString" : "urn:uuid:"
          },
          {
            "valueId" : "immid"
          }]
        }]
      },
      {
        "name" : "SetSubject",
        "source" : [{
          "context" : "patient"
        }],
        "target" : [{
          "context" : "obs",
          "contextType" : "variable",
          "element" : "subject",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "patient"
          }]
        }]
      },
      {
        "name" : "SetCode",
        "source" : [{
          "context" : "code"
        }],
        "target" : [{
          "context" : "obs",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "code"
          }]
        }]
      },
      {
        "name" : "SetValue",
        "source" : [{
          "context" : "value"
        }],
        "target" : [{
          "context" : "obs",
          "contextType" : "variable",
          "element" : "value",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "value"
          }]
        }]
      },
      {
        "name" : "SetCategory",
        "source" : [{
          "context" : "cat"
        }],
        "target" : [{
          "context" : "obs",
          "contextType" : "variable",
          "element" : "category",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "cat"
          }]
        }]
      }]
    }]
  },
  {
    "name" : "MakeObservation",
    "typeMode" : "none",
    "input" : [{
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
    }],
    "rule" : [{
      "name" : "CreateObservation",
      "source" : [{
        "context" : "value"
      }],
      "target" : [{
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
        "parameter" : [{
          "valueString" : "urn:uuid:"
        },
        {
          "valueId" : "oid"
        }]
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
        "parameter" : [{
          "valueString" : "PUT"
        }]
      },
      {
        "context" : "request",
        "contextType" : "variable",
        "element" : "url",
        "transform" : "append",
        "parameter" : [{
          "valueString" : "Observation/"
        },
        {
          "valueId" : "oid"
        }]
      },
      {
        "context" : "entry",
        "contextType" : "variable",
        "element" : "resource",
        "variable" : "obs",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "Observation"
        }]
      }],
      "rule" : [{
        "name" : "SetId",
        "source" : [{
          "context" : "value"
        }],
        "target" : [{
          "context" : "obs",
          "contextType" : "variable",
          "element" : "id",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "oid"
          }]
        }]
      },
      {
        "name" : "SetSubject",
        "source" : [{
          "context" : "patient"
        }],
        "target" : [{
          "context" : "obs",
          "contextType" : "variable",
          "element" : "subject",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "patient"
          }]
        }]
      },
      {
        "name" : "SetCode",
        "source" : [{
          "context" : "code"
        }],
        "target" : [{
          "context" : "obs",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "code"
          }]
        }]
      },
      {
        "name" : "SetValue",
        "source" : [{
          "context" : "value"
        }],
        "target" : [{
          "context" : "obs",
          "contextType" : "variable",
          "element" : "value",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "value"
          }]
        }]
      },
      {
        "name" : "SetCategory",
        "source" : [{
          "context" : "cat"
        }],
        "target" : [{
          "context" : "obs",
          "contextType" : "variable",
          "element" : "category",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "cat"
          }]
        }]
      }]
    }]
  },
  {
    "name" : "TypeOfVaccineDose",
    "typeMode" : "none",
    "input" : [{
      "name" : "typeof",
      "type" : "Coding",
      "mode" : "source"
    },
    {
      "name" : "ext",
      "type" : "Extension",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "SetURL",
      "source" : [{
        "context" : "typeof"
      }],
      "target" : [{
        "context" : "ext",
        "contextType" : "variable",
        "element" : "url",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "http://smart.who.int/immunizations/StructureDefinition/IMMZTypeOfDose"
        }]
      }]
    },
    {
      "name" : "SetValue",
      "source" : [{
        "context" : "typeof"
      }],
      "target" : [{
        "context" : "ext",
        "contextType" : "variable",
        "element" : "value",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "typeof"
        }]
      }]
    }]
  },
  {
    "name" : "MakeImmunization",
    "typeMode" : "none",
    "input" : [{
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
    }],
    "rule" : [{
      "name" : "MakeImmunization",
      "source" : [{
        "context" : "immz",
        "element" : "vaccineType",
        "variable" : "vaccineCode"
      }],
      "target" : [{
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
        "parameter" : [{
          "valueString" : "urn:uuid:"
        },
        {
          "valueId" : "immid"
        }]
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
        "parameter" : [{
          "valueString" : "PUT"
        }]
      },
      {
        "context" : "request",
        "contextType" : "variable",
        "element" : "url",
        "transform" : "append",
        "parameter" : [{
          "valueString" : "Immunization/"
        },
        {
          "valueId" : "immid"
        }]
      },
      {
        "context" : "entry",
        "contextType" : "variable",
        "element" : "resource",
        "variable" : "imm",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "Immunization"
        }]
      }],
      "rule" : [{
        "name" : "SetId",
        "source" : [{
          "context" : "immid"
        }],
        "target" : [{
          "context" : "imm",
          "contextType" : "variable",
          "element" : "id",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "immid"
          }]
        }]
      },
      {
        "name" : "SetPatient",
        "source" : [{
          "context" : "patient"
        }],
        "target" : [{
          "context" : "imm",
          "contextType" : "variable",
          "element" : "patient",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "patient"
          }]
        }]
      },
      {
        "name" : "vaccineCode",
        "source" : [{
          "context" : "vaccineCode"
        }],
        "target" : [{
          "context" : "imm",
          "contextType" : "variable",
          "element" : "vaccineCode",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "vaccineCode"
          }]
        }]
      },
      {
        "name" : "protocolApplied",
        "source" : [{
          "context" : "immz",
          "element" : "typeOfDose",
          "variable" : "typeOfDose"
        }],
        "target" : [{
          "context" : "imm",
          "contextType" : "variable",
          "element" : "protocolApplied",
          "variable" : "pa"
        }],
        "rule" : [{
          "name" : "SetSeriesToCode",
          "source" : [{
            "context" : "typeOfDose",
            "element" : "code",
            "variable" : "code"
          }],
          "target" : [{
            "context" : "pa",
            "contextType" : "variable",
            "element" : "series",
            "transform" : "copy",
            "parameter" : [{
              "valueId" : "code"
            }]
          }],
          "documentation" : "if display is missing"
        },
        {
          "name" : "SetSeriesToDisplay",
          "source" : [{
            "context" : "typeOfDose",
            "element" : "display",
            "variable" : "display"
          }],
          "target" : [{
            "context" : "pa",
            "contextType" : "variable",
            "element" : "series",
            "transform" : "copy",
            "parameter" : [{
              "valueId" : "display"
            }]
          }]
        },
        {
          "name" : "SetDoseNumber",
          "source" : [{
            "context" : "immz",
            "element" : "doseNumber",
            "variable" : "doseNumber"
          }],
          "target" : [{
            "context" : "pa",
            "contextType" : "variable",
            "element" : "doseNumber",
            "transform" : "copy",
            "parameter" : [{
              "valueId" : "doseNumber"
            }]
          }]
        },
        {
          "name" : "totalDosesInSeries",
          "source" : [{
            "context" : "immz",
            "element" : "totalDosesInSeries",
            "variable" : "totalDoses"
          }],
          "target" : [{
            "context" : "pa",
            "contextType" : "variable",
            "element" : "seriesDoses",
            "transform" : "copy",
            "parameter" : [{
              "valueId" : "totalDoses"
            }]
          }]
        },
        {
          "name" : "diseaseTargeted",
          "source" : [{
            "context" : "immz",
            "element" : "diseaseTargeted",
            "variable" : "disease"
          }],
          "target" : [{
            "context" : "pa",
            "contextType" : "variable",
            "element" : "targetDisease",
            "transform" : "copy",
            "parameter" : [{
              "valueId" : "disease"
            }]
          }]
        },
        {
          "name" : "dueDateOfNextDose",
          "source" : [{
            "context" : "immz",
            "element" : "dueDateOfNextDose",
            "variable" : "duedate"
          }],
          "target" : [{
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
            "parameter" : [{
              "valueString" : "http://smart.who.int/immunizations/StructureDefinition/IMMZDueDateOfNextDose"
            }]
          },
          {
            "context" : "ext",
            "contextType" : "variable",
            "element" : "value",
            "transform" : "copy",
            "parameter" : [{
              "valueId" : "duedate"
            }]
          }]
        }]
      },
      {
        "name" : "dateAndTimeOfVaccination",
        "source" : [{
          "context" : "immz",
          "element" : "dateAndTimeOfVaccination",
          "variable" : "occurrence"
        }],
        "target" : [{
          "context" : "imm",
          "contextType" : "variable",
          "element" : "occurrence",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "occurrence"
          }]
        }]
      },
      {
        "name" : "typeOfPoliovirusDose",
        "source" : [{
          "context" : "immz",
          "element" : "typeOfPoliovirusDose",
          "variable" : "typeof"
        }],
        "target" : [{
          "context" : "imm",
          "contextType" : "variable",
          "element" : "extension",
          "variable" : "ext"
        }],
        "dependent" : [{
          "name" : "TypeOfVaccineDose",
          "variable" : ["typeof", "ext"]
        }]
      },
      {
        "name" : "typeOfJeDose",
        "source" : [{
          "context" : "immz",
          "element" : "typeOfJeDose",
          "variable" : "typeof"
        }],
        "target" : [{
          "context" : "imm",
          "contextType" : "variable",
          "element" : "extension",
          "variable" : "ext"
        }],
        "dependent" : [{
          "name" : "TypeOfVaccineDose",
          "variable" : ["typeof", "ext"]
        }]
      },
      {
        "name" : "typeOfTbeDose",
        "source" : [{
          "context" : "immz",
          "element" : "typeOfTbeDose",
          "variable" : "typeof"
        }],
        "target" : [{
          "context" : "imm",
          "contextType" : "variable",
          "element" : "extension",
          "variable" : "ext"
        }],
        "dependent" : [{
          "name" : "TypeOfVaccineDose",
          "variable" : ["typeof", "ext"]
        }]
      },
      {
        "name" : "typeOfTyphoidDose",
        "source" : [{
          "context" : "immz",
          "element" : "typeOfTyphoidDose",
          "variable" : "typeof"
        }],
        "target" : [{
          "context" : "imm",
          "contextType" : "variable",
          "element" : "extension",
          "variable" : "ext"
        }],
        "dependent" : [{
          "name" : "TypeOfVaccineDose",
          "variable" : ["typeof", "ext"]
        }]
      },
      {
        "name" : "typeOfCholeraDose",
        "source" : [{
          "context" : "immz",
          "element" : "typeOfCholeraDose",
          "variable" : "typeof"
        }],
        "target" : [{
          "context" : "imm",
          "contextType" : "variable",
          "element" : "extension",
          "variable" : "ext"
        }],
        "dependent" : [{
          "name" : "TypeOfVaccineDose",
          "variable" : ["typeof", "ext"]
        }]
      },
      {
        "name" : "typeOfMeningococcalDose",
        "source" : [{
          "context" : "immz",
          "element" : "typeOfMeningococcalDose",
          "variable" : "typeof"
        }],
        "target" : [{
          "context" : "imm",
          "contextType" : "variable",
          "element" : "extension",
          "variable" : "ext"
        }],
        "dependent" : [{
          "name" : "TypeOfVaccineDose",
          "variable" : ["typeof", "ext"]
        }]
      },
      {
        "name" : "typeOfHepatitisADose",
        "source" : [{
          "context" : "immz",
          "element" : "typeOfHepatitisADose",
          "variable" : "typeof"
        }],
        "target" : [{
          "context" : "imm",
          "contextType" : "variable",
          "element" : "extension",
          "variable" : "ext"
        }],
        "dependent" : [{
          "name" : "TypeOfVaccineDose",
          "variable" : ["typeof", "ext"]
        }]
      },
      {
        "name" : "typeOfHepatitisBDose",
        "source" : [{
          "context" : "immz",
          "element" : "typeOfHepatitisBDose",
          "variable" : "typeof"
        }],
        "target" : [{
          "context" : "imm",
          "contextType" : "variable",
          "element" : "extension",
          "variable" : "ext"
        }],
        "dependent" : [{
          "name" : "TypeOfVaccineDose",
          "variable" : ["typeof", "ext"]
        }]
      },
      {
        "name" : "SetDefaultStatus",
        "source" : [{
          "context" : "immz"
        }],
        "target" : [{
          "context" : "imm",
          "contextType" : "variable",
          "element" : "status",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "completed"
          }]
        }]
      },
      {
        "name" : "immunizationEventStatus",
        "source" : [{
          "context" : "immz",
          "element" : "immunizationEventStatus",
          "variable" : "status"
        }],
        "target" : [{
          "context" : "imm",
          "contextType" : "variable",
          "element" : "status",
          "transform" : "translate",
          "parameter" : [{
            "valueId" : "status"
          },
          {
            "valueString" : "http://smart.who.int/immunizations/ConceptMap/IMMZ.D.ConceptMap"
          },
          {
            "valueString" : "code"
          }]
        }]
      },
      {
        "name" : "reasonVaccineWasNotAdministered",
        "source" : [{
          "context" : "immz",
          "element" : "reasonVaccineWasNotAdministered",
          "variable" : "reason"
        }],
        "target" : [{
          "context" : "imm",
          "contextType" : "variable",
          "element" : "statusReason",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "reason"
          }]
        }]
      },
      {
        "name" : "vaccineBrand",
        "source" : [{
          "context" : "immz",
          "element" : "vaccineBrand",
          "variable" : "brand"
        }],
        "target" : [{
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
          "parameter" : [{
            "valueString" : "http://smart.who.int/immunizations/StructureDefinition/IMMZVaccineBrand"
          }]
        },
        {
          "context" : "ext",
          "contextType" : "variable",
          "element" : "value",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "brand"
          }]
        }]
      },
      {
        "name" : "liveVaccine",
        "source" : [{
          "context" : "immz",
          "element" : "liveVaccine",
          "variable" : "live"
        }],
        "target" : [{
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
          "parameter" : [{
            "valueString" : "http://smart.who.int/immunizations/StructureDefinition/IMMZLiveVaccine"
          }]
        },
        {
          "context" : "ext",
          "contextType" : "variable",
          "element" : "value",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "live"
          }]
        }]
      },
      {
        "name" : "countryOfVaccination",
        "source" : [{
          "context" : "immz",
          "element" : "countryOfVaccination",
          "variable" : "country"
        }],
        "target" : [{
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
          "parameter" : [{
            "valueString" : "http://smart.who.int/immunizations/StructureDefinition/IMMZCountryOfVaccination"
          }]
        },
        {
          "context" : "ext",
          "contextType" : "variable",
          "element" : "value",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "country"
          }]
        }]
      },
      {
        "name" : "administrativeArea",
        "source" : [{
          "context" : "immz",
          "element" : "administrativeArea",
          "variable" : "area"
        }],
        "target" : [{
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
          "parameter" : [{
            "valueString" : "http://smart.who.int/immunizations/StructureDefinition/IMMZAdministrativeArea"
          }]
        },
        {
          "context" : "ext",
          "contextType" : "variable",
          "element" : "value",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "area"
          }]
        }]
      },
      {
        "name" : "vaccineManufacturer",
        "source" : [{
          "context" : "immz",
          "element" : "vaccineManufacturer",
          "variable" : "vman"
        }],
        "target" : [{
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
        }],
        "rule" : [{
          "name" : "SetSystem",
          "source" : [{
            "context" : "vman",
            "element" : "system",
            "variable" : "system"
          }],
          "target" : [{
            "context" : "identifier",
            "contextType" : "variable",
            "element" : "system",
            "transform" : "copy",
            "parameter" : [{
              "valueId" : "system"
            }]
          }]
        },
        {
          "name" : "SetValue",
          "source" : [{
            "context" : "vman",
            "element" : "code",
            "variable" : "code"
          }],
          "target" : [{
            "context" : "identifier",
            "contextType" : "variable",
            "element" : "value",
            "transform" : "copy",
            "parameter" : [{
              "valueId" : "code"
            }]
          }]
        }]
      },
      {
        "name" : "vaccineBatchNumber",
        "source" : [{
          "context" : "immz",
          "element" : "vaccineBatchNumber",
          "variable" : "batch"
        }],
        "target" : [{
          "context" : "imm",
          "contextType" : "variable",
          "element" : "lotNumber",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "batch"
          }]
        }]
      },
      {
        "name" : "vaccineMarketAuthorizationHolder",
        "source" : [{
          "context" : "immz",
          "element" : "vaccineMarketAuthorizationHolder",
          "variable" : "market"
        }],
        "target" : [{
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
          "parameter" : [{
            "valueString" : "http://smart.who.int/immunizations/StructureDefinition/IMMZMarketAuthorization"
          }]
        },
        {
          "context" : "ext",
          "contextType" : "variable",
          "element" : "value",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "market"
          }]
        }]
      },
      {
        "name" : "expirationDate",
        "source" : [{
          "context" : "immz",
          "element" : "expirationDate",
          "variable" : "expiration"
        }],
        "target" : [{
          "context" : "imm",
          "contextType" : "variable",
          "element" : "expirationDate",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "expiration"
          }]
        }]
      },
      {
        "name" : "doseQuantity",
        "source" : [{
          "context" : "immz",
          "element" : "doseQuantity",
          "variable" : "dosequantity"
        }],
        "target" : [{
          "context" : "imm",
          "contextType" : "variable",
          "element" : "doseQuantity",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "dosequantity"
          }]
        }]
      },
      {
        "name" : "healthWorkerIdentifier",
        "source" : [{
          "context" : "immz",
          "element" : "healthWorkerIdentifier",
          "variable" : "hw"
        }],
        "target" : [{
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
          "parameter" : [{
            "valueId" : "hw"
          }]
        }]
      }]
    }]
  },
  {
    "name" : "D1andD13Observations",
    "typeMode" : "none",
    "input" : [{
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
    }],
    "rule" : [{
      "name" : "DefineCategory",
      "source" : [{
        "context" : "immz"
      }],
      "target" : [{
        "contextType" : "variable",
        "variable" : "survey",
        "transform" : "c",
        "parameter" : [{
          "valueString" : "http://terminology.hl7.org/CodeSystem/observation-category"
        },
        {
          "valueString" : "survey"
        },
        {
          "valueString" : "Survey"
        }]
      }],
      "rule" : [{
        "name" : "birthDose",
        "source" : [{
          "context" : "immz",
          "element" : "birthDose",
          "variable" : "content"
        }],
        "target" : [{
          "contextType" : "variable",
          "variable" : "code",
          "transform" : "c",
          "parameter" : [{
            "valueString" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D"
          },
          {
            "valueString" : "DE263"
          },
          {
            "valueString" : "Birth dose"
          }]
        }],
        "dependent" : [{
          "name" : "MakeImmzObservation",
          "variable" : ["patient", "immid", "code", "survey", "content", "bundle"]
        }]
      },
      {
        "name" : "completedThePrimaryVaccinationSeries",
        "source" : [{
          "context" : "immz",
          "element" : "completedThePrimaryVaccinationSeries",
          "variable" : "content"
        }],
        "target" : [{
          "contextType" : "variable",
          "variable" : "code",
          "transform" : "c",
          "parameter" : [{
            "valueString" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D"
          },
          {
            "valueString" : "DE203"
          },
          {
            "valueString" : "Completed the primary vaccination series"
          }]
        }],
        "dependent" : [{
          "name" : "MakeImmzObservation",
          "variable" : ["patient", "immid", "code", "survey", "content", "bundle"]
        }]
      },
      {
        "name" : "completedTheBoosterSeries",
        "source" : [{
          "context" : "immz",
          "element" : "completedTheBoosterSeries",
          "variable" : "content"
        }],
        "target" : [{
          "contextType" : "variable",
          "variable" : "code",
          "transform" : "c",
          "parameter" : [{
            "valueString" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D"
          },
          {
            "valueString" : "DE257"
          },
          {
            "valueString" : "Completed the booster series"
          }]
        }],
        "dependent" : [{
          "name" : "MakeImmzObservation",
          "variable" : ["patient", "immid", "code", "survey", "content", "bundle"]
        }]
      },
      {
        "name" : "dateWhenPrimaryVaccinationSeriesWasCompleted",
        "source" : [{
          "context" : "immz",
          "element" : "dateWhenPrimaryVaccinationSeriesWasCompleted",
          "variable" : "content"
        }],
        "target" : [{
          "contextType" : "variable",
          "variable" : "code",
          "transform" : "c",
          "parameter" : [{
            "valueString" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D"
          },
          {
            "valueString" : "DE242"
          },
          {
            "valueString" : "Date when primary vaccination series was completed"
          }]
        }],
        "dependent" : [{
          "name" : "MakeImmzObservation",
          "variable" : ["patient", "immid", "code", "survey", "content", "bundle"]
        }]
      },
      {
        "name" : "hivStatus",
        "source" : [{
          "context" : "immz",
          "element" : "hivStatus",
          "variable" : "content"
        }],
        "target" : [{
          "contextType" : "variable",
          "variable" : "code",
          "transform" : "c",
          "parameter" : [{
            "valueString" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D"
          },
          {
            "valueString" : "DE204"
          },
          {
            "valueString" : "HIV status"
          }]
        }],
        "dependent" : [{
          "name" : "MakeImmzObservation",
          "variable" : ["patient", "immid", "code", "survey", "content", "bundle"]
        }]
      },
      {
        "name" : "contactDate",
        "source" : [{
          "context" : "immz",
          "element" : "contactDate",
          "variable" : "content"
        }],
        "target" : [{
          "contextType" : "variable",
          "variable" : "code",
          "transform" : "c",
          "parameter" : [{
            "valueString" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D"
          },
          {
            "valueString" : "DE201"
          },
          {
            "valueString" : "Contact date"
          }]
        }],
        "dependent" : [{
          "name" : "MakeImmzObservation",
          "variable" : ["patient", "immid", "code", "survey", "content", "bundle"]
        }]
      },
      {
        "name" : "ancContactNumber",
        "source" : [{
          "context" : "immz",
          "element" : "ancContactNumber",
          "variable" : "content"
        }],
        "target" : [{
          "contextType" : "variable",
          "variable" : "code",
          "transform" : "c",
          "parameter" : [{
            "valueString" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D"
          },
          {
            "valueString" : "DE202"
          },
          {
            "valueString" : "ANC contact number"
          }]
        }],
        "dependent" : [{
          "name" : "MakeImmzObservation",
          "variable" : ["patient", "immid", "code", "survey", "content", "bundle"]
        }]
      }]
    }]
  },
  {
    "name" : "D1Observations",
    "typeMode" : "none",
    "input" : [{
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
    }],
    "rule" : [{
      "name" : "DefineCategory",
      "source" : [{
        "context" : "immz"
      }],
      "target" : [{
        "contextType" : "variable",
        "variable" : "survey",
        "transform" : "c",
        "parameter" : [{
          "valueString" : "http://terminology.hl7.org/CodeSystem/observation-category"
        },
        {
          "valueString" : "survey"
        },
        {
          "valueString" : "Survey"
        }]
      }],
      "rule" : [{
        "name" : "pretermBirth",
        "source" : [{
          "context" : "immz",
          "element" : "pretermBirth",
          "variable" : "content"
        }],
        "target" : [{
          "contextType" : "variable",
          "variable" : "code",
          "transform" : "c",
          "parameter" : [{
            "valueString" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D"
          },
          {
            "valueString" : "DE208"
          },
          {
            "valueString" : "Preterm birth"
          }]
        }],
        "dependent" : [{
          "name" : "MakeImmzObservation",
          "variable" : ["patient", "immid", "code", "survey", "content", "bundle"]
        }]
      },
      {
        "name" : "immunocompromised",
        "source" : [{
          "context" : "immz",
          "element" : "immunocompromised",
          "variable" : "content"
        }],
        "target" : [{
          "contextType" : "variable",
          "variable" : "code",
          "transform" : "c",
          "parameter" : [{
            "valueString" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D"
          },
          {
            "valueString" : "DE209"
          },
          {
            "valueString" : "Immunocompromised"
          }]
        }],
        "dependent" : [{
          "name" : "MakeImmzObservation",
          "variable" : ["patient", "immid", "code", "survey", "content", "bundle"]
        }]
      },
      {
        "name" : "currentlyOnArt",
        "source" : [{
          "context" : "immz",
          "element" : "currentlyOnArt",
          "variable" : "content"
        }],
        "target" : [{
          "contextType" : "variable",
          "variable" : "code",
          "transform" : "c",
          "parameter" : [{
            "valueString" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D"
          },
          {
            "valueString" : "DE210"
          },
          {
            "valueString" : "Currently on ART"
          }]
        }],
        "dependent" : [{
          "name" : "MakeImmzObservation",
          "variable" : ["patient", "immid", "code", "survey", "content", "bundle"]
        }]
      },
      {
        "name" : "typeOfTbInfectionTestPerformed",
        "source" : [{
          "context" : "immz",
          "element" : "typeOfTbInfectionTestPerformed",
          "variable" : "content"
        }],
        "target" : [{
          "contextType" : "variable",
          "variable" : "code",
          "transform" : "c",
          "parameter" : [{
            "valueString" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D"
          },
          {
            "valueString" : "DE243"
          },
          {
            "valueString" : "Type of TB infection test performed"
          }]
        }],
        "dependent" : [{
          "name" : "MakeImmzObservation",
          "variable" : ["patient", "immid", "code", "survey", "content", "bundle"]
        }]
      },
      {
        "name" : "tbInfectionTestResult",
        "source" : [{
          "context" : "immz",
          "element" : "tbInfectionTestResult",
          "variable" : "content"
        }],
        "target" : [{
          "contextType" : "variable",
          "variable" : "code",
          "transform" : "c",
          "parameter" : [{
            "valueString" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D"
          },
          {
            "valueString" : "DE246"
          },
          {
            "valueString" : "TB infection test result"
          }]
        }],
        "dependent" : [{
          "name" : "MakeImmzObservation",
          "variable" : ["patient", "immid", "code", "survey", "content", "bundle"]
        }]
      },
      {
        "name" : "immunologicallyStable",
        "source" : [{
          "context" : "immz",
          "element" : "immunologicallyStable",
          "variable" : "content"
        }],
        "target" : [{
          "contextType" : "variable",
          "variable" : "code",
          "transform" : "c",
          "parameter" : [{
            "valueString" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D"
          },
          {
            "valueString" : "DE249"
          },
          {
            "valueString" : "Immunologically stable"
          }]
        }],
        "dependent" : [{
          "name" : "MakeImmzObservation",
          "variable" : ["patient", "immid", "code", "survey", "content", "bundle"]
        }]
      },
      {
        "name" : "clinicallyWell",
        "source" : [{
          "context" : "immz",
          "element" : "clinicallyWell",
          "variable" : "content"
        }],
        "target" : [{
          "contextType" : "variable",
          "variable" : "code",
          "transform" : "c",
          "parameter" : [{
            "valueString" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D"
          },
          {
            "valueString" : "DE250"
          },
          {
            "valueString" : "Clinically well"
          }]
        }],
        "dependent" : [{
          "name" : "MakeImmzObservation",
          "variable" : ["patient", "immid", "code", "survey", "content", "bundle"]
        }]
      },
      {
        "name" : "birthWeightInGrams",
        "source" : [{
          "context" : "immz",
          "element" : "birthWeightInGrams",
          "variable" : "value"
        }],
        "target" : [{
          "contextType" : "variable",
          "variable" : "content",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Quantity"
          }]
        },
        {
          "context" : "content",
          "contextType" : "variable",
          "element" : "system",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "http://unitsofmeasure.org"
          }]
        },
        {
          "context" : "content",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "g"
          }]
        },
        {
          "context" : "content",
          "contextType" : "variable",
          "element" : "unit",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "g"
          }]
        },
        {
          "context" : "content",
          "contextType" : "variable",
          "element" : "value",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "value"
          }]
        },
        {
          "contextType" : "variable",
          "variable" : "bwloinc",
          "transform" : "c",
          "parameter" : [{
            "valueString" : "http://loinc.org"
          },
          {
            "valueString" : "8339-4"
          },
          {
            "valueString" : "Birth weight Measured"
          }]
        },
        {
          "contextType" : "variable",
          "variable" : "bwdak",
          "transform" : "c",
          "parameter" : [{
            "valueString" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D"
          },
          {
            "valueString" : "DE211"
          },
          {
            "valueString" : "Birth weight in grams"
          }]
        },
        {
          "contextType" : "variable",
          "variable" : "code",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        },
        {
          "context" : "code",
          "contextType" : "variable",
          "element" : "coding",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "bwloinc"
          }]
        },
        {
          "context" : "code",
          "contextType" : "variable",
          "element" : "coding",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "bwdak"
          }]
        },
        {
          "contextType" : "variable",
          "variable" : "vital",
          "transform" : "c",
          "parameter" : [{
            "valueString" : "http://terminology.hl7.org/CodeSystem/observation-category"
          },
          {
            "valueString" : "vital-signs"
          },
          {
            "valueString" : "Vital Signs"
          }]
        }],
        "dependent" : [{
          "name" : "MakeImmzObservation",
          "variable" : ["patient", "immid", "code", "vital", "content", "bundle"]
        }]
      },
      {
        "name" : "artStartDate",
        "source" : [{
          "context" : "immz",
          "element" : "artStartDate",
          "variable" : "content"
        }],
        "target" : [{
          "contextType" : "variable",
          "variable" : "code",
          "transform" : "c",
          "parameter" : [{
            "valueString" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D"
          },
          {
            "valueString" : "DE215"
          },
          {
            "valueString" : "ART start date"
          }]
        }],
        "dependent" : [{
          "name" : "MakeImmzObservation",
          "variable" : ["patient", "immid", "code", "survey", "content", "bundle"]
        }]
      },
      {
        "name" : "highRiskOfPneumococcalInfection",
        "source" : [{
          "context" : "immz",
          "element" : "highRiskOfPneumococcalInfection",
          "variable" : "content"
        }],
        "target" : [{
          "contextType" : "variable",
          "variable" : "code",
          "transform" : "c",
          "parameter" : [{
            "valueString" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D"
          },
          {
            "valueString" : "DE251"
          },
          {
            "valueString" : "High risk of pneumococcal infection"
          }]
        }],
        "dependent" : [{
          "name" : "MakeImmzObservation",
          "variable" : ["patient", "immid", "code", "survey", "content", "bundle"]
        }]
      },
      {
        "name" : "ageInMonthsWhenClientReceivedFirstMeningococcalDose",
        "source" : [{
          "context" : "immz",
          "element" : "ageInMonthsWhenClientReceivedFirstMeningococcalDose",
          "variable" : "value"
        }],
        "target" : [{
          "contextType" : "variable",
          "variable" : "content",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Quantity"
          }]
        },
        {
          "context" : "content",
          "contextType" : "variable",
          "element" : "unit",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "mo"
          }]
        },
        {
          "context" : "content",
          "contextType" : "variable",
          "element" : "value",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "value"
          }]
        },
        {
          "contextType" : "variable",
          "variable" : "code",
          "transform" : "c",
          "parameter" : [{
            "valueString" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D"
          },
          {
            "valueString" : "DE236"
          },
          {
            "valueString" : "Age in months when client received first meningococcal dose"
          }]
        }],
        "dependent" : [{
          "name" : "MakeImmzObservation",
          "variable" : ["patient", "immid", "code", "survey", "content", "bundle"]
        }]
      },
      {
        "name" : "vnaLevel",
        "source" : [{
          "context" : "immz",
          "element" : "vnaLevel",
          "variable" : "value"
        }],
        "target" : [{
          "contextType" : "variable",
          "variable" : "content",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Quantity"
          }]
        },
        {
          "context" : "content",
          "contextType" : "variable",
          "element" : "system",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "http://unitsofmeasure.org"
          }]
        },
        {
          "context" : "content",
          "contextType" : "variable",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "[IU]/mL"
          }]
        },
        {
          "context" : "content",
          "contextType" : "variable",
          "element" : "unit",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "[IU]/mL"
          }]
        },
        {
          "context" : "content",
          "contextType" : "variable",
          "element" : "value",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "value"
          }]
        },
        {
          "contextType" : "variable",
          "variable" : "code",
          "transform" : "c",
          "parameter" : [{
            "valueString" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D"
          },
          {
            "valueString" : "DE240"
          },
          {
            "valueString" : "VNA level"
          }]
        }],
        "dependent" : [{
          "name" : "MakeImmzObservation",
          "variable" : ["patient", "immid", "code", "survey", "content", "bundle"]
        }]
      },
      {
        "name" : "riskOfOccupationalExposureToRabiesVirus",
        "source" : [{
          "context" : "immz",
          "element" : "riskOfOccupationalExposureToRabiesVirus",
          "variable" : "content"
        }],
        "target" : [{
          "contextType" : "variable",
          "variable" : "code",
          "transform" : "c",
          "parameter" : [{
            "valueString" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D"
          },
          {
            "valueString" : "DE253"
          },
          {
            "valueString" : "Risk of occupational exposure to rabies virus"
          }]
        }],
        "dependent" : [{
          "name" : "MakeImmzObservation",
          "variable" : ["patient", "immid", "code", "survey", "content", "bundle"]
        }]
      },
      {
        "name" : "dengueSerostatus",
        "source" : [{
          "context" : "immz",
          "element" : "dengueSerostatus",
          "variable" : "content"
        }],
        "target" : [{
          "contextType" : "variable",
          "variable" : "code",
          "transform" : "c",
          "parameter" : [{
            "valueString" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D"
          },
          {
            "valueString" : "DE241"
          },
          {
            "valueString" : "Dengue serostatus"
          }]
        }],
        "dependent" : [{
          "name" : "MakeImmzObservation",
          "variable" : ["patient", "immid", "code", "survey", "content", "bundle"]
        }]
      }]
    }]
  }]
}

```
