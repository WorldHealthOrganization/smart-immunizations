# IMMZ.C4.QRToLM - WHO Immunization Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.C4.QRToLM**

## StructureMap: IMMZ.C4.QRToLM 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/StructureMap/IMMZ.C4.QRToLM | *Version*:1.0.0 |
| Draft as of 2026-04-09 | *Computable Name*:IMMZ.C4.QRToLM |

 
Immunization Client Registry - Transform QuestionnaireResponse to Logical Model 



## Resource Content

```json
{
  "resourceType" : "StructureMap",
  "id" : "IMMZ.C4.QRToLM",
  "url" : "http://smart.who.int/immunizations/StructureMap/IMMZ.C4.QRToLM",
  "version" : "1.0.0",
  "name" : "IMMZ.C4.QRToLM",
  "status" : "draft",
  "date" : "2026-04-09T13:50:16+00:00",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "Immunization Client Registry - Transform QuestionnaireResponse to Logical Model",
  "structure" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse",
    "mode" : "source",
    "alias" : "QResp"
  },
  {
    "url" : "http://smart.who.int/immunizations/StructureDefinition/IMMZC4",
    "mode" : "target",
    "alias" : "immz"
  }],
  "import" : ["http://smart.who.int/immunizations/StructureMap/IMMZ.Helpers"],
  "group" : [{
    "name" : "QRespToIMMZC",
    "typeMode" : "none",
    "input" : [{
      "name" : "qr",
      "type" : "QResp",
      "mode" : "source"
    },
    {
      "name" : "immz",
      "type" : "IMMZC",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "uniqueIdentifier",
      "source" : [{
        "context" : "qr",
        "element" : "item",
        "variable" : "item",
        "condition" : "linkId = 'uniqueIdentifier'"
      }],
      "target" : [{
        "context" : "immz",
        "contextType" : "variable",
        "element" : "uniqueIdentifier",
        "variable" : "field"
      }],
      "dependent" : [{
        "name" : "ItemToValue",
        "variable" : ["item", "field"]
      }]
    },
    {
      "name" : "name",
      "source" : [{
        "context" : "qr",
        "element" : "item",
        "variable" : "item",
        "condition" : "linkId = 'name'"
      }],
      "target" : [{
        "context" : "immz",
        "contextType" : "variable",
        "element" : "name",
        "variable" : "field"
      }],
      "dependent" : [{
        "name" : "ItemToValue",
        "variable" : ["item", "field"]
      }]
    },
    {
      "name" : "firstName",
      "source" : [{
        "context" : "qr",
        "element" : "item",
        "variable" : "item",
        "condition" : "linkId = 'firstName'"
      }],
      "target" : [{
        "context" : "immz",
        "contextType" : "variable",
        "element" : "firstName",
        "variable" : "field"
      }],
      "dependent" : [{
        "name" : "ItemToValue",
        "variable" : ["item", "field"]
      }]
    },
    {
      "name" : "familyName",
      "source" : [{
        "context" : "qr",
        "element" : "item",
        "variable" : "item",
        "condition" : "linkId = 'familyName'"
      }],
      "target" : [{
        "context" : "immz",
        "contextType" : "variable",
        "element" : "familyName",
        "variable" : "field"
      }],
      "dependent" : [{
        "name" : "ItemToValue",
        "variable" : ["item", "field"]
      }]
    },
    {
      "name" : "sex",
      "source" : [{
        "context" : "qr",
        "element" : "item",
        "variable" : "item",
        "condition" : "linkId = 'sex'"
      }],
      "target" : [{
        "context" : "immz",
        "contextType" : "variable",
        "element" : "sex",
        "variable" : "field"
      }],
      "dependent" : [{
        "name" : "ItemToCode",
        "variable" : ["item", "field"]
      }]
    },
    {
      "name" : "dateOfBirth",
      "source" : [{
        "context" : "qr",
        "element" : "item",
        "variable" : "item",
        "condition" : "linkId = 'dateOfBirth'"
      }],
      "target" : [{
        "context" : "immz",
        "contextType" : "variable",
        "element" : "dateOfBirth",
        "variable" : "field"
      }],
      "dependent" : [{
        "name" : "ItemToValue",
        "variable" : ["item", "field"]
      }]
    },
    {
      "name" : "age",
      "source" : [{
        "context" : "qr",
        "element" : "item",
        "variable" : "item",
        "condition" : "linkId = 'age'"
      }],
      "target" : [{
        "context" : "immz",
        "contextType" : "variable",
        "element" : "age",
        "variable" : "field"
      }],
      "dependent" : [{
        "name" : "ItemToValue",
        "variable" : ["item", "field"]
      }]
    },
    {
      "name" : "caregiversMultiple",
      "source" : [{
        "context" : "qr",
        "element" : "item",
        "variable" : "caregiver",
        "condition" : "caregiver.linkId = 'caregiversMultiple'"
      }],
      "target" : [{
        "context" : "immz",
        "contextType" : "variable",
        "element" : "caregiversMultiple",
        "variable" : "caretgt"
      }],
      "rule" : [{
        "name" : "caregiversFullName",
        "source" : [{
          "context" : "caregiver",
          "element" : "item",
          "variable" : "item",
          "condition" : "linkId = 'caregiversFullName'"
        }],
        "target" : [{
          "context" : "caretgt",
          "contextType" : "variable",
          "element" : "caregiversFullName",
          "variable" : "field"
        }],
        "dependent" : [{
          "name" : "ItemToValue",
          "variable" : ["item", "field"]
        }]
      },
      {
        "name" : "caregiversFirstName",
        "source" : [{
          "context" : "caregiver",
          "element" : "item",
          "variable" : "item",
          "condition" : "linkId = 'caregiversFirstName'"
        }],
        "target" : [{
          "context" : "caretgt",
          "contextType" : "variable",
          "element" : "caregiversFirstName",
          "variable" : "field"
        }],
        "dependent" : [{
          "name" : "ItemToValue",
          "variable" : ["item", "field"]
        }]
      },
      {
        "name" : "caregiversFamilyName",
        "source" : [{
          "context" : "caregiver",
          "element" : "item",
          "variable" : "item",
          "condition" : "linkId = 'caregiversFamilyName'"
        }],
        "target" : [{
          "context" : "caretgt",
          "contextType" : "variable",
          "element" : "caregiversFamilyName",
          "variable" : "field"
        }],
        "dependent" : [{
          "name" : "ItemToValue",
          "variable" : ["item", "field"]
        }]
      }]
    },
    {
      "name" : "contactPhoneNumber",
      "source" : [{
        "context" : "qr",
        "element" : "item",
        "variable" : "item",
        "condition" : "linkId = 'contactPhoneNumber'"
      }],
      "target" : [{
        "context" : "immz",
        "contextType" : "variable",
        "element" : "contactPhoneNumber",
        "variable" : "field"
      }],
      "dependent" : [{
        "name" : "ItemToValue",
        "variable" : ["item", "field"]
      }]
    },
    {
      "name" : "address",
      "source" : [{
        "context" : "qr",
        "element" : "item",
        "variable" : "item",
        "condition" : "linkId = 'address'"
      }],
      "target" : [{
        "context" : "immz",
        "contextType" : "variable",
        "element" : "address",
        "variable" : "field"
      }],
      "dependent" : [{
        "name" : "ItemToValue",
        "variable" : ["item", "field"]
      }]
    }]
  }]
}

```
