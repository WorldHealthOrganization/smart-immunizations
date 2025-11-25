# IMMZ.D18.S.Cholera.WC vaccines schedule - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D18.S.Cholera.WC vaccines schedule**

## PlanDefinition: IMMZ.D18.S.Cholera.WC vaccines schedule 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/PlanDefinition/IMMZD18SCholeraWCVaccines | *Version*:0.2.0 |
| Draft as of 2025-11-25 | *Computable Name*:IMMZD18SCholeraWCVaccines |

 
IMMZ.D18.S.Cholera.WC vaccines schedule Whole-cell (WC) vaccines (Shanchol, Euvchol and mORCVAX), 2-dose schedule 

* **Actions:**: **Url:**
  * : [IMMZ.D18.S.Cholera.WC vaccines schedule](PlanDefinition-IMMZD18SCholeraWCVaccines.md)
* **Actions:**: **Version:**
  * : 0.2.0
* **Actions:**: **Title:**
  * : IMMZ.D18.S.Cholera.WC vaccines schedule
* **Actions:**: **Status:**
  * : draft
* **Actions:**: **Date:**
  * : 2025-11-25 19:41:02+0000
* **Actions:**: **Publisher:**
  * : WHO
* **Actions:**: **Description:**
  * : IMMZ.D18.S.Cholera.WC vaccines schedule Whole-cell (WC) vaccines (Shanchol, Euvchol and mORCVAX), 2-dose schedule
* **Actions:**: **Knowledge Capability:**
  * : computable
* **Actions:**: **Libraries:**
  * : 
| |
| :--- |
| [IMMZD18SCholeraWCVaccinesLogic](Library-IMMZD18SCholeraWCVaccinesLogic.md) |




## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "IMMZD18SCholeraWCVaccines",
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
  "url" : "http://smart.who.int/immunizations/PlanDefinition/IMMZD18SCholeraWCVaccines",
  "version" : "0.2.0",
  "name" : "IMMZD18SCholeraWCVaccines",
  "title" : "IMMZ.D18.S.Cholera.WC vaccines schedule",
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
  "description" : "IMMZ.D18.S.Cholera.WC vaccines schedule\nWhole-cell (WC) vaccines (Shanchol, Euvchol and mORCVAX), 2-dose schedule",
  "relatedArtifact" : [
    {
      "type" : "citation",
      "citation" : "WHO recommendations for routine immunization - summary tables (January 2025)"
    }
  ],
  "library" : [
    "http://smart.who.int/immunizations/Library/IMMZD18SCholeraWCVaccinesLogic"
  ],
  "action" : [
    {
      "title" : "Cholera dose 1",
      "description" : "Provision of the cholera dose 1\nTrigger event: Child's birth and no cholera doses have been administered\nTrigger pseudo: Child's birth AND Count of vaccines administered (where \"Vaccine type\" = \"Cholera vaccines\" and \"Type of dose\" = \"Primary series\") = 0\nTrigger date: \"Date of birth\"\nOR\nLatest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Cholera vaccines\")\nCreate condition: WC vaccines: 2 doses should be given 14 days apart to individuals aged ≥ 1 year.\nRevaccination is recommended where there is continued risk of Vibrio cholerae infection. For WC vaccines, revaccination is recommended after 3 years.",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "Cholera dose 1",
            "language" : "text/cql-identifier",
            "expression" : "Cholera dose 1"
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
            "expression" : "Cholera dose 1 Create"
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
      "title" : "Cholera dose 2",
      "description" : "Provision of the cholera dose 2\nTrigger event: First cholera dose administered\nTrigger pseudo: Latest \"Dose number\" (where \"Vaccine type\" = \"Cholera vaccines\"and \"Type of dose\" = \"Primary series\") = 1\nTrigger date: Latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Cholera vaccines\")\nCreate condition: WC vaccines: 2 doses should be given 14 days apart to individuals aged ≥ 1 year.",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "Cholera dose 2",
            "language" : "text/cql-identifier",
            "expression" : "Cholera dose 2"
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
            "expression" : "Cholera dose 2 Create"
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
      "title" : "Cholera booster dose 1",
      "description" : "Provision of the cholera booster dose 1\nTrigger event: Primary series for cholera has been completed and latest cholera dose was administered more than 3 years ago\nTrigger pseudo: \"Completed the primary vaccination series\" (where \"Vaccine type\" = \"Cholera vaccines\") = TRUE AND Today's date − latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Cholera vaccines\") ≥ 3 years\nTrigger date: Latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Cholera vaccines\")\nCreate condition: For WC vaccines, revaccination is recommended after 3 years.",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "Cholera booster dose 1",
            "language" : "text/cql-identifier",
            "expression" : "Cholera booster dose 1"
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
            "expression" : "Cholera booster dose 1 Create"
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
      "title" : "Cholera booster dose 2",
      "description" : "Provision of the cholera booster dose 1\nTrigger event: First cholera booster dose administered\nTrigger pseudo: Latest \"Dose number\" (where \"Vaccine type\" = \"Cholera vaccines\"and \"Type of dose\" = \"Booster dose\") = 1\nTrigger date: Latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Cholera vaccines\")\nCreate condition: For WC vaccines, revaccination is recommended after 3 years.",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "Cholera booster dose 2",
            "language" : "text/cql-identifier",
            "expression" : "Cholera booster dose 2"
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
            "expression" : "Cholera booster dose 2 Create"
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
