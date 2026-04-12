# IMMZ.D7.Counsel client - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D7.Counsel client**

## Questionnaire: IMMZ.D7.Counsel client
Branch:



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "QIMMZD7",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-extr-smap"]
  },
  "language" : "en",
  "contained" : [{
    "resourceType" : "ValueSet",
    "id" : "IMMZ.D.DE86",
    "url" : "http://smart.who.int/immunizations/ValueSet/IMMZ.D.DE86",
    "name" : "IMMZ_D_DE86",
    "title" : "IMMZ.D.DE86 ValueSet for Client education and counselling on immunization",
    "status" : "active",
    "description" : "ValueSet for Client education and counselling on immunization for IMMZ.D.DE86",
    "compose" : {
      "include" : [{
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "concept" : [{
          "code" : "DE87",
          "display" : "Counselling on functions of the immunological system"
        },
        {
          "code" : "DE88",
          "display" : "Advising about functions of the immunological system"
        },
        {
          "code" : "DE89",
          "display" : "Education to influence immunization behaviours"
        },
        {
          "code" : "DE90",
          "display" : "Advising about immunization behaviours"
        },
        {
          "code" : "DE91",
          "display" : "Awareness raising to influence immunization behaviours"
        }]
      }]
    },
    "expansion" : {
      "timestamp" : "2025-06-25T16:39:07.092Z",
      "contains" : [{
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE87",
        "display" : "Counselling on functions of the immunological system"
      },
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE88",
        "display" : "Advising about functions of the immunological system"
      },
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE89",
        "display" : "Education to influence immunization behaviours"
      },
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE90",
        "display" : "Advising about immunization behaviours"
      },
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE91",
        "display" : "Awareness raising to influence immunization behaviours"
      }]
    }
  }],
  "url" : "http://smart.who.int/immunizations/Questionnaire/QIMMZD7",
  "version" : "0.2.0",
  "title" : "IMMZ.D7.Counsel client",
  "status" : "draft",
  "subjectType" : ["Patient"],
  "date" : "2026-03-24T11:36:08+00:00",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "Questionnaire for IMMZ.D7.Counsel client",
  "item" : [{
    "linkId" : "clientEducationAndCounsellingOnImmunization",
    "code" : [{
      "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
      "code" : "DE86"
    },
    {
      "system" : "http://id.who.int/icd/release/11/mms",
      "code" : "QA1Y",
      "display" : "Contact with health services for other specified counselling"
    }],
    "text" : "Client education and counselling on immunization",
    "type" : "choice",
    "required" : false,
    "repeats" : false,
    "answerValueSet" : "#IMMZ.D.DE86"
  }]
}

```
