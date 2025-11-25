# IMMZ.D18.S.JE.Inactivated Vero cell-derived vaccination schedule - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D18.S.JE.Inactivated Vero cell-derived vaccination schedule**

## PlanDefinition: IMMZ.D18.S.JE.Inactivated Vero cell-derived vaccination schedule 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/PlanDefinition/IMMZD18SJEInactivatedVeroCellDerivedVaccine | *Version*:0.2.0 |
| Draft as of 2025-11-25 | *Computable Name*:IMMZD18SJEInactivatedVeroCellDerivedVaccine |

 
IMMZ.D18.S.JE.Inactivated Vero cell-derived vaccination schedule Inactivated Vero cell-derived vaccination schedule (2-dose scheme) 

* **Actions:**: **Url:**
  * : [IMMZ.D18.S.JE.Inactivated Vero cell-derived vaccination schedule](PlanDefinition-IMMZD18SJEInactivatedVeroCellDerivedVaccine.md)
* **Actions:**: **Version:**
  * : 0.2.0
* **Actions:**: **Title:**
  * : IMMZ.D18.S.JE.Inactivated Vero cell-derived vaccination schedule
* **Actions:**: **Status:**
  * : draft
* **Actions:**: **Date:**
  * : 2025-11-25 19:41:02+0000
* **Actions:**: **Publisher:**
  * : WHO
* **Actions:**: **Description:**
  * : IMMZ.D18.S.JE.Inactivated Vero cell-derived vaccination schedule Inactivated Vero cell-derived vaccination schedule (2-dose scheme)
* **Actions:**: **Knowledge Capability:**
  * : computable
* **Actions:**: **Libraries:**
  * : 
| |
| :--- |
| [IMMZD18SJEInactivatedVeroCellDerivedVaccineLogic](Library-IMMZD18SJEInactivatedVeroCellDerivedVaccineLogic.md) |




## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "IMMZD18SJEInactivatedVeroCellDerivedVaccine",
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
  "url" : "http://smart.who.int/immunizations/PlanDefinition/IMMZD18SJEInactivatedVeroCellDerivedVaccine",
  "version" : "0.2.0",
  "name" : "IMMZD18SJEInactivatedVeroCellDerivedVaccine",
  "title" : "IMMZ.D18.S.JE.Inactivated Vero cell-derived vaccination schedule",
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
  "description" : "IMMZ.D18.S.JE.Inactivated Vero cell-derived vaccination schedule\nInactivated Vero cell-derived vaccination schedule (2-dose scheme)",
  "relatedArtifact" : [
    {
      "type" : "citation",
      "citation" : "WHO recommendations for routine immunization - summary tables (January 2025)"
    }
  ],
  "library" : [
    "http://smart.who.int/immunizations/Library/IMMZD18SJEInactivatedVeroCellDerivedVaccineLogic"
  ],
  "action" : [
    {
      "title" : "Japanese encephalitis (JE) dose 1",
      "description" : "Provision of the JE dose 1\nTrigger event: Child's birth\nTrigger pseudo: \nTrigger date: \"Date of birth\"\nCreate condition: JE dose 1 should be provided if the client's age is 6 months or older and the country is administering the Inactivated Vero cell-derived antigen.",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "Japanese encephalitis (JE) dose 1",
            "language" : "text/cql-identifier",
            "expression" : "Japanese encephalitis (JE) dose 1"
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
            "expression" : "Japanese encephalitis (JE) dose 1 Create"
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
      "title" : "JE dose 2",
      "description" : "Provision of the JE dose 2\nTrigger event: One JE primary series dose was administered\nTrigger pseudo: Count of vaccines administered (where \"Vaccine type\" = \"JE vaccines\" and \"Type of dose\" = \"Primary series\") = 1\nTrigger date: \"Date and time of vaccination\" where \"Vaccine type\" = \"JE vaccines\"\nCreate condition: JE inactivated Vero cell-derived vaccine dose 2 should be provided if dose 1 was administered at least 4 weeks ago.",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "JE dose 2",
            "language" : "text/cql-identifier",
            "expression" : "JE dose 2"
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
            "expression" : "JE dose 2 Create"
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
