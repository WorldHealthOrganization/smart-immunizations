# IMMZ.D2.DT.Cholera.WC-rBS vaccine 3 doses - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D2.DT.Cholera.WC-rBS vaccine 3 doses**

## PlanDefinition: IMMZ.D2.DT.Cholera.WC-rBS vaccine 3 doses 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/PlanDefinition/IMMZD2DTCholeraWCRBSVaccine3Doses | *Version*:0.2.0 |
| Draft as of 2025-11-25 | *Computable Name*:IMMZD2DTCholeraWCRBSVaccine3Doses |

 
IMMZ.D2.DT.Cholera.WC-rBS vaccine 3 doses Whole cell-recombinant B subunit (WC-rBS) vaccine, 3-dose schedule for clients aged 2–5 years 

* **Actions:**: **Url:**
  * : [IMMZ.D2.DT.Cholera.WC-rBS vaccine 3 doses](PlanDefinition-IMMZD2DTCholeraWCRBSVaccine3Doses.md)
* **Actions:**: **Version:**
  * : 0.2.0
* **Actions:**: **Title:**
  * : IMMZ.D2.DT.Cholera.WC-rBS vaccine 3 doses
* **Actions:**: **Status:**
  * : draft
* **Actions:**: **Date:**
  * : 2025-11-25 19:41:02+0000
* **Actions:**: **Publisher:**
  * : WHO
* **Actions:**: **Description:**
  * : IMMZ.D2.DT.Cholera.WC-rBS vaccine 3 doses Whole cell-recombinant B subunit (WC-rBS) vaccine, 3-dose schedule for clients aged 2–5 years
* **Actions:**: **Knowledge Capability:**
  * : computable
* **Actions:**: **Libraries:**
  * : 
| |
| :--- |
| [IMMZD2DTCholeraWCRBSVaccine3DosesLogic](Library-IMMZD2DTCholeraWCRBSVaccine3DosesLogic.md) |




## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "IMMZD2DTCholeraWCRBSVaccine3Doses",
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
  "url" : "http://smart.who.int/immunizations/PlanDefinition/IMMZD2DTCholeraWCRBSVaccine3Doses",
  "version" : "0.2.0",
  "name" : "IMMZD2DTCholeraWCRBSVaccine3Doses",
  "title" : "IMMZ.D2.DT.Cholera.WC-rBS vaccine 3 doses",
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
  "description" : "IMMZ.D2.DT.Cholera.WC-rBS vaccine 3 doses\nWhole cell-recombinant B subunit (WC-rBS) vaccine, 3-dose schedule for clients aged 2–5 years",
  "relatedArtifact" : [
    {
      "type" : "citation",
      "citation" : "WHO recommendations for routine immunization - summary tables (January 2025)"
    }
  ],
  "library" : [
    "http://smart.who.int/immunizations/Library/IMMZD2DTCholeraWCRBSVaccine3DosesLogic"
  ],
  "action" : [
    {
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rationale",
          "valueMarkdown" : "For WC-rBS vaccine (Dukoral), 3 doses should be given to children aged 2–5 years of age, with an interval of 1–6 weeks between doses.\nFor WC-rBS vaccine, children aged 2–5 years revaccination is recommended within 6 months. \nIf more than 6 months have passed, the primary series of 3 doses should be repeated."
        }
      ],
      "title" : "Determine if the client is due for Cholera.",
      "description" : "Determine if the client is due for Cholera vaccine according to the national immunization protocol.\nWhole cell-recombinant B subunit (WC-rBS) vaccine, 3-dose schedule for clients aged 2–5 years",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "Client is due for cholera vaccination",
            "language" : "text/cql-identifier",
            "expression" : "Client is due for cholera vaccination"
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
            "expression" : "Concept { codes: { Code { system: 'http://smart.who.int/immunizations/CodeSystem/IMMZ.Z', code: 'DE2', display: 'Cholera vaccines' } }, display: 'Cholera vaccines' }"
          }
        }
      ]
    },
    {
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rationale",
          "valueMarkdown" : "Revaccination is recommended where there is continued risk of Vibrio cholerae infection. For WC-rBS vaccine, \nchildren aged 2–5 years revaccination is recommended within 6 months. If less than 6 months have passed, 1 dose for revaccination."
        }
      ],
      "title" : "Determine if the client is due for Cholera.",
      "description" : "Determine if the client is due for Cholera vaccine according to the national immunization protocol.\nWhole cell-recombinant B subunit (WC-rBS) vaccine, 3-dose schedule for clients aged 2–5 years",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "Primary series is complete. Client is due for cholera booster dose",
            "language" : "text/cql-identifier",
            "expression" : "Primary series is complete. Client is due for cholera booster dose"
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
            "expression" : "Concept { codes: { Code { system: 'http://smart.who.int/immunizations/CodeSystem/IMMZ.Z', code: 'DE2', display: 'Cholera vaccines' } }, display: 'Cholera vaccines' }"
          }
        }
      ]
    },
    {
      "title" : "Check for Guidance for the patient regarding IMMZ.D2.DT.Cholera.WC-rBS vaccine 3 doses.",
      "description" : "Show Guidance for the patient regarding IMMZ.D2.DT.Cholera.WC-rBS vaccine 3 doses.",
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
