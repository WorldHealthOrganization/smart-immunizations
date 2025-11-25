# IMMZ.D18.S.Cholera.WC-rBS vaccine 3-dose schedule - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D18.S.Cholera.WC-rBS vaccine 3-dose schedule**

## PlanDefinition: IMMZ.D18.S.Cholera.WC-rBS vaccine 3-dose schedule 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/PlanDefinition/IMMZD18SCholeraWCRBSVaccine3Doses | *Version*:0.2.0 |
| Draft as of 2025-11-25 | *Computable Name*:IMMZD18SCholeraWCRBSVaccine3Doses |

 
IMMZ.D18.S.Cholera.WC-rBS vaccine 3-dose schedule Whole cell-recombinant B subunit (WC-rBS) vaccine (Dukoral), 3-dose schedule for clients aged 2–5 years 

* **Actions:**: **Url:**
  * : [IMMZ.D18.S.Cholera.WC-rBS vaccine 3-dose schedule](PlanDefinition-IMMZD18SCholeraWCRBSVaccine3Doses.md)
* **Actions:**: **Version:**
  * : 0.2.0
* **Actions:**: **Title:**
  * : IMMZ.D18.S.Cholera.WC-rBS vaccine 3-dose schedule
* **Actions:**: **Status:**
  * : draft
* **Actions:**: **Date:**
  * : 2025-11-25 19:41:02+0000
* **Actions:**: **Publisher:**
  * : WHO
* **Actions:**: **Description:**
  * : IMMZ.D18.S.Cholera.WC-rBS vaccine 3-dose schedule Whole cell-recombinant B subunit (WC-rBS) vaccine (Dukoral), 3-dose schedule for clients aged 2–5 years
* **Actions:**: **Knowledge Capability:**
  * : computable
* **Actions:**: **Libraries:**
  * : 
| |
| :--- |
| [IMMZD18SCholeraWCRBSVaccine3DosesLogic](Library-IMMZD18SCholeraWCRBSVaccine3DosesLogic.md) |




## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "IMMZD18SCholeraWCRBSVaccine3Doses",
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
  "url" : "http://smart.who.int/immunizations/PlanDefinition/IMMZD18SCholeraWCRBSVaccine3Doses",
  "version" : "0.2.0",
  "name" : "IMMZD18SCholeraWCRBSVaccine3Doses",
  "title" : "IMMZ.D18.S.Cholera.WC-rBS vaccine 3-dose schedule",
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
  "description" : "IMMZ.D18.S.Cholera.WC-rBS vaccine 3-dose schedule\nWhole cell-recombinant B subunit (WC-rBS) vaccine (Dukoral), 3-dose schedule for clients aged 2–5 years",
  "relatedArtifact" : [
    {
      "type" : "citation",
      "citation" : "WHO recommendations for routine immunization - summary tables (January 2025)"
    }
  ],
  "library" : [
    "http://smart.who.int/immunizations/Library/IMMZD18SCholeraWCRBSVaccine3DosesLogic"
  ],
  "action" : [
    {
      "title" : "Cholera dose 1",
      "description" : "Provision of the cholera dose 1\nTrigger event: Child's birth\nTrigger pseudo: Count of vaccines administered (where \"Vaccine type\" = \"Cholera vaccines\") = 0 AND (2 years ≤ Today's date − \"Date of birth\" ≤ 5 years)\nOR Primary series interrupted for 6 or more weeks\n\"Completed the primary vaccination series\" (where \"Vaccine type\" = \"Cholera vaccines\") = FALSE AND Today's date − latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Cholera vaccines\") ≥ 6 weeks AND (2 years ≤ Today's date − \"Date of birth\" ≤ 5 years)\nOR more than 6 months have passed since completion of primary vaccination series\n\"Completed the primary vaccination series\" (where \"Vaccine type\" = \"Cholera vaccines\") = TRUE AND Today's date − latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Cholera vaccines\") > 6 months AND (2 years ≤ Today's date − \"Date of birth\" ≤ 5 years)\nTrigger date: \"Date of birth\"\nOR\nLatest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Cholera vaccines\")\nCreate condition: For WC-rBS vaccine (Dukoral), 3 doses should be given to children 2–5 years of age, with an interval of 1-6 weeks between doses. If the interval since the last dose ≥ 6 weeks, restart the primary series.\n\nRevaccination for children aged 2–5 years: If more than 6 months have passed since completion of primary vaccination series, the primary series of 3 doses should be repeated.",
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
      "description" : "Provision of the cholera dose 2\nTrigger event: First cholera dose was administered\nTrigger pseudo: Latest \"Dose number\" (where \"Vaccine type\" = \"Cholera vaccines\") = 1 AND (2 years ≤ Today's date − \"Date of birth\" ≤ 5 years)\nTrigger date: Latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Cholera vaccines\")\nCreate condition: For WC-rBS vaccine (Dukoral), 3 doses should be given to children aged 2–5 years, with an interval of 1–6 weeks between doses.",
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
      "title" : "Cholera dose 3",
      "description" : "Provision of the cholera dose 3\nTrigger event: Second cholera dose was administered\nTrigger pseudo: Latest \"Dose number\" (where \"Vaccine type\" = \"Cholera vaccines\") = 2 AND (2 years ≤ Today's date − \"Date of birth\" ≤ 5 years)\nTrigger date: Latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Cholera vaccines\")\nCreate condition: For WC-rBS vaccine (Dukoral), 3 doses should be given to children aged 2–5 years, with an interval of 1–6 weeks between doses.",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "Cholera dose 3",
            "language" : "text/cql-identifier",
            "expression" : "Cholera dose 3"
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
            "expression" : "Cholera dose 3 Create"
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
      "title" : "Cholera booster dose",
      "description" : "Provision of the cholera booster dose\nTrigger event: Primary series for cholera has been completed and latest cholera dose was administered approximately less than 6 months ago\nTrigger pseudo: \"Completed the primary vaccination series\" (where \"Vaccine type\" = \"Cholera vaccines\") = TRUE AND Today's date − latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Cholera vaccines\") ≤ 6 months ± Member States defined interval AND (2 years ≤ Today's date − \"Date of birth\" ≤ 5 years)\nTrigger date: Latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Cholera vaccines\")\nCreate condition: For WC-rBS vaccine, for children aged 2–5 years, if less than 6 months have passed since completion of primary vaccination series, 1 dose for revaccination.",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "Cholera booster dose",
            "language" : "text/cql-identifier",
            "expression" : "Cholera booster dose"
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
            "expression" : "Cholera booster dose Create"
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
