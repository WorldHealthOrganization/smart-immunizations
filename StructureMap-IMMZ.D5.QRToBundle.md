# IMMZ.D5.QRToBundle - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D5.QRToBundle**

## StructureMap: IMMZ.D5.QRToBundle 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/StructureMap/IMMZ.D5.QRToBundle | *Version*:0.2.0 |
| Draft as of 2025-11-25 | *Computable Name*:IMMZ.D5.QRToBundle |

 
Immunization Administer Vaccine - Transform QuestionnaireResponse to Immunization resources 

```

map "http://smart.who.int/immunizations/StructureMap/IMMZ.D5.QRToBundle" = "IMMZ.D5.QRToBundle"

// Immunization Administer Vaccine - Transform QuestionnaireResponse to Immunization resources

uses "http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse" alias QResp as source
uses "http://smart.who.int/immunizations/StructureDefinition/IMMZD5" alias IMMZD5 as source
uses "http://hl7.org/fhir/StructureDefinition/Bundle" alias Bundle as target

imports "http://smart.who.int/immunizations/StructureMap/IMMZ.D5.QRToLM"
imports "http://smart.who.int/immunizations/StructureMap/IMMZ.D5.LMToBundle"

group QRespToBundle(source qr : QResp, target bundle : Bundle) {
  qr -> create('http://smart.who.int/immunizations/StructureDefinition/IMMZD5') as model then {
    qr -> model then QRespToIMMZD5(qr, model) "QRtoLM";
    qr -> bundle then IMMZD5ToBundle(model, bundle) "LMtoBundle";
  } "QRtoBundle";
}


```



## Resource Content

```json
{
  "resourceType" : "StructureMap",
  "id" : "IMMZ.D5.QRToBundle",
  "url" : "http://smart.who.int/immunizations/StructureMap/IMMZ.D5.QRToBundle",
  "version" : "0.2.0",
  "name" : "IMMZ.D5.QRToBundle",
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
      "url" : "http://smart.who.int/immunizations/StructureDefinition/IMMZD5",
      "mode" : "source",
      "alias" : "IMMZD5"
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/Bundle",
      "mode" : "target",
      "alias" : "Bundle"
    }
  ],
  "import" : [
    "http://smart.who.int/immunizations/StructureMap/IMMZ.D5.QRToLM",
    "http://smart.who.int/immunizations/StructureMap/IMMZ.D5.LMToBundle"
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
                  "valueString" : "http://smart.who.int/immunizations/StructureDefinition/IMMZD5"
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
                  "name" : "QRespToIMMZD5",
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
                  "name" : "IMMZD5ToBundle",
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
