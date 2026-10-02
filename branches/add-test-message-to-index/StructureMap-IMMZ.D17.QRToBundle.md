# IMMZ.D17.QRToBundle - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D17.QRToBundle**

## StructureMap: IMMZ.D17.QRToBundle 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/StructureMap/IMMZ.D17.QRToBundle | *Version*:0.2.0 |
| Draft as of 2026-03-03 | *Computable Name*:IMMZ.D17.QRToBundle |

 
Immunization Administer Vaccine - Transform QuestionnaireResponse to Immunization resources 



## Resource Content

```json
{
  "resourceType" : "StructureMap",
  "id" : "IMMZ.D17.QRToBundle",
  "url" : "http://smart.who.int/immunizations/StructureMap/IMMZ.D17.QRToBundle",
  "version" : "0.2.0",
  "name" : "IMMZ.D17.QRToBundle",
  "status" : "draft",
  "date" : "2026-03-03T13:07:11+00:00",
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
    "url" : "http://smart.who.int/immunizations/StructureDefinition/IMMZD17",
    "mode" : "source",
    "alias" : "IMMZD17"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/Bundle",
    "mode" : "target",
    "alias" : "Bundle"
  }],
  "import" : ["http://smart.who.int/immunizations/StructureMap/IMMZ.D17.QRToLM",
  "http://smart.who.int/immunizations/StructureMap/IMMZ.D17.LMToBundle"],
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
          "valueString" : "http://smart.who.int/immunizations/StructureDefinition/IMMZD17"
        }]
      }],
      "rule" : [{
        "name" : "QRtoLM",
        "source" : [{
          "context" : "qr"
        }],
        "dependent" : [{
          "name" : "QRespToIMMZD17",
          "variable" : ["qr", "model"]
        }]
      },
      {
        "name" : "LMtoBundle",
        "source" : [{
          "context" : "qr"
        }],
        "dependent" : [{
          "name" : "IMMZD17ToBundle",
          "variable" : ["model", "bundle"]
        }]
      }]
    }]
  }]
}

```
