# IMMZ.D18.S.Rotavirus schedule - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D18.S.Rotavirus schedule**

## PlanDefinition: IMMZ.D18.S.Rotavirus schedule 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/PlanDefinition/IMMZD18SRotavirus | *Version*:0.2.0 |
| Draft as of 2025-11-25 | *Computable Name*:IMMZD18SRotavirus |

 
IMMZ.D18.S.Rotavirus schedule IMMZ.D18.S.Rotavirus schedule 

* **Actions:**: **Url:**
  * : [IMMZ.D18.S.Rotavirus schedule](PlanDefinition-IMMZD18SRotavirus.md)
* **Actions:**: **Version:**
  * : 0.2.0
* **Actions:**: **Title:**
  * : IMMZ.D18.S.Rotavirus schedule
* **Actions:**: **Status:**
  * : draft
* **Actions:**: **Date:**
  * : 2025-11-25 19:41:02+0000
* **Actions:**: **Publisher:**
  * : WHO
* **Actions:**: **Description:**
  * : IMMZ.D18.S.Rotavirus schedule IMMZ.D18.S.Rotavirus schedule
* **Actions:**: **Knowledge Capability:**
  * : computable
* **Actions:**: **Libraries:**
  * : 
| |
| :--- |
| [IMMZD18SRotavirusLogic](Library-IMMZD18SRotavirusLogic.md) |




## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "IMMZD18SRotavirus",
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
  "url" : "http://smart.who.int/immunizations/PlanDefinition/IMMZD18SRotavirus",
  "version" : "0.2.0",
  "name" : "IMMZD18SRotavirus",
  "title" : "IMMZ.D18.S.Rotavirus schedule",
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
  "description" : "IMMZ.D18.S.Rotavirus schedule\nIMMZ.D18.S.Rotavirus schedule",
  "relatedArtifact" : [
    {
      "type" : "citation",
      "citation" : "WHO recommendations for routine immunization - summary tables (January 2025)"
    }
  ],
  "library" : [
    "http://smart.who.int/immunizations/Library/IMMZD18SRotavirusLogic"
  ],
  "action" : [
    {
      "title" : "Rotavirus dose 1",
      "description" : "Provision of the rotavirus first dose\nTrigger event: Child's birth\nTrigger pseudo: \nTrigger date: \"Date of birth\"\nCreate condition: WHO recommends that the first dose of rotavirus vaccine be administered as soon as possible after 6 weeks of age.",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "Rotavirus dose 1",
            "language" : "text/cql-identifier",
            "expression" : "Rotavirus dose 1"
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
            "expression" : "Rotavirus dose 1 Create"
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
      "title" : "Rotavirus dose 2",
      "description" : "Provision of the rotavirus second dose\nTrigger event: First rotavirus dose from the primary series was administered\nTrigger pseudo: Count of vaccines administered (where \"Vaccine type\" = \"Rotavirus vaccines\" and \"Type of dose\" = \"Primary series\") = 1\nTrigger date: Latest \"Date and time of vaccination\" where \"Vaccine type\" = \"Rotavirus vaccines\"\nCreate condition: A minimum interval of 4 weeks should be maintained between doses.",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "Rotavirus dose 2",
            "language" : "text/cql-identifier",
            "expression" : "Rotavirus dose 2"
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
            "expression" : "Rotavirus dose 2 Create"
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
      "title" : "Rotavirus dose 3",
      "description" : "Provision of a rotavirus third dose\nTrigger event: For a series containing more than two doses, two rotavirus primary series doses of mixed series or a series with unknown vaccine products were administered\nTrigger pseudo: Count of vaccines administered (where \"Vaccine type\" = \"Rotavirus vaccines\"and \"Type of dose\" = \"Primary series\" ) = 2 \nAND \"Vaccine brand\" (where \"Vaccine type\" = \"Rotavirus vaccines\" AND \"Dose number\" = 1) ≠ \"Vaccine brand\" (where \"Vaccine type\" = \"Rotavirus vaccines\" AND \"Dose number\" = 2) OR \"Total doses in series\" > 2\nTrigger date: Latest \"Date and time of vaccination\" where \"Vaccine type\" = \"Rotavirus vaccines\"\nCreate condition: For a mixed series or a series with any unknown vaccine products, a total of 3 doses of rotavirus vaccine should be administered for a complete vaccination series.\nRotaTeq, Rotavac and Rotasiil should be administered in a 3-dose schedule.",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "Rotavirus dose 3",
            "language" : "text/cql-identifier",
            "expression" : "Rotavirus dose 3"
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
            "expression" : "Rotavirus dose 3 Create"
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
