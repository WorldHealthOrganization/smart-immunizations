# IMMZ.D2.Determine required vaccination(s) - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D2.Determine required vaccination(s)**

## Logical Model: IMMZ.D2.Determine required vaccination(s) 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/StructureDefinition/IMMZD2 | *Version*:0.2.0 |
| Active as of 2025-01-13 | *Computable Name*:IMMZ_D2_Determine_required_vaccination_s_ |

 
Data elements for the IMMZ.D2.Determine required vaccination(s) Data Dictionary Activity. 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/smart.who.int.immunizations|current/StructureDefinition/IMMZD2)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-IMMZD2.csv), [Excel](StructureDefinition-IMMZD2.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "IMMZD2",
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
  "url" : "http://smart.who.int/immunizations/StructureDefinition/IMMZD2",
  "version" : "0.2.0",
  "name" : "IMMZ_D2_Determine_required_vaccination_s_",
  "title" : "IMMZ.D2.Determine required vaccination(s)",
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
  "description" : "Data elements for the IMMZ.D2.Determine required vaccination(s) Data Dictionary Activity.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://smart.who.int/immunizations/StructureDefinition/IMMZD2",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "IMMZD2",
        "path" : "IMMZD2",
        "short" : "IMMZ.D2.Determine required vaccination(s)",
        "definition" : "Data elements for the IMMZ.D2.Determine required vaccination(s) Data Dictionary Activity."
      },
      {
        "id" : "IMMZD2.patient",
        "path" : "IMMZD2.patient",
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
        "id" : "IMMZD2.immunizationRecommendationStatus",
        "path" : "IMMZD2.immunizationRecommendationStatus",
        "code" : [
          {
            "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
            "code" : "DE156"
          }
        ],
        "short" : "Immunization recommendation status",
        "definition" : "The current status or recommendation for a specific immunization for an client",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://smart.who.int/immunizations/ValueSet/IMMZ.D.DE156"
        }
      }
    ]
  }
}

```
