# IMMZ.D2.DT.Polio.Birth dose - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D2.DT.Polio.Birth dose**

## PlanDefinition: IMMZ.D2.DT.Polio.Birth dose 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/PlanDefinition/IMMZD2DTPolioBirthDose | *Version*:0.2.0 |
| Draft as of 2025-11-25 | *Computable Name*:IMMZD2DTPolioBirthDose |

 
IMMZ.D2.DT.Polio.Birth dose Birth dose administration as part of "bivalent oral polio vaccine (bOPV) plus inactivated polio vaccine (IPV)" schedule (in countries that are poliomyelitis (polio)-endemic countries or at high risk of importation and subsequent spread of polio that follow the combined bOPV–IPV schedule) 

* **Actions:**: **Url:**
  * : [IMMZ.D2.DT.Polio.Birth dose](PlanDefinition-IMMZD2DTPolioBirthDose.md)
* **Actions:**: **Version:**
  * : 0.2.0
* **Actions:**: **Title:**
  * : IMMZ.D2.DT.Polio.Birth dose
* **Actions:**: **Status:**
  * : draft
* **Actions:**: **Date:**
  * : 2025-11-25 19:41:02+0000
* **Actions:**: **Publisher:**
  * : WHO
* **Actions:**: **Description:**
  * : IMMZ.D2.DT.Polio.Birth dose Birth dose administration as part of "bivalent oral polio vaccine (bOPV) plus inactivated polio vaccine (IPV)" schedule (in countries that are poliomyelitis (polio)-endemic countries or at high risk of importation and subsequent spread of polio that follow the combined bOPV–IPV schedule)
* **Actions:**: **Knowledge Capability:**
  * : computable
* **Actions:**: **Libraries:**
  * : 
| |
| :--- |
| [IMMZD2DTPolioBirthDoseLogic](Library-IMMZD2DTPolioBirthDoseLogic.md) |




## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "IMMZD2DTPolioBirthDose",
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
  "url" : "http://smart.who.int/immunizations/PlanDefinition/IMMZD2DTPolioBirthDose",
  "version" : "0.2.0",
  "name" : "IMMZD2DTPolioBirthDose",
  "title" : "IMMZ.D2.DT.Polio.Birth dose",
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
  "description" : "IMMZ.D2.DT.Polio.Birth dose\nBirth dose administration as part of \"bivalent oral polio vaccine (bOPV) plus inactivated polio vaccine (IPV)\" schedule (in countries that are poliomyelitis (polio)-endemic countries or at high risk of importation and subsequent spread of polio that follow the combined bOPV–IPV schedule)",
  "relatedArtifact" : [
    {
      "type" : "citation",
      "citation" : "WHO recommendations for routine immunization - summary tables (January 2025)"
    }
  ],
  "library" : [
    "http://smart.who.int/immunizations/Library/IMMZD2DTPolioBirthDoseLogic"
  ],
  "action" : [
    {
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rationale",
          "valueMarkdown" : "In polio-endemic countries and in countries at high risk of importation and subsequent spread of polio, WHO \n  recommends a bOPV birth dose (zero dose) followed by the primary series of 3 bOPV doses and 2 IPV doses. The zero dose of \n  bOPV should be administered at birth, or within the first week of life, to maximize seroconversion rates following subsequent \n  doses and to induce mucosal protection before enteric pathogens may interfere with the immune response.  Additionally, a birth \n  dose of bOPV administered while infants are still protected by maternally-derived antibodies (up to 6 months) may prevent \n  vaccine-associated paralytic polio (VAPP)."
        }
      ],
      "title" : "Determine if the client is due for a poliovirus vaccination according to the national immunization schedule",
      "description" : "Determine if the client is due for a poliovirus vaccination according to the national immunization schedule\nBirth dose administration as part of \"bivalent oral polio vaccine (bOPV) plus inactivated polio vaccine (IPV)\" schedule \n(in countries that are poliomyelitis (polio)-endemic countries or at high risk of importation and subsequent spread of \npolio that follow the combined bOPV–IPV schedule)",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "Client is due for the bOPV birth dose",
            "language" : "text/cql-identifier",
            "expression" : "Client is due for the bOPV birth dose"
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
            "expression" : "Concept { codes: { Code { system: 'http://smart.who.int/immunizations/CodeSystem/IMMZ.Z', code: 'DE30', display: 'Oral polio vaccines' } }, display: 'Oral polio vaccines' }"
          }
        }
      ]
    },
    {
      "title" : "Check for Guidance for the patient regarding IMMZ.D2.DT.Polio.Birth dose.",
      "description" : "Show Guidance for the patient regarding IMMZ.D2.DT.Polio.Birth dose.",
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
