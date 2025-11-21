# IMMZ.D2.DT.Hepatitis A.Live attenuated HAV 1 dose - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D2.DT.Hepatitis A.Live attenuated HAV 1 dose**

## PlanDefinition: IMMZ.D2.DT.Hepatitis A.Live attenuated HAV 1 dose 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/PlanDefinition/IMMZD2DTHepatitisALHAV1 | *Version*:0.2.0 |
| Draft as of 2025-11-21 | *Computable Name*:IMMZD2DTHepatitisALHAV1 |

 
IMMZ.D2.DT.Hepatitis A.Live attenuated HAV 1 dose Live attenuated hepatitis A virus (HAV), 1 dose schedule 

* **Actions:**: **Url:**
  * : [IMMZ.D2.DT.Hepatitis A.Live attenuated HAV 1 dose](PlanDefinition-IMMZD2DTHepatitisALHAV1.md)
* **Actions:**: **Version:**
  * : 0.2.0
* **Actions:**: **Title:**
  * : IMMZ.D2.DT.Hepatitis A.Live attenuated HAV 1 dose
* **Actions:**: **Status:**
  * : draft
* **Actions:**: **Date:**
  * : 2025-11-21 17:14:08+0000
* **Actions:**: **Publisher:**
  * : WHO
* **Actions:**: **Description:**
  * : IMMZ.D2.DT.Hepatitis A.Live attenuated HAV 1 dose Live attenuated hepatitis A virus (HAV), 1 dose schedule
* **Actions:**: **Knowledge Capability:**
  * : computable
* **Actions:**: **Libraries:**
  * : 
| |
| :--- |
| [IMMZD2DTHepatitisALHAV1Logic](Library-IMMZD2DTHepatitisALHAV1Logic.md) |




## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "IMMZD2DTHepatitisALHAV1",
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
  "url" : "http://smart.who.int/immunizations/PlanDefinition/IMMZD2DTHepatitisALHAV1",
  "version" : "0.2.0",
  "name" : "IMMZD2DTHepatitisALHAV1",
  "title" : "IMMZ.D2.DT.Hepatitis A.Live attenuated HAV 1 dose",
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
  "date" : "2025-11-21T17:14:08+00:00",
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
  "description" : "IMMZ.D2.DT.Hepatitis A.Live attenuated HAV 1 dose\nLive attenuated hepatitis A virus (HAV), 1 dose schedule",
  "relatedArtifact" : [
    {
      "type" : "citation",
      "citation" : "WHO recommendations for routine immunization - summary tables (January 2025)"
    }
  ],
  "library" : [
    "http://smart.who.int/immunizations/Library/IMMZD2DTHepatitisALHAV1Logic"
  ],
  "action" : [
    {
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rationale",
          "valueMarkdown" : "Live vaccines are licensed for individuals aged ≥18 months and are administered as a single subcutaneous dose."
        }
      ],
      "title" : "Determine if the client is due for HepatitisA.",
      "description" : "Determine if the client is due for HepatitisA vaccine according to the national immunization protocol.\nLive attenuated hepatitis A virus (HAV), 1 dose schedule",
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
      "title" : "Check for Guidance for the patient regarding IMMZ.D2.DT.Hepatitis A.Live attenuated HAV 1 dose.",
      "description" : "Show Guidance for the patient regarding IMMZ.D2.DT.Hepatitis A.Live attenuated HAV 1 dose.",
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
