# IMMZ.D18.S.Seasonal influenza schedule - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D18.S.Seasonal influenza schedule**

## PlanDefinition: IMMZ.D18.S.Seasonal influenza schedule 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/PlanDefinition/IMMZD18SSeasonalinfluenza2Dose | *Version*:0.2.0 |
| Draft as of 2025-11-21 | *Computable Name*:IMMZD18SSeasonalinfluenza2Dose |

 
IMMZ.D18.S.Seasonal influenza schedule Inactivated trivalent and quadrivalent vaccines, 2-dose schedule for children aged under 9 years 

* **Actions:**: **Url:**
  * : [IMMZ.D18.S.Seasonal influenza schedule](PlanDefinition-IMMZD18SSeasonalinfluenza2Dose.md)
* **Actions:**: **Version:**
  * : 0.2.0
* **Actions:**: **Title:**
  * : IMMZ.D18.S.Seasonal influenza schedule
* **Actions:**: **Status:**
  * : draft
* **Actions:**: **Date:**
  * : 2025-11-21 17:14:08+0000
* **Actions:**: **Publisher:**
  * : WHO
* **Actions:**: **Description:**
  * : IMMZ.D18.S.Seasonal influenza schedule Inactivated trivalent and quadrivalent vaccines, 2-dose schedule for children aged under 9 years
* **Actions:**: **Knowledge Capability:**
  * : computable
* **Actions:**: **Libraries:**
  * : 
| |
| :--- |
| [IMMZD18SSeasonalinfluenza2DoseLogic](Library-IMMZD18SSeasonalinfluenza2DoseLogic.md) |




## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "IMMZD18SSeasonalinfluenza2Dose",
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
  "url" : "http://smart.who.int/immunizations/PlanDefinition/IMMZD18SSeasonalinfluenza2Dose",
  "version" : "0.2.0",
  "name" : "IMMZD18SSeasonalinfluenza2Dose",
  "title" : "IMMZ.D18.S.Seasonal influenza schedule",
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
  "date" : "2025-11-21T17:14:08+00:00",
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
  "description" : "IMMZ.D18.S.Seasonal influenza schedule\nInactivated trivalent and quadrivalent vaccines, 2-dose schedule for children aged under 9 years",
  "relatedArtifact" : [
    {
      "type" : "citation",
      "citation" : "WHO recommendations for routine immunization - summary tables (January 2025)"
    }
  ],
  "library" : [
    "http://smart.who.int/immunizations/Library/IMMZD18SSeasonalinfluenza2DoseLogic"
  ],
  "action" : [
    {
      "title" : "Seasonal influenza dose 1",
      "description" : "Provision of the seasonal influenza vaccine dose 1\nTrigger event: Child's birth\nTrigger date: \"Date of birth\"\nCreate condition: Influenza vaccines are safe and effective in children from 6 months of age",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "Seasonal influenza dose 1",
            "language" : "text/cql-identifier",
            "expression" : "Seasonal influenza dose 1"
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
            "expression" : "Seasonal influenza dose 1 Create"
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
      "title" : "Seasonal influenza dose 2",
      "description" : "Provision of the seasonal influenza vaccine dose 2\nTrigger event: First seasonal influenza dose from the primary series was administered and client is less than 9 years\nCount of vaccines administered (where \"Vaccine type\" = \"Seasonal influenza vaccines\" and \"Type of dose\" = \"Primary series\") = 1 AND (Today's date − \"Date of birth\" < 9 years)\nTrigger date: \"Date and time of vaccination\" (where \"Vaccine type\" = \"Seasonal influenza vaccines\")\nCreate condition: Children aged 6 months to 8 years should receive 2 doses at least 4 weeks apart",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "Seasonal influenza dose 2",
            "language" : "text/cql-identifier",
            "expression" : "Seasonal influenza dose 2"
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
            "expression" : "Seasonal influenza dose 2 Create"
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
      "title" : "Seasonal influenza annual dose",
      "description" : "Provision of the seasonal influenza vaccine annual dose\nTrigger event: The primary series has been completed\n\"Completed the primary vaccination series\" = TRUE (where \"Vaccine type\" = \"Seasonal influenza vaccines\")\nTrigger date: Latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Seasonal influenza vaccines\")\nCreate condition: Seasonal influenza vaccine annual dose should be provided 1 year after the previous dose",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "Seasonal influenza annual dose",
            "language" : "text/cql-identifier",
            "expression" : "Seasonal influenza annual dose"
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
            "expression" : "Seasonal influenza annual dose Create"
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
