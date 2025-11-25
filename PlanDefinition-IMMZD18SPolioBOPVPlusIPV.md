# IMMZ.D18.S.Polio.bOPV plus IPV schedule - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D18.S.Polio.bOPV plus IPV schedule**

## PlanDefinition: IMMZ.D18.S.Polio.bOPV plus IPV schedule 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/PlanDefinition/IMMZD18SPolioBOPVPlusIPV | *Version*:0.2.0 |
| Draft as of 2025-11-25 | *Computable Name*:IMMZD18SPolioBOPVPlusIPV |

 
IMMZ.D18.S.Polio.bOPV plus IPV schedule Bivalent oral polio vaccine (bOPV) plus inactivated polio vaccine (IPV) schedule 

* **Actions:**: **Url:**
  * : [IMMZ.D18.S.Polio.bOPV plus IPV schedule](PlanDefinition-IMMZD18SPolioBOPVPlusIPV.md)
* **Actions:**: **Version:**
  * : 0.2.0
* **Actions:**: **Title:**
  * : IMMZ.D18.S.Polio.bOPV plus IPV schedule
* **Actions:**: **Status:**
  * : draft
* **Actions:**: **Date:**
  * : 2025-11-25 19:41:02+0000
* **Actions:**: **Publisher:**
  * : WHO
* **Actions:**: **Description:**
  * : IMMZ.D18.S.Polio.bOPV plus IPV schedule Bivalent oral polio vaccine (bOPV) plus inactivated polio vaccine (IPV) schedule
* **Actions:**: **Knowledge Capability:**
  * : computable
* **Actions:**: **Libraries:**
  * : 
| |
| :--- |
| [IMMZD18SPolioBOPVPlusIPVLogic](Library-IMMZD18SPolioBOPVPlusIPVLogic.md) |




## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "IMMZD18SPolioBOPVPlusIPV",
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
  "url" : "http://smart.who.int/immunizations/PlanDefinition/IMMZD18SPolioBOPVPlusIPV",
  "version" : "0.2.0",
  "name" : "IMMZD18SPolioBOPVPlusIPV",
  "title" : "IMMZ.D18.S.Polio.bOPV plus IPV schedule",
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
  "description" : "IMMZ.D18.S.Polio.bOPV plus IPV schedule\nBivalent oral polio vaccine (bOPV) plus inactivated polio vaccine (IPV) schedule",
  "relatedArtifact" : [
    {
      "type" : "citation",
      "citation" : "WHO recommendations for routine immunization - summary tables (January 2025)"
    }
  ],
  "library" : [
    "http://smart.who.int/immunizations/Library/IMMZD18SPolioBOPVPlusIPVLogic"
  ],
  "action" : [
    {
      "title" : "bOPV dose 1",
      "description" : "Provision of bOPV dose 1\nTrigger event: Child's birth\nTrigger pseudo: \nTrigger date: \"Date of birth\"\nCreate condition: The preferred schedule is to administer the 3 doses of bOPV starting from the minimum age of 6 weeks, with at least a 4 week-interval between doses.",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "bOPV dose 1",
            "language" : "text/cql-identifier",
            "expression" : "bOPV dose 1"
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
            "expression" : "bOPV dose 1 Create"
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
      "title" : "IPV dose 1",
      "description" : "Provision of IPV dose 1\nTrigger event: Child's birth\nTrigger pseudo: \nTrigger date: \"Date of birth\"\nCreate condition: The first IPV dose should be administered from a minimum of 14 weeks of age.",
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
      "title" : "bOPV dose 2",
      "description" : "Provision of bOPV dose 2\nTrigger event: First bOPV dose from the primary series was administered\nTrigger pseudo: Count of vaccines administered (where \"Type of dose\" = \"Primary series\" and \"Type of poliovirus dose\" = \"bOPV\") = 1\nTrigger date: Latest \"Date and time of vaccination\" (where \"Type of poliovirus dose\" = \"bOPV\")\nCreate condition: The preferred schedule is to administer the 3 doses of bOPV starting from the minimum age of 6 weeks, with at least a 4 week-interval between doses.",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "bOPV dose 2",
            "language" : "text/cql-identifier",
            "expression" : "bOPV dose 2"
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
            "expression" : "bOPV dose 2 Create"
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
      "description" : "Provision of IPV dose 2\nTrigger event: First IPV dose from the primary series was administered\nTrigger pseudo: Count of vaccines administered (where \"Type of poliovirus dose\" = \"IPV\") = 1\nTrigger date: Latest \"Date and time of vaccination\" (where \"Type of poliovirus dose\" = \"IPV\")\nCreate condition: The first IPV dose should be administered from a minimum of 14 weeks of age (with the third dose of the diphtheria–tetanus–pertussis vaccine [DTP3] or pentavalent vaccine [penta3]), with the second IPV dose being given at least 4 months later (possibly coinciding with other vaccines administered at 9 months of age).",
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
      "title" : "bOPV dose 3",
      "description" : "Provision of bOPV dose 3\nTrigger event: Second bOPV dose from the primary series was administered\nTrigger pseudo: Count of vaccines administered (where \"Type of dose\" = \"Primary series\" and \"Type of poliovirus dose\" = \"bOPV\") = 2\nTrigger date: Latest \"Date and time of vaccination\" (where \"Type of poliovirus dose\" = \"bOPV\")\nCreate condition: The preferred schedule is to administer the 3 doses of bOPV starting from the minimum age of 6 weeks, with at least a 4 week-interval between doses.",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "bOPV dose 3",
            "language" : "text/cql-identifier",
            "expression" : "bOPV dose 3"
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
            "expression" : "bOPV dose 3 Create"
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
