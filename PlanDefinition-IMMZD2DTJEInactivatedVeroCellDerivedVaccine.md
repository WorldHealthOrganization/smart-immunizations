# IMMZ.D2.DT.JE.Inactivated Vero cell-derived vaccine - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D2.DT.JE.Inactivated Vero cell-derived vaccine**

## PlanDefinition: IMMZ.D2.DT.JE.Inactivated Vero cell-derived vaccine 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/PlanDefinition/IMMZD2DTJEInactivatedVeroCellDerivedVaccine | *Version*:0.2.0 |
| Draft as of 2025-11-25 | *Computable Name*:IMMZD2DTJEInactivatedVeroCellDerivedVaccine |

 
IMMZ.D2.DT.JE.Inactivated Vero cell-derived vaccine Inactivated Vero cell-derived vaccination schedule (2-dose scheme) JE vaccination should be integrated into national immunization schedules in all areas where JE is recognized as a public health priority 

* **Actions:**: **Url:**
  * : [IMMZ.D2.DT.JE.Inactivated Vero cell-derived vaccine](PlanDefinition-IMMZD2DTJEInactivatedVeroCellDerivedVaccine.md)
* **Actions:**: **Version:**
  * : 0.2.0
* **Actions:**: **Title:**
  * : IMMZ.D2.DT.JE.Inactivated Vero cell-derived vaccine
* **Actions:**: **Status:**
  * : draft
* **Actions:**: **Date:**
  * : 2025-11-25 19:41:02+0000
* **Actions:**: **Publisher:**
  * : WHO
* **Actions:**: **Description:**
  * : IMMZ.D2.DT.JE.Inactivated Vero cell-derived vaccine Inactivated Vero cell-derived vaccination schedule (2-dose scheme) JE vaccination should be integrated into national immunization schedules in all areas where JE is recognized as a public health priority
* **Actions:**: **Knowledge Capability:**
  * : computable
* **Actions:**: **Libraries:**
  * : 
| |
| :--- |
| [IMMZD2DTJEInactivatedVeroCellDerivedVaccineLogic](Library-IMMZD2DTJEInactivatedVeroCellDerivedVaccineLogic.md) |




## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "IMMZD2DTJEInactivatedVeroCellDerivedVaccine",
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
  "url" : "http://smart.who.int/immunizations/PlanDefinition/IMMZD2DTJEInactivatedVeroCellDerivedVaccine",
  "version" : "0.2.0",
  "name" : "IMMZD2DTJEInactivatedVeroCellDerivedVaccine",
  "title" : "IMMZ.D2.DT.JE.Inactivated Vero cell-derived vaccine",
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
  "description" : "IMMZ.D2.DT.JE.Inactivated Vero cell-derived vaccine\nInactivated Vero cell-derived vaccination schedule (2-dose scheme)\nJE vaccination should be integrated into national immunization schedules in all areas where JE is recognized as a public health priority",
  "relatedArtifact" : [
    {
      "type" : "citation",
      "citation" : "WHO recommendations for routine immunization - summary tables (January 2025)"
    }
  ],
  "library" : [
    "http://smart.who.int/immunizations/Library/IMMZD2DTJEInactivatedVeroCellDerivedVaccineLogic"
  ],
  "action" : [
    {
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rationale",
          "valueMarkdown" : "Inactivated Vero cell-derived vaccine: Primary series according to manufacturer’s recommendations \n(these vary by product), generally 2 doses at 4-week intervals starting the primary series at ≥ 6 months of age in endemic settings."
        }
      ],
      "title" : "Determine if the client is due for JE.",
      "description" : "Determine if the client is due for JE vaccine according to the national immunization protocol.\nInactivated Vero cell-derived vaccination schedule (2-dose scheme) JE vaccination should be integrated \ninto national immunization schedules in all areas where JE is recognized as a public health priority",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "Client is due for JE vaccination",
            "language" : "text/cql-identifier",
            "expression" : "Client is due for JE vaccination"
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
            "expression" : "Concept { codes: { Code { system: 'http://smart.who.int/immunizations/CodeSystem/IMMZ.Z', code: 'DE8', display: 'JE vaccines' } }, display: 'JE vaccines' }"
          }
        }
      ]
    },
    {
      "title" : "Check for Guidance for the patient regarding IMMZ.D2.DT.JE.Inactivated Vero cell-derived vaccine.",
      "description" : "Show Guidance for the patient regarding IMMZ.D2.DT.JE.Inactivated Vero cell-derived vaccine.",
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
