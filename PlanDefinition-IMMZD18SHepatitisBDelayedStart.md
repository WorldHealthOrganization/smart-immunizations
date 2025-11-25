# IMMZ.D18.S.Hepatitis B.Delayed start schedule - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D18.S.Hepatitis B.Delayed start schedule**

## PlanDefinition: IMMZ.D18.S.Hepatitis B.Delayed start schedule 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/PlanDefinition/IMMZD18SHepatitisBDelayedStart | *Version*:0.2.0 |
| Draft as of 2025-11-25 | *Computable Name*:IMMZD18SHepatitisBDelayedStart |

 
IMMZ.D18.S.Hepatitis B.Delayed start schedule 3-dose schedule (no birth dose + 3 doses), delayed start 

* **Actions:**: **Url:**
  * : [IMMZ.D18.S.Hepatitis B.Delayed start schedule](PlanDefinition-IMMZD18SHepatitisBDelayedStart.md)
* **Actions:**: **Version:**
  * : 0.2.0
* **Actions:**: **Title:**
  * : IMMZ.D18.S.Hepatitis B.Delayed start schedule
* **Actions:**: **Status:**
  * : draft
* **Actions:**: **Date:**
  * : 2025-11-25 19:41:02+0000
* **Actions:**: **Publisher:**
  * : WHO
* **Actions:**: **Description:**
  * : IMMZ.D18.S.Hepatitis B.Delayed start schedule 3-dose schedule (no birth dose + 3 doses), delayed start
* **Actions:**: **Knowledge Capability:**
  * : computable
* **Actions:**: **Libraries:**
  * : 
| |
| :--- |
| [IMMZD18SHepatitisBDelayedStartLogic](Library-IMMZD18SHepatitisBDelayedStartLogic.md) |




## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "IMMZD18SHepatitisBDelayedStart",
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
  "url" : "http://smart.who.int/immunizations/PlanDefinition/IMMZD18SHepatitisBDelayedStart",
  "version" : "0.2.0",
  "name" : "IMMZD18SHepatitisBDelayedStart",
  "title" : "IMMZ.D18.S.Hepatitis B.Delayed start schedule",
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
  "description" : "IMMZ.D18.S.Hepatitis B.Delayed start schedule\n3-dose schedule (no birth dose + 3 doses), delayed start",
  "relatedArtifact" : [
    {
      "type" : "citation",
      "citation" : "WHO recommendations for routine immunization - summary tables (January 2025)"
    }
  ],
  "library" : [
    "http://smart.who.int/immunizations/Library/IMMZD18SHepatitisBDelayedStartLogic"
  ],
  "action" : [
    {
      "title" : "Hepatitis B dose 1",
      "description" : "Provision of hepatitis B dose 1\nTrigger event: Child's birth\nTrigger pseudo: \nTrigger date: \"Date of birth\"\nCreate condition: If delayed or interrupted scheduling of vaccination for children, adolescents and adults, 3 doses are recommended, with the second dose administered at least 1 month after the first, and the third dose 6 months after the first dose.",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "Hepatitis B dose 1",
            "language" : "text/cql-identifier",
            "expression" : "Hepatitis B dose 1"
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
            "expression" : "Hepatitis B dose 1 Create"
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
      "title" : "Hepatitis B dose 2",
      "description" : "Provision of hepatitis B dose 2\nTrigger event: First hepatitis B dose was administered\nTrigger pseudo: Count of vaccines administered (where \"Vaccine type\" = \"Hepatitis B-containing vaccines\") = 1\nTrigger date: Latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Hepatitis B-containing vaccines\")\nCreate condition: If delayed or interrupted scheduling of vaccination for children, adolescents and adults, 3 doses are recommended, with the second dose administered at least 1 month after the first, and the third dose 6 months after the first dose.",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "Hepatitis B dose 2",
            "language" : "text/cql-identifier",
            "expression" : "Hepatitis B dose 2"
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
            "expression" : "Hepatitis B dose 2 Create"
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
      "title" : "Hepatitis B dose 3",
      "description" : "Provision of hepatitis B dose 3\nTrigger event: Second hepatitis B dose was administered\nTrigger pseudo: Count of vaccines administered (where \"Vaccine type\" = \"Hepatitis B-containing vaccines\") = 2\nTrigger date: \"Date and time of vaccination\" (where \"Vaccine type\" = \"Hepatitis B-containing vaccines\" and \"Dose number\" = 1)\nCreate condition: If delayed or interrupted scheduling of vaccination for children, adolescents and adults, 3 doses are recommended, with the second dose administered at least 1 month after the first, and the third dose 6 months after the first dose.",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "Hepatitis B dose 3",
            "language" : "text/cql-identifier",
            "expression" : "Hepatitis B dose 3"
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
            "expression" : "Hepatitis B dose 3 Create"
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
