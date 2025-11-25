# IMMZ.D2.DT.Rotavirus - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D2.DT.Rotavirus**

## PlanDefinition: IMMZ.D2.DT.Rotavirus 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/PlanDefinition/IMMZD2DTRotavirus | *Version*:0.2.0 |
| Draft as of 2025-11-25 | *Computable Name*:IMMZD2DTRotavirus |

 
IMMZ.D2.DT.Rotavirus IMMZ.D2.DT.Rotavirus 

* **Actions:**: **Url:**
  * : [IMMZ.D2.DT.Rotavirus](PlanDefinition-IMMZD2DTRotavirus.md)
* **Actions:**: **Version:**
  * : 0.2.0
* **Actions:**: **Title:**
  * : IMMZ.D2.DT.Rotavirus
* **Actions:**: **Status:**
  * : draft
* **Actions:**: **Date:**
  * : 2025-11-25 19:41:02+0000
* **Actions:**: **Publisher:**
  * : WHO
* **Actions:**: **Description:**
  * : IMMZ.D2.DT.Rotavirus IMMZ.D2.DT.Rotavirus
* **Actions:**: **Knowledge Capability:**
  * : computable
* **Actions:**: **Libraries:**
  * : 
| |
| :--- |
| [IMMZD2DTRotavirusLogic](Library-IMMZD2DTRotavirusLogic.md) |




## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "IMMZD2DTRotavirus",
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
  "url" : "http://smart.who.int/immunizations/PlanDefinition/IMMZD2DTRotavirus",
  "version" : "0.2.0",
  "name" : "IMMZD2DTRotavirus",
  "title" : "IMMZ.D2.DT.Rotavirus",
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
  "description" : "IMMZ.D2.DT.Rotavirus\nIMMZ.D2.DT.Rotavirus",
  "relatedArtifact" : [
    {
      "type" : "citation",
      "citation" : "WHO recommendations for routine immunization - summary tables (January 2025)"
    }
  ],
  "library" : [
    "http://smart.who.int/immunizations/Library/IMMZD2DTRotavirusLogic"
  ],
  "action" : [
    {
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rationale",
          "valueMarkdown" : "WHO recommends that the first dose of rotavirus vaccine be administered as soon as possible after 6 weeks of age.\n  A minimum interval of 4 weeks should be maintained between doses.  Note: The rotavirus vaccination series for each child should \n  be completed with the same product whenever feasible. However, if the product used for a prior dose is unavailable or unknown, \n  the series should be completed with any available licensed product."
        }
      ],
      "title" : "Determine if the client is due for Rotavirus.",
      "description" : "Determine if the client is due for Rotavirus vaccine according to the national immunization protocol.",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "Client is due for rotavirus vaccination",
            "language" : "text/cql-identifier",
            "expression" : "Client is due for rotavirus vaccination"
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
            "expression" : "Concept { codes: { Code { system: 'http://smart.who.int/immunizations/CodeSystem/IMMZ.Z', code: 'DE16', display: 'Rotavirus vaccines' } }, display: 'Rotavirus vaccines' }"
          }
        }
      ]
    },
    {
      "title" : "Check for Guidance for the patient regarding IMMZ.D2.DT.Rotavirus.",
      "description" : "Show Guidance for the patient regarding IMMZ.D2.DT.Rotavirus.",
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
