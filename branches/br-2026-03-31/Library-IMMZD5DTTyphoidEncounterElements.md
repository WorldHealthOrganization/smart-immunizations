# IMMZD5DTTyphoidEncounterElements - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD5DTTyphoidEncounterElements**

## Library: IMMZD5DTTyphoidEncounterElements 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Library/IMMZD5DTTyphoidEncounterElements | *Version*:0.2.0 |
| Draft as of 2026-03-31 | *Computable Name*:IMMZD5DTTyphoidEncounterElements |

 
This library defines encounter-based elements for Typhoid used throughout the Immunization CPG 

* * **Content: **text/cql: ```` /* * Library: IMMZD5DTTyphoidEncounterElements */ library IMMZD5DTTyphoidEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTTyphoidElements called TyphoidElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for Typhoid dose */ define "Draft Medication Request for Typhoid dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."Typhoid vaccines" /* @input: The client has hypersensitivity to any component of the vaccine @pseudocode: "Potential contraindications" = "Hypersensitivity to vaccine components" @code: The client has hypersensitivity to any component of the vaccine-72 @decision: IMMZ.D5.DT.Typhoid contraindications */ define "The client has hypersensitivity to any component of the vaccine": Encounter."The client has hypersensitivity to any component of the vaccine" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.Typhoid contraindications */ define "The client is currently pregnant": Encounter."The client is pregnant" /* @input: The client is currently taking antibiotics @pseudocode: "Potential contraindications" = "Taking antibiotics" @code: The client is currently taking antibiotics-52 @decision: IMMZ.D5.DT.Typhoid contraindications */ define "The client is currently taking antibiotics": Encounter."The client is currently taking antibiotics" /* @input: The client's HIV status is positive @pseudocode: "HIV status" = "HIV-positive" @code: The client's HIV status is positive-29 @decision: IMMZ.D5.DT.Typhoid contraindications */ define "The client's HIV status is positive": Encounter."Client's HIV status is positive" /* @input: The client is not immunologically stable @pseudocode: "Immunologically stable" ≠ TRUE @code: The client is not immunologically stable-31 @decision: IMMZ.D5.DT.Typhoid contraindications */ define "The client is not immunologically stable": Encounter."Client is not immunologically stable" ````: **Id: **
  * ?: IMMZD5DTTyphoidEncounterElements
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTTyphoidEncounterElements */ library IMMZD5DTTyphoidEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTTyphoidElements called TyphoidElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for Typhoid dose */ define "Draft Medication Request for Typhoid dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."Typhoid vaccines" /* @input: The client has hypersensitivity to any component of the vaccine @pseudocode: "Potential contraindications" = "Hypersensitivity to vaccine components" @code: The client has hypersensitivity to any component of the vaccine-72 @decision: IMMZ.D5.DT.Typhoid contraindications */ define "The client has hypersensitivity to any component of the vaccine": Encounter."The client has hypersensitivity to any component of the vaccine" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.Typhoid contraindications */ define "The client is currently pregnant": Encounter."The client is pregnant" /* @input: The client is currently taking antibiotics @pseudocode: "Potential contraindications" = "Taking antibiotics" @code: The client is currently taking antibiotics-52 @decision: IMMZ.D5.DT.Typhoid contraindications */ define "The client is currently taking antibiotics": Encounter."The client is currently taking antibiotics" /* @input: The client's HIV status is positive @pseudocode: "HIV status" = "HIV-positive" @code: The client's HIV status is positive-29 @decision: IMMZ.D5.DT.Typhoid contraindications */ define "The client's HIV status is positive": Encounter."Client's HIV status is positive" /* @input: The client is not immunologically stable @pseudocode: "Immunologically stable" ≠ TRUE @code: The client is not immunologically stable-31 @decision: IMMZ.D5.DT.Typhoid contraindications */ define "The client is not immunologically stable": Encounter."Client is not immunologically stable" ````: **Version: **
  * ?: 0.2.0
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTTyphoidEncounterElements */ library IMMZD5DTTyphoidEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTTyphoidElements called TyphoidElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for Typhoid dose */ define "Draft Medication Request for Typhoid dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."Typhoid vaccines" /* @input: The client has hypersensitivity to any component of the vaccine @pseudocode: "Potential contraindications" = "Hypersensitivity to vaccine components" @code: The client has hypersensitivity to any component of the vaccine-72 @decision: IMMZ.D5.DT.Typhoid contraindications */ define "The client has hypersensitivity to any component of the vaccine": Encounter."The client has hypersensitivity to any component of the vaccine" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.Typhoid contraindications */ define "The client is currently pregnant": Encounter."The client is pregnant" /* @input: The client is currently taking antibiotics @pseudocode: "Potential contraindications" = "Taking antibiotics" @code: The client is currently taking antibiotics-52 @decision: IMMZ.D5.DT.Typhoid contraindications */ define "The client is currently taking antibiotics": Encounter."The client is currently taking antibiotics" /* @input: The client's HIV status is positive @pseudocode: "HIV status" = "HIV-positive" @code: The client's HIV status is positive-29 @decision: IMMZ.D5.DT.Typhoid contraindications */ define "The client's HIV status is positive": Encounter."Client's HIV status is positive" /* @input: The client is not immunologically stable @pseudocode: "Immunologically stable" ≠ TRUE @code: The client is not immunologically stable-31 @decision: IMMZ.D5.DT.Typhoid contraindications */ define "The client is not immunologically stable": Encounter."Client is not immunologically stable" ````: **Url: **
  * ?: [IMMZD5DTTyphoidEncounterElements](Library-IMMZD5DTTyphoidEncounterElements.md)
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTTyphoidEncounterElements */ library IMMZD5DTTyphoidEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTTyphoidElements called TyphoidElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for Typhoid dose */ define "Draft Medication Request for Typhoid dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."Typhoid vaccines" /* @input: The client has hypersensitivity to any component of the vaccine @pseudocode: "Potential contraindications" = "Hypersensitivity to vaccine components" @code: The client has hypersensitivity to any component of the vaccine-72 @decision: IMMZ.D5.DT.Typhoid contraindications */ define "The client has hypersensitivity to any component of the vaccine": Encounter."The client has hypersensitivity to any component of the vaccine" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.Typhoid contraindications */ define "The client is currently pregnant": Encounter."The client is pregnant" /* @input: The client is currently taking antibiotics @pseudocode: "Potential contraindications" = "Taking antibiotics" @code: The client is currently taking antibiotics-52 @decision: IMMZ.D5.DT.Typhoid contraindications */ define "The client is currently taking antibiotics": Encounter."The client is currently taking antibiotics" /* @input: The client's HIV status is positive @pseudocode: "HIV status" = "HIV-positive" @code: The client's HIV status is positive-29 @decision: IMMZ.D5.DT.Typhoid contraindications */ define "The client's HIV status is positive": Encounter."Client's HIV status is positive" /* @input: The client is not immunologically stable @pseudocode: "Immunologically stable" ≠ TRUE @code: The client is not immunologically stable-31 @decision: IMMZ.D5.DT.Typhoid contraindications */ define "The client is not immunologically stable": Encounter."Client is not immunologically stable" ````: **Status: **
  * ?: draft
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTTyphoidEncounterElements */ library IMMZD5DTTyphoidEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTTyphoidElements called TyphoidElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for Typhoid dose */ define "Draft Medication Request for Typhoid dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."Typhoid vaccines" /* @input: The client has hypersensitivity to any component of the vaccine @pseudocode: "Potential contraindications" = "Hypersensitivity to vaccine components" @code: The client has hypersensitivity to any component of the vaccine-72 @decision: IMMZ.D5.DT.Typhoid contraindications */ define "The client has hypersensitivity to any component of the vaccine": Encounter."The client has hypersensitivity to any component of the vaccine" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.Typhoid contraindications */ define "The client is currently pregnant": Encounter."The client is pregnant" /* @input: The client is currently taking antibiotics @pseudocode: "Potential contraindications" = "Taking antibiotics" @code: The client is currently taking antibiotics-52 @decision: IMMZ.D5.DT.Typhoid contraindications */ define "The client is currently taking antibiotics": Encounter."The client is currently taking antibiotics" /* @input: The client's HIV status is positive @pseudocode: "HIV status" = "HIV-positive" @code: The client's HIV status is positive-29 @decision: IMMZ.D5.DT.Typhoid contraindications */ define "The client's HIV status is positive": Encounter."Client's HIV status is positive" /* @input: The client is not immunologically stable @pseudocode: "Immunologically stable" ≠ TRUE @code: The client is not immunologically stable-31 @decision: IMMZ.D5.DT.Typhoid contraindications */ define "The client is not immunologically stable": Encounter."Client is not immunologically stable" ````: **Date: **
  * ?: 2026-03-31 13:43:57+0000
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTTyphoidEncounterElements */ library IMMZD5DTTyphoidEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTTyphoidElements called TyphoidElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for Typhoid dose */ define "Draft Medication Request for Typhoid dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."Typhoid vaccines" /* @input: The client has hypersensitivity to any component of the vaccine @pseudocode: "Potential contraindications" = "Hypersensitivity to vaccine components" @code: The client has hypersensitivity to any component of the vaccine-72 @decision: IMMZ.D5.DT.Typhoid contraindications */ define "The client has hypersensitivity to any component of the vaccine": Encounter."The client has hypersensitivity to any component of the vaccine" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.Typhoid contraindications */ define "The client is currently pregnant": Encounter."The client is pregnant" /* @input: The client is currently taking antibiotics @pseudocode: "Potential contraindications" = "Taking antibiotics" @code: The client is currently taking antibiotics-52 @decision: IMMZ.D5.DT.Typhoid contraindications */ define "The client is currently taking antibiotics": Encounter."The client is currently taking antibiotics" /* @input: The client's HIV status is positive @pseudocode: "HIV status" = "HIV-positive" @code: The client's HIV status is positive-29 @decision: IMMZ.D5.DT.Typhoid contraindications */ define "The client's HIV status is positive": Encounter."Client's HIV status is positive" /* @input: The client is not immunologically stable @pseudocode: "Immunologically stable" ≠ TRUE @code: The client is not immunologically stable-31 @decision: IMMZ.D5.DT.Typhoid contraindications */ define "The client is not immunologically stable": Encounter."Client is not immunologically stable" ````: **Publisher: **
  * ?: WHO
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTTyphoidEncounterElements */ library IMMZD5DTTyphoidEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTTyphoidElements called TyphoidElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for Typhoid dose */ define "Draft Medication Request for Typhoid dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."Typhoid vaccines" /* @input: The client has hypersensitivity to any component of the vaccine @pseudocode: "Potential contraindications" = "Hypersensitivity to vaccine components" @code: The client has hypersensitivity to any component of the vaccine-72 @decision: IMMZ.D5.DT.Typhoid contraindications */ define "The client has hypersensitivity to any component of the vaccine": Encounter."The client has hypersensitivity to any component of the vaccine" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.Typhoid contraindications */ define "The client is currently pregnant": Encounter."The client is pregnant" /* @input: The client is currently taking antibiotics @pseudocode: "Potential contraindications" = "Taking antibiotics" @code: The client is currently taking antibiotics-52 @decision: IMMZ.D5.DT.Typhoid contraindications */ define "The client is currently taking antibiotics": Encounter."The client is currently taking antibiotics" /* @input: The client's HIV status is positive @pseudocode: "HIV status" = "HIV-positive" @code: The client's HIV status is positive-29 @decision: IMMZ.D5.DT.Typhoid contraindications */ define "The client's HIV status is positive": Encounter."Client's HIV status is positive" /* @input: The client is not immunologically stable @pseudocode: "Immunologically stable" ≠ TRUE @code: The client is not immunologically stable-31 @decision: IMMZ.D5.DT.Typhoid contraindications */ define "The client is not immunologically stable": Encounter."Client is not immunologically stable" ````: **Description: **
  * ?: This library defines encounter-based elements for Typhoid used throughout the Immunization CPG



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "IMMZD5DTTyphoidEncounterElements",
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
  "url" : "http://smart.who.int/immunizations/Library/IMMZD5DTTyphoidEncounterElements",
  "version" : "0.2.0",
  "name" : "IMMZD5DTTyphoidEncounterElements",
  "title" : "IMMZD5DTTyphoidEncounterElements",
  "status" : "draft",
  "experimental" : false,
  "type" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/library-type",
      "code" : "logic-library"
    }]
  },
  "date" : "2026-03-31T13:43:57+00:00",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "This library defines encounter-based elements for Typhoid used throughout the Immunization CPG",
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
    "display" : "Library TyphoidElements",
    "resource" : "http://smart.who.int/immunizations/Library/IMMZD5DTTyphoidElements"
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
    "name" : "Draft Medication Request for Typhoid dose",
    "use" : "out",
    "min" : 0,
    "max" : "*",
    "type" : "MedicationRequest"
  },
  {
    "name" : "The client has hypersensitivity to any component of the vaccine",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "The client is currently pregnant",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "The client is currently taking antibiotics",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "The client's HIV status is positive",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "The client is not immunologically stable",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  }],
  "content" : [{
    "contentType" : "text/cql",
    "data" : "Ci8qCiAgKiBMaWJyYXJ5OiBJTU1aRDVEVFR5cGhvaWRFbmNvdW50ZXJFbGVtZW50cwogICovCmxpYnJhcnkgSU1NWkQ1RFRUeXBob2lkRW5jb3VudGVyRWxlbWVudHMKCnVzaW5nIEZISVIgdmVyc2lvbiAnNC4wLjEnCmluY2x1ZGUgRkhJUkhlbHBlcnMgdmVyc2lvbiAnNC4wLjEnCgppbmNsdWRlIFdIT0NvbmNlcHRzCmluY2x1ZGUgV0hPQ29tbW9uIGNhbGxlZCBXQwppbmNsdWRlIFdIT0VsZW1lbnRzIGNhbGxlZCBXRQoKaW5jbHVkZSBJTU1aQ29tbW9uIGNhbGxlZCBDb21tb24KaW5jbHVkZSBJTU1aQ29uY2VwdHMgY2FsbGVkIENvbmNlcHRzCmluY2x1ZGUgSU1NWkVuY291bnRlckVsZW1lbnRzIGNhbGxlZCBFbmNvdW50ZXIKCmluY2x1ZGUgSU1NWkQ1RFRUeXBob2lkRWxlbWVudHMgY2FsbGVkIFR5cGhvaWRFbGVtZW50cwoKcGFyYW1ldGVyIFRvZGF5IERhdGUgZGVmYXVsdCBUb2RheSgpCnBhcmFtZXRlciBFbmNvdW50ZXJJZCBTdHJpbmcKCmNvbnRleHQgUGF0aWVudAoKLyoKQGludGVybmFsOiBEcmFmdCBNZWRpY2F0aW9uIFJlcXVlc3QgZm9yIFR5cGhvaWQgZG9zZQoqLwpkZWZpbmUgIkRyYWZ0IE1lZGljYXRpb24gUmVxdWVzdCBmb3IgVHlwaG9pZCBkb3NlIjoKICBFbmNvdW50ZXIuIkRyYWZ0IE1lZGljYXRpb24gUmVxdWVzdCBmb3IgUGF0aWVudCIgTVIKICAgIHdoZXJlIE1SLm1lZGljYXRpb24gaW4gQ29uY2VwdHMuIlR5cGhvaWQgdmFjY2luZXMiCgovKgpAaW5wdXQ6IFRoZSBjbGllbnQgaGFzIGh5cGVyc2Vuc2l0aXZpdHkgdG8gYW55IGNvbXBvbmVudCBvZiB0aGUgdmFjY2luZQpAcHNldWRvY29kZTogIlBvdGVudGlhbCBjb250cmFpbmRpY2F0aW9ucyIgPSAiSHlwZXJzZW5zaXRpdml0eSB0byB2YWNjaW5lIGNvbXBvbmVudHMiCkBjb2RlOiBUaGUgY2xpZW50IGhhcyBoeXBlcnNlbnNpdGl2aXR5IHRvIGFueSBjb21wb25lbnQgb2YgdGhlIHZhY2NpbmUtNzIKQGRlY2lzaW9uOiBJTU1aLkQ1LkRULlR5cGhvaWQgY29udHJhaW5kaWNhdGlvbnMKKi8KZGVmaW5lICJUaGUgY2xpZW50IGhhcyBoeXBlcnNlbnNpdGl2aXR5IHRvIGFueSBjb21wb25lbnQgb2YgdGhlIHZhY2NpbmUiOgogIEVuY291bnRlci4iVGhlIGNsaWVudCBoYXMgaHlwZXJzZW5zaXRpdml0eSB0byBhbnkgY29tcG9uZW50IG9mIHRoZSB2YWNjaW5lIgoKLyoKQGlucHV0OiBUaGUgY2xpZW50IGlzIGN1cnJlbnRseSBwcmVnbmFudApAcHNldWRvY29kZTogIlBvdGVudGlhbCBjb250cmFpbmRpY2F0aW9ucyIgPSAiQ3VycmVudGx5IHByZWduYW50IgpAY29kZTogVGhlIGNsaWVudCBpcyBjdXJyZW50bHkgcHJlZ25hbnQtNTIKQGRlY2lzaW9uOiBJTU1aLkQ1LkRULlR5cGhvaWQgY29udHJhaW5kaWNhdGlvbnMKKi8KZGVmaW5lICJUaGUgY2xpZW50IGlzIGN1cnJlbnRseSBwcmVnbmFudCI6CiAgRW5jb3VudGVyLiJUaGUgY2xpZW50IGlzIHByZWduYW50IgoKLyoKQGlucHV0OiBUaGUgY2xpZW50IGlzIGN1cnJlbnRseSB0YWtpbmcgYW50aWJpb3RpY3MKQHBzZXVkb2NvZGU6ICJQb3RlbnRpYWwgY29udHJhaW5kaWNhdGlvbnMiID0gIlRha2luZyBhbnRpYmlvdGljcyIKQGNvZGU6IFRoZSBjbGllbnQgaXMgY3VycmVudGx5IHRha2luZyBhbnRpYmlvdGljcy01MgpAZGVjaXNpb246IElNTVouRDUuRFQuVHlwaG9pZCBjb250cmFpbmRpY2F0aW9ucwoqLwpkZWZpbmUgIlRoZSBjbGllbnQgaXMgY3VycmVudGx5IHRha2luZyBhbnRpYmlvdGljcyI6CiAgRW5jb3VudGVyLiJUaGUgY2xpZW50IGlzIGN1cnJlbnRseSB0YWtpbmcgYW50aWJpb3RpY3MiCgovKgpAaW5wdXQ6IFRoZSBjbGllbnQncyBISVYgc3RhdHVzIGlzIHBvc2l0aXZlCkBwc2V1ZG9jb2RlOiAiSElWIHN0YXR1cyIgPSAiSElWLXBvc2l0aXZlIgpAY29kZTogVGhlIGNsaWVudCdzIEhJViBzdGF0dXMgaXMgcG9zaXRpdmUtMjkKQGRlY2lzaW9uOiBJTU1aLkQ1LkRULlR5cGhvaWQgY29udHJhaW5kaWNhdGlvbnMKKi8KZGVmaW5lICJUaGUgY2xpZW50J3MgSElWIHN0YXR1cyBpcyBwb3NpdGl2ZSI6CiAgRW5jb3VudGVyLiJDbGllbnQncyBISVYgc3RhdHVzIGlzIHBvc2l0aXZlIgoKLyoKQGlucHV0OiBUaGUgY2xpZW50IGlzIG5vdCBpbW11bm9sb2dpY2FsbHkgc3RhYmxlCkBwc2V1ZG9jb2RlOiAiSW1tdW5vbG9naWNhbGx5IHN0YWJsZSIg4omgIFRSVUUKQGNvZGU6IFRoZSBjbGllbnQgaXMgbm90IGltbXVub2xvZ2ljYWxseSBzdGFibGUtMzEKQGRlY2lzaW9uOiBJTU1aLkQ1LkRULlR5cGhvaWQgY29udHJhaW5kaWNhdGlvbnMKKi8KZGVmaW5lICJUaGUgY2xpZW50IGlzIG5vdCBpbW11bm9sb2dpY2FsbHkgc3RhYmxlIjoKICBFbmNvdW50ZXIuIkNsaWVudCBpcyBub3QgaW1tdW5vbG9naWNhbGx5IHN0YWJsZSIK"
  }]
}

```
