# IMMZ.D5.DT.Varicella contraindications - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D5.DT.Varicella contraindications**

## PlanDefinition: IMMZ.D5.DT.Varicella contraindications 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/PlanDefinition/IMMZD5DTVaricellaContraindications | *Version*:0.2.0 |
| Draft as of 2025-11-25 | *Computable Name*:IMMZD5DTVaricellaContraindications |

 
IMMZ.D5.DT.Varicella contraindications IMMZ.D5.DT.Varicella contraindications 

* **Actions:**: **Url:**
  * : [IMMZ.D5.DT.Varicella contraindications](PlanDefinition-IMMZD5DTVaricellaContraindications.md)
* **Actions:**: **Version:**
  * : 0.2.0
* **Actions:**: **Title:**
  * : IMMZ.D5.DT.Varicella contraindications
* **Actions:**: **Status:**
  * : draft
* **Actions:**: **Date:**
  * : 2025-11-25 19:41:02+0000
* **Actions:**: **Publisher:**
  * : WHO
* **Actions:**: **Description:**
  * : IMMZ.D5.DT.Varicella contraindications IMMZ.D5.DT.Varicella contraindications
* **Actions:**: **Knowledge Capability:**
  * : computable
* **Actions:**: **Libraries:**
  * : 
| |
| :--- |
| [IMMZD5DTVaricellaContraindicationsLogic](Library-IMMZD5DTVaricellaContraindicationsLogic.md) |




## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "IMMZD5DTVaricellaContraindications",
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
  "url" : "http://smart.who.int/immunizations/PlanDefinition/IMMZD5DTVaricellaContraindications",
  "version" : "0.2.0",
  "name" : "IMMZD5DTVaricellaContraindications",
  "title" : "IMMZ.D5.DT.Varicella contraindications",
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
  "description" : "IMMZ.D5.DT.Varicella contraindications\nIMMZ.D5.DT.Varicella contraindications",
  "relatedArtifact" : [
    {
      "type" : "citation",
      "citation" : "WHO recommendations for routine immunization - summary tables (January 2025)"
    }
  ],
  "library" : [
    "http://smart.who.int/immunizations/Library/IMMZD5DTVaricellaContraindicationsLogic"
  ],
  "action" : [
    {
      "title" : "Check for contraindications before administering the vaccine(s) due",
      "description" : "Contraindication for Varicella immunization",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "Varicella vaccination is contraindicated",
            "language" : "text/cql-identifier",
            "expression" : "Varicella vaccination is contraindicated"
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
            "description" : "Draft Medication Request ID for Varicella dose",
            "language" : "text/cql-identifier",
            "expression" : "Draft Medication Request ID for Varicella dose"
          }
        },
        {
          "path" : "medication",
          "expression" : {
            "language" : "text/cql-expression",
            "expression" : "Concept { codes: { Code { system: 'http://smart.who.int/immunizations/CodeSystem/IMMZ.Z', code: 'DE22', display: 'Varicella-containing vaccines' } }, display: 'Varicella-containing vaccines' }"
          }
        }
      ]
    },
    {
      "title" : "Check for Guidance for the patient regarding IMMZ.D5.DT.Varicella contraindications.",
      "description" : "Show Guidance for the patient regarding IMMZ.D5.DT.Varicella contraindications.",
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
