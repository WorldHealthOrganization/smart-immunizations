# IMMZ.D18.S.DTP.On-time start schedule - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D18.S.DTP.On-time start schedule**

## PlanDefinition: IMMZ.D18.S.DTP.On-time start schedule 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/PlanDefinition/IMMZD18SDTPOnTimeStart | *Version*:0.2.0 |
| Draft as of 2025-11-25 | *Computable Name*:IMMZD18SDTPOnTimeStart |

 
IMMZ.D18.S.DTP.On-time start schedule Diphtheria–tetanus–pertussis (DTP) vaccination schedule, on-time start (at ≤ 12 months of age) 

* **Actions:**: **Url:**
  * : [IMMZ.D18.S.DTP.On-time start schedule](PlanDefinition-IMMZD18SDTPOnTimeStart.md)
* **Actions:**: **Version:**
  * : 0.2.0
* **Actions:**: **Title:**
  * : IMMZ.D18.S.DTP.On-time start schedule
* **Actions:**: **Status:**
  * : draft
* **Actions:**: **Date:**
  * : 2025-11-25 19:41:02+0000
* **Actions:**: **Publisher:**
  * : WHO
* **Actions:**: **Description:**
  * : IMMZ.D18.S.DTP.On-time start schedule Diphtheria–tetanus–pertussis (DTP) vaccination schedule, on-time start (at ≤ 12 months of age)
* **Actions:**: **Knowledge Capability:**
  * : computable
* **Actions:**: **Libraries:**
  * : 
| |
| :--- |
| [IMMZD18SDTPOnTimeStartLogic](Library-IMMZD18SDTPOnTimeStartLogic.md) |




## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "IMMZD18SDTPOnTimeStart",
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
  "url" : "http://smart.who.int/immunizations/PlanDefinition/IMMZD18SDTPOnTimeStart",
  "version" : "0.2.0",
  "name" : "IMMZD18SDTPOnTimeStart",
  "title" : "IMMZ.D18.S.DTP.On-time start schedule",
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
  "description" : "IMMZ.D18.S.DTP.On-time start schedule\nDiphtheria–tetanus–pertussis (DTP) vaccination schedule, on-time start (at ≤ 12 months of age)",
  "relatedArtifact" : [
    {
      "type" : "citation",
      "citation" : "WHO recommendations for routine immunization - summary tables (January 2025)"
    }
  ],
  "library" : [
    "http://smart.who.int/immunizations/Library/IMMZD18SDTPOnTimeStartLogic"
  ],
  "action" : [
    {
      "title" : "DTP dose 1",
      "description" : "Provision of DTP dose 1\nTrigger event: Child's birth\nTrigger pseudo: \nTrigger date: \"Date of birth\"\nCreate condition: DTP dose 1 should be provided if the client is older than 6 weeks of age.",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "DTP dose 1",
            "language" : "text/cql-identifier",
            "expression" : "DTP dose 1"
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
            "expression" : "DTP dose 1 Create"
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
      "title" : "DTP dose 2",
      "description" : "Provision of DTP dose 2\nTrigger event: First DTP dose from the primary series was administered\nTrigger pseudo: Count of vaccines administered (where \"Vaccine type\" = \"DTP-containing vaccines\" and \"Type of dose\" = \"Primary series\") = 1\nTrigger date: Latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"DTP-containing vaccines\")\nCreate condition: DTP dose 2 should be provided if the client was given the previous DTP dose more than 4 weeks ago.",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "DTP dose 2",
            "language" : "text/cql-identifier",
            "expression" : "DTP dose 2"
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
            "expression" : "DTP dose 2 Create"
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
      "title" : "DTP dose 3",
      "description" : "Provision of DTP dose 3\nTrigger event: Second DTP dose from the primary series was administered\nTrigger pseudo: Count of vaccines administered (where \"Vaccine type\" = \"DTP-containing vaccines\" and \"Type of dose\" = \"Primary series\" ) = 2\nTrigger date: Latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"DTP-containing vaccines\")\nCreate condition: DTP dose 3 should be provided if the client received the previous dose more than 4 weeks ago.",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "DTP dose 3",
            "language" : "text/cql-identifier",
            "expression" : "DTP dose 3"
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
            "expression" : "DTP dose 3 Create"
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
      "title" : "Tetanus and diphtheria-containing vaccine booster dose 1",
      "description" : "Provision of tetanus and diphtheria booster dose 1\nTrigger event: The primary DTP series has been completed\nTrigger pseudo: \"Completed the primary vaccination series\" = TRUE (where \"Vaccine type\" = \"DTP-containing vaccines\")\nTrigger date: Latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"DTP-containing vaccines\")\nCreate condition: Three booster doses of diphtheria-containing vaccine should be provided during childhood and adolescence. The diphtheria booster doses should be given in combination with tetanus using the same schedule (i.e at 12–23 months of age, 4–7 years of age and 9–15 years of age, using age-appropriate vaccine formulations). Ideally, there should be at least 4 years between booster doses. Member States may update this schedule based on their country context.",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "Tetanus and diphtheria-containing vaccine booster dose 1",
            "language" : "text/cql-identifier",
            "expression" : "Tetanus and diphtheria-containing vaccine booster dose 1"
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
            "expression" : "Tetanus and diphtheria-containing vaccine booster dose 1 Create"
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
      "title" : "Tetanus and diphtheria-containing vaccine booster dose 2",
      "description" : "Provision of tetanus and diphtheria booster dose 2\nTrigger event: First tetanus and diphtheria booster dose was administered\nTrigger pseudo: Count of vaccines administered (where \"Vaccine type\" = \"Tetanus and diphtheria-containing vaccines\" and \"Type of dose\" = \"Booster dose\") = 1\nTrigger date: Latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Tetanus and diphtheria-containing vaccines\")\nCreate condition: Three booster doses of diphtheria-containing vaccine should be provided during childhood and adolescence. The diphtheria booster doses should be given in combination with tetanus using the same schedule (i.e at 12–23 months of age, 4–7 years of age and 9–15 years of age, using age-appropriate vaccine formulations). Ideally, there should be at least 4 years between booster doses. Member States may update this schedule based on their country context.",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "Tetanus and diphtheria-containing vaccine booster dose 2",
            "language" : "text/cql-identifier",
            "expression" : "Tetanus and diphtheria-containing vaccine booster dose 2"
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
            "expression" : "Tetanus and diphtheria-containing vaccine booster dose 2 Create"
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
      "title" : "Tetanus and diphtheria-containing vaccine booster dose 3",
      "description" : "Provision of tetanus and diphtheria booster dose 3\nTrigger event: Second tetanus and diphtheria booster dose was administered\nTrigger pseudo: Count of vaccines administered (where \"Vaccine type\" = \"Tetanus and diphtheria-containing vaccines\" and \"Type of dose\" = \"Booster dose\") = 2\nTrigger date: Latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Tetanus and diphtheria-containing vaccines\")\nCreate condition: Three booster doses of diphtheria-containing vaccine should be provided during childhood and adolescence. The diphtheria booster doses should be given in combination with tetanus using the same schedule (i.e at 12–23 months of age, 4–7 years of age and 9–15 years of age, using age-appropriate vaccine formulations). Ideally, there should be at least 4 years between booster doses. Member States may update this schedule based on their country context.",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "Tetanus and diphtheria-containing vaccine booster dose 3",
            "language" : "text/cql-identifier",
            "expression" : "Tetanus and diphtheria-containing vaccine booster dose 3"
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
            "expression" : "Tetanus and diphtheria-containing vaccine booster dose 3 Create"
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
      "title" : "Pertussis-containing vaccine booster dose",
      "description" : "Provision of the pertussis-containing vaccine booster dose\nTrigger event: The primary DTP series has been completed and client's age is between 1 and 6 years\nTrigger pseudo: \"Completed the primary vaccination series\" = TRUE (where \"Vaccine type\" = \"DTP-containing vaccines\") AND 1 year ≤ Today's date − \"Date of birth\" ≤ 6 years\nTrigger date: Latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"DTP-containing vaccines\")\nCreate condition: A booster dose is recommended for children aged 1–6 years, preferably during the second year of life (≥6 months after last primary dose).",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "Pertussis-containing vaccine booster dose",
            "language" : "text/cql-identifier",
            "expression" : "Pertussis-containing vaccine booster dose"
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
            "expression" : "Pertussis-containing vaccine booster dose Create"
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
