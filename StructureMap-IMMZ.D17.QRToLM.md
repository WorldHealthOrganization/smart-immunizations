# IMMZ.D17.QRToLM - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D17.QRToLM**

## StructureMap: IMMZ.D17.QRToLM 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/StructureMap/IMMZ.D17.QRToLM | *Version*:0.2.0 |
| Draft as of 2025-11-25 | *Computable Name*:IMMZ.D17.QRToLM |

 
Immunization Report AEFI - Transform QuestionnaireResponse to Logical Model 

```

map "http://smart.who.int/immunizations/StructureMap/IMMZ.D17.QRToLM" = "IMMZ.D17.QRToLM"

// Immunization Report AEFI - Transform QuestionnaireResponse to Logical Model

uses "http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse" alias QResp as source
uses "http://smart.who.int/immunizations/StructureDefinition/IMMZD17" alias IMMZD17 as target

imports "http://smart.who.int/immunizations/StructureMap/IMMZ.Helpers"

group QRespToIMMZD17(source qr : QResp, target immz : IMMZD17) {
  qr.subject as subject -> immz.patient = subject "setPatient";
  qr.item as item where linkId = 'reactionReported' -> immz.reactionReported as field then ItemToValue(item, field) "reactionReported";
  qr.item as item where linkId = 'reactionDate' -> immz.reactionDate as field then ItemToValue(item, field) "reactionDate";
  qr.item as item where linkId = 'reactionManifestation' -> immz.reactionManifestation as field then ItemToCoding(item, field) "reactionManifestation";
  qr.item as item where linkId = 'typeOfReaction' -> immz.typeOfReaction as field then ItemToCoding(item, field) "typeOfReaction";
  qr.item as item where linkId = 'otherImportantMedicalEvent' -> immz.otherImportantMedicalEvent as field then ItemToValue(item, field) "otherImportantMedicalEvent";
  qr.item as item where linkId = 'reactionOutcome' -> immz.reactionOutcome as field then ItemToCoding(item, field) "reactionOutcome";
}


```



## Resource Content

```json
{
  "resourceType" : "StructureMap",
  "id" : "IMMZ.D17.QRToLM",
  "url" : "http://smart.who.int/immunizations/StructureMap/IMMZ.D17.QRToLM",
  "version" : "0.2.0",
  "name" : "IMMZ.D17.QRToLM",
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
  "description" : "Immunization Report AEFI - Transform QuestionnaireResponse to Logical Model",
  "structure" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse",
      "mode" : "source",
      "alias" : "QResp"
    },
    {
      "url" : "http://smart.who.int/immunizations/StructureDefinition/IMMZD17",
      "mode" : "target",
      "alias" : "IMMZD17"
    }
  ],
  "import" : [
    "http://smart.who.int/immunizations/StructureMap/IMMZ.Helpers"
  ],
  "group" : [
    {
      "name" : "QRespToIMMZD17",
      "typeMode" : "none",
      "input" : [
        {
          "name" : "qr",
          "type" : "QResp",
          "mode" : "source"
        },
        {
          "name" : "immz",
          "type" : "IMMZD17",
          "mode" : "target"
        }
      ],
      "rule" : [
        {
          "name" : "setPatient",
          "source" : [
            {
              "context" : "qr",
              "element" : "subject",
              "variable" : "subject"
            }
          ],
          "target" : [
            {
              "context" : "immz",
              "contextType" : "variable",
              "element" : "patient",
              "transform" : "copy",
              "parameter" : [
                {
                  "valueId" : "subject"
                }
              ]
            }
          ]
        },
        {
          "name" : "reactionReported",
          "source" : [
            {
              "context" : "qr",
              "element" : "item",
              "variable" : "item",
              "condition" : "linkId = 'reactionReported'"
            }
          ],
          "target" : [
            {
              "context" : "immz",
              "contextType" : "variable",
              "element" : "reactionReported",
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
          "name" : "reactionDate",
          "source" : [
            {
              "context" : "qr",
              "element" : "item",
              "variable" : "item",
              "condition" : "linkId = 'reactionDate'"
            }
          ],
          "target" : [
            {
              "context" : "immz",
              "contextType" : "variable",
              "element" : "reactionDate",
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
          "name" : "reactionManifestation",
          "source" : [
            {
              "context" : "qr",
              "element" : "item",
              "variable" : "item",
              "condition" : "linkId = 'reactionManifestation'"
            }
          ],
          "target" : [
            {
              "context" : "immz",
              "contextType" : "variable",
              "element" : "reactionManifestation",
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
          "name" : "typeOfReaction",
          "source" : [
            {
              "context" : "qr",
              "element" : "item",
              "variable" : "item",
              "condition" : "linkId = 'typeOfReaction'"
            }
          ],
          "target" : [
            {
              "context" : "immz",
              "contextType" : "variable",
              "element" : "typeOfReaction",
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
          "name" : "otherImportantMedicalEvent",
          "source" : [
            {
              "context" : "qr",
              "element" : "item",
              "variable" : "item",
              "condition" : "linkId = 'otherImportantMedicalEvent'"
            }
          ],
          "target" : [
            {
              "context" : "immz",
              "contextType" : "variable",
              "element" : "otherImportantMedicalEvent",
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
          "name" : "reactionOutcome",
          "source" : [
            {
              "context" : "qr",
              "element" : "item",
              "variable" : "item",
              "condition" : "linkId = 'reactionOutcome'"
            }
          ],
          "target" : [
            {
              "context" : "immz",
              "contextType" : "variable",
              "element" : "reactionOutcome",
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
    }
  ]
}

```
