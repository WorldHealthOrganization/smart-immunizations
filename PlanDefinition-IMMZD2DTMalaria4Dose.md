# IMMZ.D2.DT.Malaria - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D2.DT.Malaria**

## PlanDefinition: IMMZ.D2.DT.Malaria 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/PlanDefinition/IMMZD2DTMalaria4Dose | *Version*:0.2.0 |
| Draft as of 2025-11-21 | *Computable Name*:IMMZD2DTMalaria4Dose |

 
IMMZ.D2.DT.Malaria 4-dose schedule (The RTS,S/AS01 malaria vaccine should be used for the prevention of Plasmodium falciparum malaria in children living in regions with moderate to high malaria transmission, as defined by WHO) 

* **Actions:**: **Url:**
  * : [IMMZ.D2.DT.Malaria](PlanDefinition-IMMZD2DTMalaria4Dose.md)
* **Actions:**: **Version:**
  * : 0.2.0
* **Actions:**: **Title:**
  * : IMMZ.D2.DT.Malaria
* **Actions:**: **Status:**
  * : draft
* **Actions:**: **Date:**
  * : 2025-11-21 17:14:08+0000
* **Actions:**: **Publisher:**
  * : WHO
* **Actions:**: **Description:**
  * : IMMZ.D2.DT.Malaria 4-dose schedule (The RTS,S/AS01 malaria vaccine should be used for the prevention of Plasmodium falciparum malaria in children living in regions with moderate to high malaria transmission, as defined by WHO)
* **Actions:**: **Knowledge Capability:**
  * : computable
* **Actions:**: **Libraries:**
  * : 
| |
| :--- |
| [IMMZD2DTMalaria4DoseLogic](Library-IMMZD2DTMalaria4DoseLogic.md) |




## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "IMMZD2DTMalaria4Dose",
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
  "url" : "http://smart.who.int/immunizations/PlanDefinition/IMMZD2DTMalaria4Dose",
  "version" : "0.2.0",
  "name" : "IMMZD2DTMalaria4Dose",
  "title" : "IMMZ.D2.DT.Malaria",
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
  "date" : "2025-11-21T17:14:08+00:00",
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
  "description" : "IMMZ.D2.DT.Malaria\n4-dose schedule (The RTS,S/AS01 malaria vaccine should be used for the prevention of Plasmodium falciparum malaria in children living in regions with moderate to high malaria transmission, as defined by WHO)\t\t\t\t\t\t\t\t\t",
  "relatedArtifact" : [
    {
      "type" : "citation",
      "citation" : "WHO recommendations for routine immunization - summary tables (January 2025)"
    }
  ],
  "library" : [
    "http://smart.who.int/immunizations/Library/IMMZD2DTMalaria4DoseLogic"
  ],
  "action" : [
    {
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rationale",
          "valueMarkdown" : "The vaccine should be administered in a 3-dose primary schedule, with a fourth dose \nprovided approximately 12–18 months after the third dose to prolong the duration of protection. \nThere should be a minimum interval of 4 weeks between doses."
        }
      ],
      "title" : "Determine if the client is due for Malaria.",
      "description" : "Determine if the client is due for Malaria vaccine according to the national immunization protocol.\n4-dose schedule (The RTS,S/AS01 malaria vaccine should be used for the prevention of Plasmodium \nfalciparum malaria in children living in regions with moderate to high malaria transmission, as \ndefined by WHO)",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "Client is due for malaria vaccination",
            "language" : "text/cql-identifier",
            "expression" : "Client is due for malaria vaccination"
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
            "expression" : "Concept { codes: { Code { system: 'http://smart.who.int/immunizations/CodeSystem/IMMZ.Z', code: 'DE27', display: 'Malaria vaccines' } }, display: 'Malaria vaccines' }"
          }
        }
      ]
    },
    {
      "title" : "Check for Guidance for the patient regarding IMMZ.D2.DT.Malaria.",
      "description" : "Show Guidance for the patient regarding IMMZ.D2.DT.Malaria.",
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
