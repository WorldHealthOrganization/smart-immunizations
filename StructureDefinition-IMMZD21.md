# IMMZ.D21.Generate verifiable digital certificate - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZ.D21.Generate verifiable digital certificate**

## Logical Model: IMMZ.D21.Generate verifiable digital certificate 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/StructureDefinition/IMMZD21 | *Version*:0.2.0 |
| Active as of 2025-01-13 | *Computable Name*:IMMZ_D21_Generate_verifiable_digital_certificate |

 
Data elements for the IMMZ.D21.Generate verifiable digital certificate Data Dictionary Activity. 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/smart.who.int.immunizations|current/StructureDefinition/IMMZD21)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-IMMZD21.csv), [Excel](StructureDefinition-IMMZD21.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "IMMZD21",
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
  "url" : "http://smart.who.int/immunizations/StructureDefinition/IMMZD21",
  "version" : "0.2.0",
  "name" : "IMMZ_D21_Generate_verifiable_digital_certificate",
  "title" : "IMMZ.D21.Generate verifiable digital certificate",
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
  "description" : "Data elements for the IMMZ.D21.Generate verifiable digital certificate Data Dictionary Activity.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://smart.who.int/immunizations/StructureDefinition/IMMZD21",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "IMMZD21",
        "path" : "IMMZD21",
        "short" : "IMMZ.D21.Generate verifiable digital certificate",
        "definition" : "Data elements for the IMMZ.D21.Generate verifiable digital certificate Data Dictionary Activity."
      },
      {
        "id" : "IMMZD21.patient",
        "path" : "IMMZD21.patient",
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
        "id" : "IMMZD21.certificateIssuer",
        "path" : "IMMZD21.certificateIssuer",
        "code" : [
          {
            "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
            "code" : "DE151"
          }
        ],
        "short" : "Certificate issuer",
        "definition" : "The authority or authorized organization that issued the vaccination certificate",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "IMMZD21.healthCertificateIdentifier",
        "path" : "IMMZD21.healthCertificateIdentifier",
        "code" : [
          {
            "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
            "code" : "DE152"
          }
        ],
        "short" : "Health Certificate Identifier (HCID)",
        "definition" : "Unique identifier used to associate the immunization event represented in a paper vaccination card to its digital representation(s)",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "IMMZD21.certificateValidFrom",
        "path" : "IMMZD21.certificateValidFrom",
        "code" : [
          {
            "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
            "code" : "DE153"
          }
        ],
        "short" : "Certificate valid from",
        "definition" : "Date in which the certificate for an immunization event became valid.  No health or clinical inferences should be made from this date",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "IMMZD21.certificateValidUntil",
        "path" : "IMMZD21.certificateValidUntil",
        "code" : [
          {
            "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
            "code" : "DE154"
          }
        ],
        "short" : "Certificate valid until",
        "definition" : "Last date in which the certificate for an immunization event is valid. No health or clinical inferences should be made from this date",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "IMMZD21.certificateSchemaVersion",
        "path" : "IMMZD21.certificateSchemaVersion",
        "code" : [
          {
            "system" : "http://smart.who.int/immunizations/CodeSystem/IMMZ.D",
            "code" : "DE155"
          }
        ],
        "short" : "Certificate schema version",
        "definition" : "Version of the core data set and HL7 Fast Health Interoperability Resources (FHIR) implementation guide that the certificate is using",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      }
    ]
  }
}

```
