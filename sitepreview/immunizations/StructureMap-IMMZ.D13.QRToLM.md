# IMMZ.D13.QRToLM - WHO Immunization Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D13.QRToLM**

## StructureMap: IMMZ.D13.QRToLM 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/StructureMap/IMMZ.D13.QRToLM | *Version*:1.0.0 |
| Draft as of 2026-04-09 | *Computable Name*:IMMZ.D13.QRToLM |

 
Immunization Administer Vaccine - Transform QuestionnaireResponse to Logical Model 



## Resource Content

```json
{
  "resourceType" : "StructureMap",
  "id" : "IMMZ.D13.QRToLM",
  "url" : "http://smart.who.int/immunizations/StructureMap/IMMZ.D13.QRToLM",
  "version" : "1.0.0",
  "name" : "IMMZ.D13.QRToLM",
  "status" : "draft",
  "date" : "2026-04-09T14:34:42+00:00",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "Immunization Administer Vaccine - Transform QuestionnaireResponse to Logical Model",
  "structure" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse",
    "mode" : "source",
    "alias" : "QResp"
  },
  {
    "url" : "http://smart.who.int/immunizations/StructureDefinition/IMMZD13",
    "mode" : "target",
    "alias" : "IMMZD13"
  }],
  "import" : ["http://smart.who.int/immunizations/StructureMap/IMMZ.Helpers"],
  "group" : [{
    "name" : "QRespToIMMZD13",
    "typeMode" : "none",
    "input" : [{
      "name" : "qr",
      "type" : "QResp",
      "mode" : "source"
    },
    {
      "name" : "immz",
      "type" : "IMMZD13",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "setPatient",
      "source" : [{
        "context" : "qr",
        "element" : "subject",
        "variable" : "subject"
      }],
      "target" : [{
        "context" : "immz",
        "contextType" : "variable",
        "element" : "patient",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "subject"
        }]
      }]
    },
    {
      "name" : "D1andD13Questions",
      "source" : [{
        "context" : "qr"
      }],
      "dependent" : [{
        "name" : "D1andD13Questions",
        "variable" : ["qr", "immz"]
      }]
    },
    {
      "name" : "D13Questions",
      "source" : [{
        "context" : "qr"
      }],
      "dependent" : [{
        "name" : "D13Questions",
        "variable" : ["qr", "immz"]
      }]
    }]
  }]
}

```
