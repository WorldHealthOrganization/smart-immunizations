# IMMZ.D18.S.Polio.Sequential IPV–bOPV schedule - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D18.S.Polio.Sequential IPV–bOPV schedule**

## PlanDefinition: IMMZ.D18.S.Polio.Sequential IPV–bOPV schedule 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/PlanDefinition/IMMZD18SPolioSequentialIPVbOPV | *Version*:0.2.0 |
| Draft as of 2025-11-25 | *Computable Name*:IMMZD18SPolioSequentialIPVbOPV |

 
IMMZ.D18.S.Polio.Sequential IPV–bOPV schedule Sequential bivalent oral polio vaccine (bOPV)–inactivated polio vaccine (IPV) schedule 

* **Actions:**: **Url:**
  * : [IMMZ.D18.S.Polio.Sequential IPV–bOPV schedule](PlanDefinition-IMMZD18SPolioSequentialIPVbOPV.md)
* **Actions:**: **Version:**
  * : 0.2.0
* **Actions:**: **Title:**
  * : IMMZ.D18.S.Polio.Sequential IPV–bOPV schedule
* **Actions:**: **Status:**
  * : draft
* **Actions:**: **Date:**
  * : 2025-11-25 19:41:02+0000
* **Actions:**: **Publisher:**
  * : WHO
* **Actions:**: **Description:**
  * : IMMZ.D18.S.Polio.Sequential IPV–bOPV schedule Sequential bivalent oral polio vaccine (bOPV)–inactivated polio vaccine (IPV) schedule
* **Actions:**: **Knowledge Capability:**
  * : computable
* **Actions:**: **Libraries:**
  * : 
| |
| :--- |
| [IMMZD18SPolioSequentialIPVbOPVLogic](Library-IMMZD18SPolioSequentialIPVbOPVLogic.md) |




## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "IMMZD18SPolioSequentialIPVbOPV",
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
  "url" : "http://smart.who.int/immunizations/PlanDefinition/IMMZD18SPolioSequentialIPVbOPV",
  "version" : "0.2.0",
  "name" : "IMMZD18SPolioSequentialIPVbOPV",
  "title" : "IMMZ.D18.S.Polio.Sequential IPV–bOPV schedule",
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
  "description" : "IMMZ.D18.S.Polio.Sequential IPV–bOPV schedule\nSequential bivalent oral polio vaccine (bOPV)–inactivated polio vaccine (IPV) schedule",
  "relatedArtifact" : [
    {
      "type" : "citation",
      "citation" : "WHO recommendations for routine immunization - summary tables (January 2025)"
    }
  ],
  "library" : [
    "http://smart.who.int/immunizations/Library/IMMZD18SPolioSequentialIPVbOPVLogic"
  ],
  "action" : [
    {
      "title" : "IPV dose 1",
      "description" : "Provision of IPV dose 1\nTrigger event: Child's birth\nTrigger pseudo: \nTrigger date: \"Date of birth\"\nCreate condition: For sequential IPV– bOPV schedules, WHO recommends that the first dose of IPV be given starting from 8 weeks of age with an interval of 4–8 weeks before administration of the second IPV dose.",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "IPV dose 1",
            "language" : "text/cql-identifier",
            "expression" : "IPV dose 1"
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
            "expression" : "IPV dose 1 Create"
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
      "title" : "IPV dose 2",
      "description" : "Provision of IPV dose 2\nTrigger event: First IPV dose from the primary series was administered\nTrigger pseudo: Count of vaccines administered (where \"Type of poliovirus dose\" = \"IPV\") = 1\nTrigger date: Latest \"Date and time of vaccination\" (where \"Type of poliovirus dose\" = \"IPV\")\nCreate condition: For sequential IPV– bOPV schedules, WHO recommends that the first dose of IPV be given starting from 8 weeks of age with an interval of 4–8 weeks before administration of the second IPV dose.",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "IPV dose 2",
            "language" : "text/cql-identifier",
            "expression" : "IPV dose 2"
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
            "expression" : "IPV dose 2 Create"
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
      "title" : "bOPV dose 1",
      "description" : "Provision of bOPV dose 1\nTrigger event: Second IPV dose from the primary series was administered\nTrigger pseudo: Count of vaccines administered (where \"Type of poliovirus dose\" = \"IPV\") = 2\nTrigger date: Latest \"Date and time of vaccination\" (where \"Type of poliovirus dose\" = \"IPV\")\nCreate condition: Where a sequential IPV–bOPV schedule is used, the initial administration of 2 doses of IPV should be followed by ≥2 doses of bOPV separated by 4–8 weeks depending on the risk of exposure to poliovirus in early childhood.",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "bOPV dose 1",
            "language" : "text/cql-identifier",
            "expression" : "bOPV dose 1"
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
            "expression" : "bOPV dose 1 Create"
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
      "title" : "bOPV dose 2",
      "description" : "Provision of bOPV dose 2\nTrigger event: First bOPV dose from the primary series was administered\nTrigger pseudo: Count of vaccines administered (where \"Type of poliovirus dose\" = \"bOPV\") = 1\nTrigger date: Latest \"Date and time of vaccination\" (where \"Type of poliovirus dose\" = \"bOPV\")\nCreate condition: Where a sequential IPV–bOPV schedule is used, the initial administration of 2 doses of IPV should be followed by ≥2 doses of bOPV separated by 4–8 weeks depending on the risk of exposure to poliovirus in early childhood.",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "bOPV dose 2",
            "language" : "text/cql-identifier",
            "expression" : "bOPV dose 2"
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
            "expression" : "bOPV dose 2 Create"
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
