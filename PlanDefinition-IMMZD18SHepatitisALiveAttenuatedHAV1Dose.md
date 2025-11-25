# IMMZ.D18.S.Hepatitis A.Live attenuated HAV 1-dose schedule - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D18.S.Hepatitis A.Live attenuated HAV 1-dose schedule**

## PlanDefinition: IMMZ.D18.S.Hepatitis A.Live attenuated HAV 1-dose schedule 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/PlanDefinition/IMMZD18SHepatitisALiveAttenuatedHAV1Dose | *Version*:0.2.0 |
| Draft as of 2025-11-25 | *Computable Name*:IMMZD18SHepatitisALiveAttenuatedHAV1Dose |

 
IMMZ.D18.S.Hepatitis A.Live attenuated HAV 1-dose schedule Live attenuated hepatitis A virus (HAV), 1 dose schedule 

* **Actions:**: **Url:**
  * : [IMMZ.D18.S.Hepatitis A.Live attenuated HAV 1-dose schedule](PlanDefinition-IMMZD18SHepatitisALiveAttenuatedHAV1Dose.md)
* **Actions:**: **Version:**
  * : 0.2.0
* **Actions:**: **Title:**
  * : IMMZ.D18.S.Hepatitis A.Live attenuated HAV 1-dose schedule
* **Actions:**: **Status:**
  * : draft
* **Actions:**: **Date:**
  * : 2025-11-25 19:41:02+0000
* **Actions:**: **Publisher:**
  * : WHO
* **Actions:**: **Description:**
  * : IMMZ.D18.S.Hepatitis A.Live attenuated HAV 1-dose schedule Live attenuated hepatitis A virus (HAV), 1 dose schedule
* **Actions:**: **Knowledge Capability:**
  * : computable
* **Actions:**: **Libraries:**
  * : 
| |
| :--- |
| [IMMZD18SHepatitisALiveAttenuatedHAV1DoseLogic](Library-IMMZD18SHepatitisALiveAttenuatedHAV1DoseLogic.md) |




## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "IMMZD18SHepatitisALiveAttenuatedHAV1Dose",
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
  "url" : "http://smart.who.int/immunizations/PlanDefinition/IMMZD18SHepatitisALiveAttenuatedHAV1Dose",
  "version" : "0.2.0",
  "name" : "IMMZD18SHepatitisALiveAttenuatedHAV1Dose",
  "title" : "IMMZ.D18.S.Hepatitis A.Live attenuated HAV 1-dose schedule",
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
  "description" : "IMMZ.D18.S.Hepatitis A.Live attenuated HAV 1-dose schedule\nLive attenuated hepatitis A virus (HAV), 1 dose schedule",
  "relatedArtifact" : [
    {
      "type" : "citation",
      "citation" : "WHO recommendations for routine immunization - summary tables (January 2025)"
    }
  ],
  "library" : [
    "http://smart.who.int/immunizations/Library/IMMZD18SHepatitisALiveAttenuatedHAV1DoseLogic"
  ],
  "action" : [
    {
      "title" : "Hepatitis A dose 1",
      "description" : "Provision of the hepatitis A dose 1\nTrigger event: Child's birth\nTrigger pseudo: \nTrigger date: \"Date of birth\"\nCreate condition: Live vaccines are licensed for individuals aged ≥ 18 months and are administered as a single subcutaneous dose.",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "Hepatitis A dose 1",
            "language" : "text/cql-identifier",
            "expression" : "Hepatitis A dose 1"
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
            "expression" : "Hepatitis A dose 1 Create"
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
