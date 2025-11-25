# SMART Guidelines Immunizations Patient - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **SMART Guidelines Immunizations Patient**

## Resource Profile: SMART Guidelines Immunizations Patient 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/StructureDefinition/IMMZ.Patient | *Version*:0.2.0 |
| Draft as of 2024-12-18 | *Computable Name*:IMMZPatient |

 
Patient Profile for the Immunizations SMART Guidelines. From IMMZ.C Client Registration for IMMZ.C4.Create client record OR IMMZ.C5.3.Update client details. 

**Usages:**

* Refer to this Profile: [SMART Guidelines Immunizations Caregiver (RelatedPerson)](StructureDefinition-IMMZ.Caregiver.md)
* Examples for this Profile: [Patient/IMMZ.C.Patient.1](Patient-IMMZ.C.Patient.1.md) and [Patient/IMMZ.C.Patient.2](Patient-IMMZ.C.Patient.2.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/smart.who.int.immunizations|current/StructureDefinition/IMMZ.Patient)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-IMMZ.Patient.csv), [Excel](StructureDefinition-IMMZ.Patient.xlsx), [Schematron](StructureDefinition-IMMZ.Patient.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "IMMZ.Patient",
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
  "url" : "http://smart.who.int/immunizations/StructureDefinition/IMMZ.Patient",
  "version" : "0.2.0",
  "name" : "IMMZPatient",
  "title" : "SMART Guidelines Immunizations Patient",
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
  "description" : "Patient Profile for the Immunizations SMART Guidelines.  From IMMZ.C Client Registration for IMMZ.C4.Create client record OR IMMZ.C5.3.Update client details.",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "cda",
      "uri" : "http://hl7.org/v3/cda",
      "name" : "CDA (R2)"
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
    },
    {
      "identity" : "loinc",
      "uri" : "http://loinc.org",
      "name" : "LOINC code for the element"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Patient",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Patient",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Patient",
        "path" : "Patient"
      },
      {
        "id" : "Patient.identifier",
        "path" : "Patient.identifier",
        "min" : 1
      },
      {
        "id" : "Patient.identifier.value",
        "path" : "Patient.identifier.value",
        "min" : 1
      },
      {
        "id" : "Patient.name",
        "path" : "Patient.name",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "exists",
              "path" : "text"
            }
          ],
          "rules" : "open"
        },
        "min" : 1
      },
      {
        "id" : "Patient.name:immzName",
        "path" : "Patient.name",
        "sliceName" : "immzName",
        "min" : 1,
        "max" : "*"
      },
      {
        "id" : "Patient.name:immzName.text",
        "path" : "Patient.name.text",
        "min" : 1
      },
      {
        "id" : "Patient.name:immzName.family",
        "path" : "Patient.name.family",
        "mustSupport" : true
      },
      {
        "id" : "Patient.name:immzName.given",
        "path" : "Patient.name.given",
        "mustSupport" : true
      },
      {
        "id" : "Patient.telecom",
        "path" : "Patient.telecom",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "system"
            }
          ],
          "rules" : "open"
        },
        "min" : 1
      },
      {
        "id" : "Patient.telecom:immzPhone",
        "path" : "Patient.telecom",
        "sliceName" : "immzPhone",
        "min" : 1,
        "max" : "*"
      },
      {
        "id" : "Patient.telecom:immzPhone.system",
        "path" : "Patient.telecom.system",
        "min" : 1,
        "patternCode" : "phone"
      },
      {
        "id" : "Patient.telecom:immzPhone.value",
        "path" : "Patient.telecom.value",
        "min" : 1
      },
      {
        "id" : "Patient.gender",
        "path" : "Patient.gender",
        "min" : 1
      },
      {
        "id" : "Patient.birthDate",
        "path" : "Patient.birthDate",
        "min" : 1
      },
      {
        "id" : "Patient.address",
        "path" : "Patient.address",
        "min" : 1,
        "max" : "1"
      }
    ]
  }
}

```
