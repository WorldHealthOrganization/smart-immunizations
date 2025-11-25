# IMMZ.D2.DT.Hepatitis A.Inactivated HAV 1 dose - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D2.DT.Hepatitis A.Inactivated HAV 1 dose**

## PlanDefinition: IMMZ.D2.DT.Hepatitis A.Inactivated HAV 1 dose 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/PlanDefinition/IMMZD2DTHepatitisAInactivatedHAV1Dose | *Version*:0.2.0 |
| Draft as of 2025-11-25 | *Computable Name*:IMMZD2DTHepatitisAInactivatedHAV1Dose |

 
IMMZ.D2.DT.Hepatitis A.Inactivated HAV 1 dose Inactivated hepatitis A virus (HAV), 1-dose schedule 

* **Actions:**: **Url:**
  * : [IMMZ.D2.DT.Hepatitis A.Inactivated HAV 1 dose](PlanDefinition-IMMZD2DTHepatitisAInactivatedHAV1Dose.md)
* **Actions:**: **Version:**
  * : 0.2.0
* **Actions:**: **Title:**
  * : IMMZ.D2.DT.Hepatitis A.Inactivated HAV 1 dose
* **Actions:**: **Status:**
  * : draft
* **Actions:**: **Date:**
  * : 2025-11-25 19:41:02+0000
* **Actions:**: **Publisher:**
  * : WHO
* **Actions:**: **Description:**
  * : IMMZ.D2.DT.Hepatitis A.Inactivated HAV 1 dose Inactivated hepatitis A virus (HAV), 1-dose schedule
* **Actions:**: **Knowledge Capability:**
  * : computable
* **Actions:**: **Libraries:**
  * : 
| |
| :--- |
| [IMMZD2DTHepatitisAInactivatedHAV1DoseLogic](Library-IMMZD2DTHepatitisAInactivatedHAV1DoseLogic.md) |




## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "IMMZD2DTHepatitisAInactivatedHAV1Dose",
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
  "url" : "http://smart.who.int/immunizations/PlanDefinition/IMMZD2DTHepatitisAInactivatedHAV1Dose",
  "version" : "0.2.0",
  "name" : "IMMZD2DTHepatitisAInactivatedHAV1Dose",
  "title" : "IMMZ.D2.DT.Hepatitis A.Inactivated HAV 1 dose",
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
  "description" : "IMMZ.D2.DT.Hepatitis A.Inactivated HAV 1 dose\nInactivated hepatitis A virus (HAV), 1-dose schedule",
  "relatedArtifact" : [
    {
      "type" : "citation",
      "citation" : "WHO recommendations for routine immunization - summary tables (January 2025)"
    }
  ],
  "library" : [
    "http://smart.who.int/immunizations/Library/IMMZD2DTHepatitisAInactivatedHAV1DoseLogic"
  ],
  "action" : [
    {
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rationale",
          "valueMarkdown" : "For children, inactivated hepatitis A-containing vaccines can be given as a single-dose or 2-dose schedule, and administered intramuscularly.\nFor adults aged over 40 years, vaccination with inactivated vaccines using the 2-dose schedule is preferred since there is insufficient evidence on the immunogenicity and long-term protection from a single dose in this age group.\nWith a 2-dose schedule, the first dose should be given from ≥ 12 months of age."
        }
      ],
      "title" : "Determine if the client is due for HepatitisA.",
      "description" : "Determine if the client is due for HepatitisA vaccine according to the national immunization protocol.\nInactivated hepatitis A virus (HAV), 1-dose schedule",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "Client is due for Hepatitis A vaccination",
            "language" : "text/cql-identifier",
            "expression" : "Client is due for Hepatitis A vaccination"
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
            "expression" : "Concept { codes: { Code { system: 'http://smart.who.int/immunizations/CodeSystem/IMMZ.Z', code: 'DE5', display: 'Hepatitis A-containing vaccines' } }, display: 'Hepatitis A-containing vaccines' }"
          }
        }
      ]
    },
    {
      "title" : "Check for Guidance for the patient regarding IMMZ.D2.DT.Hepatitis A.Inactivated HAV 1 dose.",
      "description" : "Show Guidance for the patient regarding IMMZ.D2.DT.Hepatitis A.Inactivated HAV 1 dose.",
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
