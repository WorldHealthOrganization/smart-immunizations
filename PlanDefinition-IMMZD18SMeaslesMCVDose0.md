# IMMZ.D18.S.Measles.MCV dose 0 schedule - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D18.S.Measles.MCV dose 0 schedule**

## PlanDefinition: IMMZ.D18.S.Measles.MCV dose 0 schedule 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/PlanDefinition/IMMZD18SMeaslesMCVDose0 | *Version*:0.2.0 |
| Draft as of 2025-11-25 | *Computable Name*:IMMZD18SMeaslesMCVDose0 |

 
IMMZ.D18.S.Measles.MCV dose 0 schedule Measles-containing vaccine dose 0 (MCV0) schedule 

* **Actions:**: **Url:**
  * : [IMMZ.D18.S.Measles.MCV dose 0 schedule](PlanDefinition-IMMZD18SMeaslesMCVDose0.md)
* **Actions:**: **Version:**
  * : 0.2.0
* **Actions:**: **Title:**
  * : IMMZ.D18.S.Measles.MCV dose 0 schedule
* **Actions:**: **Status:**
  * : draft
* **Actions:**: **Date:**
  * : 2025-11-25 19:41:02+0000
* **Actions:**: **Publisher:**
  * : WHO
* **Actions:**: **Description:**
  * : IMMZ.D18.S.Measles.MCV dose 0 schedule Measles-containing vaccine dose 0 (MCV0) schedule
* **Actions:**: **Knowledge Capability:**
  * : computable
* **Actions:**: **Libraries:**
  * : 
| |
| :--- |
| [IMMZD18SMeaslesMCVDose0Logic](Library-IMMZD18SMeaslesMCVDose0Logic.md) |




## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "IMMZD18SMeaslesMCVDose0",
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
  "url" : "http://smart.who.int/immunizations/PlanDefinition/IMMZD18SMeaslesMCVDose0",
  "version" : "0.2.0",
  "name" : "IMMZD18SMeaslesMCVDose0",
  "title" : "IMMZ.D18.S.Measles.MCV dose 0 schedule",
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
  "description" : "IMMZ.D18.S.Measles.MCV dose 0 schedule\nMeasles-containing vaccine dose 0 (MCV0) schedule",
  "relatedArtifact" : [
    {
      "type" : "citation",
      "citation" : "WHO recommendations for routine immunization - summary tables (January 2025)"
    }
  ],
  "library" : [
    "http://smart.who.int/immunizations/Library/IMMZD18SMeaslesMCVDose0Logic"
  ],
  "action" : [
    {
      "title" : "MCV0",
      "description" : "Provision of the MCV0\nTrigger event: Child's birth\nTrigger pseudo: \nTrigger date: \"Date of birth\"\nCreate condition: In the following situations, a supplementary dose of MCV should be given to infants from 6 months of age: \n• during a measles outbreak as part of intensified service delivery;\n• during campaigns in settings where the risk of measles among infants aged under 9 months remains high (e.g. in endemic countries experiencing regular outbreaks);\n• for internally displaced populations and refugees, and populations in conflict zones;\n• for individual infants at high risk of contracting measles (e.g. contacts of known measles cases or in settings with increased risk of exposure during outbreaks such as day-care facilities);\n• for infants travelling to countries experiencing measles outbreaks;\n• for infants known to be HIV-infected or exposed (i.e. born to a woman infected with HIV).",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "MCV0",
            "language" : "text/cql-identifier",
            "expression" : "MCV0"
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
            "expression" : "MCV0 Create"
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
