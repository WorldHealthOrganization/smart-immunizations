# IMMZ.D18.S.Hepatitis B.3-dose schedule - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D18.S.Hepatitis B.3-dose schedule**

## PlanDefinition: IMMZ.D18.S.Hepatitis B.3-dose schedule 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/PlanDefinition/IMMZD18SHepatitisB3Doses | *Version*:0.2.0 |
| Draft as of 2025-11-25 | *Computable Name*:IMMZD18SHepatitisB3Doses |

 
IMMZ.D18.S.Hepatitis B.3-dose schedule 3-dose schedule (birth dose + 2 primary series doses), on-time start 

* **Actions:**: **Url:**
  * : [IMMZ.D18.S.Hepatitis B.3-dose schedule](PlanDefinition-IMMZD18SHepatitisB3Doses.md)
* **Actions:**: **Version:**
  * : 0.2.0
* **Actions:**: **Title:**
  * : IMMZ.D18.S.Hepatitis B.3-dose schedule
* **Actions:**: **Status:**
  * : draft
* **Actions:**: **Date:**
  * : 2025-11-25 19:41:02+0000
* **Actions:**: **Publisher:**
  * : WHO
* **Actions:**: **Description:**
  * : IMMZ.D18.S.Hepatitis B.3-dose schedule 3-dose schedule (birth dose + 2 primary series doses), on-time start
* **Actions:**: **Knowledge Capability:**
  * : computable
* **Actions:**: **Libraries:**
  * : 
| |
| :--- |
| [IMMZD18SHepatitisB3DosesLogic](Library-IMMZD18SHepatitisB3DosesLogic.md) |




## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "IMMZD18SHepatitisB3Doses",
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
  "url" : "http://smart.who.int/immunizations/PlanDefinition/IMMZD18SHepatitisB3Doses",
  "version" : "0.2.0",
  "name" : "IMMZD18SHepatitisB3Doses",
  "title" : "IMMZ.D18.S.Hepatitis B.3-dose schedule",
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
  "description" : "IMMZ.D18.S.Hepatitis B.3-dose schedule\n3-dose schedule (birth dose + 2 primary series doses), on-time start",
  "relatedArtifact" : [
    {
      "type" : "citation",
      "citation" : "WHO recommendations for routine immunization - summary tables (January 2025)"
    }
  ],
  "library" : [
    "http://smart.who.int/immunizations/Library/IMMZD18SHepatitisB3DosesLogic"
  ],
  "action" : [
    {
      "title" : "Hepatitis B dose 1",
      "description" : "Provision of hepatitis B dose 1\nTrigger event: Child's birth\nTrigger pseudo: \nTrigger date: \"Date of birth\"\nCreate condition: The following option is considered appropriate: a 3-dose schedule with the first dose (monovalent) being given at birth and the second and third (monovalent or as part of a combined vaccine) given at the same time as the first and third doses of DTP-containing vaccine.\nThe interval between doses should be at least 4 weeks.",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "Hepatitis B dose 1",
            "language" : "text/cql-identifier",
            "expression" : "Hepatitis B dose 1"
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
            "expression" : "Hepatitis B dose 1 Create"
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
      "title" : "Hepatitis B dose 2",
      "description" : "Provision of hepatitis B dose 2\nTrigger event: First hepatitis B dose from the primary series was administered\nTrigger pseudo: Count of vaccines administered (where \"Vaccine type\" = \"Hepatitis B-containing vaccines\" and \"Type of dose\"= \"Primary series\") = 1\nTrigger date: Latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Hepatitis B-containing vaccines\")\nCreate condition: The following option is considered appropriate: a 3-dose schedule with the first dose (monovalent) being given at birth and the second and third (monovalent or as part of a combined vaccine) given at the same time as the first and third doses of DTP-containing vaccine.\nThe interval between doses should be at least 4 weeks.",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "Hepatitis B dose 2",
            "language" : "text/cql-identifier",
            "expression" : "Hepatitis B dose 2"
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
            "expression" : "Hepatitis B dose 2 Create"
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
      "title" : "Hepatitis B dose 3",
      "description" : "Provision of hepatitis B dose 3 for low-birth-weight and premature infants\nTrigger event: Second hepatitis B dose from the primary series was administered. Client's weight at birth was less than 2000 g or client was a premature infant\nTrigger pseudo: Count of vaccines administered (where \"Vaccine type\" = \"Hepatitis B-containing vaccines\") = 2 and (\"Birth weight in grams\" < 2000) or (\"Preterm birth\" = TRUE)\nTrigger date: Latest \"Date and time of vaccination\" (where \"Vaccine type\" = \"Hepatitis B-containing vaccines\")\nCreate condition: A birth dose of hepatitis B-containing vaccine can be given to low-birth-weight (< 2000 g) and premature infants. For these infants, the birth dose should not count as part of the primary 3-dose series; the 3 doses of the standard primary series should be given according to the national vaccination schedule.",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "Hepatitis B dose 3",
            "language" : "text/cql-identifier",
            "expression" : "Hepatitis B dose 3"
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
            "expression" : "Hepatitis B dose 3 Create"
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
