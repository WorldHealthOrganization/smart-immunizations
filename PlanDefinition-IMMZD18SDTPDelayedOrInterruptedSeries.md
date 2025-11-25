# IMMZ.D18.S.DTP.Delayed or interrupted schedule - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D18.S.DTP.Delayed or interrupted schedule**

## PlanDefinition: IMMZ.D18.S.DTP.Delayed or interrupted schedule 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/PlanDefinition/IMMZD18SDTPDelayedOrInterruptedSeries | *Version*:0.2.0 |
| Draft as of 2025-11-25 | *Computable Name*:IMMZD18SDTPDelayedOrInterruptedSeries |

 
IMMZ.D18.S.DTP.Delayed or interrupted schedule Diphtheria–tetanus–pertussis (DTP) vaccination schedule for the following groups: children ≥ 1 year of age with no previous immunization, adolescents and adults with no previous immunization (including pregnant women) and supplementary immunization activities in high-risk areas, for women of reproductive age 

* **Actions:**: **Url:**
  * : [IMMZ.D18.S.DTP.Delayed or interrupted schedule](PlanDefinition-IMMZD18SDTPDelayedOrInterruptedSeries.md)
* **Actions:**: **Version:**
  * : 0.2.0
* **Actions:**: **Title:**
  * : IMMZ.D18.S.DTP.Delayed or interrupted schedule
* **Actions:**: **Status:**
  * : draft
* **Actions:**: **Date:**
  * : 2025-11-25 19:41:02+0000
* **Actions:**: **Publisher:**
  * : WHO
* **Actions:**: **Description:**
  * : IMMZ.D18.S.DTP.Delayed or interrupted schedule Diphtheria–tetanus–pertussis (DTP) vaccination schedule for the following groups: children ≥ 1 year of age with no previous immunization, adolescents and adults with no previous immunization (including pregnant women) and supplementary immunization activities in high-risk areas, for women of reproductive age
* **Actions:**: **Knowledge Capability:**
  * : computable
* **Actions:**: **Libraries:**
  * : 
| |
| :--- |
| [IMMZD18SDTPDelayedOrInterruptedSeriesLogic](Library-IMMZD18SDTPDelayedOrInterruptedSeriesLogic.md) |




## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "IMMZD18SDTPDelayedOrInterruptedSeries",
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
  "url" : "http://smart.who.int/immunizations/PlanDefinition/IMMZD18SDTPDelayedOrInterruptedSeries",
  "version" : "0.2.0",
  "name" : "IMMZD18SDTPDelayedOrInterruptedSeries",
  "title" : "IMMZ.D18.S.DTP.Delayed or interrupted schedule",
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
  "description" : "IMMZ.D18.S.DTP.Delayed or interrupted schedule\nDiphtheria–tetanus–pertussis (DTP) vaccination schedule for the following groups: children ≥ 1 year of age with no previous immunization, adolescents and adults with no previous immunization (including pregnant women) and supplementary immunization activities in high-risk areas, for women of reproductive age",
  "relatedArtifact" : [
    {
      "type" : "citation",
      "citation" : "WHO recommendations for routine immunization - summary tables (January 2025)"
    }
  ],
  "library" : [
    "http://smart.who.int/immunizations/Library/IMMZD18SDTPDelayedOrInterruptedSeriesLogic"
  ],
  "action" : [
    {
      "title" : "DTP dose 1 (delayed start)",
      "description" : "Provision of DTP dose 1 with a delayed start\nTrigger event: No DTP doses were administered and client's age is more than 1 year\nTrigger pseudo: Count of vaccines administered (where \"Vaccine type\" = \"DTP-containing vaccines\") = 0 AND Today's date − \"Date of birth\" > 1 year\nTrigger date: Date of birth\nCreate condition: For children whose vaccination series has been interrupted, the series should be resumed without repeating previous doses. Children aged 1 year to under 7 years who have not previously been vaccinated should receive 3 doses of vaccine following a 0, 1, 6 month schedule.\n\nIf tetanus vaccination is started during adolescence or adulthood, a total of only 5 appropriately spaced doses are required to obtain lifelong protection.\n\nPregnant women and their newborn infants are protected from birth-associated tetanus if the mother received 5 doses if first vaccinated during adolescence/adulthood.",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "DTP dose 1 (delayed start)",
            "language" : "text/cql-identifier",
            "expression" : "DTP dose 1 (delayed start)"
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
            "expression" : "DTP dose 1 (delayed start) Create"
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
      "title" : "DTP dose 2 (delayed start)",
      "description" : "Provision of DTP dose 2 with a delayed start\nTrigger event: First DTP dose from the primary series was administered\nTrigger pseudo: Count of vaccines administered (where \"Vaccine type\" = \"DTP-containing vaccines\" and \"Type of dose\" = \"Primary series\") = 1\nTrigger date: Latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"DTP-containing vaccines\"\nCreate condition: For children whose vaccination series has been interrupted, the series should be resumed without repeating previous doses. Children aged 1 year to under 7 years who have not previously been vaccinated should receive 3 doses of vaccine following a 0, 1, 6 month schedule.\n\nIf tetanus vaccination is started during adolescence or adulthood, a total of only 5 appropriately spaced doses are required to obtain lifelong protection.\n\nPregnant women and their newborn infants are protected from birth-associated tetanus if the mother received 5 doses if first vaccinated during adolescence/adulthood.",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "DTP dose 2 (delayed start)",
            "language" : "text/cql-identifier",
            "expression" : "DTP dose 2 (delayed start)"
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
            "expression" : "DTP dose 2 (delayed start) Create"
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
      "title" : "DTP dose 3 (delayed start)",
      "description" : "Provision of DTP dose 3 with a delayed start\nTrigger event: Second DTP dose from the primary series was administered\nTrigger pseudo: Count of vaccines administered (where \"Vaccine type\" = \"DTP-containing vaccines\" and \"Type of dose\" = \"Primary series\") = 2\nTrigger date: Latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"DTP-containing vaccines\"\nCreate condition: For children whose vaccination series has been interrupted, the series should be resumed without repeating previous doses. Children aged 1 year to under 7 years who have not previously been vaccinated should receive 3 doses of vaccine following a 0, 1, 6 month schedule.\n\nIf tetanus vaccination is started during adolescence or adulthood, a total of only 5 appropriately spaced doses are required to obtain lifelong protection.\n\nPregnant women and their newborn infants are protected from birth-associated tetanus if the mother received 5 doses if first vaccinated during adolescence/adulthood.",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "DTP dose 3 (delayed start)",
            "language" : "text/cql-identifier",
            "expression" : "DTP dose 3 (delayed start)"
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
            "expression" : "DTP dose 3 (delayed start) Create"
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
      "title" : "Tetanus and diphtheria-containing vaccine booster dose 1 (delayed start)",
      "description" : "Provision of tetanus and diphtheria booster dose 1\nTrigger event: The primary DTP series has been completed\nTrigger pseudo: \"Completed the primary vaccination series\" = TRUE (where \"Vaccine type\" = \"DTP-containing vaccines\")\nTrigger date: Latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"DTP-containing vaccines\"\nCreate condition: Two subsequent booster doses using tetanus toxoid with reduced diphteria toxoid (Td) or Td with acellular pertussis (TdaP) combination vaccines are needed with an interval of at least 1 year between doses.",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "Tetanus and diphtheria-containing vaccine booster dose 1 (delayed start)",
            "language" : "text/cql-identifier",
            "expression" : "Tetanus and diphtheria-containing vaccine booster dose 1 (delayed start)"
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
            "expression" : "Tetanus and diphtheria-containing vaccine booster dose 1 (delayed start) Create"
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
      "title" : "Tetanus and diphtheria-containing vaccine booster dose 2 (delayed start)",
      "description" : "Provision of tetanus and diphtheria booster dose 2\nTrigger event: First tetanus and diphtheria booster dose was administered\nTrigger pseudo: Count of vaccines administered (where \"Vaccine type\" = \"Tetanus and diphtheria-containing vaccines\" and \"Type of dose\" = \"Booster dose\") = 1\nTrigger date: Latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Tetanus and diphtheria-containing vaccines\")\nCreate condition: Two subsequent booster doses using tetanus toxoid with reduced diphteria toxoid (Td) or Td with acellular pertussis (TdaP) combination vaccines are needed with an interval of at least 1 year between doses.",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "Tetanus and diphtheria-containing vaccine booster dose 2 (delayed start)",
            "language" : "text/cql-identifier",
            "expression" : "Tetanus and diphtheria-containing vaccine booster dose 2 (delayed start)"
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
            "expression" : "Tetanus and diphtheria-containing vaccine booster dose 2 (delayed start) Create"
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
      "title" : "Pertussis-containing vaccine booster dose 1 (delayed start)",
      "description" : "Provision of the pertussis-containing booster dose 1\nTrigger event: The primary DTP series has been completed and client's age is between 1 year and 6 years\nTrigger pseudo: \"Completed the primary vaccination series\" = TRUE (where \"Vaccine type\" = \"DTP-containing vaccines\") AND 1 year ≤ Today's date − \"Date of birth\" ≤ 6 years\nTrigger date: Latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"DTP-containing vaccines\")\nCreate condition: A booster dose is recommended for children aged 1–6 years, preferably during the second year of life (≥ 6 months after last primary dose).",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "Pertussis-containing vaccine booster dose 1 (delayed start)",
            "language" : "text/cql-identifier",
            "expression" : "Pertussis-containing vaccine booster dose 1 (delayed start)"
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
            "expression" : "Pertussis-containing vaccine booster dose 1 (delayed start) Create"
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
