# IMMZ.D1.LMToBundle - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D1.LMToBundle**

## StructureMap: IMMZ.D1.LMToBundle 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/StructureMap/IMMZ.D1.LMToBundle | *Version*:0.2.0 |
| Draft as of 2025-11-25 | *Computable Name*:IMMZ.D1.LMToBundle |

 
Immunization Administer Vaccine - Transform Logical Model to Immunization resources 

```

map "http://smart.who.int/immunizations/StructureMap/IMMZ.D1.LMToBundle" = "IMMZ.D1.LMToBundle"

// Immunization Administer Vaccine - Transform Logical Model to Immunization resources

uses "http://smart.who.int/immunizations/StructureDefinition/IMMZD1" alias IMMZD1 as source
uses "http://hl7.org/fhir/StructureDefinition/Bundle" alias Bundle as target

imports "http://smart.who.int/immunizations/StructureMap/IMMZ.Helpers"

group IMMZD1ToBundle(source immz : IMMZD1, target bundle : Bundle) {
  immz -> bundle.type = 'transaction' "SetBundleType";
  immz.patient as patient -> uuid() as immid then {
    immz then MakeImmunization(patient, immid, immz, bundle) "MakeImmunization";
    immz then D1andD13Observations(patient, immid, immz, bundle) "MakeD1andD13Observations";
    immz then D1Observations(patient, immid, immz, bundle) "MakeD1Observations";
  } "GetPatient";
}


```



## Resource Content

```json
{
  "resourceType" : "StructureMap",
  "id" : "IMMZ.D1.LMToBundle",
  "url" : "http://smart.who.int/immunizations/StructureMap/IMMZ.D1.LMToBundle",
  "version" : "0.2.0",
  "name" : "IMMZ.D1.LMToBundle",
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
      "url" : "http://smart.who.int/immunizations/StructureDefinition/IMMZD1",
      "mode" : "source",
      "alias" : "IMMZD1"
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
      "name" : "IMMZD1ToBundle",
      "typeMode" : "none",
      "input" : [
        {
          "name" : "immz",
          "type" : "IMMZD1",
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
          "target" : [
            {
              "contextType" : "variable",
              "variable" : "immid",
              "transform" : "uuid"
            }
          ],
          "rule" : [
            {
              "name" : "MakeImmunization",
              "source" : [
                {
                  "context" : "immz"
                }
              ],
              "dependent" : [
                {
                  "name" : "MakeImmunization",
                  "variable" : ["patient", "immid", "immz", "bundle"]
                }
              ]
            },
            {
              "name" : "MakeD1andD13Observations",
              "source" : [
                {
                  "context" : "immz"
                }
              ],
              "dependent" : [
                {
                  "name" : "D1andD13Observations",
                  "variable" : ["patient", "immid", "immz", "bundle"]
                }
              ]
            },
            {
              "name" : "MakeD1Observations",
              "source" : [
                {
                  "context" : "immz"
                }
              ],
              "dependent" : [
                {
                  "name" : "D1Observations",
                  "variable" : ["patient", "immid", "immz", "bundle"]
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
