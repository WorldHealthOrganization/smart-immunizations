# SMART Guidelines Immunizations AdverseEvent - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **SMART Guidelines Immunizations AdverseEvent**

## Resource Profile: SMART Guidelines Immunizations AdverseEvent 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/StructureDefinition/IMMZ.AdverseEvent | *Version*:0.2.0 |
| Draft as of 2025-06-25 | *Computable Name*:IMMZAdverseEvent |

 
AdverseEvent Profile for the Immunizations SMART Guidelines. From IMMZ.D17 Report AEFI 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/smart.who.int.immunizations|current/StructureDefinition/IMMZ.AdverseEvent)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-IMMZ.AdverseEvent.csv), [Excel](StructureDefinition-IMMZ.AdverseEvent.xlsx), [Schematron](StructureDefinition-IMMZ.AdverseEvent.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "IMMZ.AdverseEvent",
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
  "url" : "http://smart.who.int/immunizations/StructureDefinition/IMMZ.AdverseEvent",
  "version" : "0.2.0",
  "name" : "IMMZAdverseEvent",
  "title" : "SMART Guidelines Immunizations AdverseEvent",
  "status" : "draft",
  "experimental" : false,
  "date" : "2025-06-25",
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
  "description" : "AdverseEvent Profile for the Immunizations SMART Guidelines.  From IMMZ.D17 Report AEFI",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "AdverseEvent",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/AdverseEvent",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "AdverseEvent",
        "path" : "AdverseEvent"
      },
      {
        "id" : "AdverseEvent.extension",
        "path" : "AdverseEvent.extension",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "url"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "AdverseEvent.extension:otherMedicalEvent",
        "path" : "AdverseEvent.extension",
        "sliceName" : "otherMedicalEvent",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://smart.who.int/immunizations/StructureDefinition/IMMZOtherMedicalEvent"
            ]
          }
        ]
      },
      {
        "id" : "AdverseEvent.event",
        "path" : "AdverseEvent.event",
        "min" : 1,
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://smart.who.int/immunizations/ValueSet/IMMZ.D.DE95"
        }
      },
      {
        "id" : "AdverseEvent.date",
        "path" : "AdverseEvent.date",
        "min" : 1
      },
      {
        "id" : "AdverseEvent.seriousness",
        "path" : "AdverseEvent.seriousness",
        "min" : 1,
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://smart.who.int/immunizations/ValueSet/IMMZ.D.DE107"
        }
      },
      {
        "id" : "AdverseEvent.outcome",
        "path" : "AdverseEvent.outcome",
        "min" : 1
      }
    ]
  }
}

```
