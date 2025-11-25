# IMMZ.D2.DT.Meningococcal.MenA conjugate vaccine 1 dose - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D2.DT.Meningococcal.MenA conjugate vaccine 1 dose**

## PlanDefinition: IMMZ.D2.DT.Meningococcal.MenA conjugate vaccine 1 dose 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/PlanDefinition/IMMZD2DTMeningococcalMenAConjugateVaccine1Dose | *Version*:0.2.0 |
| Draft as of 2025-11-25 | *Computable Name*:IMMZD2DTMeningococcalMenAConjugateVaccine1Dose |

 
IMMZ.D2.DT.Meningococcal.MenA conjugate vaccine 1 dose MenA conjugate vaccine, 1-dose schedule 

* **Actions:**: **Url:**
  * : [IMMZ.D2.DT.Meningococcal.MenA conjugate vaccine 1 dose](PlanDefinition-IMMZD2DTMeningococcalMenAConjugateVaccine1Dose.md)
* **Actions:**: **Version:**
  * : 0.2.0
* **Actions:**: **Title:**
  * : IMMZ.D2.DT.Meningococcal.MenA conjugate vaccine 1 dose
* **Actions:**: **Status:**
  * : draft
* **Actions:**: **Date:**
  * : 2025-11-25 19:41:02+0000
* **Actions:**: **Publisher:**
  * : WHO
* **Actions:**: **Description:**
  * : IMMZ.D2.DT.Meningococcal.MenA conjugate vaccine 1 dose MenA conjugate vaccine, 1-dose schedule
* **Actions:**: **Knowledge Capability:**
  * : computable
* **Actions:**: **Libraries:**
  * : 
| |
| :--- |
| [IMMZD2DTMeningococcalMenAConjugateVaccine1DoseLogic](Library-IMMZD2DTMeningococcalMenAConjugateVaccine1DoseLogic.md) |




## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "IMMZD2DTMeningococcalMenAConjugateVaccine1Dose",
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
  "url" : "http://smart.who.int/immunizations/PlanDefinition/IMMZD2DTMeningococcalMenAConjugateVaccine1Dose",
  "version" : "0.2.0",
  "name" : "IMMZD2DTMeningococcalMenAConjugateVaccine1Dose",
  "title" : "IMMZ.D2.DT.Meningococcal.MenA conjugate vaccine 1 dose",
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
  "description" : "IMMZ.D2.DT.Meningococcal.MenA conjugate vaccine 1 dose\nMenA conjugate vaccine, 1-dose schedule",
  "relatedArtifact" : [
    {
      "type" : "citation",
      "citation" : "WHO recommendations for routine immunization - summary tables (January 2025)"
    }
  ],
  "library" : [
    "http://smart.who.int/immunizations/Library/IMMZD2DTMeningococcalMenAConjugateVaccine1DoseLogic"
  ],
  "action" : [
    {
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rationale",
          "valueMarkdown" : "For MenA conjugate vaccine (5µg), a 1-dose schedule is recommended at 9–18 months of age based on \nlocal programmatic and epidemiologic considerations.  Any children who miss vaccination at the recommended age \nshould be vaccinated as soon as possible thereafter. MenAfriVac 5 µg should be used for routine immunization of \ninfants and young children aged 3 to 24 months.  MenAfriVac 10 µg should be used for catch-up and periodic campaigns \nfrom 12 months of age onwards."
        }
      ],
      "title" : "Determine if the client is due for Meningococcal.",
      "description" : "Determine if the client is due for Meningococcal vaccine according to the national immunization protocol.\nMenA conjugate vaccine, 1-dose schedule",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "Client is due for meningococcal vaccination",
            "language" : "text/cql-identifier",
            "expression" : "Client is due for meningococcal vaccination"
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
            "expression" : "Concept { codes: { Code { system: 'http://smart.who.int/immunizations/CodeSystem/IMMZ.Z', code: 'DE10', display: 'Meningococcal vaccines' } }, display: 'Meningococcal vaccines' }"
          }
        }
      ]
    },
    {
      "title" : "Check for Guidance for the patient regarding IMMZ.D2.DT.Meningococcal.MenA conjugate vaccine 1 dose.",
      "description" : "Show Guidance for the patient regarding IMMZ.D2.DT.Meningococcal.MenA conjugate vaccine 1 dose.",
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
