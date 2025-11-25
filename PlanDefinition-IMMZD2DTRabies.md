# IMMZ.D2.DT.Rabies - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D2.DT.Rabies**

## PlanDefinition: IMMZ.D2.DT.Rabies 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/PlanDefinition/IMMZD2DTRabies | *Version*:0.2.0 |
| Draft as of 2025-11-25 | *Computable Name*:IMMZD2DTRabies |

 
IMMZ.D2.DT.Rabies Pre-exposure prophylaxis (PrEP), 2-dose scheme; high risk of rabies virus exposure 

* **Actions:**: **Url:**
  * : [IMMZ.D2.DT.Rabies](PlanDefinition-IMMZD2DTRabies.md)
* **Actions:**: **Version:**
  * : 0.2.0
* **Actions:**: **Title:**
  * : IMMZ.D2.DT.Rabies
* **Actions:**: **Status:**
  * : draft
* **Actions:**: **Date:**
  * : 2025-11-25 19:41:02+0000
* **Actions:**: **Publisher:**
  * : WHO
* **Actions:**: **Description:**
  * : IMMZ.D2.DT.Rabies Pre-exposure prophylaxis (PrEP), 2-dose scheme; high risk of rabies virus exposure
* **Actions:**: **Knowledge Capability:**
  * : computable
* **Actions:**: **Libraries:**
  * : 
| |
| :--- |
| [IMMZD2DTRabiesLogic](Library-IMMZD2DTRabiesLogic.md) |




## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "IMMZD2DTRabies",
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
  "url" : "http://smart.who.int/immunizations/PlanDefinition/IMMZD2DTRabies",
  "version" : "0.2.0",
  "name" : "IMMZD2DTRabies",
  "title" : "IMMZ.D2.DT.Rabies",
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
  "description" : "IMMZ.D2.DT.Rabies\nPre-exposure prophylaxis (PrEP), 2-dose scheme; high risk of rabies virus exposure",
  "relatedArtifact" : [
    {
      "type" : "citation",
      "citation" : "WHO recommendations for routine immunization - summary tables (January 2025)"
    }
  ],
  "library" : [
    "http://smart.who.int/immunizations/Library/IMMZD2DTRabiesLogic"
  ],
  "action" : [
    {
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rationale",
          "valueMarkdown" : "The schedule is for a 2-site intradermal vaccine administered on days 0 and 7. \nIf intramuscular administration is used, WHO recommends a 1-site intramuscular vaccine administration on days 0 and 7.\nNote: This PrEP dose is recommended for individuals at high risk of rabies virus exposure. These include subpopulations \nin highly endemic settings with limited access to timely and adequate PrEP, individuals at occupational risk and travellers \nwho may be at risk of exposure. WHO recommendations apply only to inactivated modern, concentrated, purified cell culture and \nembryonated egg-based rabies vaccines (CCEEVs).\nPrEP schedule: 2-site intradermal vaccine administered on days 0 and 7. If intramuscular administration is used, WHO \nrecommends a 1-site intramuscular vaccine administration on days 0 and 7.\nIf any doses are delayed, vaccination should be resumed, not restarted. A change in the route of administration or in \nvaccine product during a course is acceptable if such a change is unavoidable.\nThe schedule is for a 2-site intradermal vaccine administered on days 0 and 7. If intramuscular administration is used, \nWHO recommends a 1-site intramuscular vaccine administration on days 0 and 7."
        }
      ],
      "title" : "Determine if the client is due for Rabies.",
      "description" : "Determine if the client is due for Rabies vaccine according to the national immunization protocol.\nPre-exposure prophylaxis (PrEP), 2-dose scheme; high risk of rabies virus exposure",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "Client is due for rabies vaccination",
            "language" : "text/cql-identifier",
            "expression" : "Client is due for rabies vaccination"
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
            "expression" : "Concept { codes: { Code { system: 'http://smart.who.int/immunizations/CodeSystem/IMMZ.Z', code: 'DE15', display: 'Rabies vaccines' } }, display: 'Rabies vaccines' }"
          }
        }
      ]
    },
    {
      "title" : "Check for Guidance for the patient regarding IMMZ.D2.DT.Rabies.",
      "description" : "Show Guidance for the patient regarding IMMZ.D2.DT.Rabies.",
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
