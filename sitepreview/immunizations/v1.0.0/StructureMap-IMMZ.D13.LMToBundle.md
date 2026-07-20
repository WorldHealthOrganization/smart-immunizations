# IMMZ.D13.LMToBundle - WHO Immunization Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D13.LMToBundle**

## StructureMap: IMMZ.D13.LMToBundle 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/StructureMap/IMMZ.D13.LMToBundle | *Version*:1.0.0 |
| Draft as of 2026-04-09 | *Computable Name*:IMMZ.D13.LMToBundle |

 
Immunization Administer Vaccine - Transform Logical Model to Immunization resources 



## Resource Content

```json
{
  "resourceType" : "StructureMap",
  "id" : "IMMZ.D13.LMToBundle",
  "url" : "http://smart.who.int/immunizations/StructureMap/IMMZ.D13.LMToBundle",
  "version" : "1.0.0",
  "name" : "IMMZ.D13.LMToBundle",
  "status" : "draft",
  "date" : "2026-04-09T14:18:30+00:00",
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
    "url" : "http://smart.who.int/immunizations/StructureDefinition/IMMZD13",
    "mode" : "source",
    "alias" : "IMMZD13"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/Bundle",
    "mode" : "target",
    "alias" : "Bundle"
  }],
  "import" : ["http://smart.who.int/immunizations/StructureMap/IMMZ.Helpers"],
  "group" : [{
    "name" : "IMMZD13ToBundle",
    "typeMode" : "none",
    "input" : [{
      "name" : "immz",
      "type" : "IMMZD13",
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
      "target" : [{
        "contextType" : "variable",
        "variable" : "immid",
        "transform" : "uuid"
      }],
      "rule" : [{
        "name" : "MakeImmunization",
        "source" : [{
          "context" : "immz"
        }],
        "dependent" : [{
          "name" : "MakeImmunization",
          "variable" : ["patient", "immid", "immz", "bundle"]
        }]
      },
      {
        "name" : "MakeD1andD13Observations",
        "source" : [{
          "context" : "immz"
        }],
        "dependent" : [{
          "name" : "D1andD13Observations",
          "variable" : ["patient", "immid", "immz", "bundle"]
        }]
      }]
    }]
  }]
}

```
