# IMMZ.D5.LMToBundle - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D5.LMToBundle**

## StructureMap: IMMZ.D5.LMToBundle 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/StructureMap/IMMZ.D5.LMToBundle | *Version*:0.2.0 |
| Draft as of 2026-04-03 | *Computable Name*:IMMZ.D5.LMToBundle |

 
Immunization Administer Vaccine - Transform Logical Model to Immunization resources 



## Resource Content

```json
{
  "resourceType" : "StructureMap",
  "id" : "IMMZ.D5.LMToBundle",
  "url" : "http://smart.who.int/immunizations/StructureMap/IMMZ.D5.LMToBundle",
  "version" : "0.2.0",
  "name" : "IMMZ.D5.LMToBundle",
  "status" : "draft",
  "date" : "2026-04-03T22:35:55+00:00",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "Immunization Administer Vaccine - Transform Logical Model to Immunization resources",
  "structure" : [{
    "url" : "http://smart.who.int/immunizations/StructureDefinition/IMMZD5",
    "mode" : "source",
    "alias" : "IMMZD5"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/Bundle",
    "mode" : "target",
    "alias" : "Bundle"
  }],
  "import" : ["http://smart.who.int/immunizations/StructureMap/IMMZ.Helpers"],
  "group" : [{
    "name" : "IMMZD5ToBundle",
    "typeMode" : "none",
    "input" : [{
      "name" : "immz",
      "type" : "IMMZD5",
      "mode" : "source"
    },
    {
      "name" : "bundle",
      "type" : "Bundle",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "SetBundleType",
      "source" : [{
        "context" : "immz"
      }],
      "target" : [{
        "context" : "bundle",
        "contextType" : "variable",
        "element" : "type",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "transaction"
        }]
      }]
    },
    {
      "name" : "GetPatient",
      "source" : [{
        "context" : "immz",
        "element" : "patient",
        "variable" : "patient"
      }],
      "rule" : [{
        "name" : "potentialContraindications",
        "source" : [{
          "context" : "immz",
          "element" : "potentialContraindications",
          "variable" : "content"
        }],
        "target" : [{
          "contextType" : "variable",
          "variable" : "code",
          "transform" : "c",
          "parameter" : [{
            "valueString" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D"
          },
          {
            "valueString" : "DE161"
          },
          {
            "valueString" : "Potential contraindications"
          }]
        },
        {
          "contextType" : "variable",
          "variable" : "survey",
          "transform" : "c",
          "parameter" : [{
            "valueString" : "http://terminology.hl7.org/CodeSystem/observation-category"
          },
          {
            "valueString" : "survey"
          },
          {
            "valueString" : "Survey"
          }]
        }],
        "dependent" : [{
          "name" : "MakeObservation",
          "variable" : ["patient", "code", "survey", "content", "bundle"]
        }]
      }]
    }]
  }]
}

```
