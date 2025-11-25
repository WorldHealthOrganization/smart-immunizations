# IMMZ.D18.S.HPV.2-dose schedule - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D18.S.HPV.2-dose schedule**

## PlanDefinition: IMMZ.D18.S.HPV.2-dose schedule 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/PlanDefinition/IMMZD18SHPV2Doses | *Version*:0.2.0 |
| Draft as of 2025-11-25 | *Computable Name*:IMMZD18SHPV2Doses |

 
IMMZ.D18.S.HPV.2-dose schedule 2-dose schedule 

* **Actions:**: **Url:**
  * : [IMMZ.D18.S.HPV.2-dose schedule](PlanDefinition-IMMZD18SHPV2Doses.md)
* **Actions:**: **Version:**
  * : 0.2.0
* **Actions:**: **Title:**
  * : IMMZ.D18.S.HPV.2-dose schedule
* **Actions:**: **Status:**
  * : draft
* **Actions:**: **Date:**
  * : 2025-11-25 19:41:02+0000
* **Actions:**: **Publisher:**
  * : WHO
* **Actions:**: **Description:**
  * : IMMZ.D18.S.HPV.2-dose schedule 2-dose schedule
* **Actions:**: **Knowledge Capability:**
  * : computable
* **Actions:**: **Libraries:**
  * : 
| |
| :--- |
| [IMMZD18SHPV2DosesLogic](Library-IMMZD18SHPV2DosesLogic.md) |




## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "IMMZD18SHPV2Doses",
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
  "url" : "http://smart.who.int/immunizations/PlanDefinition/IMMZD18SHPV2Doses",
  "version" : "0.2.0",
  "name" : "IMMZD18SHPV2Doses",
  "title" : "IMMZ.D18.S.HPV.2-dose schedule",
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
  "description" : "IMMZ.D18.S.HPV.2-dose schedule\n2-dose schedule",
  "relatedArtifact" : [
    {
      "type" : "citation",
      "citation" : "WHO recommendations for routine immunization - summary tables (January 2025)"
    }
  ],
  "library" : [
    "http://smart.who.int/immunizations/Library/IMMZD18SHPV2DosesLogic"
  ],
  "action" : [
    {
      "title" : "HPV dose 1",
      "description" : "Provision of the HPV dose 1\nTrigger event: Child's birth when client's biological sex is female\nTrigger pseudo: Child's birth AND \"Sex\" = \"Female\"\nTrigger date: \"Date of birth\"\nCreate condition: HPV dose 1 should be provided if the client is female and older than 9 years of age.",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "HPV dose 1",
            "language" : "text/cql-identifier",
            "expression" : "HPV dose 1"
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
            "expression" : "HPV dose 1 Create"
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
      "title" : "HPV dose 2",
      "description" : "Provision of the HPV dose 2\nTrigger event: First HPV dose from the primary series was administered\nTrigger pseudo: Count of vaccines administered (where \"Vaccine type\" = \"HPV vaccines\" and \"Type of dose\" = \"Primary series\") = 1\nTrigger date: \"Date and time of vaccination\" (where \"Vaccine type\" = \"HPV vaccines\")\nCreate condition: HPV dose 2 should be provided if dose 1 was given 6 months ago.",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "HPV dose 2",
            "language" : "text/cql-identifier",
            "expression" : "HPV dose 2"
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
            "expression" : "HPV dose 2 Create"
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
      "title" : "HPV dose 3 (immunocompromised or HIV-positive)",
      "description" : "Provision of the HPV dose 3 for individuals immunocompromised or infected with HIV\nTrigger event: Second HPV dose from the primary series was administered and client's HIV status is positive or client is immunocompromised\nTrigger pseudo: Count of vaccines administered (where \"Vaccine type\" = \"HPV vaccines\" and \"Type of dose\" = \"Primary series\") = 2 AND (\"HIV status\" = \"HIV-positive\" OR \"Immunocompromised\" = TRUE)\nTrigger date: Latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"HPV vaccines\")\nCreate condition: Where possible, three HPV doses should be provided to individuals known to be immunocompromised or infected with HIV.",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "HPV dose 3 (immunocompromised or HIV-positive)",
            "language" : "text/cql-identifier",
            "expression" : "HPV dose 3 (immunocompromised or HIV-positive)"
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
            "expression" : "HPV dose 3 (immunocompromised or HIV-positive) Create"
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
