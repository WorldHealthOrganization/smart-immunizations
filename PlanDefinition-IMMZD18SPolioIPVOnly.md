# IMMZ.D18.S.Polio.IPV-only schedule - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D18.S.Polio.IPV-only schedule**

## PlanDefinition: IMMZ.D18.S.Polio.IPV-only schedule 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/PlanDefinition/IMMZD18SPolioIPVOnly | *Version*:0.2.0 |
| Draft as of 2025-11-25 | *Computable Name*:IMMZD18SPolioIPVOnly |

 
IMMZ.D18.S.Polio.IPV-only schedule Inactivated polio vaccine (IPV)-only schedule 

* **Actions:**: **Url:**
  * : [IMMZ.D18.S.Polio.IPV-only schedule](PlanDefinition-IMMZD18SPolioIPVOnly.md)
* **Actions:**: **Version:**
  * : 0.2.0
* **Actions:**: **Title:**
  * : IMMZ.D18.S.Polio.IPV-only schedule
* **Actions:**: **Status:**
  * : draft
* **Actions:**: **Date:**
  * : 2025-11-25 19:41:02+0000
* **Actions:**: **Publisher:**
  * : WHO
* **Actions:**: **Description:**
  * : IMMZ.D18.S.Polio.IPV-only schedule Inactivated polio vaccine (IPV)-only schedule
* **Actions:**: **Knowledge Capability:**
  * : computable
* **Actions:**: **Libraries:**
  * : 
| |
| :--- |
| [IMMZD18SPolioIPVOnlyLogic](Library-IMMZD18SPolioIPVOnlyLogic.md) |




## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "IMMZD18SPolioIPVOnly",
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
  "url" : "http://smart.who.int/immunizations/PlanDefinition/IMMZD18SPolioIPVOnly",
  "version" : "0.2.0",
  "name" : "IMMZD18SPolioIPVOnly",
  "title" : "IMMZ.D18.S.Polio.IPV-only schedule",
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
  "description" : "IMMZ.D18.S.Polio.IPV-only schedule\nInactivated polio vaccine (IPV)-only schedule",
  "relatedArtifact" : [
    {
      "type" : "citation",
      "citation" : "WHO recommendations for routine immunization - summary tables (January 2025)"
    }
  ],
  "library" : [
    "http://smart.who.int/immunizations/Library/IMMZD18SPolioIPVOnlyLogic"
  ],
  "action" : [
    {
      "title" : "IPV dose 1",
      "description" : "Provision of IPV dose 1\nTrigger event: Child's birth\nTrigger pseudo: \nTrigger date: \"Date of birth\"\nCreate condition: A primary 3-dose series of IPV administered beginning at 6 or 8 weeks of age, with a minimum 4 week-interval between doses, is recommended.",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "IPV dose 1",
            "language" : "text/cql-identifier",
            "expression" : "IPV dose 1"
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
            "expression" : "IPV dose 1 Create"
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
      "title" : "IPV dose 2",
      "description" : "Provision of IPV dose 2\nTrigger event: First IPV dose from the primary series was administered\nTrigger pseudo: Count of vaccines administered (where \"Vaccine type\" = \"Poliovirus-containing vaccines\") = 1\nTrigger date: Latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Poliovirus-containing vaccines\")\nCreate condition: A primary 3-dose series of IPV administered beginning at 6 or 8 weeks of age, with a minimum 4 week-interval between doses, is recommended.",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "IPV dose 2",
            "language" : "text/cql-identifier",
            "expression" : "IPV dose 2"
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
            "expression" : "IPV dose 2 Create"
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
      "title" : "IPV dose 3",
      "description" : "Provision of IPV dose 3\nTrigger event: Second IPV dose from the primary series was administered\nTrigger pseudo: Count of vaccines administered (where \"Vaccine type\" = \"Poliovirus-containing vaccines\") = 2\nTrigger date: Latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Poliovirus-containing vaccines\")\nCreate condition: A primary 3-dose series of IPV administered beginning at 6 or 8 weeks of age, with a minimum 4 week-interval between doses, is recommended.",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "IPV dose 3",
            "language" : "text/cql-identifier",
            "expression" : "IPV dose 3"
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
            "expression" : "IPV dose 3 Create"
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
      "title" : "IPV booster",
      "description" : "Provision of IPV booster\nTrigger event: Third IPV dose from the primary series was administered and the client's age was 6 weeks when the primary series was started\nTrigger pseudo: Count of vaccines administered (where \"Vaccine type\" = \"Poliovirus-containing vaccines\") = 3 AND \"Date and time of vaccination\" (where \"Vaccine type\" = \"Poliovirus-containing vaccines\" AND \"Dose number\" = 1) − \"Date of birth\" = 6 weeks\nTrigger date: Latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Poliovirus-containing vaccines\")\nCreate condition: If the primary series begins at 6 weeks, a booster dose should be given 6 months or more after the third dose",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "IPV booster",
            "language" : "text/cql-identifier",
            "expression" : "IPV booster"
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
            "expression" : "IPV booster Create"
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
