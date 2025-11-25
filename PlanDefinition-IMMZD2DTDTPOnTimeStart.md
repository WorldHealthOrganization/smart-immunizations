# IMMZ.D2.DT.DTP.On-time start - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D2.DT.DTP.On-time start**

## PlanDefinition: IMMZ.D2.DT.DTP.On-time start 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/PlanDefinition/IMMZD2DTDTPOnTimeStart | *Version*:0.2.0 |
| Draft as of 2025-11-25 | *Computable Name*:IMMZD2DTDTPOnTimeStart |

 
IMMZ.D2.DT.DTP.On-time start DTP vaccination schedule, on-time start (at ≤ 12 months of age) 

* **Actions:**: **Url:**
  * : [IMMZ.D2.DT.DTP.On-time start](PlanDefinition-IMMZD2DTDTPOnTimeStart.md)
* **Actions:**: **Version:**
  * : 0.2.0
* **Actions:**: **Title:**
  * : IMMZ.D2.DT.DTP.On-time start
* **Actions:**: **Status:**
  * : draft
* **Actions:**: **Date:**
  * : 2025-11-25 19:41:02+0000
* **Actions:**: **Publisher:**
  * : WHO
* **Actions:**: **Description:**
  * : IMMZ.D2.DT.DTP.On-time start DTP vaccination schedule, on-time start (at ≤ 12 months of age)
* **Actions:**: **Knowledge Capability:**
  * : computable
* **Actions:**: **Libraries:**
  * : 
| |
| :--- |
| [IMMZD2DTDTPOnTimeStartLogic](Library-IMMZD2DTDTPOnTimeStartLogic.md) |




## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "IMMZD2DTDTPOnTimeStart",
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
  "url" : "http://smart.who.int/immunizations/PlanDefinition/IMMZD2DTDTPOnTimeStart",
  "version" : "0.2.0",
  "name" : "IMMZD2DTDTPOnTimeStart",
  "title" : "IMMZ.D2.DT.DTP.On-time start",
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
  "description" : "IMMZ.D2.DT.DTP.On-time start\nDTP vaccination schedule, on-time start (at ≤ 12 months of age)",
  "relatedArtifact" : [
    {
      "type" : "citation",
      "citation" : "WHO recommendations for routine immunization - summary tables (January 2025)"
    }
  ],
  "library" : [
    "http://smart.who.int/immunizations/Library/IMMZD2DTDTPOnTimeStartLogic"
  ],
  "action" : [
    {
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rationale",
          "valueMarkdown" : "A primary series of 3 doses of DTP-containing vaccine is recommended, with the first \n  dose administered as early as 6 weeks of age. Subsequent doses should be given with an interval of at least 4 weeks between doses."
        }
      ],
      "title" : "Determine if the client is due for DTP.",
      "description" : "Determine if the client is due for DTP vaccine according to the national immunization protocol.\nDTP vaccination schedule, on-time start (at ≤ 12 months of age)",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "Client is due for DTP vaccination",
            "language" : "text/cql-identifier",
            "expression" : "Client is due for DTP vaccination"
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
            "expression" : "Concept { codes: { Code { system: 'http://smart.who.int/immunizations/CodeSystem/IMMZ.Z', code: 'DE24', display: 'DTP-containing vaccines' } }, display: 'DTP-containing vaccines' }"
          }
        }
      ]
    },
    {
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rationale",
          "valueMarkdown" : "Three booster doses of diphtheria toxoid-containing vaccine should be provided during childhood and adolescence. The \n  diphtheria booster doses should be given in combination with tetanus toxoid using the same schedule (i.e at 12–23 months of age, \n  4–7 years of age and 9–15 years of age, using age-appropriate vaccine formulations). Ideally, there should be at least 4 years \n  between booster doses. Member States may update this schedule based on their country context.  For children aged under 7 years, \n  diphtheria and tetanus toxoids and whole-cell pertussis (DTwP) vaccine or diphtheria and tetanus toxoids and acellular pertussis \n  (DTaP) combinations may be used. For children aged 4 years and older, tetanus toxoid, reduced diphtheria toxoid (Td)-containing \n  vaccine may be used and is preferred. From 7 years of age, only Td combinations should be used. Age-appropriate combinations-containing \n  pertussis vaccine with low-dose diphtheria antigen are also available. Only aP-containing vaccines should be used for vaccination of \n  persons aged 7 years and older.  National vaccination schedules can be adjusted within the age limits specified above to enable \n  programmes to tailor their schedules based on local epidemiology, the objectives of the immunization programme, any particular \n  programmatic issues and to better align tetanus vaccination with the immunological requirements of other vaccines (particularly \n  for pertussis and diphtheria)."
        }
      ],
      "title" : "Determine if the client is due for DTP.",
      "description" : "Determine if the client is due for DTP vaccine according to the national immunization protocol.\nDTP vaccination schedule, on-time start (at ≤ 12 months of age)",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "Primary DTP series is complete. Client is due for tetanus and diphtheria booster dose",
            "language" : "text/cql-identifier",
            "expression" : "Primary DTP series is complete. Client is due for tetanus and diphtheria booster dose"
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
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rationale",
          "valueMarkdown" : "Three booster doses of diphtheria toxoid-containing vaccine should be provided during childhood and adolescence. The \n  diphtheria booster doses should be given in combination with tetanus toxoid using the same schedule (i.e at 12–23 months of age, \n  4–7 years of age and 9–15 years of age, using age-appropriate vaccine formulations). Ideally, there should be at least 4 years \n  between booster doses. Member States may update this schedule based on their country context.  For children aged under 7 years, \n  diphtheria and tetanus toxoids and whole-cell pertussis (DTwP) vaccine or diphtheria and tetanus toxoids and acellular pertussis \n  (DTaP) combinations may be used. For children aged 4 years and older, tetanus toxoid, reduced diphtheria toxoid (Td)-containing \n  vaccine may be used and is preferred. From 7 years of age, only Td combinations should be used. Age-appropriate combinations-containing \n  pertussis vaccine with low-dose diphtheria antigen are also available. Only aP-containing vaccines should be used for vaccination of \n  persons aged 7 years and older.  National vaccination schedules can be adjusted within the age limits specified above to enable \n  programmes to tailor their schedules based on local epidemiology, the objectives of the immunization programme, any particular \n  programmatic issues and to better align tetanus vaccination with the immunological requirements of other vaccines (particularly \n  for pertussis and diphtheria)."
        }
      ],
      "title" : "Determine if the client is due for DTP.",
      "description" : "Determine if the client is due for DTP vaccine according to the national immunization protocol.\nDTP vaccination schedule, on-time start (at ≤ 12 months of age)",
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
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rationale",
          "valueMarkdown" : "A pertussis booster dose is recommended for children aged 1–6 years, preferably during the second year of life (≥ 6 \n  months after last primary dose), unless otherwise indicated by local epidemiology; the contact could also be used to catch up on \n  any missed doses of other vaccines. This schedule should provide protection for at least 6 years for countries using wP-containing \n  vaccine. For countries using aP-containing vaccine, protection may decline appreciably before 6 years of age.  Only aP-containing \n  vaccines should be used for vaccination of persons aged 7 years and over. Although a booster dose in adolescence has been shown to \n  decrease disease in adolescents, this is not generally recommended as a means of controlling pertussis in infants."
        }
      ],
      "title" : "Determine if the client is due for DTP.",
      "description" : "Determine if the client is due for DTP vaccine according to the national immunization protocol.\nDTP vaccination schedule, on-time start (at ≤ 12 months of age)",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "Primary DTP series is complete. Client is due for pertussis booster dose",
            "language" : "text/cql-identifier",
            "expression" : "Primary DTP series is complete. Client is due for pertussis booster dose"
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
            "expression" : "Concept { codes: { Code { system: 'http://smart.who.int/immunizations/CodeSystem/IMMZ.Z', code: 'DE12', display: 'Pertussis-containing vaccines' } }, display: 'Pertussis-containing vaccines' }"
          }
        }
      ]
    },
    {
      "title" : "Check for Guidance for the patient regarding IMMZ.D2.DT.DTP.On-time start.",
      "description" : "Show Guidance for the patient regarding IMMZ.D2.DT.DTP.On-time start.",
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
