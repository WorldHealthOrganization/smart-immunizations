# IMMZ.D17.QRToLM - WHO Immunization Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D17.QRToLM**

## StructureMap: IMMZ.D17.QRToLM 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/StructureMap/IMMZ.D17.QRToLM | *Version*:1.0.0 |
| Draft as of 2026-03-31 | *Computable Name*:IMMZ.D17.QRToLM |

 
Immunization Report AEFI - Transform QuestionnaireResponse to Logical Model 



## Resource Content

```json
{
  "resourceType" : "StructureMap",
  "id" : "IMMZ.D17.QRToLM",
  "url" : "http://smart.who.int/immunizations/StructureMap/IMMZ.D17.QRToLM",
  "version" : "1.0.0",
  "name" : "IMMZ.D17.QRToLM",
  "status" : "draft",
  "date" : "2026-03-31T13:54:17+00:00",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "Immunization Report AEFI - Transform QuestionnaireResponse to Logical Model",
  "structure" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse",
    "mode" : "source",
    "alias" : "QResp"
  },
  {
    "url" : "http://smart.who.int/immunizations/StructureDefinition/IMMZD17",
    "mode" : "target",
    "alias" : "IMMZD17"
  }],
  "import" : ["http://smart.who.int/immunizations/StructureMap/IMMZ.Helpers"],
  "group" : [{
    "name" : "QRespToIMMZD17",
    "typeMode" : "none",
    "input" : [{
      "name" : "qr",
      "type" : "QResp",
      "mode" : "source"
    },
    {
      "name" : "immz",
      "type" : "IMMZD17",
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
      "name" : "reactionReported",
      "source" : [{
        "context" : "qr",
        "element" : "item",
        "variable" : "item",
        "condition" : "linkId = 'reactionReported'"
      }],
      "target" : [{
        "context" : "immz",
        "contextType" : "variable",
        "element" : "reactionReported",
        "variable" : "field"
      }],
      "dependent" : [{
        "name" : "ItemToValue",
        "variable" : ["item", "field"]
      }]
    },
    {
      "name" : "reactionDate",
      "source" : [{
        "context" : "qr",
        "element" : "item",
        "variable" : "item",
        "condition" : "linkId = 'reactionDate'"
      }],
      "target" : [{
        "context" : "immz",
        "contextType" : "variable",
        "element" : "reactionDate",
        "variable" : "field"
      }],
      "dependent" : [{
        "name" : "ItemToValue",
        "variable" : ["item", "field"]
      }]
    },
    {
      "name" : "reactionManifestation",
      "source" : [{
        "context" : "qr",
        "element" : "item",
        "variable" : "item",
        "condition" : "linkId = 'reactionManifestation'"
      }],
      "target" : [{
        "context" : "immz",
        "contextType" : "variable",
        "element" : "reactionManifestation",
        "variable" : "field"
      }],
      "dependent" : [{
        "name" : "ItemToCoding",
        "variable" : ["item", "field"]
      }]
    },
    {
      "name" : "typeOfReaction",
      "source" : [{
        "context" : "qr",
        "element" : "item",
        "variable" : "item",
        "condition" : "linkId = 'typeOfReaction'"
      }],
      "target" : [{
        "context" : "immz",
        "contextType" : "variable",
        "element" : "typeOfReaction",
        "variable" : "field"
      }],
      "dependent" : [{
        "name" : "ItemToCoding",
        "variable" : ["item", "field"]
      }]
    },
    {
      "name" : "otherImportantMedicalEvent",
      "source" : [{
        "context" : "qr",
        "element" : "item",
        "variable" : "item",
        "condition" : "linkId = 'otherImportantMedicalEvent'"
      }],
      "target" : [{
        "context" : "immz",
        "contextType" : "variable",
        "element" : "otherImportantMedicalEvent",
        "variable" : "field"
      }],
      "dependent" : [{
        "name" : "ItemToValue",
        "variable" : ["item", "field"]
      }]
    },
    {
      "name" : "reactionOutcome",
      "source" : [{
        "context" : "qr",
        "element" : "item",
        "variable" : "item",
        "condition" : "linkId = 'reactionOutcome'"
      }],
      "target" : [{
        "context" : "immz",
        "contextType" : "variable",
        "element" : "reactionOutcome",
        "variable" : "field"
      }],
      "dependent" : [{
        "name" : "ItemToCoding",
        "variable" : ["item", "field"]
      }]
    }]
  }]
}

```
