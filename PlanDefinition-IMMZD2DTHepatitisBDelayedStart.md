# IMMZ.D2.DT.Hepatitis B.Delayed start - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D2.DT.Hepatitis B.Delayed start**

## PlanDefinition: IMMZ.D2.DT.Hepatitis B.Delayed start 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/PlanDefinition/IMMZD2DTHepatitisBDelayedStart | *Version*:0.2.0 |
| Draft as of 2025-11-25 | *Computable Name*:IMMZD2DTHepatitisBDelayedStart |

 
IMMZ.D2.DT.Hepatitis B.Delayed start 3-dose schedule (no birth dose + 3 doses), delayed start 

* **Actions:**: **Url:**
  * : [IMMZ.D2.DT.Hepatitis B.Delayed start](PlanDefinition-IMMZD2DTHepatitisBDelayedStart.md)
* **Actions:**: **Version:**
  * : 0.2.0
* **Actions:**: **Title:**
  * : IMMZ.D2.DT.Hepatitis B.Delayed start
* **Actions:**: **Status:**
  * : draft
* **Actions:**: **Date:**
  * : 2025-11-25 19:41:02+0000
* **Actions:**: **Publisher:**
  * : WHO
* **Actions:**: **Description:**
  * : IMMZ.D2.DT.Hepatitis B.Delayed start 3-dose schedule (no birth dose + 3 doses), delayed start
* **Actions:**: **Knowledge Capability:**
  * : computable
* **Actions:**: **Libraries:**
  * : 
| |
| :--- |
| [IMMZD2DTHepatitisBDelayedStartLogic](Library-IMMZD2DTHepatitisBDelayedStartLogic.md) |




## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "IMMZD2DTHepatitisBDelayedStart",
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
  "url" : "http://smart.who.int/immunizations/PlanDefinition/IMMZD2DTHepatitisBDelayedStart",
  "version" : "0.2.0",
  "name" : "IMMZD2DTHepatitisBDelayedStart",
  "title" : "IMMZ.D2.DT.Hepatitis B.Delayed start",
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
  "description" : "IMMZ.D2.DT.Hepatitis B.Delayed start\n3-dose schedule (no birth dose + 3 doses), delayed start",
  "relatedArtifact" : [
    {
      "type" : "citation",
      "citation" : "WHO recommendations for routine immunization - summary tables (January 2025)"
    }
  ],
  "library" : [
    "http://smart.who.int/immunizations/Library/IMMZD2DTHepatitisBDelayedStartLogic"
  ],
  "action" : [
    {
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rationale",
          "valueMarkdown" : "If delayed or interrupted scheduling of vaccination for children, adolescents and adults, 3 doses are recommended, \n  with the second dose administered at least 1 month after the first, and the third dose 6 months after the first dose. If the \n  vaccination schedule is interrupted, it is not necessary to restart the vaccine series."
        }
      ],
      "title" : "Determine if the client is due for a hepatitis B vaccination according to the national immunization schedule",
      "description" : "Determine if the client is due for a hepatitis B vaccination according to the national immunization schedule\n3-dose schedule (no birth dose + 3 doses), delayed start",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "Client is due for hepatitis B vaccination",
            "language" : "text/cql-identifier",
            "expression" : "Client is due for hepatitis B vaccination"
          }
        }
      ],
      "definitionCanonical" : "http://smart.who.int/immunizations/ActivityDefinition/IMMZD2DTMR",
      "dynamicValue" : [
        {
          "path" : "status",
          "expression" : {
            "language" : "text/cql-expression",
            "expression" : "'draft'"
          }
        },
        {
          "path" : "intent",
          "expression" : {
            "language" : "text/cql-expression",
            "expression" : "'proposal'"
          }
        },
        {
          "path" : "medication",
          "expression" : {
            "language" : "text/cql-expression",
            "expression" : "Concept { codes: { Code { system: 'http://smart.who.int/immunizations/CodeSystem/IMMZ.Z', code: 'DE6', display: 'Hepatitis B-containing vaccines' } }, display: 'Hepatitis B-containing vaccines' }"
          }
        }
      ]
    },
    {
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rationale",
          "valueMarkdown" : "If delayed or interrupted scheduling of vaccination for children, adolescents and adults, 3 doses are recommended, \n  with the second dose administered at least 1 month after the first, and the third dose 6 months after the first dose. If the \n  vaccination schedule is interrupted, it is not necessary to restart the vaccine series."
        }
      ],
      "title" : "Determine if the client is due for a hepatitis B vaccination according to the national immunization schedule",
      "description" : "Determine if the client is due for a hepatitis B vaccination according to the national immunization schedule\n3-dose schedule (no birth dose + 3 doses), delayed start",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "Client is due for a hepatitis B vaccination",
            "language" : "text/cql-identifier",
            "expression" : "Client is due for a hepatitis B vaccination"
          }
        }
      ],
      "definitionCanonical" : "http://smart.who.int/immunizations/ActivityDefinition/IMMZD2DTMR",
      "dynamicValue" : [
        {
          "path" : "status",
          "expression" : {
            "language" : "text/cql-expression",
            "expression" : "'draft'"
          }
        },
        {
          "path" : "intent",
          "expression" : {
            "language" : "text/cql-expression",
            "expression" : "'proposal'"
          }
        },
        {
          "path" : "medication",
          "expression" : {
            "language" : "text/cql-expression",
            "expression" : "Concept { codes: { Code { system: 'http://smart.who.int/immunizations/CodeSystem/IMMZ.Z', code: 'DE6', display: 'Hepatitis B-containing vaccines' } }, display: 'Hepatitis B-containing vaccines' }"
          }
        }
      ]
    },
    {
      "title" : "Check for Guidance for the patient regarding IMMZ.D2.DT.Hepatitis B.Delayed start.",
      "description" : "Show Guidance for the patient regarding IMMZ.D2.DT.Hepatitis B.Delayed start.",
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
