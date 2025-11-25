# IMMZ.D18.S.Typhoid.ViPS schedule - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D18.S.Typhoid.ViPS schedule**

## PlanDefinition: IMMZ.D18.S.Typhoid.ViPS schedule 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/PlanDefinition/IMMZD18STyphoidViPS | *Version*:0.2.0 |
| Draft as of 2025-11-25 | *Computable Name*:IMMZD18STyphoidViPS |

 
IMMZ.D18.S.Typhoid.ViPS schedule Unconjugated Vi polysaccharide (ViPS), 1 dose schedule 

* **Actions:**: **Url:**
  * : [IMMZ.D18.S.Typhoid.ViPS schedule](PlanDefinition-IMMZD18STyphoidViPS.md)
* **Actions:**: **Version:**
  * : 0.2.0
* **Actions:**: **Title:**
  * : IMMZ.D18.S.Typhoid.ViPS schedule
* **Actions:**: **Status:**
  * : draft
* **Actions:**: **Date:**
  * : 2025-11-25 19:41:02+0000
* **Actions:**: **Publisher:**
  * : WHO
* **Actions:**: **Description:**
  * : IMMZ.D18.S.Typhoid.ViPS schedule Unconjugated Vi polysaccharide (ViPS), 1 dose schedule
* **Actions:**: **Knowledge Capability:**
  * : computable
* **Actions:**: **Libraries:**
  * : 
| |
| :--- |
| [IMMZD18STyphoidViPSLogic](Library-IMMZD18STyphoidViPSLogic.md) |




## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "IMMZD18STyphoidViPS",
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
  "url" : "http://smart.who.int/immunizations/PlanDefinition/IMMZD18STyphoidViPS",
  "version" : "0.2.0",
  "name" : "IMMZD18STyphoidViPS",
  "title" : "IMMZ.D18.S.Typhoid.ViPS schedule",
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
  "description" : "IMMZ.D18.S.Typhoid.ViPS schedule\nUnconjugated Vi polysaccharide (ViPS), 1 dose schedule",
  "relatedArtifact" : [
    {
      "type" : "citation",
      "citation" : "WHO recommendations for routine immunization - summary tables (January 2025)"
    }
  ],
  "library" : [
    "http://smart.who.int/immunizations/Library/IMMZD18STyphoidViPSLogic"
  ],
  "action" : [
    {
      "title" : "Typhoid dose 1",
      "description" : "Provision of the typhoid ViPS dose 1\nTrigger event: Child's birth\nTrigger pseudo: \nTrigger date: \"Date of birth\"\nCreate condition: Typhoid dose 1 should be provided if the client's age is over 2 years, and the region recommends typhoid vaccination.",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "Typhoid dose 1",
            "language" : "text/cql-identifier",
            "expression" : "Typhoid dose 1"
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
            "expression" : "Typhoid dose 1 Create"
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
      "title" : "Typhoid booster dose(s)",
      "description" : "Provision of the typhoid ViPS booster dose\nTrigger event: The primary series has been completed\nTrigger pseudo: \"Completed the primary vaccination series\" = TRUE (where \"Vaccine type\" = \"Typhoid vaccines\")\nTrigger date: Latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Typhoid vaccines\")\nCreate condition: Revaccination is recommended every 3 years for ViPS.",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "Typhoid booster dose(s)",
            "language" : "text/cql-identifier",
            "expression" : "Typhoid booster dose(s)"
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
            "expression" : "Typhoid booster dose(s) Create"
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
