# IMMZ.D2.DT.Dengue.3 doses without pre-vaccination screening - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D2.DT.Dengue.3 doses without pre-vaccination screening**

## PlanDefinition: IMMZ.D2.DT.Dengue.3 doses without pre-vaccination screening 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/PlanDefinition/IMMZD2DTDengue3DosesWithoutPreVaccinationScreening | *Version*:0.2.0 |
| Draft as of 2025-11-25 | *Computable Name*:IMMZD2DTDengue3DosesWithoutPreVaccinationScreening |

 
IMMZ.D2.DT.Dengue.3 doses without pre-vaccination screening CYD-TDV (Dengvaxia), 3-dose schedule without pre-vaccination screening [when pre-vaccination screening is not feasible and in areas with recent documentation of seroprevalence rates of at least 80% by age 9 years] 

* **Actions:**: **Url:**
  * : [IMMZ.D2.DT.Dengue.3 doses without pre-vaccination screening](PlanDefinition-IMMZD2DTDengue3DosesWithoutPreVaccinationScreening.md)
* **Actions:**: **Version:**
  * : 0.2.0
* **Actions:**: **Title:**
  * : IMMZ.D2.DT.Dengue.3 doses without pre-vaccination screening
* **Actions:**: **Status:**
  * : draft
* **Actions:**: **Date:**
  * : 2025-11-25 19:41:02+0000
* **Actions:**: **Publisher:**
  * : WHO
* **Actions:**: **Description:**
  * : IMMZ.D2.DT.Dengue.3 doses without pre-vaccination screening CYD-TDV (Dengvaxia), 3-dose schedule without pre-vaccination screening [when pre-vaccination screening is not feasible and in areas with recent documentation of seroprevalence rates of at least 80% by age 9 years]
* **Actions:**: **Knowledge Capability:**
  * : computable
* **Actions:**: **Libraries:**
  * : 
| |
| :--- |
| [IMMZD2DTDengue3DosesWithoutPreVaccinationScreeningLogic](Library-IMMZD2DTDengue3DosesWithoutPreVaccinationScreeningLogic.md) |




## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "IMMZD2DTDengue3DosesWithoutPreVaccinationScreening",
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
  "url" : "http://smart.who.int/immunizations/PlanDefinition/IMMZD2DTDengue3DosesWithoutPreVaccinationScreening",
  "version" : "0.2.0",
  "name" : "IMMZD2DTDengue3DosesWithoutPreVaccinationScreening",
  "title" : "IMMZ.D2.DT.Dengue.3 doses without pre-vaccination screening",
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
  "description" : "IMMZ.D2.DT.Dengue.3 doses without pre-vaccination screening\nCYD-TDV (Dengvaxia), 3-dose schedule without pre-vaccination screening [when pre-vaccination screening is not feasible and in areas with recent documentation of seroprevalence rates of at least 80% by age 9 years]",
  "relatedArtifact" : [
    {
      "type" : "citation",
      "citation" : "WHO recommendations for routine immunization - summary tables (January 2025)"
    }
  ],
  "library" : [
    "http://smart.who.int/immunizations/Library/IMMZD2DTDengue3DosesWithoutPreVaccinationScreeningLogic"
  ],
  "action" : [
    {
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rationale",
          "valueMarkdown" : "Currently, the dengue vaccine should be used within the indicated age range, which in \nmost countries is 9–45 years. \nIf pre-vaccination screening is not feasible, vaccination without individual screening could be \nconsidered in areas with recent documentation of seroprevalence rates of at least 80% by age 9 \nyears. Communication needs to ensure appropriate and full disclosure of the risks of vaccination \nof persons with unknown serostatus.\nCYD-TDV is recommended as a 3-dose series given 6 months apart. Should a vaccine dose be delayed \nfor any reason, it is not necessary to restart the course and the next dose in the series should \nbe administered as soon as possible."
        }
      ],
      "title" : "Determine if the client is due for Dengue.",
      "description" : "Determine if the client is due for Dengue vaccine according to the national immunization protocol.\nCYD-TDV (Dengvaxia), 3-dose schedule without pre-vaccination screening [when pre-vaccination screening is not feasible and in areas with recent documentation of seroprevalence rates of at least 80% by age 9 years]",
      "condition" : [
        {
          "kind" : "applicability",
          "expression" : {
            "description" : "Client is due for dengue vaccination",
            "language" : "text/cql-identifier",
            "expression" : "Client is due for dengue vaccination"
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
            "expression" : "Concept { codes: { Code { system: 'http://smart.who.int/immunizations/CodeSystem/IMMZ.Z', code: 'DE25', display: 'Dengue vaccines' } }, display: 'Dengue vaccines' }"
          }
        }
      ]
    },
    {
      "title" : "Check for Guidance for the patient regarding IMMZ.D2.DT.Dengue.3 doses without pre-vaccination screening.",
      "description" : "Show Guidance for the patient regarding IMMZ.D2.DT.Dengue.3 doses without pre-vaccination screening.",
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
