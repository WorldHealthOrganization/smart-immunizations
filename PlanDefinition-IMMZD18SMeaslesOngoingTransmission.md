# IMMZ.D18.S.Measles.Ongoing transmission schedule - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D18.S.Measles.Ongoing transmission schedule**

## PlanDefinition: IMMZ.D18.S.Measles.Ongoing transmission schedule 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/PlanDefinition/IMMZD18SMeaslesOngoingTransmission | *Version*:0.2.0 |
| Draft as of 2025-11-25 | *Computable Name*:IMMZD18SMeaslesOngoingTransmission |

 
IMMZ.D18.S.Measles.Ongoing transmission schedule Countries with ongoing transmission in which the risk of measles mortality remains high (countries that provide first dose of measles-containing vaccine (MCV) at 9 months and second dose of MCV at 15 months) 

* **Actions:**: **Url:**
  * : [IMMZ.D18.S.Measles.Ongoing transmission schedule](PlanDefinition-IMMZD18SMeaslesOngoingTransmission.md)
* **Actions:**: **Version:**
  * : 0.2.0
* **Actions:**: **Title:**
  * : IMMZ.D18.S.Measles.Ongoing transmission schedule
* **Actions:**: **Status:**
  * : draft
* **Actions:**: **Date:**
  * : 2025-11-25 19:41:02+0000
* **Actions:**: **Publisher:**
  * : WHO
* **Actions:**: **Description:**
  * : IMMZ.D18.S.Measles.Ongoing transmission schedule Countries with ongoing transmission in which the risk of measles mortality remains high (countries that provide first dose of measles-containing vaccine (MCV) at 9 months and second dose of MCV at 15 months)
* **Actions:**: **Knowledge Capability:**
  * : computable
* **Actions:**: **Libraries:**
  * : 
| |
| :--- |
| [IMMZD18SMeaslesOngoingTransmissionLogic](Library-IMMZD18SMeaslesOngoingTransmissionLogic.md) |




## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "IMMZD18SMeaslesOngoingTransmission",
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
  "url" : "http://smart.who.int/immunizations/PlanDefinition/IMMZD18SMeaslesOngoingTransmission",
  "version" : "0.2.0",
  "name" : "IMMZD18SMeaslesOngoingTransmission",
  "title" : "IMMZ.D18.S.Measles.Ongoing transmission schedule",
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
  "description" : "IMMZ.D18.S.Measles.Ongoing transmission schedule\nCountries with ongoing transmission in which the risk of measles mortality remains high (countries that provide first dose of measles-containing vaccine (MCV) at 9 months and second dose of MCV at 15 months)",
  "relatedArtifact" : [
    {
      "type" : "citation",
      "citation" : "WHO recommendations for routine immunization - summary tables (January 2025)"
    }
  ],
  "library" : [
    "http://smart.who.int/immunizations/Library/IMMZD18SMeaslesOngoingTransmissionLogic"
  ],
  "action" : [
    {
      "title" : "MCV dose 1 (MCV1)",
      "description" : "Provision of MCV1 from the primary series\nTrigger event: Child's birth\nTrigger pseudo: \nTrigger date: \"Date of birth\"\nCreate condition: The client is due for MCV1 if the client is at least 9 months of age.",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "MCV dose 1 (MCV1)",
            "language" : "text/cql-identifier",
            "expression" : "MCV dose 1 (MCV1)"
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
            "expression" : "MCV dose 1 (MCV1) Create"
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
      "title" : "MCV2",
      "description" : "Provision of the MCV2 from the primary series\nTrigger event: MCV1 was administered\nTrigger pseudo: Count of vaccines administered (where \"Vaccine type\" = \"Measles-containing vaccines\" and \"Type of dose\" = \"Primary series\") = 1\nTrigger date: \"Date of birth\"\nCreate condition: The client is due for MCV2 if the client is at least 15 months of age.",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "MCV2",
            "language" : "text/cql-identifier",
            "expression" : "MCV2"
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
            "expression" : "MCV2 Create"
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
