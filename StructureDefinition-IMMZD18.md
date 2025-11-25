# IMMZ.D18.Determine time for next visit - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D18.Determine time for next visit**

## Logical Model: IMMZ.D18.Determine time for next visit 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/StructureDefinition/IMMZD18 | *Version*:0.2.0 |
| Active as of 2025-01-13 | *Computable Name*:IMMZ_D18_Determine_time_for_next_visit |

 
Data elements for the IMMZ.D18.Determine time for next visit Data Dictionary Activity. 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/smart.who.int.immunizations|current/StructureDefinition/IMMZD18)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-IMMZD18.csv), [Excel](StructureDefinition-IMMZD18.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "IMMZD18",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablestructuredefinition",
      "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablestructuredefinition"
    ]
  },
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability",
      "valueCode" : "shareable"
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/artifact-versionAlgorithm",
      "valueCoding" : {
        "system" : "http://hl7.org/fhir/version-algorithm",
        "code" : "semver"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/artifact-versionPolicy",
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "http://terminology.hl7.org/CodeSystem/artifact-version-policy-codes",
            "code" : "metadata"
          }
        ]
      }
    }
  ],
  "url" : "http://smart.who.int/immunizations/StructureDefinition/IMMZD18",
  "version" : "0.2.0",
  "name" : "IMMZ_D18_Determine_time_for_next_visit",
  "title" : "IMMZ.D18.Determine time for next visit",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-01-13",
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
  "description" : "Data elements for the IMMZ.D18.Determine time for next visit Data Dictionary Activity.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://smart.who.int/immunizations/StructureDefinition/IMMZD18",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "IMMZD18",
        "path" : "IMMZD18",
        "short" : "IMMZ.D18.Determine time for next visit",
        "definition" : "Data elements for the IMMZ.D18.Determine time for next visit Data Dictionary Activity."
      },
      {
        "id" : "IMMZD18.patient",
        "path" : "IMMZD18.patient",
        "short" : "Patient",
        "definition" : "The patient.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference"
          }
        ]
      },
      {
        "id" : "IMMZD18.dateTimeOfFollowUpAppointment",
        "path" : "IMMZD18.dateTimeOfFollowUpAppointment",
        "code" : [
          {
            "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
            "code" : "DE185"
          },
          {
            "system" : "http://snomed.info/sct",
            "code" : "185353001",
            "display" : "Appointment date (finding)"
          }
        ],
        "short" : "Date/time of follow-up appointment",
        "definition" : "Date the client is to return for next vaccination",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "IMMZD18.recommendedFollowUpDate",
        "path" : "IMMZD18.recommendedFollowUpDate",
        "code" : [
          {
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
          }
        ],
        "short" : "Recommended follow-up date",
        "definition" : "Date when follow-up is recommended based on vaccination schedule",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "date"
          }
        ]
      }
    ]
  }
}

```
