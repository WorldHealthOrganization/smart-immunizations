# IMMZ.D18.S.Hib.3 doses schedule - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D18.S.Hib.3 doses schedule**

## PlanDefinition: IMMZ.D18.S.Hib.3 doses schedule 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/PlanDefinition/IMMZD18SHib3Doses | *Version*:0.2.0 |
| Draft as of 2025-11-25 | *Computable Name*:IMMZD18SHib3Doses |

 
IMMZ.D18.S.Hib.3 doses schedule 3 primary doses without a booster dose (3p) schedule 

* **Actions:**: **Url:**
  * : [IMMZ.D18.S.Hib.3 doses schedule](PlanDefinition-IMMZD18SHib3Doses.md)
* **Actions:**: **Version:**
  * : 0.2.0
* **Actions:**: **Title:**
  * : IMMZ.D18.S.Hib.3 doses schedule
* **Actions:**: **Status:**
  * : draft
* **Actions:**: **Date:**
  * : 2025-11-25 19:41:02+0000
* **Actions:**: **Publisher:**
  * : WHO
* **Actions:**: **Description:**
  * : IMMZ.D18.S.Hib.3 doses schedule 3 primary doses without a booster dose (3p) schedule
* **Actions:**: **Knowledge Capability:**
  * : computable
* **Actions:**: **Libraries:**
  * : 
| |
| :--- |
| [IMMZD18SHib3DosesLogic](Library-IMMZD18SHib3DosesLogic.md) |




## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "IMMZD18SHib3Doses",
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
  "url" : "http://smart.who.int/immunizations/PlanDefinition/IMMZD18SHib3Doses",
  "version" : "0.2.0",
  "name" : "IMMZD18SHib3Doses",
  "title" : "IMMZ.D18.S.Hib.3 doses schedule",
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
  "description" : "IMMZ.D18.S.Hib.3 doses schedule\n3 primary doses without a booster dose (3p) schedule",
  "relatedArtifact" : [
    {
      "type" : "citation",
      "citation" : "WHO recommendations for routine immunization - summary tables (January 2025)"
    }
  ],
  "library" : [
    "http://smart.who.int/immunizations/Library/IMMZD18SHib3DosesLogic"
  ],
  "action" : [
    {
      "title" : "Haemophilus influenzae type b (Hib) dose 1",
      "description" : "Provision of the Hib dose 1\nTrigger event: Child's birth\nTrigger pseudo: \nTrigger date: \"Date of birth\"\nCreate condition: Immunization should start from 6 weeks of age, or as early as possible thereafter.\nHib-containing vaccine is not required for healthy children aged over 5 years.",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "Haemophilus influenzae type b (Hib) dose 1",
            "language" : "text/cql-identifier",
            "expression" : "Haemophilus influenzae type b (Hib) dose 1"
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
            "expression" : "Haemophilus influenzae type b (Hib) dose 1 Create"
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
      "title" : "Hib dose 2",
      "description" : "Provision of the Hib dose 2\nTrigger event: First Hib dose from the primary series was administered to the client within 1 year of age. Client's age is less than 5 years\nTrigger pseudo: Count of vaccines administered (where \"Vaccine type\" = \"Hib-containing vaccines\" and \"Type of dose\" = \"Primary series\") = 1 AND \"Date and time of vaccination\" (where \"Vaccine type\"= \"Hib-containing vaccines\" and \"Dose number\" = 1) − \"Date of birth\" < 1 year AND Today's date − \"Date of birth\" ≤ 5 years\nTrigger date: \"Date and time of vaccination\" (where \"Vaccine type\" = \"Hib-containing vaccines\")\nCreate condition: Hib dose 2 should be provided if the client was given the previous dose more than 4 weeks ago and the first Hib dose was received by the time the child turned 1 year old",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "Hib dose 2",
            "language" : "text/cql-identifier",
            "expression" : "Hib dose 2"
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
            "expression" : "Hib dose 2 Create"
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
      "title" : "Hib dose 3",
      "description" : "Provision of the Hib dose 3\nTrigger event: Second Hib dose from the primary series was administered. Client's age is less than 5 years\nTrigger pseudo: Count of vaccines administered (where \"Vaccine type\" = \"Hib-containing vaccines\" and \"Type of dose\"= \"Primary series\") = 2 AND Today's date − \"Date of birth\" ≤ 5 years\nTrigger date: Latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Hib-containing vaccines\")\nCreate condition: Hib dose 3 should be provided if the client was given the previous dose more than 4 weeks before and the first Hib dose was received by the time the child turned 1 year old",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "Hib dose 3",
            "language" : "text/cql-identifier",
            "expression" : "Hib dose 3"
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
            "expression" : "Hib dose 3 Create"
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
