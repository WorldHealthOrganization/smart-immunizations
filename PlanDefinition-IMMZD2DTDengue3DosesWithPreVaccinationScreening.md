# IMMZ.D2.DT.Dengue.3 doses with pre-vaccination screening - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D2.DT.Dengue.3 doses with pre-vaccination screening**

## PlanDefinition: IMMZ.D2.DT.Dengue.3 doses with pre-vaccination screening 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/PlanDefinition/IMMZD2DTDengue3DosesWithPreVaccinationScreening | *Version*:0.2.0 |
| Draft as of 2025-11-25 | *Computable Name*:IMMZD2DTDengue3DosesWithPreVaccinationScreening |

 
IMMZ.D2.DT.Dengue.3 doses with pre-vaccination screening CYD-TDV (Dengvaxia), 3-dose schedule with pre-vaccination screening, the recommended strategy where feasible (pre-vaccination screening whereby only those tested seropositive would be vaccinated) 

* **Actions:**: **Url:**
  * : [IMMZ.D2.DT.Dengue.3 doses with pre-vaccination screening](PlanDefinition-IMMZD2DTDengue3DosesWithPreVaccinationScreening.md)
* **Actions:**: **Version:**
  * : 0.2.0
* **Actions:**: **Title:**
  * : IMMZ.D2.DT.Dengue.3 doses with pre-vaccination screening
* **Actions:**: **Status:**
  * : draft
* **Actions:**: **Date:**
  * : 2025-11-25 19:41:02+0000
* **Actions:**: **Publisher:**
  * : WHO
* **Actions:**: **Description:**
  * : IMMZ.D2.DT.Dengue.3 doses with pre-vaccination screening CYD-TDV (Dengvaxia), 3-dose schedule with pre-vaccination screening, the recommended strategy where feasible (pre-vaccination screening whereby only those tested seropositive would be vaccinated)
* **Actions:**: **Knowledge Capability:**
  * : computable
* **Actions:**: **Libraries:**
  * : 
| |
| :--- |
| [IMMZD2DTDengue3DosesWithPreVaccinationScreeningLogic](Library-IMMZD2DTDengue3DosesWithPreVaccinationScreeningLogic.md) |




## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "IMMZD2DTDengue3DosesWithPreVaccinationScreening",
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
  "url" : "http://smart.who.int/immunizations/PlanDefinition/IMMZD2DTDengue3DosesWithPreVaccinationScreening",
  "version" : "0.2.0",
  "name" : "IMMZD2DTDengue3DosesWithPreVaccinationScreening",
  "title" : "IMMZ.D2.DT.Dengue.3 doses with pre-vaccination screening",
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
  "description" : "IMMZ.D2.DT.Dengue.3 doses with pre-vaccination screening\nCYD-TDV (Dengvaxia), 3-dose schedule with pre-vaccination screening, the recommended strategy where feasible (pre-vaccination screening whereby only those tested seropositive would be vaccinated)",
  "relatedArtifact" : [
    {
      "type" : "citation",
      "citation" : "WHO recommendations for routine immunization - summary tables (January 2025)"
    }
  ],
  "library" : [
    "http://smart.who.int/immunizations/Library/IMMZD2DTDengue3DosesWithPreVaccinationScreeningLogic"
  ],
  "action" : [
    {
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rationale",
          "valueMarkdown" : "Currently, the dengue vaccine should be used within the indicated age range, which in most countries is 9–45 years. \nBecause of the excess risk of hospitalized dengue identified among seronegative trial \nparticipants who became infected after vaccination, the WHO Global Advisory Committee on Vaccine \nSafety (GACVS) concluded that individuals who have not been infected with the wild dengue virus \n(i.e. who are seronegative) should not be vaccinated with CYD-TDV (Dengvaxia).\nIf pre-vaccination screening is not feasible, vaccination without individual screening could be \nconsidered in areas with recent documentation of seroprevalence rates of at least 80% by age 9 years. \nCommunication needs to ensure appropriate and full disclosure of the risks of vaccination of persons \nwith unknown serostatus.\nPre-vaccination screening is necessary to avoid vaccinating truly seronegative persons.\nCYD-TDV is recommended as a 3-dose series given 6 months apart. Should a vaccine dose be delayed for any reason, it is not \nnecessary to restart the course and the next dose in the series should be administered as soon as possible."
        }
      ],
      "title" : "Determine if the client is due for Dengue.",
      "description" : "Determine if the client is due for Dengue vaccine according to the national immunization protocol.\nCYD-TDV (Dengvaxia), 3-dose schedule with pre-vaccination screening, the recommended strategy where \nfeasible (pre-vaccination screening whereby only those tested seropositive would be vaccinated)",
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
      "title" : "Check for Guidance for the patient regarding IMMZ.D2.DT.Dengue.3 doses with pre-vaccination screening.",
      "description" : "Show Guidance for the patient regarding IMMZ.D2.DT.Dengue.3 doses with pre-vaccination screening.",
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
