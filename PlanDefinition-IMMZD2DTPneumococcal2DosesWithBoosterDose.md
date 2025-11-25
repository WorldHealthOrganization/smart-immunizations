# IMMZ.D2.DT.Pneumococcal.2 doses with booster dose - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D2.DT.Pneumococcal.2 doses with booster dose**

## PlanDefinition: IMMZ.D2.DT.Pneumococcal.2 doses with booster dose 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/PlanDefinition/IMMZD2DTPneumococcal2DosesWithBoosterDose | *Version*:0.2.0 |
| Draft as of 2025-11-25 | *Computable Name*:IMMZD2DTPneumococcal2DosesWithBoosterDose |

 
IMMZ.D2.DT.Pneumococcal.2 doses with booster dose 2 primary doses with a booster dose (2p+1) 

* **Actions:**: **Url:**
  * : [IMMZ.D2.DT.Pneumococcal.2 doses with booster dose](PlanDefinition-IMMZD2DTPneumococcal2DosesWithBoosterDose.md)
* **Actions:**: **Version:**
  * : 0.2.0
* **Actions:**: **Title:**
  * : IMMZ.D2.DT.Pneumococcal.2 doses with booster dose
* **Actions:**: **Status:**
  * : draft
* **Actions:**: **Date:**
  * : 2025-11-25 19:41:02+0000
* **Actions:**: **Publisher:**
  * : WHO
* **Actions:**: **Description:**
  * : IMMZ.D2.DT.Pneumococcal.2 doses with booster dose 2 primary doses with a booster dose (2p+1)
* **Actions:**: **Knowledge Capability:**
  * : computable
* **Actions:**: **Libraries:**
  * : 
| |
| :--- |
| [IMMZD2DTPneumococcal2DosesWithBoosterDoseLogic](Library-IMMZD2DTPneumococcal2DosesWithBoosterDoseLogic.md) |




## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "IMMZD2DTPneumococcal2DosesWithBoosterDose",
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
  "url" : "http://smart.who.int/immunizations/PlanDefinition/IMMZD2DTPneumococcal2DosesWithBoosterDose",
  "version" : "0.2.0",
  "name" : "IMMZD2DTPneumococcal2DosesWithBoosterDose",
  "title" : "IMMZ.D2.DT.Pneumococcal.2 doses with booster dose",
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
  "description" : "IMMZ.D2.DT.Pneumococcal.2 doses with booster dose\n2 primary doses with a booster dose (2p+1)",
  "relatedArtifact" : [
    {
      "type" : "citation",
      "citation" : "WHO recommendations for routine immunization - summary tables (January 2025)"
    }
  ],
  "library" : [
    "http://smart.who.int/immunizations/Library/IMMZD2DTPneumococcal2DosesWithBoosterDoseLogic"
  ],
  "action" : [
    {
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rationale",
          "valueMarkdown" : "For administration of pneumococcal vaccine to infants, WHO recommends a 3-dose schedule \n  administered either as 2p+1 or as 3p+0, starting as early as 6 weeks of age."
        }
      ],
      "title" : "Determine if the client is due for BCG.",
      "description" : "Determine if the client is due for BCG vaccine according to the national immunization protocol.\n2 primary doses with a booster dose (2p+1)",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "Client is due for pneumococcal vaccination",
            "language" : "text/cql-identifier",
            "expression" : "Client is due for pneumococcal vaccination"
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
            "expression" : "Concept { codes: { Code { system: 'http://smart.who.int/immunizations/CodeSystem/IMMZ.Z', code: 'DE13', display: 'Pneumococcal vaccines' } }, display: 'Pneumococcal vaccines' }"
          }
        }
      ]
    },
    {
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rationale",
          "valueMarkdown" : "HIV-positive infants and preterm neonates who have received their 3 primary vaccine doses \n  before 12 months of age may benefit from a booster dose in the second year of life. There is no defined \n  minimum or maximum interval between the primary series  and the booster dose."
        }
      ],
      "title" : "Determine if the client is due for BCG.",
      "description" : "Determine if the client is due for BCG vaccine according to the national immunization protocol.\n2 primary doses with a booster dose (2p+1)",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "Client is due for pneumococcal booster dose",
            "language" : "text/cql-identifier",
            "expression" : "Client is due for pneumococcal booster dose"
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
            "expression" : "Concept { codes: { Code { system: 'http://smart.who.int/immunizations/CodeSystem/IMMZ.Z', code: 'DE13', display: 'Pneumococcal vaccines' } }, display: 'Pneumococcal vaccines' }"
          }
        }
      ]
    },
    {
      "title" : "Check for Guidance for the patient regarding IMMZ.D2.DT.Pneumococcal.2 doses with booster dose.",
      "description" : "Show Guidance for the patient regarding IMMZ.D2.DT.Pneumococcal.2 doses with booster dose.",
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
