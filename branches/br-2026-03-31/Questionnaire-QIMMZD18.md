# IMMZ.D18.Determine time for next visit - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D18.Determine time for next visit**

## Questionnaire: IMMZ.D18.Determine time for next visit
Branch:



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "QIMMZD18",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-extr-smap"]
  },
  "language" : "en",
  "url" : "http://smart.who.int/immunizations/Questionnaire/QIMMZD18",
  "version" : "0.2.0",
  "title" : "IMMZ.D18.Determine time for next visit",
  "status" : "draft",
  "subjectType" : ["Patient"],
  "date" : "2026-03-31T13:43:57+00:00",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "Questionnaire for IMMZ.D18.Determine time for next visit",
  "item" : [{
    "linkId" : "dateTimeOfFollowUpAppointment",
    "code" : [{
      "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
      "code" : "DE185"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "185353001",
      "display" : "Appointment date (finding)"
    }],
    "text" : "Date/time of follow-up appointment",
    "type" : "dateTime",
    "required" : false,
    "repeats" : false
  },
  {
    "linkId" : "recommendedFollowUpDate",
    "code" : [{
      "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
      "code" : "DE186"
    },
    {
      "system" : "http://loinc.org",
      "code" : "39289-4",
      "display" : "Code LongName: Follow-up (referred to) provider/specialist, appointment date CPHS"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "410671006",
      "display" : "Date (attribute)"
    }],
    "text" : "Recommended follow-up date",
    "type" : "date",
    "required" : false,
    "repeats" : false
  }]
}

```
