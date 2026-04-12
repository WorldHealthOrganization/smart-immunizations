# IMMZD5DTMumpsEncounterElements - WHO Immunization Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD5DTMumpsEncounterElements**

## Library: IMMZD5DTMumpsEncounterElements 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Library/IMMZD5DTMumpsEncounterElements | *Version*:1.0.0 |
| Draft as of 2026-04-09 | *Computable Name*:IMMZD5DTMumpsEncounterElements |

 
This library defines encounter-based elements for Mumps used throughout the Immunization CPG 

* * **Content: **text/cql: ```` /* * Library: IMMZD5DTMumpsEncounterElements */ library IMMZD5DTMumpsEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTMumpsElements called MumpsElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for Mumps dose */ define "Draft Medication Request for Mumps dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."Mumps-containing vaccines" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.Mumps contraindications */ define "The client is currently pregnant": Encounter."The client is pregnant" /* @input: The client has allergy to vaccine components @pseudocode: '"Potential contraindications" = "Severe allergic reactions" @code: The client has allergy to vaccine components-60 @decision: IMMZ.D5.DT.Mumps contraindications */ define "The client has allergy to vaccine components": Encounter."The client has history of severe allergic reactions" /* @input: The client has immune deficiency @pseudocode: "Potential contraindications" = "Immunodeficiency syndromes" @code: The client has immune deficiency-60 @decision: IMMZ.D5.DT.Mumps contraindications */ define "The client has immune deficiency": Encounter."The client has immunodeficiency syndromes" /* @input: The client is severely immunosuppressed @pseudocode: "Potential contraindications" = "Severely immunosuppressed" @code: The client is severely immunosuppressed-59 @decision: IMMZ.D5.DT.Mumps contraindications */ define "The client is severely immunosuppressed": Encounter."The client is severely immunosuppressed" ````: **Id: **
  * ?: IMMZD5DTMumpsEncounterElements
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTMumpsEncounterElements */ library IMMZD5DTMumpsEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTMumpsElements called MumpsElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for Mumps dose */ define "Draft Medication Request for Mumps dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."Mumps-containing vaccines" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.Mumps contraindications */ define "The client is currently pregnant": Encounter."The client is pregnant" /* @input: The client has allergy to vaccine components @pseudocode: '"Potential contraindications" = "Severe allergic reactions" @code: The client has allergy to vaccine components-60 @decision: IMMZ.D5.DT.Mumps contraindications */ define "The client has allergy to vaccine components": Encounter."The client has history of severe allergic reactions" /* @input: The client has immune deficiency @pseudocode: "Potential contraindications" = "Immunodeficiency syndromes" @code: The client has immune deficiency-60 @decision: IMMZ.D5.DT.Mumps contraindications */ define "The client has immune deficiency": Encounter."The client has immunodeficiency syndromes" /* @input: The client is severely immunosuppressed @pseudocode: "Potential contraindications" = "Severely immunosuppressed" @code: The client is severely immunosuppressed-59 @decision: IMMZ.D5.DT.Mumps contraindications */ define "The client is severely immunosuppressed": Encounter."The client is severely immunosuppressed" ````: **Version: **
  * ?: 1.0.0
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTMumpsEncounterElements */ library IMMZD5DTMumpsEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTMumpsElements called MumpsElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for Mumps dose */ define "Draft Medication Request for Mumps dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."Mumps-containing vaccines" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.Mumps contraindications */ define "The client is currently pregnant": Encounter."The client is pregnant" /* @input: The client has allergy to vaccine components @pseudocode: '"Potential contraindications" = "Severe allergic reactions" @code: The client has allergy to vaccine components-60 @decision: IMMZ.D5.DT.Mumps contraindications */ define "The client has allergy to vaccine components": Encounter."The client has history of severe allergic reactions" /* @input: The client has immune deficiency @pseudocode: "Potential contraindications" = "Immunodeficiency syndromes" @code: The client has immune deficiency-60 @decision: IMMZ.D5.DT.Mumps contraindications */ define "The client has immune deficiency": Encounter."The client has immunodeficiency syndromes" /* @input: The client is severely immunosuppressed @pseudocode: "Potential contraindications" = "Severely immunosuppressed" @code: The client is severely immunosuppressed-59 @decision: IMMZ.D5.DT.Mumps contraindications */ define "The client is severely immunosuppressed": Encounter."The client is severely immunosuppressed" ````: **Url: **
  * ?: [IMMZD5DTMumpsEncounterElements](Library-IMMZD5DTMumpsEncounterElements.md)
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTMumpsEncounterElements */ library IMMZD5DTMumpsEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTMumpsElements called MumpsElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for Mumps dose */ define "Draft Medication Request for Mumps dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."Mumps-containing vaccines" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.Mumps contraindications */ define "The client is currently pregnant": Encounter."The client is pregnant" /* @input: The client has allergy to vaccine components @pseudocode: '"Potential contraindications" = "Severe allergic reactions" @code: The client has allergy to vaccine components-60 @decision: IMMZ.D5.DT.Mumps contraindications */ define "The client has allergy to vaccine components": Encounter."The client has history of severe allergic reactions" /* @input: The client has immune deficiency @pseudocode: "Potential contraindications" = "Immunodeficiency syndromes" @code: The client has immune deficiency-60 @decision: IMMZ.D5.DT.Mumps contraindications */ define "The client has immune deficiency": Encounter."The client has immunodeficiency syndromes" /* @input: The client is severely immunosuppressed @pseudocode: "Potential contraindications" = "Severely immunosuppressed" @code: The client is severely immunosuppressed-59 @decision: IMMZ.D5.DT.Mumps contraindications */ define "The client is severely immunosuppressed": Encounter."The client is severely immunosuppressed" ````: **Status: **
  * ?: draft
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTMumpsEncounterElements */ library IMMZD5DTMumpsEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTMumpsElements called MumpsElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for Mumps dose */ define "Draft Medication Request for Mumps dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."Mumps-containing vaccines" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.Mumps contraindications */ define "The client is currently pregnant": Encounter."The client is pregnant" /* @input: The client has allergy to vaccine components @pseudocode: '"Potential contraindications" = "Severe allergic reactions" @code: The client has allergy to vaccine components-60 @decision: IMMZ.D5.DT.Mumps contraindications */ define "The client has allergy to vaccine components": Encounter."The client has history of severe allergic reactions" /* @input: The client has immune deficiency @pseudocode: "Potential contraindications" = "Immunodeficiency syndromes" @code: The client has immune deficiency-60 @decision: IMMZ.D5.DT.Mumps contraindications */ define "The client has immune deficiency": Encounter."The client has immunodeficiency syndromes" /* @input: The client is severely immunosuppressed @pseudocode: "Potential contraindications" = "Severely immunosuppressed" @code: The client is severely immunosuppressed-59 @decision: IMMZ.D5.DT.Mumps contraindications */ define "The client is severely immunosuppressed": Encounter."The client is severely immunosuppressed" ````: **Date: **
  * ?: 2026-04-09 14:18:30+0000
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTMumpsEncounterElements */ library IMMZD5DTMumpsEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTMumpsElements called MumpsElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for Mumps dose */ define "Draft Medication Request for Mumps dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."Mumps-containing vaccines" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.Mumps contraindications */ define "The client is currently pregnant": Encounter."The client is pregnant" /* @input: The client has allergy to vaccine components @pseudocode: '"Potential contraindications" = "Severe allergic reactions" @code: The client has allergy to vaccine components-60 @decision: IMMZ.D5.DT.Mumps contraindications */ define "The client has allergy to vaccine components": Encounter."The client has history of severe allergic reactions" /* @input: The client has immune deficiency @pseudocode: "Potential contraindications" = "Immunodeficiency syndromes" @code: The client has immune deficiency-60 @decision: IMMZ.D5.DT.Mumps contraindications */ define "The client has immune deficiency": Encounter."The client has immunodeficiency syndromes" /* @input: The client is severely immunosuppressed @pseudocode: "Potential contraindications" = "Severely immunosuppressed" @code: The client is severely immunosuppressed-59 @decision: IMMZ.D5.DT.Mumps contraindications */ define "The client is severely immunosuppressed": Encounter."The client is severely immunosuppressed" ````: **Publisher: **
  * ?: WHO
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTMumpsEncounterElements */ library IMMZD5DTMumpsEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTMumpsElements called MumpsElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for Mumps dose */ define "Draft Medication Request for Mumps dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."Mumps-containing vaccines" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.Mumps contraindications */ define "The client is currently pregnant": Encounter."The client is pregnant" /* @input: The client has allergy to vaccine components @pseudocode: '"Potential contraindications" = "Severe allergic reactions" @code: The client has allergy to vaccine components-60 @decision: IMMZ.D5.DT.Mumps contraindications */ define "The client has allergy to vaccine components": Encounter."The client has history of severe allergic reactions" /* @input: The client has immune deficiency @pseudocode: "Potential contraindications" = "Immunodeficiency syndromes" @code: The client has immune deficiency-60 @decision: IMMZ.D5.DT.Mumps contraindications */ define "The client has immune deficiency": Encounter."The client has immunodeficiency syndromes" /* @input: The client is severely immunosuppressed @pseudocode: "Potential contraindications" = "Severely immunosuppressed" @code: The client is severely immunosuppressed-59 @decision: IMMZ.D5.DT.Mumps contraindications */ define "The client is severely immunosuppressed": Encounter."The client is severely immunosuppressed" ````: **Description: **
  * ?: This library defines encounter-based elements for Mumps used throughout the Immunization CPG



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "IMMZD5DTMumpsEncounterElements",
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
  "url" : "http://smart.who.int/immunizations/Library/IMMZD5DTMumpsEncounterElements",
  "version" : "1.0.0",
  "name" : "IMMZD5DTMumpsEncounterElements",
  "title" : "IMMZD5DTMumpsEncounterElements",
  "status" : "draft",
  "experimental" : false,
  "type" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/library-type",
      "code" : "logic-library"
    }]
  },
  "date" : "2026-04-09T14:18:30+00:00",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "This library defines encounter-based elements for Mumps used throughout the Immunization CPG",
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
    "display" : "Library MumpsElements",
    "resource" : "http://smart.who.int/immunizations/Library/IMMZD5DTMumpsElements"
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
    "name" : "Draft Medication Request for Mumps dose",
    "use" : "out",
    "min" : 0,
    "max" : "*",
    "type" : "MedicationRequest"
  },
  {
    "name" : "The client is currently pregnant",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "The client has allergy to vaccine components",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "The client has immune deficiency",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "The client is severely immunosuppressed",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  }],
  "content" : [{
    "contentType" : "text/cql",
    "data" : "Ci8qCiAgKiBMaWJyYXJ5OiBJTU1aRDVEVE11bXBzRW5jb3VudGVyRWxlbWVudHMKICAqLwpsaWJyYXJ5IElNTVpENURUTXVtcHNFbmNvdW50ZXJFbGVtZW50cwoKdXNpbmcgRkhJUiB2ZXJzaW9uICc0LjAuMScKaW5jbHVkZSBGSElSSGVscGVycyB2ZXJzaW9uICc0LjAuMScKCmluY2x1ZGUgV0hPQ29uY2VwdHMKaW5jbHVkZSBXSE9Db21tb24gY2FsbGVkIFdDCmluY2x1ZGUgV0hPRWxlbWVudHMgY2FsbGVkIFdFCgppbmNsdWRlIElNTVpDb21tb24gY2FsbGVkIENvbW1vbgppbmNsdWRlIElNTVpDb25jZXB0cyBjYWxsZWQgQ29uY2VwdHMKaW5jbHVkZSBJTU1aRW5jb3VudGVyRWxlbWVudHMgY2FsbGVkIEVuY291bnRlcgoKaW5jbHVkZSBJTU1aRDVEVE11bXBzRWxlbWVudHMgY2FsbGVkIE11bXBzRWxlbWVudHMKCnBhcmFtZXRlciBUb2RheSBEYXRlIGRlZmF1bHQgVG9kYXkoKQpwYXJhbWV0ZXIgRW5jb3VudGVySWQgU3RyaW5nCgpjb250ZXh0IFBhdGllbnQKCi8qCkBpbnRlcm5hbDogRHJhZnQgTWVkaWNhdGlvbiBSZXF1ZXN0IGZvciBNdW1wcyBkb3NlCiovCmRlZmluZSAiRHJhZnQgTWVkaWNhdGlvbiBSZXF1ZXN0IGZvciBNdW1wcyBkb3NlIjoKICBFbmNvdW50ZXIuIkRyYWZ0IE1lZGljYXRpb24gUmVxdWVzdCBmb3IgUGF0aWVudCIgTVIKICAgIHdoZXJlIE1SLm1lZGljYXRpb24gaW4gQ29uY2VwdHMuIk11bXBzLWNvbnRhaW5pbmcgdmFjY2luZXMiCgovKgpAaW5wdXQ6IFRoZSBjbGllbnQgaXMgY3VycmVudGx5IHByZWduYW50CkBwc2V1ZG9jb2RlOiAiUG90ZW50aWFsIGNvbnRyYWluZGljYXRpb25zIiA9ICJDdXJyZW50bHkgcHJlZ25hbnQiCkBjb2RlOiBUaGUgY2xpZW50IGlzIGN1cnJlbnRseSBwcmVnbmFudC01MgpAZGVjaXNpb246IElNTVouRDUuRFQuTXVtcHMgY29udHJhaW5kaWNhdGlvbnMKKi8KZGVmaW5lICJUaGUgY2xpZW50IGlzIGN1cnJlbnRseSBwcmVnbmFudCI6CiAgRW5jb3VudGVyLiJUaGUgY2xpZW50IGlzIHByZWduYW50IgoKLyoKQGlucHV0OiBUaGUgY2xpZW50IGhhcyBhbGxlcmd5IHRvIHZhY2NpbmUgY29tcG9uZW50cwpAcHNldWRvY29kZTogJyJQb3RlbnRpYWwgY29udHJhaW5kaWNhdGlvbnMiID0gIlNldmVyZSBhbGxlcmdpYyByZWFjdGlvbnMiCkBjb2RlOiBUaGUgY2xpZW50IGhhcyBhbGxlcmd5IHRvIHZhY2NpbmUgY29tcG9uZW50cy02MApAZGVjaXNpb246IElNTVouRDUuRFQuTXVtcHMgY29udHJhaW5kaWNhdGlvbnMKKi8KZGVmaW5lICJUaGUgY2xpZW50IGhhcyBhbGxlcmd5IHRvIHZhY2NpbmUgY29tcG9uZW50cyI6CiAgRW5jb3VudGVyLiJUaGUgY2xpZW50IGhhcyBoaXN0b3J5IG9mIHNldmVyZSBhbGxlcmdpYyByZWFjdGlvbnMiCgovKgpAaW5wdXQ6IFRoZSBjbGllbnQgaGFzIGltbXVuZSBkZWZpY2llbmN5CkBwc2V1ZG9jb2RlOiAiUG90ZW50aWFsIGNvbnRyYWluZGljYXRpb25zIiA9ICJJbW11bm9kZWZpY2llbmN5IHN5bmRyb21lcyIKQGNvZGU6IFRoZSBjbGllbnQgaGFzIGltbXVuZSBkZWZpY2llbmN5LTYwCkBkZWNpc2lvbjogSU1NWi5ENS5EVC5NdW1wcyBjb250cmFpbmRpY2F0aW9ucwoqLwpkZWZpbmUgIlRoZSBjbGllbnQgaGFzIGltbXVuZSBkZWZpY2llbmN5IjoKICBFbmNvdW50ZXIuIlRoZSBjbGllbnQgaGFzIGltbXVub2RlZmljaWVuY3kgc3luZHJvbWVzIgoKLyoKQGlucHV0OiBUaGUgY2xpZW50IGlzIHNldmVyZWx5IGltbXVub3N1cHByZXNzZWQKQHBzZXVkb2NvZGU6ICJQb3RlbnRpYWwgY29udHJhaW5kaWNhdGlvbnMiID0gIlNldmVyZWx5IGltbXVub3N1cHByZXNzZWQiCkBjb2RlOiBUaGUgY2xpZW50IGlzIHNldmVyZWx5IGltbXVub3N1cHByZXNzZWQtNTkKQGRlY2lzaW9uOiBJTU1aLkQ1LkRULk11bXBzIGNvbnRyYWluZGljYXRpb25zCiovCmRlZmluZSAiVGhlIGNsaWVudCBpcyBzZXZlcmVseSBpbW11bm9zdXBwcmVzc2VkIjoKICBFbmNvdW50ZXIuIlRoZSBjbGllbnQgaXMgc2V2ZXJlbHkgaW1tdW5vc3VwcHJlc3NlZCIK"
  }]
}

```
