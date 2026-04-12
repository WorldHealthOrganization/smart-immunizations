# IMMZD5DTMeningococcalEncounterElements - WHO Immunization Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD5DTMeningococcalEncounterElements**

## Library: IMMZD5DTMeningococcalEncounterElements 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Library/IMMZD5DTMeningococcalEncounterElements | *Version*:1.0.0 |
| Draft as of 2026-04-09 | *Computable Name*:IMMZD5DTMeningococcalEncounterElements |

 
This library defines encounter-based elements for Meningococcal used throughout the Immunization CPG 

* * **Content: **text/cql: ```` /* * Library: IMMZD5DTMeningococcalEncounterElements */ library IMMZD5DTMeningococcalEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTMeningococcalElements called MeningococcalElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for Meningococcal dose */ define "Draft Medication Request for Meningococcal dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."Meningococcal vaccines" /* @input: The client has history of severe allergic reactions @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has history of severe allergic reactions-59 @decision: IMMZ.D5.DT.Meningococcal contraindications */ define "The client has history of severe allergic reactions": Encounter."The client has history of severe allergic reactions" ````: **Id: **
  * ?: IMMZD5DTMeningococcalEncounterElements
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTMeningococcalEncounterElements */ library IMMZD5DTMeningococcalEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTMeningococcalElements called MeningococcalElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for Meningococcal dose */ define "Draft Medication Request for Meningococcal dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."Meningococcal vaccines" /* @input: The client has history of severe allergic reactions @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has history of severe allergic reactions-59 @decision: IMMZ.D5.DT.Meningococcal contraindications */ define "The client has history of severe allergic reactions": Encounter."The client has history of severe allergic reactions" ````: **Version: **
  * ?: 1.0.0
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTMeningococcalEncounterElements */ library IMMZD5DTMeningococcalEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTMeningococcalElements called MeningococcalElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for Meningococcal dose */ define "Draft Medication Request for Meningococcal dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."Meningococcal vaccines" /* @input: The client has history of severe allergic reactions @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has history of severe allergic reactions-59 @decision: IMMZ.D5.DT.Meningococcal contraindications */ define "The client has history of severe allergic reactions": Encounter."The client has history of severe allergic reactions" ````: **Url: **
  * ?: [IMMZD5DTMeningococcalEncounterElements](Library-IMMZD5DTMeningococcalEncounterElements.md)
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTMeningococcalEncounterElements */ library IMMZD5DTMeningococcalEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTMeningococcalElements called MeningococcalElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for Meningococcal dose */ define "Draft Medication Request for Meningococcal dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."Meningococcal vaccines" /* @input: The client has history of severe allergic reactions @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has history of severe allergic reactions-59 @decision: IMMZ.D5.DT.Meningococcal contraindications */ define "The client has history of severe allergic reactions": Encounter."The client has history of severe allergic reactions" ````: **Status: **
  * ?: draft
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTMeningococcalEncounterElements */ library IMMZD5DTMeningococcalEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTMeningococcalElements called MeningococcalElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for Meningococcal dose */ define "Draft Medication Request for Meningococcal dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."Meningococcal vaccines" /* @input: The client has history of severe allergic reactions @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has history of severe allergic reactions-59 @decision: IMMZ.D5.DT.Meningococcal contraindications */ define "The client has history of severe allergic reactions": Encounter."The client has history of severe allergic reactions" ````: **Date: **
  * ?: 2026-04-09 14:34:42+0000
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTMeningococcalEncounterElements */ library IMMZD5DTMeningococcalEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTMeningococcalElements called MeningococcalElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for Meningococcal dose */ define "Draft Medication Request for Meningococcal dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."Meningococcal vaccines" /* @input: The client has history of severe allergic reactions @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has history of severe allergic reactions-59 @decision: IMMZ.D5.DT.Meningococcal contraindications */ define "The client has history of severe allergic reactions": Encounter."The client has history of severe allergic reactions" ````: **Publisher: **
  * ?: WHO
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTMeningococcalEncounterElements */ library IMMZD5DTMeningococcalEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTMeningococcalElements called MeningococcalElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for Meningococcal dose */ define "Draft Medication Request for Meningococcal dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."Meningococcal vaccines" /* @input: The client has history of severe allergic reactions @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has history of severe allergic reactions-59 @decision: IMMZ.D5.DT.Meningococcal contraindications */ define "The client has history of severe allergic reactions": Encounter."The client has history of severe allergic reactions" ````: **Description: **
  * ?: This library defines encounter-based elements for Meningococcal used throughout the Immunization CPG



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "IMMZD5DTMeningococcalEncounterElements",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablelibrary",
    "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablelibrary",
    "http://hl7.org/fhir/uv/cql/StructureDefinition/cql-library",
    "http://hl7.org/fhir/uv/cql/StructureDefinition/cql-module"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability",
    "valueCode" : "computable"
  }],
  "url" : "http://smart.who.int/immunizations/Library/IMMZD5DTMeningococcalEncounterElements",
  "version" : "1.0.0",
  "name" : "IMMZD5DTMeningococcalEncounterElements",
  "title" : "IMMZD5DTMeningococcalEncounterElements",
  "status" : "draft",
  "experimental" : false,
  "type" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/library-type",
      "code" : "logic-library"
    }]
  },
  "date" : "2026-04-09T14:34:42+00:00",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "This library defines encounter-based elements for Meningococcal used throughout the Immunization CPG",
  "relatedArtifact" : [{
    "type" : "depends-on",
    "display" : "Library WHOConcepts",
    "resource" : "http://smart.who.int/immunizations/Library/WHOConcepts"
  },
  {
    "type" : "depends-on",
    "display" : "Library WC",
    "resource" : "http://smart.who.int/immunizations/Library/WHOCommon"
  },
  {
    "type" : "depends-on",
    "display" : "Library WE",
    "resource" : "http://smart.who.int/immunizations/Library/WHOElements"
  },
  {
    "type" : "depends-on",
    "display" : "Library Common",
    "resource" : "http://smart.who.int/immunizations/Library/IMMZCommon"
  },
  {
    "type" : "depends-on",
    "display" : "Library Concepts",
    "resource" : "http://smart.who.int/immunizations/Library/IMMZConcepts"
  },
  {
    "type" : "depends-on",
    "display" : "Library Encounter",
    "resource" : "http://smart.who.int/immunizations/Library/IMMZEncounterElements"
  },
  {
    "type" : "depends-on",
    "display" : "Library MeningococcalElements",
    "resource" : "http://smart.who.int/immunizations/Library/IMMZD5DTMeningococcalElements"
  }],
  "parameter" : [{
    "name" : "Today",
    "use" : "in",
    "min" : 0,
    "max" : "1",
    "type" : "date"
  },
  {
    "name" : "EncounterId",
    "use" : "in",
    "min" : 0,
    "max" : "1",
    "type" : "string"
  },
  {
    "name" : "Patient",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "Patient"
  },
  {
    "name" : "Draft Medication Request for Meningococcal dose",
    "use" : "out",
    "min" : 0,
    "max" : "*",
    "type" : "MedicationRequest"
  },
  {
    "name" : "The client has history of severe allergic reactions",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  }],
  "content" : [{
    "contentType" : "text/cql",
    "data" : "Ci8qCiAgKiBMaWJyYXJ5OiBJTU1aRDVEVE1lbmluZ29jb2NjYWxFbmNvdW50ZXJFbGVtZW50cwogICovCmxpYnJhcnkgSU1NWkQ1RFRNZW5pbmdvY29jY2FsRW5jb3VudGVyRWxlbWVudHMKCnVzaW5nIEZISVIgdmVyc2lvbiAnNC4wLjEnCmluY2x1ZGUgRkhJUkhlbHBlcnMgdmVyc2lvbiAnNC4wLjEnCgppbmNsdWRlIFdIT0NvbmNlcHRzCmluY2x1ZGUgV0hPQ29tbW9uIGNhbGxlZCBXQwppbmNsdWRlIFdIT0VsZW1lbnRzIGNhbGxlZCBXRQoKaW5jbHVkZSBJTU1aQ29tbW9uIGNhbGxlZCBDb21tb24KaW5jbHVkZSBJTU1aQ29uY2VwdHMgY2FsbGVkIENvbmNlcHRzCmluY2x1ZGUgSU1NWkVuY291bnRlckVsZW1lbnRzIGNhbGxlZCBFbmNvdW50ZXIKCmluY2x1ZGUgSU1NWkQ1RFRNZW5pbmdvY29jY2FsRWxlbWVudHMgY2FsbGVkIE1lbmluZ29jb2NjYWxFbGVtZW50cwoKcGFyYW1ldGVyIFRvZGF5IERhdGUgZGVmYXVsdCBUb2RheSgpCnBhcmFtZXRlciBFbmNvdW50ZXJJZCBTdHJpbmcKCmNvbnRleHQgUGF0aWVudAoKLyoKQGludGVybmFsOiBEcmFmdCBNZWRpY2F0aW9uIFJlcXVlc3QgZm9yIE1lbmluZ29jb2NjYWwgZG9zZQoqLwpkZWZpbmUgIkRyYWZ0IE1lZGljYXRpb24gUmVxdWVzdCBmb3IgTWVuaW5nb2NvY2NhbCBkb3NlIjoKICBFbmNvdW50ZXIuIkRyYWZ0IE1lZGljYXRpb24gUmVxdWVzdCBmb3IgUGF0aWVudCIgTVIKICAgIHdoZXJlIE1SLm1lZGljYXRpb24gaW4gQ29uY2VwdHMuIk1lbmluZ29jb2NjYWwgdmFjY2luZXMiCgovKgpAaW5wdXQ6IFRoZSBjbGllbnQgaGFzIGhpc3Rvcnkgb2Ygc2V2ZXJlIGFsbGVyZ2ljIHJlYWN0aW9ucwpAcHNldWRvY29kZTogIlBvdGVudGlhbCBjb250cmFpbmRpY2F0aW9ucyIgPSAiU2V2ZXJlIGFsbGVyZ2ljIHJlYWN0aW9ucyIKQGNvZGU6IFRoZSBjbGllbnQgaGFzIGhpc3Rvcnkgb2Ygc2V2ZXJlIGFsbGVyZ2ljIHJlYWN0aW9ucy01OQpAZGVjaXNpb246IElNTVouRDUuRFQuTWVuaW5nb2NvY2NhbCBjb250cmFpbmRpY2F0aW9ucwoqLwpkZWZpbmUgIlRoZSBjbGllbnQgaGFzIGhpc3Rvcnkgb2Ygc2V2ZXJlIGFsbGVyZ2ljIHJlYWN0aW9ucyI6CiAgRW5jb3VudGVyLiJUaGUgY2xpZW50IGhhcyBoaXN0b3J5IG9mIHNldmVyZSBhbGxlcmdpYyByZWFjdGlvbnMiCg=="
  }]
}

```
