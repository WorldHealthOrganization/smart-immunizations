# IMMZ.D18.S.Hepatitis A.Inactivated HAV 2-dose schedule - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D18.S.Hepatitis A.Inactivated HAV 2-dose schedule**

## PlanDefinition: IMMZ.D18.S.Hepatitis A.Inactivated HAV 2-dose schedule 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/PlanDefinition/IMMZD18SHepatitisAInactivatedHAV2Doses | *Version*:0.2.0 |
| Draft as of 2025-11-25 | *Computable Name*:IMMZD18SHepatitisAInactivatedHAV2Doses |

 
IMMZ.D18.S.Hepatitis A.Inactivated HAV 2-dose schedule Inactivated hepatitis A virus (HAV), 2-dose schedule 

* **Actions:**: **Url:**
  * : [IMMZ.D18.S.Hepatitis A.Inactivated HAV 2-dose schedule](PlanDefinition-IMMZD18SHepatitisAInactivatedHAV2Doses.md)
* **Actions:**: **Version:**
  * : 0.2.0
* **Actions:**: **Title:**
  * : IMMZ.D18.S.Hepatitis A.Inactivated HAV 2-dose schedule
* **Actions:**: **Status:**
  * : draft
* **Actions:**: **Date:**
  * : 2025-11-25 19:41:02+0000
* **Actions:**: **Publisher:**
  * : WHO
* **Actions:**: **Description:**
  * : IMMZ.D18.S.Hepatitis A.Inactivated HAV 2-dose schedule Inactivated hepatitis A virus (HAV), 2-dose schedule
* **Actions:**: **Knowledge Capability:**
  * : computable
* **Actions:**: **Libraries:**
  * : 
| |
| :--- |
| [IMMZD18SHepatitisAInactivatedHAV2DosesLogic](Library-IMMZD18SHepatitisAInactivatedHAV2DosesLogic.md) |




## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "IMMZD18SHepatitisAInactivatedHAV2Doses",
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
  "url" : "http://smart.who.int/immunizations/PlanDefinition/IMMZD18SHepatitisAInactivatedHAV2Doses",
  "version" : "0.2.0",
  "name" : "IMMZD18SHepatitisAInactivatedHAV2Doses",
  "title" : "IMMZ.D18.S.Hepatitis A.Inactivated HAV 2-dose schedule",
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
  "description" : "IMMZ.D18.S.Hepatitis A.Inactivated HAV 2-dose schedule\nInactivated hepatitis A virus (HAV), 2-dose schedule",
  "relatedArtifact" : [
    {
      "type" : "citation",
      "citation" : "WHO recommendations for routine immunization - summary tables (January 2025)"
    }
  ],
  "library" : [
    "http://smart.who.int/immunizations/Library/IMMZD18SHepatitisAInactivatedHAV2DosesLogic"
  ],
  "action" : [
    {
      "title" : "Hepatitis A dose 1",
      "description" : "Provision of the hepatitis A dose 1\nTrigger event: Child's birth\nTrigger pseudo: \nTrigger date: \"Date of birth\"\nCreate condition: With a 2-dose schedule, the first dose should be given from ≥ 12 months of age.",
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
    },
    {
      "title" : "Hepatitis A dose 2",
      "description" : "Provision of the hepatitis A dose 2\nTrigger event: First hepatitis A dose from the primary series was administered\nTrigger pseudo: Count of vaccines administered (where \"Vaccine type\" = \"Hepatitis A-containing vaccines\" and \"Type of dose\" = \"Primary series\") = 1\nTrigger date: \"Date and time of vaccination\" (where \"Vaccine type\" = \"Hepatitis A-containing vaccines\")\nCreate condition: The interval between doses is flexible, from 6 months to 4–5 years or more, but is usually 6–18 months.",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "Hepatitis A dose 2",
            "language" : "text/cql-identifier",
            "expression" : "Hepatitis A dose 2"
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
            "expression" : "Hepatitis A dose 2 Create"
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
