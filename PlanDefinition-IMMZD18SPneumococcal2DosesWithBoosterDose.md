# IMMZ.D18.S.Pneumococcal.2 doses with booster dose schedule - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D18.S.Pneumococcal.2 doses with booster dose schedule**

## PlanDefinition: IMMZ.D18.S.Pneumococcal.2 doses with booster dose schedule 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/PlanDefinition/IMMZD18SPneumococcal2DosesWithBoosterDose | *Version*:0.2.0 |
| Draft as of 2025-11-25 | *Computable Name*:IMMZD18SPneumococcal2DosesWithBoosterDose |

 
IMMZ.D18.S.Pneumococcal.2 doses with booster dose schedule 2 primary doses with a booster dose (2p+1) schedule 

* **Actions:**: **Url:**
  * : [IMMZ.D18.S.Pneumococcal.2 doses with booster dose schedule](PlanDefinition-IMMZD18SPneumococcal2DosesWithBoosterDose.md)
* **Actions:**: **Version:**
  * : 0.2.0
* **Actions:**: **Title:**
  * : IMMZ.D18.S.Pneumococcal.2 doses with booster dose schedule
* **Actions:**: **Status:**
  * : draft
* **Actions:**: **Date:**
  * : 2025-11-25 19:41:02+0000
* **Actions:**: **Publisher:**
  * : WHO
* **Actions:**: **Description:**
  * : IMMZ.D18.S.Pneumococcal.2 doses with booster dose schedule 2 primary doses with a booster dose (2p+1) schedule
* **Actions:**: **Knowledge Capability:**
  * : computable
* **Actions:**: **Libraries:**
  * : 
| |
| :--- |
| [IMMZD18SPneumococcal2DosesWithBoosterDoseLogic](Library-IMMZD18SPneumococcal2DosesWithBoosterDoseLogic.md) |




## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "IMMZD18SPneumococcal2DosesWithBoosterDose",
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
  "url" : "http://smart.who.int/immunizations/PlanDefinition/IMMZD18SPneumococcal2DosesWithBoosterDose",
  "version" : "0.2.0",
  "name" : "IMMZD18SPneumococcal2DosesWithBoosterDose",
  "title" : "IMMZ.D18.S.Pneumococcal.2 doses with booster dose schedule",
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
  "description" : "IMMZ.D18.S.Pneumococcal.2 doses with booster dose schedule\n2 primary doses with a booster dose (2p+1) schedule",
  "relatedArtifact" : [
    {
      "type" : "citation",
      "citation" : "WHO recommendations for routine immunization - summary tables (January 2025)"
    }
  ],
  "library" : [
    "http://smart.who.int/immunizations/Library/IMMZD18SPneumococcal2DosesWithBoosterDoseLogic"
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
      "title" : "Pneumococcal dose 2",
      "description" : "Provision of the pneumococcal dose 2\nTrigger event: First pneumococcal dose from the primary series was administered to the client, who is less than or equal to 5 years of age, either within 24 months of birth or if client is at high risk for pneumococcal infection\nTrigger pseudo: Today's date − \"Date of birth\" ≤ 5 years AND Count of vaccines administered (where \"Vaccine type\" = \"Pneumococcal vaccines\" and \"Type of dose\" = \"Primary series\") = 1 AND (\"Date and time of vaccination\" (where \"Vaccine type\" = \"Pneumococcal vaccines\") − \"Date of birth\" < 24 months OR \"At high risk for pneumococcal infection\" = TRUE\nTrigger date: Date and time of vaccination\" (where \"Vaccine type\" = \"Pneumococcal vaccines\")\nCreate condition: Pneumococcal dose 2 should be provided if the client was given the previous dose more than 8 weeks ago",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "Pneumococcal dose 2",
            "language" : "text/cql-identifier",
            "expression" : "Pneumococcal dose 2"
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
            "expression" : "Pneumococcal dose 2 Create"
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
      "description" : "Provision of the pneumococcal booster dose\nTrigger event: Second pneumococcal dose from the primary series was administered and first pneumococcal dose was administered within 12 months post birth\nTrigger pseudo: Child's birth AND Count of vaccines administered (where \"Vaccine type\" = \"Pneumococcal vaccines\" and \"Type of dose\" = \"Primary series\") = 2 AND (\"Date and time of vaccination\" (where \"Vaccine type\" = \"Pneumococcal vaccines\" AND \"Dose number\" = 1) − \"Date of birth\" < 12 months\nTrigger date: \"Date of birth\"\nCreate condition: Pneumococcal booster dose should be provided if the client has received the 2 previous doses",
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
    },
    {
      "title" : "Pneumococcal second booster dose",
      "description" : "Provision of another booster dose for HIV-positive infants and preterm neonates\nTrigger event: The primary series has been completed and one booster dose was administered to the client, who is more than 12 months of age. The latest pneumococcal dose was administered within 12 months post birth. Client is either HIV positive or had a preterm birth\nTrigger pseudo: 'Today's date − \"Date of birth\" > 12 months AND \"Completed the primary vaccination series\" = TRUE (where \"Vaccine type\" = \"Pneumococcal vaccines\") AND Count of vaccines administered (where \"Vaccine type\" = \"Pneumococcal vaccines\" and \"Type of dose\" = \"Booster dose\") = 1 AND Latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Pneumococcal vaccines\") − \"Date of birth\" < 12 months AND (\"HIV status\" = \"HIV-positive\" OR \"Preterm birth\" = TRUE)\nTrigger date: \"Date of birth\"\nCreate condition: HIV-positive infants and preterm neonates who have received their 3 primary vaccine doses before 12 months of age may benefit from a booster dose in the second year of life",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "Pneumococcal second booster dose",
            "language" : "text/cql-identifier",
            "expression" : "Pneumococcal second booster dose"
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
            "expression" : "Pneumococcal second booster dose Create"
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
