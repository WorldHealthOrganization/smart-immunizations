# IMMZ.D18.S.Rubella.Low incidence schedule - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D18.S.Rubella.Low incidence schedule**

## PlanDefinition: IMMZ.D18.S.Rubella.Low incidence schedule 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/PlanDefinition/IMMZD18SRubellaLowIncidence | *Version*:0.2.0 |
| Draft as of 2025-11-25 | *Computable Name*:IMMZD18SRubellaLowIncidence |

 
IMMZ.D18.S.Rubella.Low incidence schedule Schedule for countries with low incidence of rubella 

* **Actions:**: **Url:**
  * : [IMMZ.D18.S.Rubella.Low incidence schedule](PlanDefinition-IMMZD18SRubellaLowIncidence.md)
* **Actions:**: **Version:**
  * : 0.2.0
* **Actions:**: **Title:**
  * : IMMZ.D18.S.Rubella.Low incidence schedule
* **Actions:**: **Status:**
  * : draft
* **Actions:**: **Date:**
  * : 2025-11-25 19:41:02+0000
* **Actions:**: **Publisher:**
  * : WHO
* **Actions:**: **Description:**
  * : IMMZ.D18.S.Rubella.Low incidence schedule Schedule for countries with low incidence of rubella
* **Actions:**: **Knowledge Capability:**
  * : computable
* **Actions:**: **Libraries:**
  * : 
| |
| :--- |
| [IMMZD18SRubellaLowIncidenceLogic](Library-IMMZD18SRubellaLowIncidenceLogic.md) |




## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "IMMZD18SRubellaLowIncidence",
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
  "url" : "http://smart.who.int/immunizations/PlanDefinition/IMMZD18SRubellaLowIncidence",
  "version" : "0.2.0",
  "name" : "IMMZD18SRubellaLowIncidence",
  "title" : "IMMZ.D18.S.Rubella.Low incidence schedule",
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
  "description" : "IMMZ.D18.S.Rubella.Low incidence schedule\nSchedule for countries with low incidence of rubella",
  "relatedArtifact" : [
    {
      "type" : "citation",
      "citation" : "WHO recommendations for routine immunization - summary tables (January 2025)"
    }
  ],
  "library" : [
    "http://smart.who.int/immunizations/Library/IMMZD18SRubellaLowIncidenceLogic"
  ],
  "action" : [
    {
      "title" : "Rubella dose 1",
      "description" : "Provision of the rubella dose 1\nTrigger event: Child's birth\nTrigger pseudo: \nTrigger date: \"Date of birth\"\nCreate condition: Rubella dose 1 should be provided if the client's age is at least 12 months",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "Rubella dose 1",
            "language" : "text/cql-identifier",
            "expression" : "Rubella dose 1"
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
            "expression" : "Rubella dose 1 Create"
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
