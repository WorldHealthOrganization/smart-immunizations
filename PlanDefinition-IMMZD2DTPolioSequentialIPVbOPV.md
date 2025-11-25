# IMMZ.D2.DT.Polio.Sequential IPV–bOPV - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D2.DT.Polio.Sequential IPV–bOPV**

## PlanDefinition: IMMZ.D2.DT.Polio.Sequential IPV–bOPV 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/PlanDefinition/IMMZD2DTPolioSequentialIPVbOPV | *Version*:0.2.0 |
| Draft as of 2025-11-25 | *Computable Name*:IMMZD2DTPolioSequentialIPVbOPV |

 
IMMZ.D2.DT.Polio.Sequential IPV–bOPV Sequential "Bivalent oral polio vaccine (bOPV)–inactivated polio vaccine (IPV)" schedule (in countries with high vaccination coverage [e.g. 90–95%] and low importation risk [where neighbouring countries and/or countries that share substantial population movement have a similarly high coverage]) 

* **Actions:**: **Url:**
  * : [IMMZ.D2.DT.Polio.Sequential IPV–bOPV](PlanDefinition-IMMZD2DTPolioSequentialIPVbOPV.md)
* **Actions:**: **Version:**
  * : 0.2.0
* **Actions:**: **Title:**
  * : IMMZ.D2.DT.Polio.Sequential IPV–bOPV
* **Actions:**: **Status:**
  * : draft
* **Actions:**: **Date:**
  * : 2025-11-25 19:41:02+0000
* **Actions:**: **Publisher:**
  * : WHO
* **Actions:**: **Description:**
  * : IMMZ.D2.DT.Polio.Sequential IPV–bOPV Sequential "Bivalent oral polio vaccine (bOPV)–inactivated polio vaccine (IPV)" schedule (in countries with high vaccination coverage [e.g. 90–95%] and low importation risk [where neighbouring countries and/or countries that share substantial population movement have a similarly high coverage])
* **Actions:**: **Knowledge Capability:**
  * : computable
* **Actions:**: **Libraries:**
  * : 
| |
| :--- |
| [IMMZD2DTPolioSequentialIPVbOPVLogic](Library-IMMZD2DTPolioSequentialIPVbOPVLogic.md) |




## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "IMMZD2DTPolioSequentialIPVbOPV",
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
  "url" : "http://smart.who.int/immunizations/PlanDefinition/IMMZD2DTPolioSequentialIPVbOPV",
  "version" : "0.2.0",
  "name" : "IMMZD2DTPolioSequentialIPVbOPV",
  "title" : "IMMZ.D2.DT.Polio.Sequential IPV–bOPV",
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
  "description" : "IMMZ.D2.DT.Polio.Sequential IPV–bOPV\nSequential \"Bivalent oral polio vaccine (bOPV)–inactivated polio vaccine (IPV)\" schedule (in countries with high vaccination coverage [e.g. 90–95%] and low importation risk [where neighbouring countries and/or countries that share substantial population movement have a similarly high coverage])",
  "relatedArtifact" : [
    {
      "type" : "citation",
      "citation" : "WHO recommendations for routine immunization - summary tables (January 2025)"
    }
  ],
  "library" : [
    "http://smart.who.int/immunizations/Library/IMMZD2DTPolioSequentialIPVbOPVLogic"
  ],
  "action" : [
    {
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rationale",
          "valueMarkdown" : "For sequential IPV– bOPV schedules, WHO recommends that the first dose of IPV be given starting from 8 weeks of \n  age with an interval of 4–8 weeks before administration of the second IPV dose. This should be followed by at least 2 doses \n  of bOPV separated by 4–8 weeks depending on the risk of exposure to poliovirus in early childhood. Where a sequential IPV–bOPV \n  schedule is used, the initial administration of 2 doses of IPV should be followed by ≥2 doses of bOPV to ensure sufficient \n  levels of protection in the intestinal mucosa as well as a decrease in the burden of vaccine-associated paralytic polio (VAPP)."
        }
      ],
      "title" : "Determine if the client is due for a poliovirus vaccination according to the national immunization schedule",
      "description" : "Determine if the client is due for a poliovirus vaccination according to the national immunization schedule\nSequential  \"Bivalent oral polio vaccine (bOPV)–inactivated polio vaccine (IPV)\" schedule (in countries with high \nvaccination coverage [e.g. 90–95%] and low importation risk [where neighbouring countries and/or countries that share \nsubstantial population movement have a similarly high coverage])",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "Client is due for IPV vaccination",
            "language" : "text/cql-identifier",
            "expression" : "Client is due for IPV vaccination"
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
            "expression" : "Concept { codes: { Code { system: 'http://smart.who.int/immunizations/CodeSystem/IMMZ.Z', code: 'DE31', display: 'Inactivated polio vaccines' } }, display: 'Inactivated polio vaccines' }"
          }
        }
      ]
    },
    {
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rationale",
          "valueMarkdown" : "For sequential IPV– bOPV schedules, WHO recommends that the first dose of IPV be given starting from 8 weeks of \n  age with an interval of 4–8 weeks before administration of the second IPV dose. This should be followed by at least 2 doses \n  of bOPV separated by 4–8 weeks depending on the risk of exposure to poliovirus in early childhood. Where a sequential IPV–bOPV \n  schedule is used, the initial administration of 2 doses of IPV should be followed by ≥2 doses of bOPV to ensure sufficient \n  levels of protection in the intestinal mucosa as well as a decrease in the burden of vaccine-associated paralytic polio (VAPP)."
        }
      ],
      "title" : "Determine if the client is due for a poliovirus vaccination according to the national immunization schedule",
      "description" : "Determine if the client is due for a poliovirus vaccination according to the national immunization schedule\nSequential  \"Bivalent oral polio vaccine (bOPV)–inactivated polio vaccine (IPV)\" schedule (in countries with high \nvaccination coverage [e.g. 90–95%] and low importation risk [where neighbouring countries and/or countries that share \nsubstantial population movement have a similarly high coverage])",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "Client is due for bOPV vaccination",
            "language" : "text/cql-identifier",
            "expression" : "Client is due for bOPV vaccination"
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
      "title" : "Check for Guidance for the patient regarding IMMZ.D2.DT.Polio.Sequential IPV–bOPV.",
      "description" : "Show Guidance for the patient regarding IMMZ.D2.DT.Polio.Sequential IPV–bOPV.",
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
