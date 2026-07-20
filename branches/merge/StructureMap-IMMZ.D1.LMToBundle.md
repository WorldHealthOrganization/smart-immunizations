# IMMZ.D1.LMToBundle - WHO Immunization Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D1.LMToBundle**

## StructureMap: IMMZ.D1.LMToBundle 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/StructureMap/IMMZ.D1.LMToBundle | *Version*:1.0.0 |
| Draft as of 2026-03-31 | *Computable Name*:IMMZ.D1.LMToBundle |

 
Immunization Administer Vaccine - Transform Logical Model to Immunization resources 



## Resource Content

```json
{
  "resourceType" : "StructureMap",
  "id" : "IMMZ.D1.LMToBundle",
  "url" : "http://smart.who.int/immunizations/StructureMap/IMMZ.D1.LMToBundle",
  "version" : "1.0.0",
  "name" : "IMMZ.D1.LMToBundle",
  "status" : "draft",
  "date" : "2026-03-31T13:54:17+00:00",
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
    "url" : "http://smart.who.int/immunizations/StructureDefinition/IMMZD1",
    "mode" : "source",
    "alias" : "IMMZD1"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/Bundle",
    "mode" : "target",
    "alias" : "Bundle"
  }],
  "import" : ["http://smart.who.int/immunizations/StructureMap/IMMZ.Helpers"],
  "group" : [{
    "name" : "IMMZD1ToBundle",
    "typeMode" : "none",
    "input" : [{
      "name" : "immz",
      "type" : "IMMZD1",
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
      },
      {
        "name" : "MakeD1Observations",
        "source" : [{
          "context" : "immz"
        }],
        "dependent" : [{
          "name" : "D1Observations",
          "variable" : ["patient", "immid", "immz", "bundle"]
        }]
      }]
    }]
  }]
}

```
