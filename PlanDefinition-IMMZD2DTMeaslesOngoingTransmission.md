# IMMZ.D2.DT.Measles.Ongoing transmission - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D2.DT.Measles.Ongoing transmission**

## PlanDefinition: IMMZ.D2.DT.Measles.Ongoing transmission 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/PlanDefinition/IMMZD2DTMeaslesOngoingTransmission | *Version*:0.2.0 |
| Draft as of 2025-11-25 | *Computable Name*:IMMZD2DTMeaslesOngoingTransmission |

 
IMMZ.D2.DT.Measles.Ongoing transmission Countries with ongoing transmission in which the risk of measles mortality remains high (countries that provide first dose of measles-containing vaccine (MCV) at 9 months and second dose of MCV at 15 months) 

* **Actions:**: **Url:**
  * : [IMMZ.D2.DT.Measles.Ongoing transmission](PlanDefinition-IMMZD2DTMeaslesOngoingTransmission.md)
* **Actions:**: **Version:**
  * : 0.2.0
* **Actions:**: **Title:**
  * : IMMZ.D2.DT.Measles.Ongoing transmission
* **Actions:**: **Status:**
  * : draft
* **Actions:**: **Date:**
  * : 2025-11-25 19:41:02+0000
* **Actions:**: **Publisher:**
  * : WHO
* **Actions:**: **Description:**
  * : IMMZ.D2.DT.Measles.Ongoing transmission Countries with ongoing transmission in which the risk of measles mortality remains high (countries that provide first dose of measles-containing vaccine (MCV) at 9 months and second dose of MCV at 15 months)
* **Actions:**: **Knowledge Capability:**
  * : computable
* **Actions:**: **Libraries:**
  * : 
| |
| :--- |
| [IMMZD2DTMeaslesOngoingTransmissionLogic](Library-IMMZD2DTMeaslesOngoingTransmissionLogic.md) |




## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "IMMZD2DTMeaslesOngoingTransmission",
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
  "url" : "http://smart.who.int/immunizations/PlanDefinition/IMMZD2DTMeaslesOngoingTransmission",
  "version" : "0.2.0",
  "name" : "IMMZD2DTMeaslesOngoingTransmission",
  "title" : "IMMZ.D2.DT.Measles.Ongoing transmission",
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
  "description" : "IMMZ.D2.DT.Measles.Ongoing transmission\nCountries with ongoing transmission in which the risk of measles mortality remains high (countries that provide first dose of measles-containing vaccine (MCV) at 9 months and second dose of MCV at 15 months)",
  "relatedArtifact" : [
    {
      "type" : "citation",
      "citation" : "WHO recommendations for routine immunization - summary tables (January 2025)"
    }
  ],
  "library" : [
    "http://smart.who.int/immunizations/Library/IMMZD2DTMeaslesOngoingTransmissionLogic"
  ],
  "action" : [
    {
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rationale",
          "valueMarkdown" : "In countries with ongoing transmission in which the risk of measles mortality remains high, MCV1 \n  should be given at 9 months of age. As a general rule, live vaccines should be given either simultaneously or \n  at intervals of 4 weeks. An exception to this rule is oral poliovirus vaccine (OPV), which can be given at any \n  time before or after measles vaccination without interference in the response to either vaccine."
        }
      ],
      "title" : "Determine if the client is due for MCV1 in countries with ongoing transmission.",
      "description" : "Determine if the client is due for measles vaccination MCV1 according to the national immunization protocol.\nCountries with ongoing transmission in which the risk of measles mortality remains high.",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "Client is due for MCV1",
            "language" : "text/cql-identifier",
            "expression" : "Client is due for MCV1"
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
            "expression" : "Concept { codes: { Code { system: 'http://smart.who.int/immunizations/CodeSystem/IMMZ.Z', code: 'DE9', display: 'Measles-containing vaccines' } }, display: 'Measles-containing vaccines' }"
          }
        }
      ]
    },
    {
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rationale",
          "valueMarkdown" : "In countries with ongoing transmission in which the risk of measles mortality remains high, MCV2 \nshould be given at 15–18 months. The minimum interval between MCV1 and MCV2 is 4 weeks. As a general rule, \nlive vaccines should be given either simultaneously or at intervals of 4 weeks. An exception to this rule is \nOPV, which can be given at any time before or after measles vaccination without interference in the response \nto either vaccine."
        }
      ],
      "title" : "Determine if the client is due for MCV2 in countries with ongoing transmission.",
      "description" : "Determine if the client is due for measles vaccination MCV2 according to the national immunization protocol.\nCountries with ongoing transmission in which the risk of measles mortality remains high.",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "Client is due for MCV2",
            "language" : "text/cql-identifier",
            "expression" : "Client is due for MCV2"
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
            "expression" : "Concept { codes: { Code { system: 'http://smart.who.int/immunizations/CodeSystem/IMMZ.Z', code: 'DE9', display: 'Measles-containing vaccines' } }, display: 'Measles-containing vaccines' }"
          }
        }
      ]
    },
    {
      "title" : "Check for Guidance for the patient regarding IMMZ.D2.DT.Measles.Ongoing transmission.",
      "description" : "Show Guidance for the patient regarding IMMZ.D2.DT.Measles.Ongoing transmission.",
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
