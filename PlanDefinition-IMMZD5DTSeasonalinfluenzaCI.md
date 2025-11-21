# IMMZ.D5.DT.Seasonal influenza contraindications - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D5.DT.Seasonal influenza contraindications**

## PlanDefinition: IMMZ.D5.DT.Seasonal influenza contraindications 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/PlanDefinition/IMMZD5DTSeasonalinfluenzaCI | *Version*:0.2.0 |
| Draft as of 2025-11-21 | *Computable Name*:IMMZD5DTSeasonalinfluenzaCI |

 
IMMZ.D5.DT.Seasonal influenza contraindications Potential contraindications 

* **Actions:**: **Url:**
  * : [IMMZ.D5.DT.Seasonal influenza contraindications](PlanDefinition-IMMZD5DTSeasonalinfluenzaCI.md)
* **Actions:**: **Version:**
  * : 0.2.0
* **Actions:**: **Title:**
  * : IMMZ.D5.DT.Seasonal influenza contraindications
* **Actions:**: **Status:**
  * : draft
* **Actions:**: **Date:**
  * : 2025-11-21 17:14:08+0000
* **Actions:**: **Publisher:**
  * : WHO
* **Actions:**: **Description:**
  * : IMMZ.D5.DT.Seasonal influenza contraindications Potential contraindications
* **Actions:**: **Knowledge Capability:**
  * : computable
* **Actions:**: **Libraries:**
  * : 
| |
| :--- |
| [IMMZD5DTSeasonalinfluenzaCILogic](Library-IMMZD5DTSeasonalinfluenzaCILogic.md) |




## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "IMMZD5DTSeasonalinfluenzaCI",
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
  "url" : "http://smart.who.int/immunizations/PlanDefinition/IMMZD5DTSeasonalinfluenzaCI",
  "version" : "0.2.0",
  "name" : "IMMZD5DTSeasonalinfluenzaCI",
  "title" : "IMMZ.D5.DT.Seasonal influenza contraindications",
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
  "description" : "IMMZ.D5.DT.Seasonal influenza contraindications\nPotential contraindications",
  "relatedArtifact" : [
    {
      "type" : "citation",
      "citation" : "WHO recommendations for routine immunization - summary tables (January 2025)"
    }
  ],
  "library" : [
    "http://smart.who.int/immunizations/Library/IMMZD5DTSeasonalinfluenzaCILogic"
  ],
  "action" : [
    {
      "title" : "Check for Guidance for the patient regarding IMMZ.D5.DT.Seasonal influenza contraindications.",
      "description" : "Show Guidance for the patient regarding IMMZ.D5.DT.Seasonal influenza contraindications.",
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
