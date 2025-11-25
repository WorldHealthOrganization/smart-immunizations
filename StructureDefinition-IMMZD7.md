# IMMZ.D7.Counsel client - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D7.Counsel client**

## Logical Model: IMMZ.D7.Counsel client 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/StructureDefinition/IMMZD7 | *Version*:0.2.0 |
| Active as of 2025-01-13 | *Computable Name*:IMMZ_D7_Counsel_client |

 
Data elements for the IMMZ.D7.Counsel client Data Dictionary Activity. 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/smart.who.int.immunizations|current/StructureDefinition/IMMZD7)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-IMMZD7.csv), [Excel](StructureDefinition-IMMZD7.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "IMMZD7",
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
  "url" : "http://smart.who.int/immunizations/StructureDefinition/IMMZD7",
  "version" : "0.2.0",
  "name" : "IMMZ_D7_Counsel_client",
  "title" : "IMMZ.D7.Counsel client",
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
  "description" : "Data elements for the IMMZ.D7.Counsel client Data Dictionary Activity.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://smart.who.int/immunizations/StructureDefinition/IMMZD7",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "IMMZD7",
        "path" : "IMMZD7",
        "short" : "IMMZ.D7.Counsel client",
        "definition" : "Data elements for the IMMZ.D7.Counsel client Data Dictionary Activity."
      },
      {
        "id" : "IMMZD7.patient",
        "path" : "IMMZD7.patient",
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
        "id" : "IMMZD7.clientEducationAndCounsellingOnImmunization",
        "path" : "IMMZD7.clientEducationAndCounsellingOnImmunization",
        "code" : [
          {
            "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
            "code" : "DE86"
          },
          {
            "system" : "http://id.who.int/icd/release/11/mms",
            "code" : "QA1Y",
            "display" : "Contact with health services for other specified counselling"
          }
        ],
        "short" : "Client education and counselling on immunization",
        "definition" : "Providing information, guidance and support to client or caretakers (such as parents or legal guardians) regarding immunization practices",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://smart.who.int/immunizations/ValueSet/IMMZ.D.DE86"
        }
      }
    ]
  }
}

```
