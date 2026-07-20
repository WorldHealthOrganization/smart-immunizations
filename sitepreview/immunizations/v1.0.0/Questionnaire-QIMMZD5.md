# IMMZ.D5.Determine vaccine(s) to be administered based on contraindications - WHO Immunization Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D5.Determine vaccine(s) to be administered based on contraindications**

## Questionnaire: IMMZ.D5.Determine vaccine(s) to be administered based on contraindications
Branch:



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "QIMMZD5",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-extr-smap"]
  },
  "language" : "en",
  "contained" : [{
    "resourceType" : "ValueSet",
    "id" : "IMMZ.D.DE161",
    "url" : "http://smart.who.int/immunizations/ValueSet/IMMZ.D.DE161",
    "name" : "IMMZ_D_DE161",
    "title" : "IMMZ.D.DE161 ValueSet for Potential contraindications",
    "status" : "active",
    "description" : "ValueSet for Potential contraindications for IMMZ.D.DE161",
    "compose" : {
      "include" : [{
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "concept" : [{
          "code" : "DE162",
          "display" : "Currently pregnant"
        },
        {
          "code" : "DE163",
          "display" : "Immunocompromised"
        },
        {
          "code" : "DE200",
          "display" : "Severely immunocompromised"
        },
        {
          "code" : "DE164",
          "display" : "Exposed to immunosuppressive treatment"
        },
        {
          "code" : "DE165",
          "display" : "Severely immunosuppressed"
        },
        {
          "code" : "DE187",
          "display" : "Immunodeficiency syndromes"
        },
        {
          "code" : "DE166",
          "display" : "History of anaphylactic reactions"
        },
        {
          "code" : "DE167",
          "display" : "Severe allergic reactions"
        },
        {
          "code" : "DE168",
          "display" : "Symptomatic HIV infection"
        },
        {
          "code" : "DE169",
          "display" : "Planning to get pregnant in the next month"
        },
        {
          "code" : "DE170",
          "display" : "Receiving blood products"
        },
        {
          "code" : "DE188",
          "display" : "Severe acute illness"
        },
        {
          "code" : "DE190",
          "display" : "TB disease"
        },
        {
          "code" : "DE191",
          "display" : "Breastfeeding"
        },
        {
          "code" : "DE192",
          "display" : "Spina bifida"
        },
        {
          "code" : "DE193",
          "display" : "Bladder exstrophy"
        },
        {
          "code" : "DE194",
          "display" : "Acute gastroenteritis"
        },
        {
          "code" : "DE195",
          "display" : "Moderate to severe fever"
        },
        {
          "code" : "DE196",
          "display" : "Prior history of intussusception"
        },
        {
          "code" : "DE197",
          "display" : "Altered immunocompetence"
        },
        {
          "code" : "DE198",
          "display" : "Hypersensitivity to vaccine components"
        },
        {
          "code" : "DE199",
          "display" : "Taking antibiotics"
        }]
      }]
    },
    "expansion" : {
      "timestamp" : "2025-06-25T16:39:07.092Z",
      "contains" : [{
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE162",
        "display" : "Currently pregnant"
      },
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE163",
        "display" : "Immunocompromised"
      },
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE200",
        "display" : "Severely immunocompromised"
      },
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE164",
        "display" : "Exposed to immunosuppressive treatment"
      },
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE165",
        "display" : "Severely immunosuppressed"
      },
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE187",
        "display" : "Immunodeficiency syndromes"
      },
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE166",
        "display" : "History of anaphylactic reactions"
      },
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE167",
        "display" : "Severe allergic reactions"
      },
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE168",
        "display" : "Symptomatic HIV infection"
      },
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE169",
        "display" : "Planning to get pregnant in the next month"
      },
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE170",
        "display" : "Receiving blood products"
      },
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE188",
        "display" : "Severe acute illness"
      },
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE190",
        "display" : "TB disease"
      },
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE191",
        "display" : "Breastfeeding"
      },
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE192",
        "display" : "Spina bifida"
      },
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE193",
        "display" : "Bladder exstrophy"
      },
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE194",
        "display" : "Acute gastroenteritis"
      },
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE195",
        "display" : "Moderate to severe fever"
      },
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE196",
        "display" : "Prior history of intussusception"
      },
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE197",
        "display" : "Altered immunocompetence"
      },
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE198",
        "display" : "Hypersensitivity to vaccine components"
      },
      {
        "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
        "code" : "DE199",
        "display" : "Taking antibiotics"
      }]
    }
  }],
  "extension" : [{
    "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-targetStructureMap",
    "valueCanonical" : "http://smart.who.int/immunizations/StructureMap/IMMZ.D5.QRToBundle"
  }],
  "url" : "http://smart.who.int/immunizations/Questionnaire/QIMMZD5",
  "version" : "1.0.0",
  "title" : "IMMZ.D5.Determine vaccine(s) to be administered based on contraindications",
  "status" : "draft",
  "subjectType" : ["Patient"],
  "date" : "2026-04-09T14:18:30+00:00",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "Questionnaire for IMMZ.D5.Determine vaccine(s) to be administered based on contraindications",
  "item" : [{
    "linkId" : "potentialContraindications",
    "code" : [{
      "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
      "code" : "DE161"
    }],
    "text" : "Potential contraindications",
    "type" : "choice",
    "required" : true,
    "repeats" : false,
    "answerValueSet" : "#IMMZ.D.DE161"
  }]
}

```
