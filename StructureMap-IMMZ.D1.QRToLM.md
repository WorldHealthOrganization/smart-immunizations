# IMMZ.D1.QRToLM - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D1.QRToLM**

## StructureMap: IMMZ.D1.QRToLM 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/StructureMap/IMMZ.D1.QRToLM | *Version*:0.2.0 |
| Draft as of 2025-11-25 | *Computable Name*:IMMZ.D1.QRToLM |

 
Immunization Administer Vaccine - Transform QuestionnaireResponse to Logical Model 

```

map "http://smart.who.int/immunizations/StructureMap/IMMZ.D1.QRToLM" = "IMMZ.D1.QRToLM"

// Immunization Administer Vaccine - Transform QuestionnaireResponse to Logical Model

uses "http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse" alias QResp as source
uses "http://smart.who.int/immunizations/StructureDefinition/IMMZD1" alias IMMZD1 as target

imports "http://smart.who.int/immunizations/StructureMap/IMMZ.Helpers"

group QRespToIMMZD1(source qr : QResp, target immz : IMMZD1) {
  qr.subject as subject -> immz.patient = subject "setPatient";
  qr then D1andD13Questions(qr, immz) "D1andD13Questions";
  qr then D1Questions(qr, immz) "D13Questions";
}


```



## Resource Content

```json
{
  "resourceType" : "StructureMap",
  "id" : "IMMZ.D1.QRToLM",
  "url" : "http://smart.who.int/immunizations/StructureMap/IMMZ.D1.QRToLM",
  "version" : "0.2.0",
  "name" : "IMMZ.D1.QRToLM",
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
      "url" : "http://smart.who.int/immunizations/StructureDefinition/IMMZD1",
      "mode" : "target",
      "alias" : "IMMZD1"
    }
  ],
  "import" : [
    "http://smart.who.int/immunizations/StructureMap/IMMZ.Helpers"
  ],
  "group" : [
    {
      "name" : "QRespToIMMZD1",
      "typeMode" : "none",
      "input" : [
        {
          "name" : "qr",
          "type" : "QResp",
          "mode" : "source"
        },
        {
          "name" : "immz",
          "type" : "IMMZD1",
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
          "name" : "D1andD13Questions",
          "source" : [
            {
              "context" : "qr"
            }
          ],
          "dependent" : [
            {
              "name" : "D1andD13Questions",
              "variable" : ["qr", "immz"]
            }
          ]
        },
        {
          "name" : "D13Questions",
          "source" : [
            {
              "context" : "qr"
            }
          ],
          "dependent" : [
            {
              "name" : "D1Questions",
              "variable" : ["qr", "immz"]
            }
          ]
        }
      ]
    }
  ]
}

```
