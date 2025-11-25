# IMMZ.D18.S.Meningococcal.Polysaccharide vaccines schedule - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D18.S.Meningococcal.Polysaccharide vaccines schedule**

## PlanDefinition: IMMZ.D18.S.Meningococcal.Polysaccharide vaccines schedule 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/PlanDefinition/IMMZD18SMeningococcalPolysaccharideVaccines | *Version*:0.2.0 |
| Draft as of 2025-11-25 | *Computable Name*:IMMZD18SMeningococcalPolysaccharideVaccines |

 
IMMZ.D18.S.Meningococcal.Polysaccharide vaccines schedule Polysaccharide vaccines, 1-dose and booster dose schedule 

* **Actions:**: **Url:**
  * : [IMMZ.D18.S.Meningococcal.Polysaccharide vaccines schedule](PlanDefinition-IMMZD18SMeningococcalPolysaccharideVaccines.md)
* **Actions:**: **Version:**
  * : 0.2.0
* **Actions:**: **Title:**
  * : IMMZ.D18.S.Meningococcal.Polysaccharide vaccines schedule
* **Actions:**: **Status:**
  * : draft
* **Actions:**: **Date:**
  * : 2025-11-25 19:41:02+0000
* **Actions:**: **Publisher:**
  * : WHO
* **Actions:**: **Description:**
  * : IMMZ.D18.S.Meningococcal.Polysaccharide vaccines schedule Polysaccharide vaccines, 1-dose and booster dose schedule
* **Actions:**: **Knowledge Capability:**
  * : computable
* **Actions:**: **Libraries:**
  * : 
| |
| :--- |
| [IMMZD18SMeningococcalPolysaccharideVaccinesLogic](Library-IMMZD18SMeningococcalPolysaccharideVaccinesLogic.md) |




## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "IMMZD18SMeningococcalPolysaccharideVaccines",
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
  "url" : "http://smart.who.int/immunizations/PlanDefinition/IMMZD18SMeningococcalPolysaccharideVaccines",
  "version" : "0.2.0",
  "name" : "IMMZD18SMeningococcalPolysaccharideVaccines",
  "title" : "IMMZ.D18.S.Meningococcal.Polysaccharide vaccines schedule",
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
  "description" : "IMMZ.D18.S.Meningococcal.Polysaccharide vaccines schedule\nPolysaccharide vaccines, 1-dose and booster dose schedule",
  "relatedArtifact" : [
    {
      "type" : "citation",
      "citation" : "WHO recommendations for routine immunization - summary tables (January 2025)"
    }
  ],
  "library" : [
    "http://smart.who.int/immunizations/Library/IMMZD18SMeningococcalPolysaccharideVaccinesLogic"
  ],
  "action" : [
    {
      "title" : "Meningococcal dose 1",
      "description" : "Provision of the meningococcal dose 1\nTrigger event: Child's birth\nTrigger pseudo: \nTrigger date: \"Date of birth\"\nCreate condition: Polysaccharide vaccines should be administered to individuals aged ≥ 2 years.",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "Meningococcal dose 1",
            "language" : "text/cql-identifier",
            "expression" : "Meningococcal dose 1"
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
            "expression" : "Meningococcal dose 1 Create"
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
    },
    {
      "title" : "Meningococcal booster dose",
      "description" : "Provision of the meningococcal booster dose\nTrigger event: Primary series has been completed\nTrigger pseudo: \"Completed the primary vaccination series\" (where \"Vaccine type\" = \"Meningococcal vaccines\") = TRUE\nTrigger date: \"Date and time of vaccination\" (where \"Vaccine type\" = \"Meningococcal vaccines\")\nCreate condition: One booster 3–5 years after the primary dose may be given to persons considered to be a continued high risk of exposure, including some health workers.",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "Meningococcal booster dose",
            "language" : "text/cql-identifier",
            "expression" : "Meningococcal booster dose"
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
            "expression" : "Meningococcal booster dose Create"
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
