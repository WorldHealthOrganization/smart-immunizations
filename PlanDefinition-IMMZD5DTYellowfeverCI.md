# IMMZ.D5.DT.Yellow fever contraindications - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D5.DT.Yellow fever contraindications**

## PlanDefinition: IMMZ.D5.DT.Yellow fever contraindications 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/PlanDefinition/IMMZD5DTYellowfeverCI | *Version*:0.2.0 |
| Draft as of 2025-11-14 | *Computable Name*:IMMZD5DTYellowfeverCI |

 
IMMZ.D5.DT.Yellow fever contraindications Age 

* **Actions:**: **Url:**
  * : [IMMZ.D5.DT.Yellow fever contraindications](PlanDefinition-IMMZD5DTYellowfeverCI.md)
* **Actions:**: **Version:**
  * : 0.2.0
* **Actions:**: **Title:**
  * : IMMZ.D5.DT.Yellow fever contraindications
* **Actions:**: **Status:**
  * : draft
* **Actions:**: **Date:**
  * : 2025-11-14 22:57:55+0000
* **Actions:**: **Publisher:**
  * : WHO
* **Actions:**: **Description:**
  * : IMMZ.D5.DT.Yellow fever contraindications Age
* **Actions:**: **Knowledge Capability:**
  * : computable
* **Actions:**: **Libraries:**
  * : 
| |
| :--- |
| [IMMZD5DTYellowfeverCILogic](Library-IMMZD5DTYellowfeverCILogic.md) |




## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "IMMZD5DTYellowfeverCI",
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
  "url" : "http://smart.who.int/immunizations/PlanDefinition/IMMZD5DTYellowfeverCI",
  "version" : "0.2.0",
  "name" : "IMMZD5DTYellowfeverCI",
  "title" : "IMMZ.D5.DT.Yellow fever contraindications",
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
  "date" : "2025-11-14T22:57:55+00:00",
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
  "description" : "IMMZ.D5.DT.Yellow fever contraindications\nAge",
  "relatedArtifact" : [
    {
      "type" : "citation",
      "citation" : "WHO recommendations for routine immunization - summary tables (January 2025)"
    }
  ],
  "library" : [
    "http://smart.who.int/immunizations/Library/IMMZD5DTYellowfeverCILogic"
  ],
  "action" : [
    {
      "title" : "Check for contraindications before administering the vaccine(s) due",
      "description" : "Contraindication for Yellow fever immunization",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "Yellow fever vaccination is contraindicated",
            "language" : "text/cql-identifier",
            "expression" : "Yellow fever vaccination is contraindicated"
          }
        }
      ],
      "type" : {
        "coding" : [
          {
            "system" : "http://terminology.hl7.org/CodeSystem/action-type",
            "code" : "update"
          }
        ]
      },
      "definitionCanonical" : "http://smart.who.int/immunizations/ActivityDefinition/IMMZD5DTMR",
      "dynamicValue" : [
        {
          "path" : "id",
          "expression" : {
            "description" : "Draft Medication Request ID for Yellow fever dose",
            "language" : "text/cql-identifier",
            "expression" : "Draft Medication Request ID for Yellow fever dose"
          }
        },
        {
          "path" : "medication",
          "expression" : {
            "language" : "text/cql-expression",
            "expression" : "Concept { codes: { Code { system: 'http://smart.who.int/immunizations/CodeSystem/IMMZ.Z', code: 'DE23', display: 'Yellow fever vaccines' } }, display: 'Yellow fever vaccines' }"
          }
        }
      ]
    },
    {
      "title" : "Check for Guidance for the patient regarding IMMZ.D5.DT.Yellow fever contraindications.",
      "description" : "Show Guidance for the patient regarding IMMZ.D5.DT.Yellow fever contraindications.",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "Has Guidance",
            "language" : "text/cql-identifier",
            "expression" : "Has Guidance"
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
            "expression" : "Guidance"
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
