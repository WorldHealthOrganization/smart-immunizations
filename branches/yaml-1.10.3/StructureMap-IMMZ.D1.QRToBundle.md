# IMMZ.D1.QRToBundle - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D1.QRToBundle**

## StructureMap: IMMZ.D1.QRToBundle 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/StructureMap/IMMZ.D1.QRToBundle | *Version*:0.2.0 |
| Draft as of 2026-03-25 | *Computable Name*:IMMZ.D1.QRToBundle |

 
Immunization Administer Vaccine - Transform QuestionnaireResponse to Immunization resources 



## Resource Content

```json
{
  "resourceType" : "StructureMap",
  "id" : "IMMZ.D1.QRToBundle",
  "url" : "http://smart.who.int/immunizations/StructureMap/IMMZ.D1.QRToBundle",
  "version" : "0.2.0",
  "name" : "IMMZ.D1.QRToBundle",
  "status" : "draft",
  "date" : "2026-03-25T23:30:34+00:00",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "Immunization Administer Vaccine - Transform QuestionnaireResponse to Immunization resources",
  "structure" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse",
    "mode" : "source",
    "alias" : "QResp"
  },
  {
    "url" : "http://smart.who.int/immunizations/StructureDefinition/IMMZD1",
    "mode" : "source",
    "alias" : "IMMZD1"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/Bundle",
    "mode" : "target",
    "alias" : "Bundle"
  }],
  "import" : ["http://smart.who.int/immunizations/StructureMap/IMMZ.D1.QRToLM",
  "http://smart.who.int/immunizations/StructureMap/IMMZ.D1.LMToBundle"],
  "group" : [{
    "name" : "QRespToBundle",
    "typeMode" : "none",
    "input" : [{
      "name" : "qr",
      "type" : "QResp",
      "mode" : "source"
    },
    {
      "name" : "bundle",
      "type" : "Bundle",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "QRtoBundle",
      "source" : [{
        "context" : "qr"
      }],
      "target" : [{
        "contextType" : "variable",
        "variable" : "model",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "http://smart.who.int/immunizations/StructureDefinition/IMMZD1"
        }]
      }],
      "rule" : [{
        "name" : "QRtoLM",
        "source" : [{
          "context" : "qr"
        }],
        "dependent" : [{
          "name" : "QRespToIMMZD1",
          "variable" : ["qr", "model"]
        }]
      },
      {
        "name" : "LMtoBundle",
        "source" : [{
          "context" : "qr"
        }],
        "dependent" : [{
          "name" : "IMMZD1ToBundle",
          "variable" : ["model", "bundle"]
        }]
      }]
    }]
  }]
}

```
