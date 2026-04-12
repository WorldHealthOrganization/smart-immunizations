# IMMZD5DTTBEEncounterElements - WHO Immunization Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD5DTTBEEncounterElements**

## Library: IMMZD5DTTBEEncounterElements 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Library/IMMZD5DTTBEEncounterElements | *Version*:1.0.0 |
| Draft as of 2026-04-09 | *Computable Name*:IMMZD5DTTBEEncounterElements |

 
This library defines encounter-based elements for TBE used throughout the Immunization CPG 

* * **Content: **text/cql: ```` /* * Library: IMMZD5DTTBEEncounterElements */ library IMMZD5DTTBEEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTTBEElements called TBEElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for TBE dose */ define "Draft Medication Request for TBE dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."TBE vaccines" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.TBE contraindications */ define "The client is currently pregnant": Encounter."The client is pregnant" /* @input: The client has moderate to severe fever @pseudocode: "Potential contraindications" = "Moderate to severe fever" @code: The client has moderate to severe fever-58 @decision: IMMZ.D5.DT.TBE contraindications */ define "The client has moderate to severe fever": Encounter."The client has moderate to severe fever" ````: **Id: **
  * ?: IMMZD5DTTBEEncounterElements
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTTBEEncounterElements */ library IMMZD5DTTBEEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTTBEElements called TBEElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for TBE dose */ define "Draft Medication Request for TBE dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."TBE vaccines" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.TBE contraindications */ define "The client is currently pregnant": Encounter."The client is pregnant" /* @input: The client has moderate to severe fever @pseudocode: "Potential contraindications" = "Moderate to severe fever" @code: The client has moderate to severe fever-58 @decision: IMMZ.D5.DT.TBE contraindications */ define "The client has moderate to severe fever": Encounter."The client has moderate to severe fever" ````: **Version: **
  * ?: 1.0.0
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTTBEEncounterElements */ library IMMZD5DTTBEEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTTBEElements called TBEElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for TBE dose */ define "Draft Medication Request for TBE dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."TBE vaccines" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.TBE contraindications */ define "The client is currently pregnant": Encounter."The client is pregnant" /* @input: The client has moderate to severe fever @pseudocode: "Potential contraindications" = "Moderate to severe fever" @code: The client has moderate to severe fever-58 @decision: IMMZ.D5.DT.TBE contraindications */ define "The client has moderate to severe fever": Encounter."The client has moderate to severe fever" ````: **Url: **
  * ?: [IMMZD5DTTBEEncounterElements](Library-IMMZD5DTTBEEncounterElements.md)
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTTBEEncounterElements */ library IMMZD5DTTBEEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTTBEElements called TBEElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for TBE dose */ define "Draft Medication Request for TBE dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."TBE vaccines" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.TBE contraindications */ define "The client is currently pregnant": Encounter."The client is pregnant" /* @input: The client has moderate to severe fever @pseudocode: "Potential contraindications" = "Moderate to severe fever" @code: The client has moderate to severe fever-58 @decision: IMMZ.D5.DT.TBE contraindications */ define "The client has moderate to severe fever": Encounter."The client has moderate to severe fever" ````: **Status: **
  * ?: draft
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTTBEEncounterElements */ library IMMZD5DTTBEEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTTBEElements called TBEElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for TBE dose */ define "Draft Medication Request for TBE dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."TBE vaccines" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.TBE contraindications */ define "The client is currently pregnant": Encounter."The client is pregnant" /* @input: The client has moderate to severe fever @pseudocode: "Potential contraindications" = "Moderate to severe fever" @code: The client has moderate to severe fever-58 @decision: IMMZ.D5.DT.TBE contraindications */ define "The client has moderate to severe fever": Encounter."The client has moderate to severe fever" ````: **Date: **
  * ?: 2026-04-09 14:18:30+0000
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTTBEEncounterElements */ library IMMZD5DTTBEEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTTBEElements called TBEElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for TBE dose */ define "Draft Medication Request for TBE dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."TBE vaccines" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.TBE contraindications */ define "The client is currently pregnant": Encounter."The client is pregnant" /* @input: The client has moderate to severe fever @pseudocode: "Potential contraindications" = "Moderate to severe fever" @code: The client has moderate to severe fever-58 @decision: IMMZ.D5.DT.TBE contraindications */ define "The client has moderate to severe fever": Encounter."The client has moderate to severe fever" ````: **Publisher: **
  * ?: WHO
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTTBEEncounterElements */ library IMMZD5DTTBEEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTTBEElements called TBEElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for TBE dose */ define "Draft Medication Request for TBE dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."TBE vaccines" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.TBE contraindications */ define "The client is currently pregnant": Encounter."The client is pregnant" /* @input: The client has moderate to severe fever @pseudocode: "Potential contraindications" = "Moderate to severe fever" @code: The client has moderate to severe fever-58 @decision: IMMZ.D5.DT.TBE contraindications */ define "The client has moderate to severe fever": Encounter."The client has moderate to severe fever" ````: **Description: **
  * ?: This library defines encounter-based elements for TBE used throughout the Immunization CPG



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "IMMZD5DTTBEEncounterElements",
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
  "url" : "http://smart.who.int/immunizations/Library/IMMZD5DTTBEEncounterElements",
  "version" : "1.0.0",
  "name" : "IMMZD5DTTBEEncounterElements",
  "title" : "IMMZD5DTTBEEncounterElements",
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
  "description" : "This library defines encounter-based elements for TBE used throughout the Immunization CPG",
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
    "display" : "Library TBEElements",
    "resource" : "http://smart.who.int/immunizations/Library/IMMZD5DTTBEElements"
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
    "name" : "Draft Medication Request for TBE dose",
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
    "name" : "The client has moderate to severe fever",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  }],
  "content" : [{
    "contentType" : "text/cql",
    "data" : "Ci8qCiAgKiBMaWJyYXJ5OiBJTU1aRDVEVFRCRUVuY291bnRlckVsZW1lbnRzCiAgKi8KbGlicmFyeSBJTU1aRDVEVFRCRUVuY291bnRlckVsZW1lbnRzCgp1c2luZyBGSElSIHZlcnNpb24gJzQuMC4xJwppbmNsdWRlIEZISVJIZWxwZXJzIHZlcnNpb24gJzQuMC4xJwoKaW5jbHVkZSBXSE9Db25jZXB0cwppbmNsdWRlIFdIT0NvbW1vbiBjYWxsZWQgV0MKaW5jbHVkZSBXSE9FbGVtZW50cyBjYWxsZWQgV0UKCmluY2x1ZGUgSU1NWkNvbW1vbiBjYWxsZWQgQ29tbW9uCmluY2x1ZGUgSU1NWkNvbmNlcHRzIGNhbGxlZCBDb25jZXB0cwppbmNsdWRlIElNTVpFbmNvdW50ZXJFbGVtZW50cyBjYWxsZWQgRW5jb3VudGVyCgppbmNsdWRlIElNTVpENURUVEJFRWxlbWVudHMgY2FsbGVkIFRCRUVsZW1lbnRzCgpwYXJhbWV0ZXIgVG9kYXkgRGF0ZSBkZWZhdWx0IFRvZGF5KCkKcGFyYW1ldGVyIEVuY291bnRlcklkIFN0cmluZwoKY29udGV4dCBQYXRpZW50CgovKgpAaW50ZXJuYWw6IERyYWZ0IE1lZGljYXRpb24gUmVxdWVzdCBmb3IgVEJFIGRvc2UKKi8KZGVmaW5lICJEcmFmdCBNZWRpY2F0aW9uIFJlcXVlc3QgZm9yIFRCRSBkb3NlIjoKICBFbmNvdW50ZXIuIkRyYWZ0IE1lZGljYXRpb24gUmVxdWVzdCBmb3IgUGF0aWVudCIgTVIKICAgIHdoZXJlIE1SLm1lZGljYXRpb24gaW4gQ29uY2VwdHMuIlRCRSB2YWNjaW5lcyIKCi8qCkBpbnB1dDogVGhlIGNsaWVudCBpcyBjdXJyZW50bHkgcHJlZ25hbnQKQHBzZXVkb2NvZGU6ICJQb3RlbnRpYWwgY29udHJhaW5kaWNhdGlvbnMiID0gIkN1cnJlbnRseSBwcmVnbmFudCIKQGNvZGU6IFRoZSBjbGllbnQgaXMgY3VycmVudGx5IHByZWduYW50LTUyCkBkZWNpc2lvbjogSU1NWi5ENS5EVC5UQkUgY29udHJhaW5kaWNhdGlvbnMKKi8KZGVmaW5lICJUaGUgY2xpZW50IGlzIGN1cnJlbnRseSBwcmVnbmFudCI6CiAgRW5jb3VudGVyLiJUaGUgY2xpZW50IGlzIHByZWduYW50IgoKLyoKQGlucHV0OiBUaGUgY2xpZW50IGhhcyBtb2RlcmF0ZSB0byBzZXZlcmUgZmV2ZXIKQHBzZXVkb2NvZGU6ICJQb3RlbnRpYWwgY29udHJhaW5kaWNhdGlvbnMiID0gIk1vZGVyYXRlIHRvIHNldmVyZSBmZXZlciIKQGNvZGU6IFRoZSBjbGllbnQgaGFzIG1vZGVyYXRlIHRvIHNldmVyZSBmZXZlci01OApAZGVjaXNpb246IElNTVouRDUuRFQuVEJFIGNvbnRyYWluZGljYXRpb25zCiovCmRlZmluZSAiVGhlIGNsaWVudCBoYXMgbW9kZXJhdGUgdG8gc2V2ZXJlIGZldmVyIjoKICBFbmNvdW50ZXIuIlRoZSBjbGllbnQgaGFzIG1vZGVyYXRlIHRvIHNldmVyZSBmZXZlciIK"
  }]
}

```
