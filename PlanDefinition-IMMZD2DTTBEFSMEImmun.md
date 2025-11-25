# IMMZ.D2.DT.TBE.FSME-Immun - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D2.DT.TBE.FSME-Immun**

## PlanDefinition: IMMZ.D2.DT.TBE.FSME-Immun 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/PlanDefinition/IMMZD2DTTBEFSMEImmun | *Version*:0.2.0 |
| Draft as of 2025-11-25 | *Computable Name*:IMMZD2DTTBEFSMEImmun |

 
IMMZ.D2.DT.TBE.FSME-Immun FSME-Immun schedule (In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children) 

* **Actions:**: **Url:**
  * : [IMMZ.D2.DT.TBE.FSME-Immun](PlanDefinition-IMMZD2DTTBEFSMEImmun.md)
* **Actions:**: **Version:**
  * : 0.2.0
* **Actions:**: **Title:**
  * : IMMZ.D2.DT.TBE.FSME-Immun
* **Actions:**: **Status:**
  * : draft
* **Actions:**: **Date:**
  * : 2025-11-25 19:41:02+0000
* **Actions:**: **Publisher:**
  * : WHO
* **Actions:**: **Description:**
  * : IMMZ.D2.DT.TBE.FSME-Immun FSME-Immun schedule (In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children)
* **Actions:**: **Knowledge Capability:**
  * : computable
* **Actions:**: **Libraries:**
  * : 
| |
| :--- |
| [IMMZD2DTTBEFSMEImmunLogic](Library-IMMZD2DTTBEFSMEImmunLogic.md) |




## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "IMMZD2DTTBEFSMEImmun",
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
  "url" : "http://smart.who.int/immunizations/PlanDefinition/IMMZD2DTTBEFSMEImmun",
  "version" : "0.2.0",
  "name" : "IMMZD2DTTBEFSMEImmun",
  "title" : "IMMZ.D2.DT.TBE.FSME-Immun",
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
  "description" : "IMMZ.D2.DT.TBE.FSME-Immun\nFSME-Immun schedule\n(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children)",
  "relatedArtifact" : [
    {
      "type" : "citation",
      "citation" : "WHO recommendations for routine immunization - summary tables (January 2025)"
    }
  ],
  "library" : [
    "http://smart.who.int/immunizations/Library/IMMZD2DTTBEFSMEImmunLogic"
  ],
  "action" : [
    {
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rationale",
          "valueMarkdown" : "The vaccines manufactured in Austria and Germany (FSME-Immun and Encepur) can be given from > 1 year of age.\nFor the vaccines manufactured in Austria and Germany (FSME-Immun and Encepur), an interval of 1–3 months is recommended between the first 2 doses."
        }
      ],
      "title" : "Determine if the client is due for TBE.",
      "description" : "Determine if the client is due for TBE vaccine according to the national immunization protocol.\nFSME-Immun schedule \n(In areas where the disease is highly endemic, implying that there is a high \nindividual risk of infection, WHO recommends that vaccination be offered to all age groups, including children)",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "Client is due for TBE vaccination",
            "language" : "text/cql-identifier",
            "expression" : "Client is due for TBE vaccination"
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
            "expression" : "Concept { codes: { Code { system: 'http://smart.who.int/immunizations/CodeSystem/IMMZ.Z', code: 'DE20', display: 'TBE vaccines' } }, display: 'TBE vaccines' }"
          }
        }
      ]
    },
    {
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rationale",
          "valueMarkdown" : "For both vaccines (FSME-Immun and Encepur), the manufacturers recommend a booster dose to be administered \n3 years after completion of the primary series. Although there is a strong indication that the spacing of boosters could \nbe expanded considerably from the intervals currently recommended by the manufacturers (every 3–5 years), the evidence \nis still insufficient for a definitive recommendation on the optimal frequency and number of booster doses."
        }
      ],
      "title" : "Determine if the client is due for TBE.",
      "description" : "Determine if the client is due for TBE vaccine according to the national immunization protocol.\nFSME-Immun schedule \n(In areas where the disease is highly endemic, implying that there is a high \nindividual risk of infection, WHO recommends that vaccination be offered to all age groups, including children)",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "Primary series is complete. Client is due for TBE booster dose",
            "language" : "text/cql-identifier",
            "expression" : "Primary series is complete. Client is due for TBE booster dose"
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
            "expression" : "Concept { codes: { Code { system: 'http://smart.who.int/immunizations/CodeSystem/IMMZ.Z', code: 'DE20', display: 'TBE vaccines' } }, display: 'TBE vaccines' }"
          }
        }
      ]
    },
    {
      "title" : "Check for Guidance for the patient regarding IMMZ.D2.DT.TBE.FSME-Immun.",
      "description" : "Show Guidance for the patient regarding IMMZ.D2.DT.TBE.FSME-Immun.",
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
