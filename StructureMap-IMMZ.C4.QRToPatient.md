# IMMZ.C4.QRToPatient - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.C4.QRToPatient**

## StructureMap: IMMZ.C4.QRToPatient 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/StructureMap/IMMZ.C4.QRToPatient | *Version*:0.2.0 |
| Draft as of 2025-11-25 | *Computable Name*:IMMZ.C4.QRToPatient |

 
Immunization Client Registry - Transform QuestionnaireResponse to Patient resources 

```

map "http://smart.who.int/immunizations/StructureMap/IMMZ.C4.QRToPatient" = "IMMZ.C4.QRToPatient"

// Immunization Client Registry - Transform QuestionnaireResponse to Patient resources

uses "http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse" alias QResp as source
uses "http://smart.who.int/immunizations/StructureDefinition/IMMZC4" alias IMMZC as source
uses "http://hl7.org/fhir/StructureDefinition/Bundle" alias Bundle as target

imports "http://smart.who.int/immunizations/StructureMap/IMMZ.C4.QRToLM"
imports "http://smart.who.int/immunizations/StructureMap/IMMZ.C4.LMToPatient"

group QRespToPatient(source qr : QResp, target bundle : Bundle) {
  qr -> create('http://smart.who.int/immunizations/StructureDefinition/IMMZC4') as model then {
    qr -> model then QRespToIMMZC(qr, model) "QRtoLM";
    qr -> bundle then IMMZCToPatient(model, bundle) "LMtoPatient";
  } "QRtoPatient";
}


```



## Resource Content

```json
{
  "resourceType" : "StructureMap",
  "id" : "IMMZ.C4.QRToPatient",
  "url" : "http://smart.who.int/immunizations/StructureMap/IMMZ.C4.QRToPatient",
  "version" : "0.2.0",
  "name" : "IMMZ.C4.QRToPatient",
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
  "description" : "Immunization Client Registry - Transform QuestionnaireResponse to Patient resources",
  "structure" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse",
      "mode" : "source",
      "alias" : "QResp"
    },
    {
      "url" : "http://smart.who.int/immunizations/StructureDefinition/IMMZC4",
      "mode" : "source",
      "alias" : "IMMZC"
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/Bundle",
      "mode" : "target",
      "alias" : "Bundle"
    }
  ],
  "import" : [
    "http://smart.who.int/immunizations/StructureMap/IMMZ.C4.QRToLM",
    "http://smart.who.int/immunizations/StructureMap/IMMZ.C4.LMToPatient"
  ],
  "group" : [
    {
      "name" : "QRespToPatient",
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
          "name" : "QRtoPatient",
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
                  "valueString" : "http://smart.who.int/immunizations/StructureDefinition/IMMZC4"
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
                  "name" : "QRespToIMMZC",
                  "variable" : ["qr", "model"]
                }
              ]
            },
            {
              "name" : "LMtoPatient",
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
                  "name" : "IMMZCToPatient",
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
