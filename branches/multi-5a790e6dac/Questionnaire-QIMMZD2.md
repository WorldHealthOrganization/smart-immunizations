# IMMZ.D2.Determine required vaccination(s) - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D2.Determine required vaccination(s)**

## Questionnaire: IMMZ.D2.Determine required vaccination(s)
Branch:



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "QIMMZD2",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-extr-smap"]
  },
  "language" : "en",
  "contained" : [{
    "resourceType" : "ValueSet",
    "id" : "IMMZ.D.DE156",
    "url" : "http://smart.who.int/immunizations/ValueSet/IMMZ.D.DE156",
    "name" : "IMMZ_D_DE156",
    "title" : "IMMZ.D.DE156 ValueSet for Immunization recommendation status",
    "status" : "active",
    "description" : "ValueSet for Immunization recommendation status for IMMZ.D.DE156",
    "compose" : {
      "include" : [{
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "concept" : [{
          "code" : "DE157",
          "display" : "Not due"
        },
        {
          "code" : "DE158",
          "display" : "Due"
        },
        {
          "code" : "DE189",
          "display" : "Complete"
        },
        {
          "code" : "DE159",
          "display" : "Contraindicated"
        },
        {
          "code" : "DE160",
          "display" : "Further evaluation needed"
        }]
      }]
    },
    "expansion" : {
      "timestamp" : "2025-06-25T16:39:07.092Z",
      "contains" : [{
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE157",
        "display" : "Not due"
      },
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE158",
        "display" : "Due"
      },
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE189",
        "display" : "Complete"
      },
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE159",
        "display" : "Contraindicated"
      },
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE160",
        "display" : "Further evaluation needed"
      }]
    }
  }],
  "url" : "http://smart.who.int/immunizations/Questionnaire/QIMMZD2",
  "version" : "0.2.0",
  "title" : "IMMZ.D2.Determine required vaccination(s)",
  "status" : "draft",
  "subjectType" : ["Patient"],
  "date" : "2026-04-03T22:35:55+00:00",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "Questionnaire for IMMZ.D2.Determine required vaccination(s)",
  "item" : [{
    "linkId" : "immunizationRecommendationStatus",
    "code" : [{
      "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
      "code" : "DE156"
    }],
    "text" : "Immunization recommendation status",
    "type" : "choice",
    "required" : true,
    "repeats" : false,
    "answerValueSet" : "#IMMZ.D.DE156"
  }]
}

```
