# IMMZ.D5.Determine vaccine(s) to be administered based on contraindications - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D5.Determine vaccine(s) to be administered based on contraindications**

## Logical Model: IMMZ.D5.Determine vaccine(s) to be administered based on contraindications 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/StructureDefinition/IMMZD5 | *Version*:0.2.0 |
| Active as of 2025-01-13 | *Computable Name*:IMMZ_D5_Determine_vaccine_s__to_be_administered_based_on_contraindications |

 
Data elements for the IMMZ.D5.Determine vaccine(s) to be administered based on contraindications Data Dictionary Activity. 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/smart.who.int.immunizations|current/StructureDefinition/IMMZD5)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-IMMZD5.csv), [Excel](StructureDefinition-IMMZD5.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "IMMZD5",
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
  "url" : "http://smart.who.int/immunizations/StructureDefinition/IMMZD5",
  "version" : "0.2.0",
  "name" : "IMMZ_D5_Determine_vaccine_s__to_be_administered_based_on_contraindications",
  "title" : "IMMZ.D5.Determine vaccine(s) to be administered based on contraindications",
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
  "description" : "Data elements for the IMMZ.D5.Determine vaccine(s) to be administered based on contraindications Data Dictionary Activity.",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "IMMZD5.to.Observation",
      "uri" : "http://smart.who.int/immunizations/StructureDefinition/IMMZObservation",
      "name" : "Mapping from the IMMZ.D5 to the IMMZObservation profile"
    }
  ],
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://smart.who.int/immunizations/StructureDefinition/IMMZD5",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "IMMZD5",
        "path" : "IMMZD5",
        "short" : "IMMZ.D5.Determine vaccine(s) to be administered based on contraindications",
        "definition" : "Data elements for the IMMZ.D5.Determine vaccine(s) to be administered based on contraindications Data Dictionary Activity.",
        "mapping" : [
          {
            "identity" : "IMMZD5.to.Observation",
            "map" : "Observation"
          }
        ]
      },
      {
        "id" : "IMMZD5.patient",
        "path" : "IMMZD5.patient",
        "short" : "Patient",
        "definition" : "The patient.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference"
          }
        ],
        "mapping" : [
          {
            "identity" : "IMMZD5.to.Observation",
            "map" : "Observation.subject"
          }
        ]
      },
      {
        "id" : "IMMZD5.potentialContraindications",
        "path" : "IMMZD5.potentialContraindications",
        "code" : [
          {
            "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
            "code" : "DE161"
          }
        ],
        "short" : "Potential contraindications",
        "definition" : "Specific situations or medical conditions for which it is advised or recommended to avoid or delay administering a particular vaccine",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://smart.who.int/immunizations/ValueSet/IMMZ.D.DE161"
        },
        "mapping" : [
          {
            "identity" : "IMMZD5.to.Observation",
            "map" : "Observation.valueCodeableConcept"
          }
        ]
      }
    ]
  }
}

```
