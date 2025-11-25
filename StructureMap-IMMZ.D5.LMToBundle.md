# IMMZ.D5.LMToBundle - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D5.LMToBundle**

## StructureMap: IMMZ.D5.LMToBundle 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/StructureMap/IMMZ.D5.LMToBundle | *Version*:0.2.0 |
| Draft as of 2025-11-25 | *Computable Name*:IMMZ.D5.LMToBundle |

 
Immunization Administer Vaccine - Transform Logical Model to Immunization resources 

```

map "http://smart.who.int/immunizations/StructureMap/IMMZ.D5.LMToBundle" = "IMMZ.D5.LMToBundle"

// Immunization Administer Vaccine - Transform Logical Model to Immunization resources

uses "http://smart.who.int/immunizations/StructureDefinition/IMMZD5" alias IMMZD5 as source
uses "http://hl7.org/fhir/StructureDefinition/Bundle" alias Bundle as target

imports "http://smart.who.int/immunizations/StructureMap/IMMZ.Helpers"

group IMMZD5ToBundle(source immz : IMMZD5, target bundle : Bundle) {
  immz -> bundle.type = 'transaction' "SetBundleType";
  immz.patient as patient then {
    immz.potentialContraindications as content ->  c('http://smart.who.int/immunizations/CodeSystem/IMMZ.D', 'DE161', 'Potential contraindications') as code,  c('http://terminology.hl7.org/CodeSystem/observation-category', 'survey', 'Survey') as survey then MakeObservation(patient, code, survey, content, bundle);
  } "GetPatient";
}


```



## Resource Content

```json
{
  "resourceType" : "StructureMap",
  "id" : "IMMZ.D5.LMToBundle",
  "url" : "http://smart.who.int/immunizations/StructureMap/IMMZ.D5.LMToBundle",
  "version" : "0.2.0",
  "name" : "IMMZ.D5.LMToBundle",
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
  "description" : "Immunization Administer Vaccine - Transform Logical Model to Immunization resources",
  "structure" : [
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
    "http://smart.who.int/immunizations/StructureMap/IMMZ.Helpers"
  ],
  "group" : [
    {
      "name" : "IMMZD5ToBundle",
      "typeMode" : "none",
      "input" : [
        {
          "name" : "immz",
          "type" : "IMMZD5",
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
          "name" : "SetBundleType",
          "source" : [
            {
              "context" : "immz"
            }
          ],
          "target" : [
            {
              "context" : "bundle",
              "contextType" : "variable",
              "element" : "type",
              "transform" : "copy",
              "parameter" : [
                {
                  "valueString" : "transaction"
                }
              ]
            }
          ]
        },
        {
          "name" : "GetPatient",
          "source" : [
            {
              "context" : "immz",
              "element" : "patient",
              "variable" : "patient"
            }
          ],
          "rule" : [
            {
              "name" : "potentialContraindications",
              "source" : [
                {
                  "context" : "immz",
                  "element" : "potentialContraindications",
                  "variable" : "content"
                }
              ],
              "target" : [
                {
                  "contextType" : "variable",
                  "variable" : "code",
                  "transform" : "c",
                  "parameter" : [
                    {
                      "valueString" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D"
                    },
                    {
                      "valueString" : "DE161"
                    },
                    {
                      "valueString" : "Potential contraindications"
                    }
                  ]
                },
                {
                  "contextType" : "variable",
                  "variable" : "survey",
                  "transform" : "c",
                  "parameter" : [
                    {
                      "valueString" : "http://terminology.hl7.org/CodeSystem/observation-category"
                    },
                    {
                      "valueString" : "survey"
                    },
                    {
                      "valueString" : "Survey"
                    }
                  ]
                }
              ],
              "dependent" : [
                {
                  "name" : "MakeObservation",
                  "variable" : ["patient", "code", "survey", "content", "bundle"]
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
