# IMMZ.D18.S.Pneumococcal.3 doses schedule - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D18.S.Pneumococcal.3 doses schedule**

## PlanDefinition: IMMZ.D18.S.Pneumococcal.3 doses schedule 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/PlanDefinition/IMMZD18SPneumococcal3Doses | *Version*:0.2.0 |
| Draft as of 2025-11-25 | *Computable Name*:IMMZD18SPneumococcal3Doses |

 
IMMZ.D18.S.Pneumococcal.3 doses schedule 3 primary doses (3p+0) schedule 

* **Actions:**: **Url:**
  * : [IMMZ.D18.S.Pneumococcal.3 doses schedule](PlanDefinition-IMMZD18SPneumococcal3Doses.md)
* **Actions:**: **Version:**
  * : 0.2.0
* **Actions:**: **Title:**
  * : IMMZ.D18.S.Pneumococcal.3 doses schedule
* **Actions:**: **Status:**
  * : draft
* **Actions:**: **Date:**
  * : 2025-11-25 19:41:02+0000
* **Actions:**: **Publisher:**
  * : WHO
* **Actions:**: **Description:**
  * : IMMZ.D18.S.Pneumococcal.3 doses schedule 3 primary doses (3p+0) schedule
* **Actions:**: **Knowledge Capability:**
  * : computable
* **Actions:**: **Libraries:**
  * : 
| |
| :--- |
| [IMMZD18SPneumococcal3DosesLogic](Library-IMMZD18SPneumococcal3DosesLogic.md) |




## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "IMMZD18SPneumococcal3Doses",
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
  "url" : "http://smart.who.int/immunizations/PlanDefinition/IMMZD18SPneumococcal3Doses",
  "version" : "0.2.0",
  "name" : "IMMZD18SPneumococcal3Doses",
  "title" : "IMMZ.D18.S.Pneumococcal.3 doses schedule",
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
  "description" : "IMMZ.D18.S.Pneumococcal.3 doses schedule\n3 primary doses (3p+0) schedule",
  "relatedArtifact" : [
    {
      "type" : "citation",
      "citation" : "WHO recommendations for routine immunization - summary tables (January 2025)"
    }
  ],
  "library" : [
    "http://smart.who.int/immunizations/Library/IMMZD18SPneumococcal3DosesLogic"
  ],
  "action" : [
    {
      "title" : "Pneumococcal dose 1",
      "description" : "Provision of the pneumococcal dose 1\nTrigger event: Child's birth\nTrigger pseudo: \nTrigger date: \"Date of birth\"\nCreate condition: Pneumococcal dose 1 should be provided if the client is older than 6 weeks",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "Pneumococcal dose 1",
            "language" : "text/cql-identifier",
            "expression" : "Pneumococcal dose 1"
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
            "expression" : "Pneumococcal dose 1 Create"
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
      "title" : "Pneumococcal dose 2, first within 24m",
      "description" : "Provision of the pneumococcal dose 2\nTrigger event: First pneumococcal dose from the primary series was administered to client, who is less than or equal to 5 years of age, within 24 months post birth\nTrigger pseudo: Today's date − \"Date of birth\" ≤ 5 years AND Count of vaccines administered (where \"Vaccine type\" = \"Pneumococcal vaccines\" and \"Type of dose\" = \"Primary series\") = 1 AND \"Date and time of vaccination\" (where \"Vaccine type\" = \"Pneumococcal vaccines\") − \"Date of birth\" < 24 months\nTrigger date: Latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Pneumococcal vaccines\")\nCreate condition: Pneumococcal dose 2 should be provided if the client was given the previous dose more than 4 weeks ago",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "Pneumococcal dose 2, first within 24m",
            "language" : "text/cql-identifier",
            "expression" : "Pneumococcal dose 2, first within 24m"
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
            "expression" : "Pneumococcal dose 2, first within 24m Create"
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
      "title" : "Pneumococcal dose 2, first after 24m",
      "description" : "Provision of the pneumococcal dose 2\nTrigger event: First pneumococcal dose from the primary series was administered to client, who is less than or equal to 5 years of age. Pneumococcal dose was not administered within 24 months post birth. Client is at high risk for pneumococcal infection.\nTrigger pseudo: Today's date − \"Date of birth\" ≤ 5 years AND Count of vaccines administered (where \"Vaccine type\" = \"Pneumococcal vaccines\" and \"Type of dose\" = \"Primary series\") = 1 AND \"Date and time of vaccination\" (where \"Vaccine type\" = \"Pneumococcal vaccines\") − \"Date of birth\" ≥ 24 months AND \"At high risk for pneumococcal infection\" = TRUE\nTrigger date: Latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Pneumococcal vaccines\")\nCreate condition: Pneumococcal dose 2 should be provided if the client was given the previous dose more than 8 weeks ago",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "Pneumococcal dose 2, first after 24m",
            "language" : "text/cql-identifier",
            "expression" : "Pneumococcal dose 2, first after 24m"
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
            "expression" : "Pneumococcal dose 2, first after 24m Create"
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
      "title" : "Pneumococcal dose 3",
      "description" : "Provision of the pneumococcal dose 3\nTrigger event: Second pneumococcal dose from the primary series was administered to client, who is less than or equal to 5 years of age. First pneumococcal dose was administered within 12 months post birth.\nTrigger pseudo: Today's date − \"Date of birth\" ≤ 5 years AND Count of vaccines administered (where \"Vaccine type\" = \"Pneumococcal vaccines\" and \"Type of dose\" = \"Primary series\") = 2 AND \"Date and time of vaccination\" (where \"Vaccine type\" = \"Pneumococcal vaccines\" AND \"Dose number\" = 1) − \"Date of birth\" < 12 months\nTrigger date: Latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Pneumococcal vaccines\")\nCreate condition: Pneumococcal dose 3 should be provided if the client was given the previous dose more than 4 weeks ago",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "Pneumococcal dose 3",
            "language" : "text/cql-identifier",
            "expression" : "Pneumococcal dose 3"
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
            "expression" : "Pneumococcal dose 3 Create"
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
      "title" : "Pneumococcal booster dose",
      "description" : "Provision of booster dose for HIV-positive infants and preterm neonates\nTrigger event: Third pneumococcal dose from the primary series was administered to client, who is more than 12 months of age. The latest pneumococcal dose was administered within 12 months post birth. Client is either HIV positive or had preterm birth.\nTrigger pseudo: Today's date − \"Date of birth\" > 12 months AND Count of vaccines administered (where \"Vaccine type\" = \"Pneumococcal vaccines\" and \"Type of dose\" = \"Primary series\") = 3 AND Latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Pneumococcal vaccines\") − \"Date of birth\" < 12 months AND (\"HIV status\" = \"HIV-positive\" OR \"Preterm birth\" = TRUE)\nTrigger date: \"Date of birth\"\nCreate condition: HIV-positive infants and preterm neonates who have received their 3 primary vaccine doses before 12 months of age may benefit from a booster dose in the second year of life",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "Pneumococcal booster dose",
            "language" : "text/cql-identifier",
            "expression" : "Pneumococcal booster dose"
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
            "expression" : "Pneumococcal booster dose Create"
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
