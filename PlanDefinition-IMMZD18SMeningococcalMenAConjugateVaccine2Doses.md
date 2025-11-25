# IMMZ.D18.S.Meningococcal.MenA conjugate vaccine 2-dose schedule - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D18.S.Meningococcal.MenA conjugate vaccine 2-dose schedule**

## PlanDefinition: IMMZ.D18.S.Meningococcal.MenA conjugate vaccine 2-dose schedule 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/PlanDefinition/IMMZD18SMeningococcalMenAConjugateVaccine2Doses | *Version*:0.2.0 |
| Draft as of 2025-11-25 | *Computable Name*:IMMZD18SMeningococcalMenAConjugateVaccine2Doses |

 
IMMZ.D18.S.Meningococcal.MenA conjugate vaccine 2-dose schedule MenA conjugate vaccine, 2-dose schedule (specific context where there is a compelling reason to vaccinate infants aged under 9 months) 

* **Actions:**: **Url:**
  * : [IMMZ.D18.S.Meningococcal.MenA conjugate vaccine 2-dose schedule](PlanDefinition-IMMZD18SMeningococcalMenAConjugateVaccine2Doses.md)
* **Actions:**: **Version:**
  * : 0.2.0
* **Actions:**: **Title:**
  * : IMMZ.D18.S.Meningococcal.MenA conjugate vaccine 2-dose schedule
* **Actions:**: **Status:**
  * : draft
* **Actions:**: **Date:**
  * : 2025-11-25 19:41:02+0000
* **Actions:**: **Publisher:**
  * : WHO
* **Actions:**: **Description:**
  * : IMMZ.D18.S.Meningococcal.MenA conjugate vaccine 2-dose schedule MenA conjugate vaccine, 2-dose schedule (specific context where there is a compelling reason to vaccinate infants aged under 9 months)
* **Actions:**: **Knowledge Capability:**
  * : computable
* **Actions:**: **Libraries:**
  * : 
| |
| :--- |
| [IMMZD18SMeningococcalMenAConjugateVaccine2DosesLogic](Library-IMMZD18SMeningococcalMenAConjugateVaccine2DosesLogic.md) |




## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "IMMZD18SMeningococcalMenAConjugateVaccine2Doses",
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
  "url" : "http://smart.who.int/immunizations/PlanDefinition/IMMZD18SMeningococcalMenAConjugateVaccine2Doses",
  "version" : "0.2.0",
  "name" : "IMMZD18SMeningococcalMenAConjugateVaccine2Doses",
  "title" : "IMMZ.D18.S.Meningococcal.MenA conjugate vaccine 2-dose schedule",
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
  "description" : "IMMZ.D18.S.Meningococcal.MenA conjugate vaccine 2-dose schedule\nMenA conjugate vaccine, 2-dose schedule (specific context where there is a compelling reason to vaccinate infants aged under 9 months)",
  "relatedArtifact" : [
    {
      "type" : "citation",
      "citation" : "WHO recommendations for routine immunization - summary tables (January 2025)"
    }
  ],
  "library" : [
    "http://smart.who.int/immunizations/Library/IMMZD18SMeningococcalMenAConjugateVaccine2DosesLogic"
  ],
  "action" : [
    {
      "title" : "Meningococcal dose 1",
      "description" : "Provision of the meningococcal dose 1\nTrigger event: Child's birth\nTrigger pseudo: \nTrigger date: \"Date of birth\"\nCreate condition: If, in a specific context, there is a compelling reason to vaccinate infants aged under 9 months, a 2-priming dose infant schedule should be used starting at 3 months of age.",
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
      "description" : "Provision of the meningococcal dose 2\nTrigger event: First meningococcal dose from the primary series was administered\nTrigger pseudo: Count of vaccines administered (where \"Vaccine type\" = \"Meningococcal vaccines\") = 1\nTrigger date: \"Date and time of vaccination\" (where \"Vaccine type\" = \"Meningococcal vaccines\")\nCreate condition: Meningococcal dose 2 should be provided if the client's age is 3–9 months, 8 weeks after the first dose, and there is a compelling reason to vaccinate the infant.",
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
    }
  ]
}

```
