# IMMZ.D2.DT.Seasonal influenza - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D2.DT.Seasonal influenza**

## PlanDefinition: IMMZ.D2.DT.Seasonal influenza 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/PlanDefinition/IMMZD2DTSeasonalinfluenzaSeasonalInfluenza | *Version*:0.2.0 |
| Draft as of 2025-11-25 | *Computable Name*:IMMZD2DTSeasonalinfluenzaSeasonalInfluenza |

 
IMMZ.D2.DT.Seasonal influenza Inactivated trivalent and quadrivalent vaccines, 2-dose schedule 

* **Actions:**: **Url:**
  * : [IMMZ.D2.DT.Seasonal influenza](PlanDefinition-IMMZD2DTSeasonalinfluenzaSeasonalInfluenza.md)
* **Actions:**: **Version:**
  * : 0.2.0
* **Actions:**: **Title:**
  * : IMMZ.D2.DT.Seasonal influenza
* **Actions:**: **Status:**
  * : draft
* **Actions:**: **Date:**
  * : 2025-11-25 19:41:02+0000
* **Actions:**: **Publisher:**
  * : WHO
* **Actions:**: **Description:**
  * : IMMZ.D2.DT.Seasonal influenza Inactivated trivalent and quadrivalent vaccines, 2-dose schedule
* **Actions:**: **Knowledge Capability:**
  * : computable
* **Actions:**: **Libraries:**
  * : 
| |
| :--- |
| [IMMZD2DTSeasonalinfluenzaSeasonalInfluenzaLogic](Library-IMMZD2DTSeasonalinfluenzaSeasonalInfluenzaLogic.md) |




## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "IMMZD2DTSeasonalinfluenzaSeasonalInfluenza",
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
  "url" : "http://smart.who.int/immunizations/PlanDefinition/IMMZD2DTSeasonalinfluenzaSeasonalInfluenza",
  "version" : "0.2.0",
  "name" : "IMMZD2DTSeasonalinfluenzaSeasonalInfluenza",
  "title" : "IMMZ.D2.DT.Seasonal influenza",
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
  "description" : "IMMZ.D2.DT.Seasonal influenza\nInactivated trivalent and quadrivalent vaccines, 2-dose schedule",
  "relatedArtifact" : [
    {
      "type" : "citation",
      "citation" : "WHO recommendations for routine immunization - summary tables (January 2025)"
    }
  ],
  "library" : [
    "http://smart.who.int/immunizations/Library/IMMZD2DTSeasonalinfluenzaSeasonalInfluenzaLogic"
  ],
  "action" : [
    {
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rationale",
          "valueMarkdown" : "Influenza vaccines are safe and effective in children from 6 months of age. Children aged under 6 months can be protected through maternal \nimmunization during pregnancy. \nChildren aged 6 months to 8 years should receive 2 doses at least 4 weeks apart. A single dose is appropriate for those ≥ 9 years of age and healthy adults.\nChildren aged 6 months to 8 years should receive 2 doses at least 4 weeks apart."
        }
      ],
      "title" : "Determine if the client is due for Seasonal influenza.",
      "description" : "Determine if the client is due for Seasonal influenza vaccine according to the national immunization protocol.\nInactivated trivalent and quadrivalent vaccines, 2-dose schedule",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "Client is due for seasonal influenza vaccination",
            "language" : "text/cql-identifier",
            "expression" : "Client is due for seasonal influenza vaccination"
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
            "expression" : "Concept { codes: { Code { system: 'http://smart.who.int/immunizations/CodeSystem/IMMZ.Z', code: 'DE18', display: 'Seasonal influenza vaccines' } }, display: 'Seasonal influenza vaccines' }"
          }
        }
      ]
    },
    {
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rationale",
          "valueMarkdown" : "A single dose is appropriate for children aged ≥ 9 years and healthy adults. Those who have previously \nbeen vaccinated at least once should subsequently receive an annual dose, as should children and adolescents aged\n 9 years or over and healthy adults."
        }
      ],
      "title" : "Determine if the client is due for Seasonal influenza.",
      "description" : "Determine if the client is due for Seasonal influenza vaccine according to the national immunization protocol.\nInactivated trivalent and quadrivalent vaccines, 2-dose schedule",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "The primary series is complete. Client is due for seasonal influenza annual dose",
            "language" : "text/cql-identifier",
            "expression" : "The primary series is complete. Client is due for seasonal influenza annual dose"
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
            "expression" : "Concept { codes: { Code { system: 'http://smart.who.int/immunizations/CodeSystem/IMMZ.Z', code: 'DE18', display: 'Seasonal influenza vaccines' } }, display: 'Seasonal influenza vaccines' }"
          }
        }
      ]
    },
    {
      "title" : "Check for Guidance for the patient regarding IMMZ.D2.DT.Seasonal influenza.",
      "description" : "Show Guidance for the patient regarding IMMZ.D2.DT.Seasonal influenza.",
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
