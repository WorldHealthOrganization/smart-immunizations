# IMMZ.D18.S.TBE.TBE-Moscow schedule - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D18.S.TBE.TBE-Moscow schedule**

## PlanDefinition: IMMZ.D18.S.TBE.TBE-Moscow schedule 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/PlanDefinition/IMMZD18STBETBEMoscow | *Version*:0.2.0 |
| Draft as of 2025-11-25 | *Computable Name*:IMMZD18STBETBEMoscow |

 
IMMZ.D18.S.TBE.TBE-Moscow schedule TBE-Moscow, 3-dose schedule 

* **Actions:**: **Url:**
  * : [IMMZ.D18.S.TBE.TBE-Moscow schedule](PlanDefinition-IMMZD18STBETBEMoscow.md)
* **Actions:**: **Version:**
  * : 0.2.0
* **Actions:**: **Title:**
  * : IMMZ.D18.S.TBE.TBE-Moscow schedule
* **Actions:**: **Status:**
  * : draft
* **Actions:**: **Date:**
  * : 2025-11-25 19:41:02+0000
* **Actions:**: **Publisher:**
  * : WHO
* **Actions:**: **Description:**
  * : IMMZ.D18.S.TBE.TBE-Moscow schedule TBE-Moscow, 3-dose schedule
* **Actions:**: **Knowledge Capability:**
  * : computable
* **Actions:**: **Libraries:**
  * : 
| |
| :--- |
| [IMMZD18STBETBEMoscowLogic](Library-IMMZD18STBETBEMoscowLogic.md) |




## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "IMMZD18STBETBEMoscow",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-recommendationdefinition",
      "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareableplandefinition",
      "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishableplandefinition"
    ]
  },
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-knowledgeCapability",
      "valueCode" : "computable"
    }
  ],
  "url" : "http://smart.who.int/immunizations/PlanDefinition/IMMZD18STBETBEMoscow",
  "version" : "0.2.0",
  "name" : "IMMZD18STBETBEMoscow",
  "title" : "IMMZ.D18.S.TBE.TBE-Moscow schedule",
  "type" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/plan-definition-type",
        "code" : "eca-rule"
      }
    ]
  },
  "status" : "draft",
  "experimental" : false,
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
  "description" : "IMMZ.D18.S.TBE.TBE-Moscow schedule\nTBE-Moscow, 3-dose schedule",
  "relatedArtifact" : [
    {
      "type" : "citation",
      "citation" : "WHO recommendations for routine immunization - summary tables (January 2025)"
    }
  ],
  "library" : [
    "http://smart.who.int/immunizations/Library/IMMZD18STBETBEMoscowLogic"
  ],
  "action" : [
    {
      "title" : "Tick-borne encephalitis (TBE)-Moscow dose 1",
      "description" : "Provision of the TBE-Moscow dose 1\nTrigger event: Child's birth\nTrigger pseudo: \nTrigger date: \"Date of birth\"\nCreate condition: The TBE-Moscow vaccine is not licensed for use in children aged under 3 years.",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "Tick-borne encephalitis (TBE)-Moscow dose 1",
            "language" : "text/cql-identifier",
            "expression" : "Tick-borne encephalitis (TBE)-Moscow dose 1"
          }
        }
      ],
      "definitionCanonical" : "http://smart.who.int/immunizations/ActivityDefinition/IMMZD2DTCR",
      "dynamicValue" : [
        {
          "path" : "status",
          "expression" : {
            "language" : "text/cql-expression",
            "expression" : "'active'"
          }
        },
        {
          "path" : "payload.contentString",
          "expression" : {
            "language" : "text/cql-identifier",
            "expression" : "Tick-borne encephalitis (TBE)-Moscow dose 1 Create"
          }
        },
        {
          "path" : "category.coding",
          "expression" : {
            "description" : "Category of communication",
            "language" : "text/cql-expression",
            "expression" : "Code { system: 'http://terminology.hl7.org/CodeSystem/communication-category', code: 'alert' }"
          }
        },
        {
          "path" : "priority",
          "expression" : {
            "description" : "Alert priority",
            "language" : "text/cql-expression",
            "expression" : "Code { system: 'http://hl7.org/fhir/request-priority', code: 'routine' }"
          }
        }
      ]
    },
    {
      "title" : "TBE-Moscow dose 2",
      "description" : "Provision of the TBE-Moscow dose 2\nTrigger event: First TBE dose from the primary series was administered\nTrigger pseudo: Count of vaccines administered (where \"Vaccine type\" = \"TBE vaccines\" and \"Type of dose\" = \"Primary series\") = 1\nTrigger date: \"Date and time of vaccination\" (where \"Vaccine type\" = \"TBE vaccines\")\nCreate condition: The manufacturer of TBE-Moscow recommends a standard primary immunization schedule of 2 doses given at an interval of 1–7 months.",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "TBE-Moscow dose 2",
            "language" : "text/cql-identifier",
            "expression" : "TBE-Moscow dose 2"
          }
        }
      ],
      "definitionCanonical" : "http://smart.who.int/immunizations/ActivityDefinition/IMMZD2DTCR",
      "dynamicValue" : [
        {
          "path" : "status",
          "expression" : {
            "language" : "text/cql-expression",
            "expression" : "'active'"
          }
        },
        {
          "path" : "payload.contentString",
          "expression" : {
            "language" : "text/cql-identifier",
            "expression" : "TBE-Moscow dose 2 Create"
          }
        },
        {
          "path" : "category.coding",
          "expression" : {
            "description" : "Category of communication",
            "language" : "text/cql-expression",
            "expression" : "Code { system: 'http://terminology.hl7.org/CodeSystem/communication-category', code: 'alert' }"
          }
        },
        {
          "path" : "priority",
          "expression" : {
            "description" : "Alert priority",
            "language" : "text/cql-expression",
            "expression" : "Code { system: 'http://hl7.org/fhir/request-priority', code: 'routine' }"
          }
        }
      ]
    },
    {
      "title" : "TBE-Moscow dose 3",
      "description" : "Provision of the TBE-Moscow dose 3\nTrigger event: Second TBE dose from the primary series was administered\nTrigger pseudo: Count of vaccines administered (where \"Vaccine type\" = \"TBE vaccines\" and \"Type of dose\" = \"Primary series\") = 2\nTrigger date: Latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"TBE vaccines\")\nCreate condition: The recommended interval is 12 months between the second and third doses.",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "TBE-Moscow dose 3",
            "language" : "text/cql-identifier",
            "expression" : "TBE-Moscow dose 3"
          }
        }
      ],
      "definitionCanonical" : "http://smart.who.int/immunizations/ActivityDefinition/IMMZD2DTCR",
      "dynamicValue" : [
        {
          "path" : "status",
          "expression" : {
            "language" : "text/cql-expression",
            "expression" : "'active'"
          }
        },
        {
          "path" : "payload.contentString",
          "expression" : {
            "language" : "text/cql-identifier",
            "expression" : "TBE-Moscow dose 3 Create"
          }
        },
        {
          "path" : "category.coding",
          "expression" : {
            "description" : "Category of communication",
            "language" : "text/cql-expression",
            "expression" : "Code { system: 'http://terminology.hl7.org/CodeSystem/communication-category', code: 'alert' }"
          }
        },
        {
          "path" : "priority",
          "expression" : {
            "description" : "Alert priority",
            "language" : "text/cql-expression",
            "expression" : "Code { system: 'http://hl7.org/fhir/request-priority', code: 'routine' }"
          }
        }
      ]
    },
    {
      "title" : "TBE-Moscow booster dose(s)",
      "description" : "Provision of the TBE-Moscow booster dose (s)\nTrigger event: The primary series has been completed\nTrigger pseudo: \"Completed the primary vaccination series\" = TRUE (where \"Vaccine type\" = \"TBE vaccines\")\nTrigger date: Latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"TBE vaccines\")\nCreate condition: TBE booster dose should be provided every 3 years to the client if the country recognizes TBE as a priority and the client has completed the primary series.",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "TBE-Moscow booster dose(s)",
            "language" : "text/cql-identifier",
            "expression" : "TBE-Moscow booster dose(s)"
          }
        }
      ],
      "definitionCanonical" : "http://smart.who.int/immunizations/ActivityDefinition/IMMZD2DTCR",
      "dynamicValue" : [
        {
          "path" : "status",
          "expression" : {
            "language" : "text/cql-expression",
            "expression" : "'active'"
          }
        },
        {
          "path" : "payload.contentString",
          "expression" : {
            "language" : "text/cql-identifier",
            "expression" : "TBE-Moscow booster dose(s) Create"
          }
        },
        {
          "path" : "category.coding",
          "expression" : {
            "description" : "Category of communication",
            "language" : "text/cql-expression",
            "expression" : "Code { system: 'http://terminology.hl7.org/CodeSystem/communication-category', code: 'alert' }"
          }
        },
        {
          "path" : "priority",
          "expression" : {
            "description" : "Alert priority",
            "language" : "text/cql-expression",
            "expression" : "Code { system: 'http://hl7.org/fhir/request-priority', code: 'routine' }"
          }
        }
      ]
    }
  ]
}

```
