# IMMZ.D18.S.Measles.Supplementary dose schedule - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D18.S.Measles.Supplementary dose schedule**

## PlanDefinition: IMMZ.D18.S.Measles.Supplementary dose schedule 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/PlanDefinition/IMMZD18SMeaslesSupplementaryDose | *Version*:0.2.0 |
| Draft as of 2025-11-25 | *Computable Name*:IMMZD18SMeaslesSupplementaryDose |

 
IMMZ.D18.S.Measles.Supplementary dose schedule Measles supplementary dose schedule 

* **Actions:**: **Url:**
  * : [IMMZ.D18.S.Measles.Supplementary dose schedule](PlanDefinition-IMMZD18SMeaslesSupplementaryDose.md)
* **Actions:**: **Version:**
  * : 0.2.0
* **Actions:**: **Title:**
  * : IMMZ.D18.S.Measles.Supplementary dose schedule
* **Actions:**: **Status:**
  * : draft
* **Actions:**: **Date:**
  * : 2025-11-25 19:41:02+0000
* **Actions:**: **Publisher:**
  * : WHO
* **Actions:**: **Description:**
  * : IMMZ.D18.S.Measles.Supplementary dose schedule Measles supplementary dose schedule
* **Actions:**: **Knowledge Capability:**
  * : computable
* **Actions:**: **Libraries:**
  * : 
| |
| :--- |
| [IMMZD18SMeaslesSupplementaryDoseLogic](Library-IMMZD18SMeaslesSupplementaryDoseLogic.md) |




## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "IMMZD18SMeaslesSupplementaryDose",
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
  "url" : "http://smart.who.int/immunizations/PlanDefinition/IMMZD18SMeaslesSupplementaryDose",
  "version" : "0.2.0",
  "name" : "IMMZD18SMeaslesSupplementaryDose",
  "title" : "IMMZ.D18.S.Measles.Supplementary dose schedule",
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
  "description" : "IMMZ.D18.S.Measles.Supplementary dose schedule\nMeasles supplementary dose schedule",
  "relatedArtifact" : [
    {
      "type" : "citation",
      "citation" : "WHO recommendations for routine immunization - summary tables (January 2025)"
    }
  ],
  "library" : [
    "http://smart.who.int/immunizations/Library/IMMZD18SMeaslesSupplementaryDoseLogic"
  ],
  "action" : [
    {
      "title" : "Measles-containing vaccine (MCV) supplementary dose",
      "description" : "Provision of a MCV supplementary dose\nTrigger event: Routine measles immunization schedule is complete\nTrigger pseudo: \"Completed the primary vaccination series\" = TRUE (where \"Vaccine type\" = \"Measles-containing vaccines\") AND Member States defined logic for supplementary dose applied\nTrigger date: \"Date when the primary vaccination series was completed\"\nCreate condition: Child is due for a MCV supplementary dose if child is HIV-positive, on antiretroviral therapy (ART) and immune reconstitution has been achieved.",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "Measles-containing vaccine (MCV) supplementary dose",
            "language" : "text/cql-identifier",
            "expression" : "Measles-containing vaccine (MCV) supplementary dose"
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
            "expression" : "Measles-containing vaccine (MCV) supplementary dose Create"
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
