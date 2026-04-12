# IMMZD5DTHPVEncounterElements - WHO Immunization Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD5DTHPVEncounterElements**

## Library: IMMZD5DTHPVEncounterElements 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Library/IMMZD5DTHPVEncounterElements | *Version*:1.0.0 |
| Draft as of 2026-04-09 | *Computable Name*:IMMZD5DTHPVEncounterElements |

 
This library defines encounter-based elements for HPV used throughout the Immunization CPG 

* * **Content: **text/cql: ```` /* * Library: IMMZD5DTHPVEncounterElements */ library IMMZD5DTHPVEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTHPVElements called HPVElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for HPV dose */ define "Draft Medication Request for HPV dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."HPV vaccines" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.HPV contraindications */ define "The client is currently pregnant": Encounter."The client is pregnant" /* @input: The client has history of severe allergic reactions @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has history of severe allergic reactions-59 @decision: IMMZ.D5.DT.HPV contraindications */ define "The client has history of severe allergic reactions": Encounter."The client has history of severe allergic reactions" ````: **Id: **
  * ?: IMMZD5DTHPVEncounterElements
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTHPVEncounterElements */ library IMMZD5DTHPVEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTHPVElements called HPVElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for HPV dose */ define "Draft Medication Request for HPV dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."HPV vaccines" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.HPV contraindications */ define "The client is currently pregnant": Encounter."The client is pregnant" /* @input: The client has history of severe allergic reactions @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has history of severe allergic reactions-59 @decision: IMMZ.D5.DT.HPV contraindications */ define "The client has history of severe allergic reactions": Encounter."The client has history of severe allergic reactions" ````: **Version: **
  * ?: 1.0.0
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTHPVEncounterElements */ library IMMZD5DTHPVEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTHPVElements called HPVElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for HPV dose */ define "Draft Medication Request for HPV dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."HPV vaccines" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.HPV contraindications */ define "The client is currently pregnant": Encounter."The client is pregnant" /* @input: The client has history of severe allergic reactions @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has history of severe allergic reactions-59 @decision: IMMZ.D5.DT.HPV contraindications */ define "The client has history of severe allergic reactions": Encounter."The client has history of severe allergic reactions" ````: **Url: **
  * ?: [IMMZD5DTHPVEncounterElements](Library-IMMZD5DTHPVEncounterElements.md)
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTHPVEncounterElements */ library IMMZD5DTHPVEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTHPVElements called HPVElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for HPV dose */ define "Draft Medication Request for HPV dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."HPV vaccines" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.HPV contraindications */ define "The client is currently pregnant": Encounter."The client is pregnant" /* @input: The client has history of severe allergic reactions @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has history of severe allergic reactions-59 @decision: IMMZ.D5.DT.HPV contraindications */ define "The client has history of severe allergic reactions": Encounter."The client has history of severe allergic reactions" ````: **Status: **
  * ?: draft
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTHPVEncounterElements */ library IMMZD5DTHPVEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTHPVElements called HPVElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for HPV dose */ define "Draft Medication Request for HPV dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."HPV vaccines" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.HPV contraindications */ define "The client is currently pregnant": Encounter."The client is pregnant" /* @input: The client has history of severe allergic reactions @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has history of severe allergic reactions-59 @decision: IMMZ.D5.DT.HPV contraindications */ define "The client has history of severe allergic reactions": Encounter."The client has history of severe allergic reactions" ````: **Date: **
  * ?: 2026-04-09 14:34:42+0000
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTHPVEncounterElements */ library IMMZD5DTHPVEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTHPVElements called HPVElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for HPV dose */ define "Draft Medication Request for HPV dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."HPV vaccines" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.HPV contraindications */ define "The client is currently pregnant": Encounter."The client is pregnant" /* @input: The client has history of severe allergic reactions @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has history of severe allergic reactions-59 @decision: IMMZ.D5.DT.HPV contraindications */ define "The client has history of severe allergic reactions": Encounter."The client has history of severe allergic reactions" ````: **Publisher: **
  * ?: WHO
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTHPVEncounterElements */ library IMMZD5DTHPVEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTHPVElements called HPVElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for HPV dose */ define "Draft Medication Request for HPV dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."HPV vaccines" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.HPV contraindications */ define "The client is currently pregnant": Encounter."The client is pregnant" /* @input: The client has history of severe allergic reactions @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has history of severe allergic reactions-59 @decision: IMMZ.D5.DT.HPV contraindications */ define "The client has history of severe allergic reactions": Encounter."The client has history of severe allergic reactions" ````: **Description: **
  * ?: This library defines encounter-based elements for HPV used throughout the Immunization CPG



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "IMMZD5DTHPVEncounterElements",
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
  "url" : "http://smart.who.int/immunizations/Library/IMMZD5DTHPVEncounterElements",
  "version" : "1.0.0",
  "name" : "IMMZD5DTHPVEncounterElements",
  "title" : "IMMZD5DTHPVEncounterElements",
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
  "description" : "This library defines encounter-based elements for HPV used throughout the Immunization CPG",
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
    "display" : "Library HPVElements",
    "resource" : "http://smart.who.int/immunizations/Library/IMMZD5DTHPVElements"
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
    "name" : "Draft Medication Request for HPV dose",
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
    "name" : "The client has history of severe allergic reactions",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  }],
  "content" : [{
    "contentType" : "text/cql",
    "data" : "Ci8qCiAgKiBMaWJyYXJ5OiBJTU1aRDVEVEhQVkVuY291bnRlckVsZW1lbnRzCiAgKi8KbGlicmFyeSBJTU1aRDVEVEhQVkVuY291bnRlckVsZW1lbnRzCgp1c2luZyBGSElSIHZlcnNpb24gJzQuMC4xJwppbmNsdWRlIEZISVJIZWxwZXJzIHZlcnNpb24gJzQuMC4xJwoKaW5jbHVkZSBXSE9Db25jZXB0cwppbmNsdWRlIFdIT0NvbW1vbiBjYWxsZWQgV0MKaW5jbHVkZSBXSE9FbGVtZW50cyBjYWxsZWQgV0UKCmluY2x1ZGUgSU1NWkNvbW1vbiBjYWxsZWQgQ29tbW9uCmluY2x1ZGUgSU1NWkNvbmNlcHRzIGNhbGxlZCBDb25jZXB0cwppbmNsdWRlIElNTVpFbmNvdW50ZXJFbGVtZW50cyBjYWxsZWQgRW5jb3VudGVyCgppbmNsdWRlIElNTVpENURUSFBWRWxlbWVudHMgY2FsbGVkIEhQVkVsZW1lbnRzCgpwYXJhbWV0ZXIgVG9kYXkgRGF0ZSBkZWZhdWx0IFRvZGF5KCkKcGFyYW1ldGVyIEVuY291bnRlcklkIFN0cmluZwoKY29udGV4dCBQYXRpZW50CgovKgpAaW50ZXJuYWw6IERyYWZ0IE1lZGljYXRpb24gUmVxdWVzdCBmb3IgSFBWIGRvc2UKKi8KZGVmaW5lICJEcmFmdCBNZWRpY2F0aW9uIFJlcXVlc3QgZm9yIEhQViBkb3NlIjoKICBFbmNvdW50ZXIuIkRyYWZ0IE1lZGljYXRpb24gUmVxdWVzdCBmb3IgUGF0aWVudCIgTVIKICAgIHdoZXJlIE1SLm1lZGljYXRpb24gaW4gQ29uY2VwdHMuIkhQViB2YWNjaW5lcyIKCi8qCkBpbnB1dDogVGhlIGNsaWVudCBpcyBjdXJyZW50bHkgcHJlZ25hbnQKQHBzZXVkb2NvZGU6ICJQb3RlbnRpYWwgY29udHJhaW5kaWNhdGlvbnMiID0gIkN1cnJlbnRseSBwcmVnbmFudCIKQGNvZGU6IFRoZSBjbGllbnQgaXMgY3VycmVudGx5IHByZWduYW50LTUyCkBkZWNpc2lvbjogSU1NWi5ENS5EVC5IUFYgY29udHJhaW5kaWNhdGlvbnMKKi8KZGVmaW5lICJUaGUgY2xpZW50IGlzIGN1cnJlbnRseSBwcmVnbmFudCI6CiAgRW5jb3VudGVyLiJUaGUgY2xpZW50IGlzIHByZWduYW50IgoKLyoKQGlucHV0OiBUaGUgY2xpZW50IGhhcyBoaXN0b3J5IG9mIHNldmVyZSBhbGxlcmdpYyByZWFjdGlvbnMKQHBzZXVkb2NvZGU6ICJQb3RlbnRpYWwgY29udHJhaW5kaWNhdGlvbnMiID0gIlNldmVyZSBhbGxlcmdpYyByZWFjdGlvbnMiCkBjb2RlOiBUaGUgY2xpZW50IGhhcyBoaXN0b3J5IG9mIHNldmVyZSBhbGxlcmdpYyByZWFjdGlvbnMtNTkKQGRlY2lzaW9uOiBJTU1aLkQ1LkRULkhQViBjb250cmFpbmRpY2F0aW9ucwoqLwpkZWZpbmUgIlRoZSBjbGllbnQgaGFzIGhpc3Rvcnkgb2Ygc2V2ZXJlIGFsbGVyZ2ljIHJlYWN0aW9ucyI6CiAgRW5jb3VudGVyLiJUaGUgY2xpZW50IGhhcyBoaXN0b3J5IG9mIHNldmVyZSBhbGxlcmdpYyByZWFjdGlvbnMiCg=="
  }]
}

```
