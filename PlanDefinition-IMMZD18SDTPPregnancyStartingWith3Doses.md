# IMMZ.D18.S.DTP.Pregnancy starting with 3 doses schedule - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D18.S.DTP.Pregnancy starting with 3 doses schedule**

## PlanDefinition: IMMZ.D18.S.DTP.Pregnancy starting with 3 doses schedule 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/PlanDefinition/IMMZD18SDTPPregnancyStartingWith3Doses | *Version*:0.2.0 |
| Draft as of 2025-11-25 | *Computable Name*:IMMZD18SDTPPregnancyStartingWith3Doses |

 
IMMZ.D18.S.DTP.Pregnancy starting with 3 doses schedule Diphtheria and tetanus vaccination schedule in pregnant women who received 3 childhood diphtheria–tetanus–pertussis (DTP) doses 

* **Actions:**: **Url:**
  * : [IMMZ.D18.S.DTP.Pregnancy starting with 3 doses schedule](PlanDefinition-IMMZD18SDTPPregnancyStartingWith3Doses.md)
* **Actions:**: **Version:**
  * : 0.2.0
* **Actions:**: **Title:**
  * : IMMZ.D18.S.DTP.Pregnancy starting with 3 doses schedule
* **Actions:**: **Status:**
  * : draft
* **Actions:**: **Date:**
  * : 2025-11-25 19:41:02+0000
* **Actions:**: **Publisher:**
  * : WHO
* **Actions:**: **Description:**
  * : IMMZ.D18.S.DTP.Pregnancy starting with 3 doses schedule Diphtheria and tetanus vaccination schedule in pregnant women who received 3 childhood diphtheria–tetanus–pertussis (DTP) doses
* **Actions:**: **Knowledge Capability:**
  * : computable
* **Actions:**: **Libraries:**
  * : 
| |
| :--- |
| [IMMZD18SDTPPregnancyStartingWith3DosesLogic](Library-IMMZD18SDTPPregnancyStartingWith3DosesLogic.md) |




## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "IMMZD18SDTPPregnancyStartingWith3Doses",
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
  "url" : "http://smart.who.int/immunizations/PlanDefinition/IMMZD18SDTPPregnancyStartingWith3Doses",
  "version" : "0.2.0",
  "name" : "IMMZD18SDTPPregnancyStartingWith3Doses",
  "title" : "IMMZ.D18.S.DTP.Pregnancy starting with 3 doses schedule",
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
  "description" : "IMMZ.D18.S.DTP.Pregnancy starting with 3 doses schedule\nDiphtheria and tetanus vaccination schedule in pregnant women who received 3 childhood diphtheria–tetanus–pertussis (DTP) doses",
  "relatedArtifact" : [
    {
      "type" : "citation",
      "citation" : "WHO recommendations for routine immunization - summary tables (January 2025)"
    }
  ],
  "library" : [
    "http://smart.who.int/immunizations/Library/IMMZD18SDTPPregnancyStartingWith3DosesLogic"
  ],
  "action" : [
    {
      "title" : "Tetanus and diphtheria-containing vaccine booster dose 1 (during pregnancy)",
      "description" : "Provision of tetanus and diphtheria booster dose 1 for pregnant women who received only 3 doses of DTP during childhood without booster doses\nTrigger event: The primary DTP series has been completed and client is currently pregnant\nTrigger pseudo: \"Completed the primary vaccination series\" = TRUE (where \"Vaccine type\" = \"DTP-containing vaccines\") AND \"Currently pregnant\" = TRUE\nTrigger date: \"Contact date\" WHEN \"ANC contact number\" = 1\nCreate condition: Pregnant women who have received only 3 doses of tetanus-containing vaccines during childhood without booster doses should receive 2 doses of tetanus-containing vaccines at the earliest opportunity during pregnancy with a minimal interval of 4 weeks between doses and the second dose at least 2 weeks before giving birth.",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "Tetanus and diphtheria-containing vaccine booster dose 1 (during pregnancy)",
            "language" : "text/cql-identifier",
            "expression" : "Tetanus and diphtheria-containing vaccine booster dose 1 (during pregnancy)"
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
            "expression" : "Tetanus and diphtheria-containing vaccine booster dose 1 (during pregnancy) Create"
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
      "title" : "Tetanus and diphtheria-containing vaccine booster dose 2 (during pregnancy)",
      "description" : "Provision of tetanus and diphtheria booster dose 2 for pregnant women who received only 3 doses of DTP during childhood without booster doses\nTrigger event: First tetanus and diphtheria booster dose was administered\nTrigger pseudo: Count of vaccines administered (where \"Vaccine type\" = \"Tetanus and diphtheria-containing vaccines\" and \"Type of dose\" = \"Booster dose\") = 1\nTrigger date: Latest \"Date and time of vaccination\" where \"Vaccine type\" = \"Tetanus and diphtheria-containing vaccines\"\nCreate condition: Pregnant women who have received only 3 doses of tetanus-containing vaccines during childhood without booster doses should receive 2 doses of tetanus-containing vaccines at the earliest opportunity during pregnancy with a minimal interval of 4 weeks between doses and the second dose at least 2 weeks before giving birth.",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "Tetanus and diphtheria-containing vaccine booster dose 2 (during pregnancy)",
            "language" : "text/cql-identifier",
            "expression" : "Tetanus and diphtheria-containing vaccine booster dose 2 (during pregnancy)"
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
            "expression" : "Tetanus and diphtheria-containing vaccine booster dose 2 (during pregnancy) Create"
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
      "description" : "Provision of tetanus and diphtheria booster dose 3 for pregnant women who received only 3 doses of DTP during childhood without booster doses\nTrigger event: Second tetanus and diphtheria booster dose was administered\nTrigger pseudo: Count of vaccines administered (where \"Vaccine type\" = \"Tetanus and diphtheria-containing vaccines\" and \"Type of dose\" = \"Booster dose\") = 2\nTrigger date: Latest \"Date and time of vaccination\" where \"Vaccine type\" = \"Tetanus and diphtheria-containing vaccines\"\nCreate condition: A sixth dose would be needed at least 1 year after the fifth dose, or during the next pregnancy.",
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
    }
  ]
}

```
