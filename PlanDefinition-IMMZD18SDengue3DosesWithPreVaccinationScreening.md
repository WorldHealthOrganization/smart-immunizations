# IMMZ.D18.S.Dengue schedule - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D18.S.Dengue schedule**

## PlanDefinition: IMMZ.D18.S.Dengue schedule 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/PlanDefinition/IMMZD18SDengue3DosesWithPreVaccinationScreening | *Version*:0.2.0 |
| Draft as of 2025-11-25 | *Computable Name*:IMMZD18SDengue3DosesWithPreVaccinationScreening |

 
IMMZ.D18.S.Dengue schedule CYD-TDV (Dengvaxia), 3-dose schedule 

* **Actions:**: **Url:**
  * : [IMMZ.D18.S.Dengue schedule](PlanDefinition-IMMZD18SDengue3DosesWithPreVaccinationScreening.md)
* **Actions:**: **Version:**
  * : 0.2.0
* **Actions:**: **Title:**
  * : IMMZ.D18.S.Dengue schedule
* **Actions:**: **Status:**
  * : draft
* **Actions:**: **Date:**
  * : 2025-11-25 19:41:02+0000
* **Actions:**: **Publisher:**
  * : WHO
* **Actions:**: **Description:**
  * : IMMZ.D18.S.Dengue schedule CYD-TDV (Dengvaxia), 3-dose schedule
* **Actions:**: **Knowledge Capability:**
  * : computable
* **Actions:**: **Libraries:**
  * : 
| |
| :--- |
| [IMMZD18SDengue3DosesWithPreVaccinationScreeningLogic](Library-IMMZD18SDengue3DosesWithPreVaccinationScreeningLogic.md) |




## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "IMMZD18SDengue3DosesWithPreVaccinationScreening",
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
  "url" : "http://smart.who.int/immunizations/PlanDefinition/IMMZD18SDengue3DosesWithPreVaccinationScreening",
  "version" : "0.2.0",
  "name" : "IMMZD18SDengue3DosesWithPreVaccinationScreening",
  "title" : "IMMZ.D18.S.Dengue schedule",
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
  "description" : "IMMZ.D18.S.Dengue schedule\nCYD-TDV (Dengvaxia), 3-dose schedule",
  "relatedArtifact" : [
    {
      "type" : "citation",
      "citation" : "WHO recommendations for routine immunization - summary tables (January 2025)"
    }
  ],
  "library" : [
    "http://smart.who.int/immunizations/Library/IMMZD18SDengue3DosesWithPreVaccinationScreeningLogic"
  ],
  "action" : [
    {
      "title" : "Dengue dose 1",
      "description" : "Provision of dengue dose 1\nTrigger event: No dengue doses from primary series were administered\nTrigger pseudo: Count of vaccines administered (where \"Vaccine type\" = \"Dengue vaccines\" and \"Type of dose\" = \"Primary series\") = 0\nTrigger date: To be determined by Member States based on vaccination strategy\nCreate condition: Dengue dose 1 should be provided based on vaccination strategy",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "Dengue dose 1",
            "language" : "text/cql-identifier",
            "expression" : "Dengue dose 1"
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
            "expression" : "Dengue dose 1 Create"
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
      "title" : "Dengue dose 2",
      "description" : "Provision of the dengue dose 2\nTrigger event: First dengue dose from the primary series was administered\nTrigger pseudo: Count of vaccines administered (where \"Vaccine type\" = \"Dengue vaccines\" and \"Type of dose\" = \"Primary series\") = 1\nTrigger date: \"Date and time of vaccination\" (where \"Vaccine type\" = \"Dengue vaccines\")\nCreate condition: Dengue dose 2 should be provided if the previous dose was provide more than 6 months ago",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "Dengue dose 2",
            "language" : "text/cql-identifier",
            "expression" : "Dengue dose 2"
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
            "expression" : "Dengue dose 2 Create"
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
      "title" : "Dengue dose 3",
      "description" : "Provision of dengue dose 3\nTrigger event: Second dengue dose from the primary series was administered\nTrigger pseudo: Count of vaccines administered (where \"Vaccine type\" = \"Dengue vaccines\" and \"Type of dose\" = \"Primary series\") = 2\nTrigger date: \"Date and time of vaccination\" (where \"Vaccine type\" = \"Dengue vaccines\")\nCreate condition: Dengue dose 3 should be provided if the previous dose was provide more than 6 months ago",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "Dengue dose 3",
            "language" : "text/cql-identifier",
            "expression" : "Dengue dose 3"
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
            "expression" : "Dengue dose 3 Create"
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
