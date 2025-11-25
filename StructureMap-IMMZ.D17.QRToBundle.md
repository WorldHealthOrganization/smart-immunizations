# IMMZ.D17.QRToBundle - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D17.QRToBundle**

## StructureMap: IMMZ.D17.QRToBundle 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/StructureMap/IMMZ.D17.QRToBundle | *Version*:0.2.0 |
| Draft as of 2025-11-25 | *Computable Name*:IMMZ.D17.QRToBundle |

 
Immunization Administer Vaccine - Transform QuestionnaireResponse to Immunization resources 

```

map "http://smart.who.int/immunizations/StructureMap/IMMZ.D17.QRToBundle" = "IMMZ.D17.QRToBundle"

// Immunization Administer Vaccine - Transform QuestionnaireResponse to Immunization resources

uses "http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse" alias QResp as source
uses "http://smart.who.int/immunizations/StructureDefinition/IMMZD17" alias IMMZD17 as source
uses "http://hl7.org/fhir/StructureDefinition/Bundle" alias Bundle as target

imports "http://smart.who.int/immunizations/StructureMap/IMMZ.D17.QRToLM"
imports "http://smart.who.int/immunizations/StructureMap/IMMZ.D17.LMToBundle"

group QRespToBundle(source qr : QResp, target bundle : Bundle) {
  qr -> create('http://smart.who.int/immunizations/StructureDefinition/IMMZD17') as model then {
    qr -> model then QRespToIMMZD17(qr, model) "QRtoLM";
    qr -> bundle then IMMZD17ToBundle(model, bundle) "LMtoBundle";
  } "QRtoBundle";
}


```



## Resource Content

```json
{
  "resourceType" : "StructureMap",
  "id" : "IMMZ.D17.QRToBundle",
  "url" : "http://smart.who.int/immunizations/StructureMap/IMMZ.D17.QRToBundle",
  "version" : "0.2.0",
  "name" : "IMMZ.D17.QRToBundle",
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
      "url" : "http://smart.who.int/immunizations/StructureDefinition/IMMZD17",
      "mode" : "source",
      "alias" : "IMMZD17"
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/Bundle",
      "mode" : "target",
      "alias" : "Bundle"
    }
  ],
  "import" : [
    "http://smart.who.int/immunizations/StructureMap/IMMZ.D17.QRToLM",
    "http://smart.who.int/immunizations/StructureMap/IMMZ.D17.LMToBundle"
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
                  "valueString" : "http://smart.who.int/immunizations/StructureDefinition/IMMZD17"
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
                  "name" : "QRespToIMMZD17",
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
                  "name" : "IMMZD17ToBundle",
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
