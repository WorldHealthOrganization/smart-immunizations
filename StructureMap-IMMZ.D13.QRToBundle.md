# IMMZ.D13.QRToBundle - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D13.QRToBundle**

## StructureMap: IMMZ.D13.QRToBundle 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/StructureMap/IMMZ.D13.QRToBundle | *Version*:0.2.0 |
| Draft as of 2025-11-25 | *Computable Name*:IMMZ.D13.QRToBundle |

 
Immunization Administer Vaccine - Transform QuestionnaireResponse to Immunization resources 

```

map "http://smart.who.int/immunizations/StructureMap/IMMZ.D13.QRToBundle" = "IMMZ.D13.QRToBundle"

// Immunization Administer Vaccine - Transform QuestionnaireResponse to Immunization resources

uses "http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse" alias QResp as source
uses "http://smart.who.int/immunizations/StructureDefinition/IMMZD13" alias IMMZD13 as source
uses "http://hl7.org/fhir/StructureDefinition/Bundle" alias Bundle as target

imports "http://smart.who.int/immunizations/StructureMap/IMMZ.D13.QRToLM"
imports "http://smart.who.int/immunizations/StructureMap/IMMZ.D13.LMToBundle"

group QRespToBundle(source qr : QResp, target bundle : Bundle) {
  qr -> create('http://smart.who.int/immunizations/StructureDefinition/IMMZD13') as model then {
    qr -> model then QRespToIMMZD13(qr, model) "QRtoLM";
    qr -> bundle then IMMZD13ToBundle(model, bundle) "LMtoBundle";
  } "QRtoBundle";
}


```



## Resource Content

```json
{
  "resourceType" : "StructureMap",
  "id" : "IMMZ.D13.QRToBundle",
  "url" : "http://smart.who.int/immunizations/StructureMap/IMMZ.D13.QRToBundle",
  "version" : "0.2.0",
  "name" : "IMMZ.D13.QRToBundle",
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
  "description" : "Immunization Administer Vaccine - Transform QuestionnaireResponse to Immunization resources",
  "structure" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse",
      "mode" : "source",
      "alias" : "QResp"
    },
    {
      "url" : "http://smart.who.int/immunizations/StructureDefinition/IMMZD13",
      "mode" : "source",
      "alias" : "IMMZD13"
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/Bundle",
      "mode" : "target",
      "alias" : "Bundle"
    }
  ],
  "import" : [
    "http://smart.who.int/immunizations/StructureMap/IMMZ.D13.QRToLM",
    "http://smart.who.int/immunizations/StructureMap/IMMZ.D13.LMToBundle"
  ],
  "group" : [
    {
      "name" : "QRespToBundle",
      "typeMode" : "none",
      "input" : [
        {
          "name" : "qr",
          "type" : "QResp",
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
          "name" : "QRtoBundle",
          "source" : [
            {
              "context" : "qr"
            }
          ],
          "target" : [
            {
              "contextType" : "variable",
              "variable" : "model",
              "transform" : "create",
              "parameter" : [
                {
                  "valueString" : "http://smart.who.int/immunizations/StructureDefinition/IMMZD13"
                }
              ]
            }
          ],
          "rule" : [
            {
              "name" : "QRtoLM",
              "source" : [
                {
                  "context" : "qr"
                }
              ],
              "target" : [
                {
                  "context" : "model",
                  "contextType" : "variable"
                }
              ],
              "dependent" : [
                {
                  "name" : "QRespToIMMZD13",
                  "variable" : ["qr", "model"]
                }
              ]
            },
            {
              "name" : "LMtoBundle",
              "source" : [
                {
                  "context" : "qr"
                }
              ],
              "target" : [
                {
                  "context" : "bundle",
                  "contextType" : "variable"
                }
              ],
              "dependent" : [
                {
                  "name" : "IMMZD13ToBundle",
                  "variable" : ["model", "bundle"]
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
