# IMMZ.D18.S.Rabies schedule - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D18.S.Rabies schedule**

## PlanDefinition: IMMZ.D18.S.Rabies schedule 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/PlanDefinition/IMMZD18SRabiesPrEP | *Version*:0.2.0 |
| Draft as of 2025-11-21 | *Computable Name*:IMMZD18SRabiesPrEP |

 
IMMZ.D18.S.Rabies schedule Rabies schedule (2-dose scheme) 

* **Actions:**: **Url:**
  * : [IMMZ.D18.S.Rabies schedule](PlanDefinition-IMMZD18SRabiesPrEP.md)
* **Actions:**: **Version:**
  * : 0.2.0
* **Actions:**: **Title:**
  * : IMMZ.D18.S.Rabies schedule
* **Actions:**: **Status:**
  * : draft
* **Actions:**: **Date:**
  * : 2025-11-21 17:14:08+0000
* **Actions:**: **Publisher:**
  * : WHO
* **Actions:**: **Description:**
  * : IMMZ.D18.S.Rabies schedule Rabies schedule (2-dose scheme)
* **Actions:**: **Knowledge Capability:**
  * : computable
* **Actions:**: **Libraries:**
  * : 
| |
| :--- |
| [IMMZD18SRabiesPrEPLogic](Library-IMMZD18SRabiesPrEPLogic.md) |




## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "IMMZD18SRabiesPrEP",
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
  "url" : "http://smart.who.int/immunizations/PlanDefinition/IMMZD18SRabiesPrEP",
  "version" : "0.2.0",
  "name" : "IMMZD18SRabiesPrEP",
  "title" : "IMMZ.D18.S.Rabies schedule",
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
  "description" : "IMMZ.D18.S.Rabies schedule\nRabies schedule (2-dose scheme)",
  "relatedArtifact" : [
    {
      "type" : "citation",
      "citation" : "WHO recommendations for routine immunization - summary tables (January 2025)"
    }
  ],
  "library" : [
    "http://smart.who.int/immunizations/Library/IMMZD18SRabiesPrEPLogic"
  ],
  "action" : [
    {
      "title" : "Rabies dose 1",
      "description" : "Provision of rabies dose 1\nTrigger event: To be determined by Member States\nTrigger date: To be determined by Member States\nCreate condition: Rabies dose 1 should be provided if the client is at a high risk of rabies virus exposure",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "Rabies dose 1",
            "language" : "text/cql-identifier",
            "expression" : "Rabies dose 1"
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
            "expression" : "Rabies dose 1 Create"
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
      "title" : "Rabies dose 2",
      "description" : "Provision of rabies dose 2\nTrigger event: First rabies dose from the primary series was administered\nCount of vaccines administered (where \"Vaccine type\" = \"Rabies vaccines\" and \"Type of dose\" = \"Primary series\") = 1\nTrigger date: \"Date and time of vaccination\" (where \"Vaccine type\" = \"Rabies vaccines\")\nCreate condition: Rabies dose 2 should be provided if previous dose was given more than 1 week ago",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "Rabies dose 2",
            "language" : "text/cql-identifier",
            "expression" : "Rabies dose 2"
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
            "expression" : "Rabies dose 2 Create"
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
