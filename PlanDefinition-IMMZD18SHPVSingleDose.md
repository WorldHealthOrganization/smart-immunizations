# IMMZ.D18.S.Single-dose schedule - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D18.S.Single-dose schedule**

## PlanDefinition: IMMZ.D18.S.Single-dose schedule 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/PlanDefinition/IMMZD18SHPVSingleDose | *Version*:0.2.0 |
| Draft as of 2025-11-25 | *Computable Name*:IMMZD18SHPVSingleDose |

 
IMMZ.D18.S.Single-dose schedule Alternative single-dose schedule 

* **Actions:**: **Url:**
  * : [IMMZ.D18.S.Single-dose schedule](PlanDefinition-IMMZD18SHPVSingleDose.md)
* **Actions:**: **Version:**
  * : 0.2.0
* **Actions:**: **Title:**
  * : IMMZ.D18.S.Single-dose schedule
* **Actions:**: **Status:**
  * : draft
* **Actions:**: **Date:**
  * : 2025-11-25 19:41:02+0000
* **Actions:**: **Publisher:**
  * : WHO
* **Actions:**: **Description:**
  * : IMMZ.D18.S.Single-dose schedule Alternative single-dose schedule
* **Actions:**: **Knowledge Capability:**
  * : computable
* **Actions:**: **Libraries:**
  * : 
| |
| :--- |
| [IMMZD18SHPVSingleDoseLogic](Library-IMMZD18SHPVSingleDoseLogic.md) |




## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "IMMZD18SHPVSingleDose",
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
  "url" : "http://smart.who.int/immunizations/PlanDefinition/IMMZD18SHPVSingleDose",
  "version" : "0.2.0",
  "name" : "IMMZD18SHPVSingleDose",
  "title" : "IMMZ.D18.S.Single-dose schedule",
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
  "description" : "IMMZ.D18.S.Single-dose schedule\nAlternative single-dose schedule",
  "relatedArtifact" : [
    {
      "type" : "citation",
      "citation" : "WHO recommendations for routine immunization - summary tables (January 2025)"
    }
  ],
  "library" : [
    "http://smart.who.int/immunizations/Library/IMMZD18SHPVSingleDoseLogic"
  ],
  "action" : [
    {
      "title" : "Human papillomavirus (HPV) dose 1",
      "description" : "Provision of the HPV dose 1\nTrigger event: Child's birth\nTrigger pseudo: \nTrigger date: \"Date of birth\"\nCreate condition: HPV dose 1 should be provided if the client is older than 9 years of age.",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "Human papillomavirus (HPV) dose 1",
            "language" : "text/cql-identifier",
            "expression" : "Human papillomavirus (HPV) dose 1"
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
            "expression" : "Human papillomavirus (HPV) dose 1 Create"
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
      "title" : "HPV dose 2 (Immunocompromised or HIV-positive)",
      "description" : "Provision of the HPV dose 2 for individuals immunocompromised or infected with HIV\nTrigger event: First HPV dose from the primary series was administered and client's HIV status is positive or client is immunocompromised\nTrigger pseudo: Count of vaccines administered (where \"Vaccine type\" = \"HPV vaccines\") = 1 AND (\"HIV status\" = \"HIV-positive\" OR \"Immunocompromised\" = TRUE)\nTrigger date: \"Date and time of vaccination\" (where \"Vaccine type\" = \"HPV vaccines\")\nCreate condition: Individuals known to be immunocompromised or infected with HIV should receive at least two HPV vaccine doses.",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "HPV dose 2 (Immunocompromised or HIV-positive)",
            "language" : "text/cql-identifier",
            "expression" : "HPV dose 2 (Immunocompromised or HIV-positive)"
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
            "expression" : "HPV dose 2 (Immunocompromised or HIV-positive) Create"
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
      "title" : "HPV dose 3 (Immunocompromised or HIV-positive)",
      "description" : "Provision of the HPV dose 3 for individuals immunocompromised or infected with HIV\nTrigger event: Second HPV dose from the primary series was administered and client's HIV status is positive or client is immunocompromised\nTrigger pseudo: Count of vaccines administered (where \"Vaccine type\" = \"HPV vaccines\") = 2 AND (\"HIV status\" = \"HIV-positive\" OR \"Immunocompromised\" = TRUE)\nTrigger date: Latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"HPV vaccines\")\nCreate condition: Where possible, three HPV doses should be provided to individuals known to be immunocompromised or infected with HIV.",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "HPV dose 3 (Immunocompromised or HIV-positive)",
            "language" : "text/cql-identifier",
            "expression" : "HPV dose 3 (Immunocompromised or HIV-positive)"
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
            "expression" : "HPV dose 3 (Immunocompromised or HIV-positive) Create"
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
