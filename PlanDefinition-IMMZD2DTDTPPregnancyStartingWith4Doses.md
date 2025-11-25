# IMMZ.D2.DT.DTP.Pregnancy starting with 4 doses - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D2.DT.DTP.Pregnancy starting with 4 doses**

## PlanDefinition: IMMZ.D2.DT.DTP.Pregnancy starting with 4 doses 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/PlanDefinition/IMMZD2DTDTPPregnancyStartingWith4Doses | *Version*:0.2.0 |
| Draft as of 2025-11-25 | *Computable Name*:IMMZD2DTDTPPregnancyStartingWith4Doses |

 
IMMZ.D2.DT.DTP.Pregnancy starting with 4 doses Diphtheria and tetanus vaccination schedule in pregnant women who received 4 childhood DTP doses 

* **Actions:**: **Url:**
  * : [IMMZ.D2.DT.DTP.Pregnancy starting with 4 doses](PlanDefinition-IMMZD2DTDTPPregnancyStartingWith4Doses.md)
* **Actions:**: **Version:**
  * : 0.2.0
* **Actions:**: **Title:**
  * : IMMZ.D2.DT.DTP.Pregnancy starting with 4 doses
* **Actions:**: **Status:**
  * : draft
* **Actions:**: **Date:**
  * : 2025-11-25 19:41:02+0000
* **Actions:**: **Publisher:**
  * : WHO
* **Actions:**: **Description:**
  * : IMMZ.D2.DT.DTP.Pregnancy starting with 4 doses Diphtheria and tetanus vaccination schedule in pregnant women who received 4 childhood DTP doses
* **Actions:**: **Knowledge Capability:**
  * : computable
* **Actions:**: **Libraries:**
  * : 
| |
| :--- |
| [IMMZD2DTDTPPregnancyStartingWith4DosesLogic](Library-IMMZD2DTDTPPregnancyStartingWith4DosesLogic.md) |




## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "IMMZD2DTDTPPregnancyStartingWith4Doses",
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
  "url" : "http://smart.who.int/immunizations/PlanDefinition/IMMZD2DTDTPPregnancyStartingWith4Doses",
  "version" : "0.2.0",
  "name" : "IMMZD2DTDTPPregnancyStartingWith4Doses",
  "title" : "IMMZ.D2.DT.DTP.Pregnancy starting with 4 doses",
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
  "description" : "IMMZ.D2.DT.DTP.Pregnancy starting with 4 doses\nDiphtheria and tetanus vaccination schedule in pregnant women who received 4 childhood DTP doses",
  "relatedArtifact" : [
    {
      "type" : "citation",
      "citation" : "WHO recommendations for routine immunization - summary tables (January 2025)"
    }
  ],
  "library" : [
    "http://smart.who.int/immunizations/Library/IMMZD2DTDTPPregnancyStartingWith4DosesLogic"
  ],
  "action" : [
    {
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rationale",
          "valueMarkdown" : "Pregnant women who received 4 tetanus-containing vaccines doses during childhood or pre-adulthood \n  need only 1 booster dose, which should be given at the first opportunity. To provide lifelong protection, a sixth \n  dose would be needed at least 1 year after the fifth dose, or during the next pregnancy.  From 7 years of age, \n  only tetanus toxoid with reduced diphtheria toxoid (Td) combinations should be used. Age-appropriate combinations-containing \n  pertussis vaccine with reduced diphtheria toxoid are also available. Only acellular pertussis (aP)-containing vaccines should \n  be used for vaccination of persons aged 7 years and older."
        }
      ],
      "title" : "Determine if the client is due for DTP.",
      "description" : "Determine if the client is due for DTP vaccine according to the national immunization protocol.\nDiphtheria and tetanus vaccination schedule in pregnant women who received 4 childhood DTP doses",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "Client is due for tetanus and diphtheria booster dose",
            "language" : "text/cql-identifier",
            "expression" : "Client is due for tetanus and diphtheria booster dose"
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
            "expression" : "Concept { codes: { Code { system: 'http://smart.who.int/immunizations/CodeSystem/IMMZ.Z', code: 'DE28', display: 'Tetanus and diphtheria-containing vaccines' } }, display: 'Tetanus and diphtheria-containing vaccines' }"
          }
        }
      ]
    },
    {
      "title" : "Check for Guidance for the patient regarding IMMZ.D2.DT.DTP.Pregnancy starting with 4 doses.",
      "description" : "Show Guidance for the patient regarding IMMZ.D2.DT.DTP.Pregnancy starting with 4 doses.",
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
