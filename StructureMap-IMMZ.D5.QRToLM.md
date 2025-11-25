# IMMZ.D5.QRToLM - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D5.QRToLM**

## StructureMap: IMMZ.D5.QRToLM 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/StructureMap/IMMZ.D5.QRToLM | *Version*:0.2.0 |
| Draft as of 2025-11-25 | *Computable Name*:IMMZ.D5.QRToLM |

 
Immunization Administer Vaccine - Transform QuestionnaireResponse to Logical Model 

```

map "http://smart.who.int/immunizations/StructureMap/IMMZ.D5.QRToLM" = "IMMZ.D5.QRToLM"

// Immunization Administer Vaccine - Transform QuestionnaireResponse to Logical Model

uses "http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse" alias QResp as source
uses "http://smart.who.int/immunizations/StructureDefinition/IMMZD5" alias IMMZD5 as target

imports "http://smart.who.int/immunizations/StructureMap/IMMZ.Helpers"

group QRespToIMMZD5(source qr : QResp, target immz : IMMZD5) {
  qr.subject as subject -> immz.patient = subject "setPatient";
  qr.item as item where linkId = 'potentialContraindications' -> immz.potentialContraindications as field then ItemToCoding(item, field) "potentialContraindications";
}


```



## Resource Content

```json
{
  "resourceType" : "StructureMap",
  "id" : "IMMZ.D5.QRToLM",
  "url" : "http://smart.who.int/immunizations/StructureMap/IMMZ.D5.QRToLM",
  "version" : "0.2.0",
  "name" : "IMMZ.D5.QRToLM",
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
  "description" : "Immunization Administer Vaccine - Transform QuestionnaireResponse to Logical Model",
  "structure" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse",
      "mode" : "source",
      "alias" : "QResp"
    },
    {
      "url" : "http://smart.who.int/immunizations/StructureDefinition/IMMZD5",
      "mode" : "target",
      "alias" : "IMMZD5"
    }
  ],
  "import" : [
    "http://smart.who.int/immunizations/StructureMap/IMMZ.Helpers"
  ],
  "group" : [
    {
      "name" : "QRespToIMMZD5",
      "typeMode" : "none",
      "input" : [
        {
          "name" : "qr",
          "type" : "QResp",
          "mode" : "source"
        },
        {
          "name" : "immz",
          "type" : "IMMZD5",
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
          "name" : "potentialContraindications",
          "source" : [
            {
              "context" : "qr",
              "element" : "item",
              "variable" : "item",
              "condition" : "linkId = 'potentialContraindications'"
            }
          ],
          "target" : [
            {
              "context" : "immz",
              "contextType" : "variable",
              "element" : "potentialContraindications",
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
