# IMMZ.D2.DT.Yellow fever - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D2.DT.Yellow fever**

## PlanDefinition: IMMZ.D2.DT.Yellow fever 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/PlanDefinition/IMMZD2DTYellowfeverYellowFever | *Version*:0.2.0 |
| Draft as of 2025-11-25 | *Computable Name*:IMMZD2DTYellowfeverYellowFever |

 
IMMZ.D2.DT.Yellow fever IMMZ.D2.DT.Yellow fever 

* **Actions:**: **Url:**
  * : [IMMZ.D2.DT.Yellow fever](PlanDefinition-IMMZD2DTYellowfeverYellowFever.md)
* **Actions:**: **Version:**
  * : 0.2.0
* **Actions:**: **Title:**
  * : IMMZ.D2.DT.Yellow fever
* **Actions:**: **Status:**
  * : draft
* **Actions:**: **Date:**
  * : 2025-11-25 19:41:02+0000
* **Actions:**: **Publisher:**
  * : WHO
* **Actions:**: **Description:**
  * : IMMZ.D2.DT.Yellow fever IMMZ.D2.DT.Yellow fever
* **Actions:**: **Knowledge Capability:**
  * : computable
* **Actions:**: **Libraries:**
  * : 
| |
| :--- |
| [IMMZD2DTYellowfeverYellowFeverLogic](Library-IMMZD2DTYellowfeverYellowFeverLogic.md) |




## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "IMMZD2DTYellowfeverYellowFever",
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
  "url" : "http://smart.who.int/immunizations/PlanDefinition/IMMZD2DTYellowfeverYellowFever",
  "version" : "0.2.0",
  "name" : "IMMZD2DTYellowfeverYellowFever",
  "title" : "IMMZ.D2.DT.Yellow fever",
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
  "description" : "IMMZ.D2.DT.Yellow fever\nIMMZ.D2.DT.Yellow fever",
  "relatedArtifact" : [
    {
      "type" : "citation",
      "citation" : "WHO recommendations for routine immunization - summary tables (January 2025)"
    }
  ],
  "library" : [
    "http://smart.who.int/immunizations/Library/IMMZD2DTYellowfeverYellowFeverLogic"
  ],
  "action" : [
    {
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rationale",
          "valueMarkdown" : "In endemic countries, it is recommended that yellow fever vaccine be given to children aged \n9–12 months at the same time as the measles vaccine. Preventive mass vaccination campaigns are recommended \nfor inhabitants of areas at risk of yellow fever where there is low vaccination coverage.\nVaccination should be provided to everyone aged 9 months and older in any area with reported cases.\nVaccination should also be offered if the individual is travelling to and from at-risk areas, if not contraindicated.\nAs a general rule, any live vaccine may be given either simultaneously or at an interval of 4 weeks. Oral \npoliovirus vaccine may be given at any time in relation to yellow fever vaccination. "
        }
      ],
      "title" : "Determine if the client is due for Yellow fever.",
      "description" : "Determine if the client is due for Yellow fever vaccine according to the national immunization protocol.",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "Client is due for yellow fever vaccination",
            "language" : "text/cql-identifier",
            "expression" : "Client is due for yellow fever vaccination"
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
            "expression" : "Concept { codes: { Code { system: 'http://smart.who.int/immunizations/CodeSystem/IMMZ.Z', code: 'DE23', display: 'Yellow fever vaccines' } }, display: 'Yellow fever vaccines' }"
          }
        }
      ]
    },
    {
      "title" : "Check for Guidance for the patient regarding IMMZ.D2.DT.Yellow fever.",
      "description" : "Show Guidance for the patient regarding IMMZ.D2.DT.Yellow fever.",
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
