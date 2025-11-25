# IMMZ.D2.DT.Polio.IPV-only - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D2.DT.Polio.IPV-only**

## PlanDefinition: IMMZ.D2.DT.Polio.IPV-only 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/PlanDefinition/IMMZD2DTPolioIPVOnly | *Version*:0.2.0 |
| Draft as of 2025-11-25 | *Computable Name*:IMMZD2DTPolioIPVOnly |

 
IMMZ.D2.DT.Polio.IPV-only Inactivated polio vaccine (IPV)-only (in countries, in polio-free regions, with a very low risk of importation and sustained high routine immunization coverage (third dose of the diphtheria–tetanus–pertussis vaccine [DTP3] > 90%) 

* **Actions:**: **Url:**
  * : [IMMZ.D2.DT.Polio.IPV-only](PlanDefinition-IMMZD2DTPolioIPVOnly.md)
* **Actions:**: **Version:**
  * : 0.2.0
* **Actions:**: **Title:**
  * : IMMZ.D2.DT.Polio.IPV-only
* **Actions:**: **Status:**
  * : draft
* **Actions:**: **Date:**
  * : 2025-11-25 19:41:02+0000
* **Actions:**: **Publisher:**
  * : WHO
* **Actions:**: **Description:**
  * : IMMZ.D2.DT.Polio.IPV-only Inactivated polio vaccine (IPV)-only (in countries, in polio-free regions, with a very low risk of importation and sustained high routine immunization coverage (third dose of the diphtheria–tetanus–pertussis vaccine [DTP3] > 90%)
* **Actions:**: **Knowledge Capability:**
  * : computable
* **Actions:**: **Libraries:**
  * : 
| |
| :--- |
| [IMMZD2DTPolioIPVOnlyLogic](Library-IMMZD2DTPolioIPVOnlyLogic.md) |




## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "IMMZD2DTPolioIPVOnly",
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
  "url" : "http://smart.who.int/immunizations/PlanDefinition/IMMZD2DTPolioIPVOnly",
  "version" : "0.2.0",
  "name" : "IMMZD2DTPolioIPVOnly",
  "title" : "IMMZ.D2.DT.Polio.IPV-only",
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
  "description" : "IMMZ.D2.DT.Polio.IPV-only\nInactivated polio vaccine (IPV)-only (in countries, in polio-free regions, with a very low risk of importation and sustained high routine immunization coverage (third dose of the diphtheria–tetanus–pertussis vaccine [DTP3] > 90%)",
  "relatedArtifact" : [
    {
      "type" : "citation",
      "citation" : "WHO recommendations for routine immunization - summary tables (January 2025)"
    }
  ],
  "library" : [
    "http://smart.who.int/immunizations/Library/IMMZD2DTPolioIPVOnlyLogic"
  ],
  "action" : [
    {
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rationale",
          "valueMarkdown" : "A primary 3-dose series of IPV administered beginning at 6 or 8 weeks of age, with a minimum 4-week interval between doses, is recommended. "
        }
      ],
      "title" : "Determine if the client is due for a poliovirus vaccination according to the national immunization schedule",
      "description" : "Determine if the client is due for a poliovirus vaccination according to the national immunization schedule\nInactivated polio vaccine (IPV)-only (in countries, in polio-free regions, with a very low risk of importation \nand sustained high routine immunization coverage (third dose of the diphtheria–tetanus–pertussis vaccine [DTP3] > 90%)",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "Client is due for IPV vaccination",
            "language" : "text/cql-identifier",
            "expression" : "Client is due for IPV vaccination"
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
            "expression" : "Concept { codes: { Code { system: 'http://smart.who.int/immunizations/CodeSystem/IMMZ.Z', code: 'DE31', display: 'Inactivated polio vaccines' } }, display: 'Inactivated polio vaccines' }"
          }
        }
      ]
    },
    {
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rationale",
          "valueMarkdown" : "If the primary series begins at 6 weeks, a booster dose should be given 6 months or more after the third dose. "
        }
      ],
      "title" : "Determine if the client is due for a poliovirus vaccination according to the national immunization schedule",
      "description" : "Determine if the client is due for a poliovirus vaccination according to the national immunization schedule\nInactivated polio vaccine (IPV)-only (in countries, in polio-free regions, with a very low risk of importation \nand sustained high routine immunization coverage (third dose of the diphtheria–tetanus–pertussis vaccine [DTP3] > 90%)",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "Primary series is complete. Client is due for IPV booster dose",
            "language" : "text/cql-identifier",
            "expression" : "Primary series is complete. Client is due for IPV booster dose"
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
            "expression" : "Concept { codes: { Code { system: 'http://smart.who.int/immunizations/CodeSystem/IMMZ.Z', code: 'DE31', display: 'Inactivated polio vaccines' } }, display: 'Inactivated polio vaccines' }"
          }
        }
      ]
    },
    {
      "title" : "Check for Guidance for the patient regarding IMMZ.D2.DT.Polio.IPV-only.",
      "description" : "Show Guidance for the patient regarding IMMZ.D2.DT.Polio.IPV-only.",
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
