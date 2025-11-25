# SMART Guidelines Immunizations Caregiver (RelatedPerson) - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **SMART Guidelines Immunizations Caregiver (RelatedPerson)**

## Resource Profile: SMART Guidelines Immunizations Caregiver (RelatedPerson) 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/StructureDefinition/IMMZ.Caregiver | *Version*:0.2.0 |
| Draft as of 2024-12-18 | *Computable Name*:IMMZCaregiver |

 
Caregiver (RelatedPerson) Profile for the Immunizations SMART Guidelines. From IMMZ.C Client Registration for IMMZ.C4.Create client record OR IMMZ.C5.3.Update client details. 

**Usages:**

* Examples for this Profile: [RelatedPerson/IMMZ.C.Caregiver.1](RelatedPerson-IMMZ.C.Caregiver.1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/smart.who.int.immunizations|current/StructureDefinition/IMMZ.Caregiver)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-IMMZ.Caregiver.csv), [Excel](StructureDefinition-IMMZ.Caregiver.xlsx), [Schematron](StructureDefinition-IMMZ.Caregiver.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "IMMZ.Caregiver",
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
  "url" : "http://smart.who.int/immunizations/StructureDefinition/IMMZ.Caregiver",
  "version" : "0.2.0",
  "name" : "IMMZCaregiver",
  "title" : "SMART Guidelines Immunizations Caregiver (RelatedPerson)",
  "status" : "draft",
  "experimental" : false,
  "date" : "2024-12-18",
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
  "description" : "Caregiver (RelatedPerson) Profile for the Immunizations SMART Guidelines.  From IMMZ.C Client Registration for IMMZ.C4.Create client record OR IMMZ.C5.3.Update client details.",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "RelatedPerson",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/RelatedPerson",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "RelatedPerson",
        "path" : "RelatedPerson"
      },
      {
        "id" : "RelatedPerson.patient",
        "path" : "RelatedPerson.patient",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://smart.who.int/immunizations/StructureDefinition/IMMZ.Patient"
            ]
          }
        ]
      },
      {
        "id" : "RelatedPerson.relationship",
        "path" : "RelatedPerson.relationship",
        "min" : 1,
        "max" : "1",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/5.1.0/CodeSystem-v3-RoleClass.html",
              "code" : "CAREGIVER"
            }
          ]
        }
      },
      {
        "id" : "RelatedPerson.name",
        "path" : "RelatedPerson.name",
        "min" : 1
      },
      {
        "id" : "RelatedPerson.name.text",
        "path" : "RelatedPerson.name.text",
        "min" : 1
      },
      {
        "id" : "RelatedPerson.name.family",
        "path" : "RelatedPerson.name.family",
        "mustSupport" : true
      },
      {
        "id" : "RelatedPerson.name.given",
        "path" : "RelatedPerson.name.given",
        "mustSupport" : true
      }
    ]
  }
}

```
