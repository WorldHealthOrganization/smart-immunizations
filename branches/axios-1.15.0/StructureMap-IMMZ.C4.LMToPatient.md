# IMMZ.C4.LMToPatient - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.C4.LMToPatient**

## StructureMap: IMMZ.C4.LMToPatient 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/StructureMap/IMMZ.C4.LMToPatient | *Version*:0.2.0 |
| Draft as of 2026-04-12 | *Computable Name*:IMMZ.C4.LMToPatient |

 
Immunization Client Registry - Transform Logical Model to Patient resources 



## Resource Content

```json
{
  "resourceType" : "StructureMap",
  "id" : "IMMZ.C4.LMToPatient",
  "url" : "http://smart.who.int/immunizations/StructureMap/IMMZ.C4.LMToPatient",
  "version" : "0.2.0",
  "name" : "IMMZ.C4.LMToPatient",
  "status" : "draft",
  "date" : "2026-04-12T07:49:12+00:00",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "Immunization Client Registry - Transform Logical Model to Patient resources",
  "structure" : [{
    "url" : "http://smart.who.int/immunizations/StructureDefinition/IMMZC4",
    "mode" : "source",
    "alias" : "IMMZC"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/Bundle",
    "mode" : "target",
    "alias" : "Bundle"
  }],
  "group" : [{
    "name" : "IMMZCToPatient",
    "typeMode" : "none",
    "documentation" : "uses \"http://hl7.org/fhir/StructureDefinition/Patient\" alias Patient as produced\r\nuses \"http://hl7.org/fhir/StructureDefinition/RelatedPerson\" alias RelatedPerson as produced",
    "input" : [{
      "name" : "immzc",
      "type" : "IMMZC",
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
        "context" : "immzc"
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
      "name" : "CreatePatient",
      "source" : [{
        "context" : "immzc"
      }],
      "target" : [{
        "contextType" : "variable",
        "variable" : "pid",
        "transform" : "uuid"
      },
      {
        "context" : "bundle",
        "contextType" : "variable",
        "element" : "entry",
        "variable" : "entry"
      },
      {
        "context" : "entry",
        "contextType" : "variable",
        "element" : "fullUrl",
        "transform" : "append",
        "parameter" : [{
          "valueString" : "urn:uuid:"
        },
        {
          "valueId" : "pid"
        }]
      },
      {
        "context" : "entry",
        "contextType" : "variable",
        "element" : "request",
        "variable" : "request"
      },
      {
        "context" : "request",
        "contextType" : "variable",
        "element" : "method",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "PUT"
        }]
      },
      {
        "context" : "request",
        "contextType" : "variable",
        "element" : "url",
        "transform" : "append",
        "parameter" : [{
          "valueString" : "Patient/"
        },
        {
          "valueId" : "pid"
        }]
      },
      {
        "context" : "entry",
        "contextType" : "variable",
        "element" : "resource",
        "variable" : "patient",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "Patient"
        }]
      }],
      "rule" : [{
        "name" : "SetId",
        "source" : [{
          "context" : "immzc"
        }],
        "target" : [{
          "context" : "patient",
          "contextType" : "variable",
          "element" : "id",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "pid"
          }]
        }]
      },
      {
        "name" : "SetIdentifier",
        "source" : [{
          "context" : "immzc",
          "element" : "uniqueId",
          "variable" : "id"
        }],
        "target" : [{
          "context" : "patient",
          "contextType" : "variable",
          "element" : "identifier",
          "variable" : "identifier"
        }],
        "rule" : [{
          "name" : "SetIdentifierValue",
          "source" : [{
            "context" : "id"
          }],
          "target" : [{
            "context" : "identifier",
            "contextType" : "variable",
            "element" : "value",
            "transform" : "copy",
            "parameter" : [{
              "valueId" : "id"
            }]
          }]
        }]
      },
      {
        "name" : "SetName",
        "source" : [{
          "context" : "immzc"
        }],
        "target" : [{
          "context" : "patient",
          "contextType" : "variable",
          "element" : "name",
          "variable" : "pname"
        }],
        "rule" : [{
          "name" : "SetFullName",
          "source" : [{
            "context" : "immzc",
            "element" : "name",
            "variable" : "fullName"
          }],
          "target" : [{
            "context" : "pname",
            "contextType" : "variable",
            "element" : "text",
            "transform" : "copy",
            "parameter" : [{
              "valueId" : "fullName"
            }]
          }]
        },
        {
          "name" : "SetFirstName",
          "source" : [{
            "context" : "immzc",
            "element" : "firstName",
            "variable" : "firstName"
          }],
          "target" : [{
            "context" : "pname",
            "contextType" : "variable",
            "element" : "given",
            "transform" : "copy",
            "parameter" : [{
              "valueId" : "firstName"
            }]
          }]
        },
        {
          "name" : "SetFamilyName",
          "source" : [{
            "context" : "immzc",
            "element" : "familyName",
            "variable" : "familyName"
          }],
          "target" : [{
            "context" : "pname",
            "contextType" : "variable",
            "element" : "family",
            "transform" : "copy",
            "parameter" : [{
              "valueId" : "familyName"
            }]
          }]
        }]
      },
      {
        "name" : "SetGender",
        "source" : [{
          "context" : "immzc",
          "element" : "sex",
          "variable" : "sex"
        }],
        "target" : [{
          "context" : "patient",
          "contextType" : "variable",
          "element" : "gender",
          "transform" : "translate",
          "parameter" : [{
            "valueId" : "sex"
          },
          {
            "valueString" : "http://smart.who.int/immunizations/ConceptMap/IMMZ.C.ConceptMap"
          },
          {
            "valueString" : "code"
          }]
        }]
      },
      {
        "name" : "SetBirthDate",
        "source" : [{
          "context" : "immzc",
          "element" : "dateOfBirth",
          "variable" : "birthDate"
        }],
        "target" : [{
          "context" : "patient",
          "contextType" : "variable",
          "element" : "birthDate",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "birthDate"
          }]
        }]
      },
      {
        "name" : "SetPhone",
        "source" : [{
          "context" : "immzc",
          "element" : "contactPhoneNumber",
          "variable" : "phone"
        }],
        "target" : [{
          "context" : "patient",
          "contextType" : "variable",
          "element" : "telecom",
          "variable" : "telecom"
        }],
        "rule" : [{
          "name" : "SetPhoneValue",
          "source" : [{
            "context" : "phone",
            "variable" : "content"
          }],
          "target" : [{
            "context" : "telecom",
            "contextType" : "variable",
            "element" : "value",
            "transform" : "copy",
            "parameter" : [{
              "valueId" : "content"
            }]
          },
          {
            "context" : "telecom",
            "contextType" : "variable",
            "element" : "system",
            "transform" : "copy",
            "parameter" : [{
              "valueString" : "phone"
            }]
          }]
        }]
      },
      {
        "name" : "SetAddress",
        "source" : [{
          "context" : "immzc",
          "element" : "address",
          "variable" : "address"
        }],
        "target" : [{
          "context" : "patient",
          "contextType" : "variable",
          "element" : "address",
          "variable" : "taddress"
        }],
        "rule" : [{
          "name" : "SetAddressText",
          "source" : [{
            "context" : "address",
            "variable" : "content"
          }],
          "target" : [{
            "context" : "taddress",
            "contextType" : "variable",
            "element" : "text",
            "transform" : "copy",
            "parameter" : [{
              "valueId" : "content"
            }]
          }]
        }]
      },
      {
        "name" : "CreateRelatedPerson",
        "source" : [{
          "context" : "immzc",
          "element" : "caregiversMultiple",
          "variable" : "caregiver"
        }],
        "target" : [{
          "contextType" : "variable",
          "variable" : "rpid",
          "transform" : "uuid"
        },
        {
          "context" : "bundle",
          "contextType" : "variable",
          "element" : "entry",
          "variable" : "entry"
        },
        {
          "context" : "entry",
          "contextType" : "variable",
          "element" : "fullUrl",
          "transform" : "append",
          "parameter" : [{
            "valueString" : "urn:uuid:"
          },
          {
            "valueId" : "rpid"
          }]
        },
        {
          "context" : "entry",
          "contextType" : "variable",
          "element" : "request",
          "variable" : "request"
        },
        {
          "context" : "request",
          "contextType" : "variable",
          "element" : "method",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "PUT"
          }]
        },
        {
          "context" : "request",
          "contextType" : "variable",
          "element" : "url",
          "transform" : "append",
          "parameter" : [{
            "valueString" : "RelatedPerson/"
          },
          {
            "valueId" : "rpid"
          }]
        },
        {
          "context" : "entry",
          "contextType" : "variable",
          "element" : "resource",
          "variable" : "person",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "RelatedPerson"
          }]
        }],
        "rule" : [{
          "name" : "SetId",
          "source" : [{
            "context" : "caregiver"
          }],
          "target" : [{
            "context" : "person",
            "contextType" : "variable",
            "element" : "id",
            "transform" : "copy",
            "parameter" : [{
              "valueId" : "rpid"
            }]
          }]
        },
        {
          "name" : "setPatient",
          "source" : [{
            "context" : "caregiver"
          }],
          "target" : [{
            "context" : "person",
            "contextType" : "variable",
            "element" : "patient",
            "variable" : "patient"
          },
          {
            "context" : "patient",
            "contextType" : "variable",
            "element" : "reference",
            "transform" : "append",
            "parameter" : [{
              "valueString" : "Patient/"
            },
            {
              "valueId" : "pid"
            }]
          }]
        },
        {
          "name" : "SetCaregiverName",
          "source" : [{
            "context" : "caregiver"
          }],
          "target" : [{
            "context" : "person",
            "contextType" : "variable",
            "element" : "name",
            "variable" : "pname"
          }],
          "rule" : [{
            "name" : "SetFullName",
            "source" : [{
              "context" : "caregiver",
              "element" : "caregiversFullName",
              "variable" : "fullName"
            }],
            "target" : [{
              "context" : "pname",
              "contextType" : "variable",
              "element" : "text",
              "transform" : "copy",
              "parameter" : [{
                "valueId" : "fullName"
              }]
            }]
          },
          {
            "name" : "SetFirstName",
            "source" : [{
              "context" : "caregiver",
              "element" : "caregiversFirstName",
              "variable" : "firstName"
            }],
            "target" : [{
              "context" : "pname",
              "contextType" : "variable",
              "element" : "given",
              "transform" : "copy",
              "parameter" : [{
                "valueId" : "firstName"
              }]
            }]
          },
          {
            "name" : "SetFamilyName",
            "source" : [{
              "context" : "caregiver",
              "element" : "caregiversFamilyName",
              "variable" : "familyName"
            }],
            "target" : [{
              "context" : "pname",
              "contextType" : "variable",
              "element" : "family",
              "transform" : "copy",
              "parameter" : [{
                "valueId" : "familyName"
              }]
            }]
          }]
        }]
      }]
    }]
  }]
}

```
