# IMMZ.D2.DT.Meningococcal.Monovalent MenC conjugate vaccine - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D2.DT.Meningococcal.Monovalent MenC conjugate vaccine**

## PlanDefinition: IMMZ.D2.DT.Meningococcal.Monovalent MenC conjugate vaccine 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/PlanDefinition/IMMZD2DTMeningococcalMonovalentMenCConjugateVaccine | *Version*:0.2.0 |
| Draft as of 2025-11-25 | *Computable Name*:IMMZD2DTMeningococcalMonovalentMenCConjugateVaccine |

 
IMMZ.D2.DT.Meningococcal.Monovalent MenC conjugate vaccine Monovalent MenC conjugate vaccine schedule 

* **Actions:**: **Url:**
  * : [IMMZ.D2.DT.Meningococcal.Monovalent MenC conjugate vaccine](PlanDefinition-IMMZD2DTMeningococcalMonovalentMenCConjugateVaccine.md)
* **Actions:**: **Version:**
  * : 0.2.0
* **Actions:**: **Title:**
  * : IMMZ.D2.DT.Meningococcal.Monovalent MenC conjugate vaccine
* **Actions:**: **Status:**
  * : draft
* **Actions:**: **Date:**
  * : 2025-11-25 19:41:02+0000
* **Actions:**: **Publisher:**
  * : WHO
* **Actions:**: **Description:**
  * : IMMZ.D2.DT.Meningococcal.Monovalent MenC conjugate vaccine Monovalent MenC conjugate vaccine schedule
* **Actions:**: **Knowledge Capability:**
  * : computable
* **Actions:**: **Libraries:**
  * : 
| |
| :--- |
| [IMMZD2DTMeningococcalMonovalentMenCConjugateVaccineLogic](Library-IMMZD2DTMeningococcalMonovalentMenCConjugateVaccineLogic.md) |




## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "IMMZD2DTMeningococcalMonovalentMenCConjugateVaccine",
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
  "url" : "http://smart.who.int/immunizations/PlanDefinition/IMMZD2DTMeningococcalMonovalentMenCConjugateVaccine",
  "version" : "0.2.0",
  "name" : "IMMZD2DTMeningococcalMonovalentMenCConjugateVaccine",
  "title" : "IMMZ.D2.DT.Meningococcal.Monovalent MenC conjugate vaccine",
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
  "description" : "IMMZ.D2.DT.Meningococcal.Monovalent MenC conjugate vaccine\nMonovalent MenC conjugate vaccine schedule",
  "relatedArtifact" : [
    {
      "type" : "citation",
      "citation" : "WHO recommendations for routine immunization - summary tables (January 2025)"
    }
  ],
  "library" : [
    "http://smart.who.int/immunizations/Library/IMMZD2DTMeningococcalMonovalentMenCConjugateVaccineLogic"
  ],
  "action" : [
    {
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rationale",
          "valueMarkdown" : "Children aged 2–11 months require 2 doses administered. \nFor monovalent MenC conjugate vaccine, one single intramuscular dose is recommended for children aged ≥ 12 months, \nteenagers and adults. Children aged 2–11 months require 2 doses administered. \nChildren aged 2–11 months require 2 doses administered at an interval of at least 2 months.\nFor monovalent MenC conjugate vaccine, one single intramuscular dose is recommended for children aged ≥ 12 months, teenagers and adults.\nIt is not yet known whether booster doses will be needed for long-term protection in healthy individuals who received primary vaccination when aged ≥ 12 months. "
        }
      ],
      "title" : "Determine if the client is due for Meningococcal.",
      "description" : "Determine if the client is due for Meningococcal vaccine according to the national immunization protocol.\nMonovalent MenC conjugate vaccine schedule",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "Client is due for meningococcal vaccination",
            "language" : "text/cql-identifier",
            "expression" : "Client is due for meningococcal vaccination"
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
            "expression" : "Concept { codes: { Code { system: 'http://smart.who.int/immunizations/CodeSystem/IMMZ.Z', code: 'DE10', display: 'Meningococcal vaccines' } }, display: 'Meningococcal vaccines' }"
          }
        }
      ]
    },
    {
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rationale",
          "valueMarkdown" : "Children aged 2–11 months require 2 doses administered at an interval of at least 2 months and a booster about 1 year after."
        }
      ],
      "title" : "Determine if the client is due for Meningococcal.",
      "description" : "Determine if the client is due for Meningococcal vaccine according to the national immunization protocol.\nMonovalent MenC conjugate vaccine schedule",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "The primary series is complete. Client is due for meningococcal booster dose",
            "language" : "text/cql-identifier",
            "expression" : "The primary series is complete. Client is due for meningococcal booster dose"
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
            "expression" : "Concept { codes: { Code { system: 'http://smart.who.int/immunizations/CodeSystem/IMMZ.Z', code: 'DE10', display: 'Meningococcal vaccines' } }, display: 'Meningococcal vaccines' }"
          }
        }
      ]
    },
    {
      "title" : "Check for Guidance for the patient regarding IMMZ.D2.DT.Meningococcal.Monovalent MenC conjugate vaccine.",
      "description" : "Show Guidance for the patient regarding IMMZ.D2.DT.Meningococcal.Monovalent MenC conjugate vaccine.",
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
