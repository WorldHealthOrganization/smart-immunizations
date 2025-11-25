# IMMZ.D2.DT.Hepatitis B.Birth dose - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D2.DT.Hepatitis B.Birth dose**

## PlanDefinition: IMMZ.D2.DT.Hepatitis B.Birth dose 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/PlanDefinition/IMMZD2DTHepatitisBBirthDose | *Version*:0.2.0 |
| Draft as of 2025-11-25 | *Computable Name*:IMMZD2DTHepatitisBBirthDose |

 
IMMZ.D2.DT.Hepatitis B.Birth dose Birth dose administration 

* **Actions:**: **Url:**
  * : [IMMZ.D2.DT.Hepatitis B.Birth dose](PlanDefinition-IMMZD2DTHepatitisBBirthDose.md)
* **Actions:**: **Version:**
  * : 0.2.0
* **Actions:**: **Title:**
  * : IMMZ.D2.DT.Hepatitis B.Birth dose
* **Actions:**: **Status:**
  * : draft
* **Actions:**: **Date:**
  * : 2025-11-25 19:41:02+0000
* **Actions:**: **Publisher:**
  * : WHO
* **Actions:**: **Description:**
  * : IMMZ.D2.DT.Hepatitis B.Birth dose Birth dose administration
* **Actions:**: **Knowledge Capability:**
  * : computable
* **Actions:**: **Libraries:**
  * : 
| |
| :--- |
| [IMMZD2DTHepatitisBBirthDoseLogic](Library-IMMZD2DTHepatitisBBirthDoseLogic.md) |




## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "IMMZD2DTHepatitisBBirthDose",
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
  "url" : "http://smart.who.int/immunizations/PlanDefinition/IMMZD2DTHepatitisBBirthDose",
  "version" : "0.2.0",
  "name" : "IMMZD2DTHepatitisBBirthDose",
  "title" : "IMMZ.D2.DT.Hepatitis B.Birth dose",
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
  "description" : "IMMZ.D2.DT.Hepatitis B.Birth dose\nBirth dose administration",
  "relatedArtifact" : [
    {
      "type" : "citation",
      "citation" : "WHO recommendations for routine immunization - summary tables (January 2025)"
    }
  ],
  "library" : [
    "http://smart.who.int/immunizations/Library/IMMZD2DTHepatitisBBirthDoseLogic"
  ],
  "action" : [
    {
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rationale",
          "valueMarkdown" : "Hepatitis B vaccination is recommended for all children worldwide. Since perinatal or early postnatal transmission \n  is the most important source of chronic hepatitis B virus infection globally, all infants (including low-birth-weight and premature \n  infants) should receive their first dose of hepatitis B-containing vaccine as soon as possible after birth, ideally within 24 hours.  \n  If administration within 24 hours is not feasible, a late birth dose has some effectiveness. WHO recommends that all infants receive \n  the late birth dose during the first contact with health-care providers at any time up to the time of the next dose of the primary \n  schedule."
        }
      ],
      "title" : "Determine if the client is due for a hepatitis B vaccination according to the national immunization schedule",
      "description" : "Determine if the client is due for a hepatitis B vaccination according to the national immunization schedule\nBirth dose administration",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "Client is due for hepatitis B monovalent vaccine",
            "language" : "text/cql-identifier",
            "expression" : "Client is due for hepatitis B monovalent vaccine"
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
            "expression" : "Concept { codes: { Code { system: 'http://smart.who.int/immunizations/CodeSystem/IMMZ.Z', code: 'DE6', display: 'Hepatitis B-containing vaccines' } }, display: 'Hepatitis B-containing vaccines' }"
          }
        }
      ]
    },
    {
      "title" : "Check for Guidance for the patient regarding IMMZ.D2.DT.Hepatitis B.Birth dose.",
      "description" : "Show Guidance for the patient regarding IMMZ.D2.DT.Hepatitis B.Birth dose.",
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
