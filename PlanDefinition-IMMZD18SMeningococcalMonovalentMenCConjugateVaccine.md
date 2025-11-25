# IMMZ.D18.S.Meningococcal.Monovalent MenC conjugate vaccine schedule - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D18.S.Meningococcal.Monovalent MenC conjugate vaccine schedule**

## PlanDefinition: IMMZ.D18.S.Meningococcal.Monovalent MenC conjugate vaccine schedule 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/PlanDefinition/IMMZD18SMeningococcalMonovalentMenCConjugateVaccine | *Version*:0.2.0 |
| Draft as of 2025-11-25 | *Computable Name*:IMMZD18SMeningococcalMonovalentMenCConjugateVaccine |

 
IMMZ.D18.S.Meningococcal.Monovalent MenC conjugate vaccine schedule Monovalent MenC conjugate schedule 

* **Actions:**: **Url:**
  * : [IMMZ.D18.S.Meningococcal.Monovalent MenC conjugate vaccine schedule](PlanDefinition-IMMZD18SMeningococcalMonovalentMenCConjugateVaccine.md)
* **Actions:**: **Version:**
  * : 0.2.0
* **Actions:**: **Title:**
  * : IMMZ.D18.S.Meningococcal.Monovalent MenC conjugate vaccine schedule
* **Actions:**: **Status:**
  * : draft
* **Actions:**: **Date:**
  * : 2025-11-25 19:41:02+0000
* **Actions:**: **Publisher:**
  * : WHO
* **Actions:**: **Description:**
  * : IMMZ.D18.S.Meningococcal.Monovalent MenC conjugate vaccine schedule Monovalent MenC conjugate schedule
* **Actions:**: **Knowledge Capability:**
  * : computable
* **Actions:**: **Libraries:**
  * : 
| |
| :--- |
| [IMMZD18SMeningococcalMonovalentMenCConjugateVaccineLogic](Library-IMMZD18SMeningococcalMonovalentMenCConjugateVaccineLogic.md) |




## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "IMMZD18SMeningococcalMonovalentMenCConjugateVaccine",
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
  "url" : "http://smart.who.int/immunizations/PlanDefinition/IMMZD18SMeningococcalMonovalentMenCConjugateVaccine",
  "version" : "0.2.0",
  "name" : "IMMZD18SMeningococcalMonovalentMenCConjugateVaccine",
  "title" : "IMMZ.D18.S.Meningococcal.Monovalent MenC conjugate vaccine schedule",
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
  "description" : "IMMZ.D18.S.Meningococcal.Monovalent MenC conjugate vaccine schedule\nMonovalent MenC conjugate schedule",
  "relatedArtifact" : [
    {
      "type" : "citation",
      "citation" : "WHO recommendations for routine immunization - summary tables (January 2025)"
    }
  ],
  "library" : [
    "http://smart.who.int/immunizations/Library/IMMZD18SMeningococcalMonovalentMenCConjugateVaccineLogic"
  ],
  "action" : [
    {
      "title" : "Meningococcal dose 1",
      "description" : "Provision of the meningococcal dose 1\nTrigger event: Child's birth\nTrigger pseudo: \nTrigger date: \"Date of birth\"\nCreate condition: For monovalent MenC conjugate vaccine, one single intramuscular dose is recommended for children aged ≥ 12 months, teenagers and adults. Children aged 2–11 months require 2 doses administered.",
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
      "title" : "Meningococcal dose 2",
      "description" : "Provision of the meningococcal dose 2 for clients that start the series when aged ≤ 11 months\nTrigger event: First meningococcal dose from the primary series was administered and client started the series when client's age was less than or equal to 11 months\nTrigger pseudo: Count of vaccines administered (where \"Vaccine type\" = \"Meningococcal vaccines\" and \"Type of dose\" = \"Primary series\") = 1 and \"Date and time of vaccination\" (where \"Vaccine type\" = \"Meningococcal vaccines\") - \"Date of birth\" ≤ 11 months\nTrigger date: \"Date and time of vaccination\" (where \"Vaccine type\" = \"Meningococcal vaccines\")\nCreate condition: Children 2–11 months require 2 doses administered at an interval of at least 2 months and a booster about 1 year after.",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "Meningococcal dose 2",
            "language" : "text/cql-identifier",
            "expression" : "Meningococcal dose 2"
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
            "expression" : "Meningococcal dose 2 Create"
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
      "description" : "Provision of the meningococcal booster dose for clients that start the series when aged ≤ 11 months\nTrigger event: The primary series has been completed and client started the series when client's age was less than or equal to 11 months\nTrigger pseudo: \"Completed the primary vaccination series\" (where \"Vaccine type\" = \"Meningococcal vaccines\") = TRUE and \"Date and time of vaccination\" (where \"Vaccine type\" = \"Meningococcal vaccines\" and \"Dose number\" = 1) - \"Date of birth\" ≤ 11 months\nTrigger date: Latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Meningococcal vaccines\")\nCreate condition: Children 2–11 months require 2 doses administered at an interval of at least 2 months and a booster about 1 year after.",
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
