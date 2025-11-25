# IMMZ.D18.S.Typhoid.Ty21a schedule - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D18.S.Typhoid.Ty21a schedule**

## PlanDefinition: IMMZ.D18.S.Typhoid.Ty21a schedule 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/PlanDefinition/IMMZD18STyphoidTy21a | *Version*:0.2.0 |
| Draft as of 2025-11-25 | *Computable Name*:IMMZD18STyphoidTy21a |

 
IMMZ.D18.S.Typhoid.Ty21a schedule Live attenuated Ty21a vaccine, 3-dose schedule 

* **Actions:**: **Url:**
  * : [IMMZ.D18.S.Typhoid.Ty21a schedule](PlanDefinition-IMMZD18STyphoidTy21a.md)
* **Actions:**: **Version:**
  * : 0.2.0
* **Actions:**: **Title:**
  * : IMMZ.D18.S.Typhoid.Ty21a schedule
* **Actions:**: **Status:**
  * : draft
* **Actions:**: **Date:**
  * : 2025-11-25 19:41:02+0000
* **Actions:**: **Publisher:**
  * : WHO
* **Actions:**: **Description:**
  * : IMMZ.D18.S.Typhoid.Ty21a schedule Live attenuated Ty21a vaccine, 3-dose schedule
* **Actions:**: **Knowledge Capability:**
  * : computable
* **Actions:**: **Libraries:**
  * : 
| |
| :--- |
| [IMMZD18STyphoidTy21aLogic](Library-IMMZD18STyphoidTy21aLogic.md) |




## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "IMMZD18STyphoidTy21a",
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
  "url" : "http://smart.who.int/immunizations/PlanDefinition/IMMZD18STyphoidTy21a",
  "version" : "0.2.0",
  "name" : "IMMZD18STyphoidTy21a",
  "title" : "IMMZ.D18.S.Typhoid.Ty21a schedule",
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
  "description" : "IMMZ.D18.S.Typhoid.Ty21a schedule\nLive attenuated Ty21a vaccine, 3-dose schedule",
  "relatedArtifact" : [
    {
      "type" : "citation",
      "citation" : "WHO recommendations for routine immunization - summary tables (January 2025)"
    }
  ],
  "library" : [
    "http://smart.who.int/immunizations/Library/IMMZD18STyphoidTy21aLogic"
  ],
  "action" : [
    {
      "title" : "Typhoid Ty21a primary series",
      "description" : "Provision of the typhoid Ty21a, 3-dose oral primary series immunization\nTrigger event: Child's birth\nTrigger pseudo: \nTrigger date: \"Date of birth\"\nCreate condition: Ty21a – 3-doses to be administered orally every second day from 6 years of age.",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "Typhoid Ty21a primary series",
            "language" : "text/cql-identifier",
            "expression" : "Typhoid Ty21a primary series"
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
            "expression" : "Typhoid Ty21a primary series Create"
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
      "title" : "Typhoid booster dose(s) repeat 3-doses series",
      "description" : "Provision of the typhoid booster dose(s): revaccination\nTrigger event: The primary series has been completed\nTrigger pseudo: \"Completed the primary vaccination series\" = TRUE (where \"Vaccine type\" = \"Typhoid vaccines\")\nTrigger date: Latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Typhoid vaccines\")\nCreate condition: Revaccination (3-doses) is recommended every 3–7 years for Ty21a.",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "Typhoid booster dose(s) repeat 3-doses series",
            "language" : "text/cql-identifier",
            "expression" : "Typhoid booster dose(s) repeat 3-doses series"
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
            "expression" : "Typhoid booster dose(s) repeat 3-doses series Create"
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
