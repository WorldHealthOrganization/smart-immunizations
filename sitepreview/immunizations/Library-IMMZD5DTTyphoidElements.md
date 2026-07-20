# IMMZD5DTTyphoidElements - WHO Immunization Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD5DTTyphoidElements**

## Library: IMMZD5DTTyphoidElements 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Library/IMMZD5DTTyphoidElements | *Version*:1.0.0 |
| Draft as of 2026-04-09 | *Computable Name*:IMMZD5DTTyphoidElements |

 
This library defines context-independent elements for Typhoid used throughout the Immunization CPG 

* * **Content: **text/cql: ```` /* * Library: IMMZD5DTTyphoidElements */ library IMMZD5DTTyphoidElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for Typhoid dose */ define "Draft Medication Request for Typhoid dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."Typhoid vaccines" /* @input: The client has hypersensitivity to any component of the vaccine @pseudocode: "Potential contraindications" = "Hypersensitivity to vaccine components" @code: The client has hypersensitivity to any component of the vaccine-72 @decision: IMMZ.D5.DT.Typhoid contraindications */ define "The client has hypersensitivity to any component of the vaccine": Elements."The client has hypersensitivity to any component of the vaccine" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.Typhoid contraindications */ define "The client is currently pregnant": Elements."The client is pregnant" /* @input: The client is currently taking antibiotics @pseudocode: "Potential contraindications" = "Taking antibiotics" @code: The client is currently taking antibiotics-52 @decision: IMMZ.D5.DT.Typhoid contraindications */ define "The client is currently taking antibiotics": Elements."The client is currently taking antibiotics" /* @input: The client's HIV status is positive @pseudocode: "HIV status" = "HIV-positive" @code: The client's HIV status is positive-29 @decision: IMMZ.D5.DT.Typhoid contraindications */ define "The client's HIV status is positive": Elements."Client's HIV status is positive" /* @input: The client is not immunologically stable @pseudocode: "Immunologically stable" ≠ TRUE @code: The client is not immunologically stable-31 @decision: IMMZ.D5.DT.Typhoid contraindications */ define "The client is not immunologically stable": Elements."Client is not immunologically stable" ````: **Id: **
  * ?: IMMZD5DTTyphoidElements
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTTyphoidElements */ library IMMZD5DTTyphoidElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for Typhoid dose */ define "Draft Medication Request for Typhoid dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."Typhoid vaccines" /* @input: The client has hypersensitivity to any component of the vaccine @pseudocode: "Potential contraindications" = "Hypersensitivity to vaccine components" @code: The client has hypersensitivity to any component of the vaccine-72 @decision: IMMZ.D5.DT.Typhoid contraindications */ define "The client has hypersensitivity to any component of the vaccine": Elements."The client has hypersensitivity to any component of the vaccine" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.Typhoid contraindications */ define "The client is currently pregnant": Elements."The client is pregnant" /* @input: The client is currently taking antibiotics @pseudocode: "Potential contraindications" = "Taking antibiotics" @code: The client is currently taking antibiotics-52 @decision: IMMZ.D5.DT.Typhoid contraindications */ define "The client is currently taking antibiotics": Elements."The client is currently taking antibiotics" /* @input: The client's HIV status is positive @pseudocode: "HIV status" = "HIV-positive" @code: The client's HIV status is positive-29 @decision: IMMZ.D5.DT.Typhoid contraindications */ define "The client's HIV status is positive": Elements."Client's HIV status is positive" /* @input: The client is not immunologically stable @pseudocode: "Immunologically stable" ≠ TRUE @code: The client is not immunologically stable-31 @decision: IMMZ.D5.DT.Typhoid contraindications */ define "The client is not immunologically stable": Elements."Client is not immunologically stable" ````: **Version: **
  * ?: 1.0.0
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTTyphoidElements */ library IMMZD5DTTyphoidElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for Typhoid dose */ define "Draft Medication Request for Typhoid dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."Typhoid vaccines" /* @input: The client has hypersensitivity to any component of the vaccine @pseudocode: "Potential contraindications" = "Hypersensitivity to vaccine components" @code: The client has hypersensitivity to any component of the vaccine-72 @decision: IMMZ.D5.DT.Typhoid contraindications */ define "The client has hypersensitivity to any component of the vaccine": Elements."The client has hypersensitivity to any component of the vaccine" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.Typhoid contraindications */ define "The client is currently pregnant": Elements."The client is pregnant" /* @input: The client is currently taking antibiotics @pseudocode: "Potential contraindications" = "Taking antibiotics" @code: The client is currently taking antibiotics-52 @decision: IMMZ.D5.DT.Typhoid contraindications */ define "The client is currently taking antibiotics": Elements."The client is currently taking antibiotics" /* @input: The client's HIV status is positive @pseudocode: "HIV status" = "HIV-positive" @code: The client's HIV status is positive-29 @decision: IMMZ.D5.DT.Typhoid contraindications */ define "The client's HIV status is positive": Elements."Client's HIV status is positive" /* @input: The client is not immunologically stable @pseudocode: "Immunologically stable" ≠ TRUE @code: The client is not immunologically stable-31 @decision: IMMZ.D5.DT.Typhoid contraindications */ define "The client is not immunologically stable": Elements."Client is not immunologically stable" ````: **Url: **
  * ?: [IMMZD5DTTyphoidElements](Library-IMMZD5DTTyphoidElements.md)
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTTyphoidElements */ library IMMZD5DTTyphoidElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for Typhoid dose */ define "Draft Medication Request for Typhoid dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."Typhoid vaccines" /* @input: The client has hypersensitivity to any component of the vaccine @pseudocode: "Potential contraindications" = "Hypersensitivity to vaccine components" @code: The client has hypersensitivity to any component of the vaccine-72 @decision: IMMZ.D5.DT.Typhoid contraindications */ define "The client has hypersensitivity to any component of the vaccine": Elements."The client has hypersensitivity to any component of the vaccine" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.Typhoid contraindications */ define "The client is currently pregnant": Elements."The client is pregnant" /* @input: The client is currently taking antibiotics @pseudocode: "Potential contraindications" = "Taking antibiotics" @code: The client is currently taking antibiotics-52 @decision: IMMZ.D5.DT.Typhoid contraindications */ define "The client is currently taking antibiotics": Elements."The client is currently taking antibiotics" /* @input: The client's HIV status is positive @pseudocode: "HIV status" = "HIV-positive" @code: The client's HIV status is positive-29 @decision: IMMZ.D5.DT.Typhoid contraindications */ define "The client's HIV status is positive": Elements."Client's HIV status is positive" /* @input: The client is not immunologically stable @pseudocode: "Immunologically stable" ≠ TRUE @code: The client is not immunologically stable-31 @decision: IMMZ.D5.DT.Typhoid contraindications */ define "The client is not immunologically stable": Elements."Client is not immunologically stable" ````: **Status: **
  * ?: draft
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTTyphoidElements */ library IMMZD5DTTyphoidElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for Typhoid dose */ define "Draft Medication Request for Typhoid dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."Typhoid vaccines" /* @input: The client has hypersensitivity to any component of the vaccine @pseudocode: "Potential contraindications" = "Hypersensitivity to vaccine components" @code: The client has hypersensitivity to any component of the vaccine-72 @decision: IMMZ.D5.DT.Typhoid contraindications */ define "The client has hypersensitivity to any component of the vaccine": Elements."The client has hypersensitivity to any component of the vaccine" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.Typhoid contraindications */ define "The client is currently pregnant": Elements."The client is pregnant" /* @input: The client is currently taking antibiotics @pseudocode: "Potential contraindications" = "Taking antibiotics" @code: The client is currently taking antibiotics-52 @decision: IMMZ.D5.DT.Typhoid contraindications */ define "The client is currently taking antibiotics": Elements."The client is currently taking antibiotics" /* @input: The client's HIV status is positive @pseudocode: "HIV status" = "HIV-positive" @code: The client's HIV status is positive-29 @decision: IMMZ.D5.DT.Typhoid contraindications */ define "The client's HIV status is positive": Elements."Client's HIV status is positive" /* @input: The client is not immunologically stable @pseudocode: "Immunologically stable" ≠ TRUE @code: The client is not immunologically stable-31 @decision: IMMZ.D5.DT.Typhoid contraindications */ define "The client is not immunologically stable": Elements."Client is not immunologically stable" ````: **Date: **
  * ?: 2026-04-09 14:34:42+0000
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTTyphoidElements */ library IMMZD5DTTyphoidElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for Typhoid dose */ define "Draft Medication Request for Typhoid dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."Typhoid vaccines" /* @input: The client has hypersensitivity to any component of the vaccine @pseudocode: "Potential contraindications" = "Hypersensitivity to vaccine components" @code: The client has hypersensitivity to any component of the vaccine-72 @decision: IMMZ.D5.DT.Typhoid contraindications */ define "The client has hypersensitivity to any component of the vaccine": Elements."The client has hypersensitivity to any component of the vaccine" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.Typhoid contraindications */ define "The client is currently pregnant": Elements."The client is pregnant" /* @input: The client is currently taking antibiotics @pseudocode: "Potential contraindications" = "Taking antibiotics" @code: The client is currently taking antibiotics-52 @decision: IMMZ.D5.DT.Typhoid contraindications */ define "The client is currently taking antibiotics": Elements."The client is currently taking antibiotics" /* @input: The client's HIV status is positive @pseudocode: "HIV status" = "HIV-positive" @code: The client's HIV status is positive-29 @decision: IMMZ.D5.DT.Typhoid contraindications */ define "The client's HIV status is positive": Elements."Client's HIV status is positive" /* @input: The client is not immunologically stable @pseudocode: "Immunologically stable" ≠ TRUE @code: The client is not immunologically stable-31 @decision: IMMZ.D5.DT.Typhoid contraindications */ define "The client is not immunologically stable": Elements."Client is not immunologically stable" ````: **Publisher: **
  * ?: WHO
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTTyphoidElements */ library IMMZD5DTTyphoidElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for Typhoid dose */ define "Draft Medication Request for Typhoid dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."Typhoid vaccines" /* @input: The client has hypersensitivity to any component of the vaccine @pseudocode: "Potential contraindications" = "Hypersensitivity to vaccine components" @code: The client has hypersensitivity to any component of the vaccine-72 @decision: IMMZ.D5.DT.Typhoid contraindications */ define "The client has hypersensitivity to any component of the vaccine": Elements."The client has hypersensitivity to any component of the vaccine" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.Typhoid contraindications */ define "The client is currently pregnant": Elements."The client is pregnant" /* @input: The client is currently taking antibiotics @pseudocode: "Potential contraindications" = "Taking antibiotics" @code: The client is currently taking antibiotics-52 @decision: IMMZ.D5.DT.Typhoid contraindications */ define "The client is currently taking antibiotics": Elements."The client is currently taking antibiotics" /* @input: The client's HIV status is positive @pseudocode: "HIV status" = "HIV-positive" @code: The client's HIV status is positive-29 @decision: IMMZ.D5.DT.Typhoid contraindications */ define "The client's HIV status is positive": Elements."Client's HIV status is positive" /* @input: The client is not immunologically stable @pseudocode: "Immunologically stable" ≠ TRUE @code: The client is not immunologically stable-31 @decision: IMMZ.D5.DT.Typhoid contraindications */ define "The client is not immunologically stable": Elements."Client is not immunologically stable" ````: **Description: **
  * ?: This library defines context-independent elements for Typhoid used throughout the Immunization CPG



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "IMMZD5DTTyphoidElements",
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
  "url" : "http://smart.who.int/immunizations/Library/IMMZD5DTTyphoidElements",
  "version" : "1.0.0",
  "name" : "IMMZD5DTTyphoidElements",
  "title" : "IMMZD5DTTyphoidElements",
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
  "description" : "This library defines context-independent elements for Typhoid used throughout the Immunization CPG",
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
    "display" : "Library Elements",
    "resource" : "http://smart.who.int/immunizations/Library/IMMZElements"
  }],
  "parameter" : [{
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
    "data" : "Ci8qCiAgKiBMaWJyYXJ5OiBJTU1aRDVEVFR5cGhvaWRFbGVtZW50cwogICovCmxpYnJhcnkgSU1NWkQ1RFRUeXBob2lkRWxlbWVudHMKCnVzaW5nIEZISVIgdmVyc2lvbiAnNC4wLjEnCmluY2x1ZGUgRkhJUkhlbHBlcnMgdmVyc2lvbiAnNC4wLjEnCgppbmNsdWRlIFdIT0NvbmNlcHRzCmluY2x1ZGUgV0hPQ29tbW9uIGNhbGxlZCBXQwppbmNsdWRlIFdIT0VsZW1lbnRzIGNhbGxlZCBXRQoKaW5jbHVkZSBJTU1aQ29tbW9uIGNhbGxlZCBDb21tb24KaW5jbHVkZSBJTU1aQ29uY2VwdHMgY2FsbGVkIENvbmNlcHRzCmluY2x1ZGUgSU1NWkVsZW1lbnRzIGNhbGxlZCBFbGVtZW50cwoKCmNvbnRleHQgUGF0aWVudAoKLyoKQGludGVybmFsOiBEcmFmdCBNZWRpY2F0aW9uIFJlcXVlc3QgZm9yIFR5cGhvaWQgZG9zZQoqLwpkZWZpbmUgIkRyYWZ0IE1lZGljYXRpb24gUmVxdWVzdCBmb3IgVHlwaG9pZCBkb3NlIjoKICBFbGVtZW50cy4iRHJhZnQgTWVkaWNhdGlvbiBSZXF1ZXN0IGZvciBQYXRpZW50IiBNUgogICAgd2hlcmUgTVIubWVkaWNhdGlvbiBpbiBDb25jZXB0cy4iVHlwaG9pZCB2YWNjaW5lcyIKCi8qCkBpbnB1dDogVGhlIGNsaWVudCBoYXMgaHlwZXJzZW5zaXRpdml0eSB0byBhbnkgY29tcG9uZW50IG9mIHRoZSB2YWNjaW5lCkBwc2V1ZG9jb2RlOiAiUG90ZW50aWFsIGNvbnRyYWluZGljYXRpb25zIiA9ICJIeXBlcnNlbnNpdGl2aXR5IHRvIHZhY2NpbmUgY29tcG9uZW50cyIKQGNvZGU6IFRoZSBjbGllbnQgaGFzIGh5cGVyc2Vuc2l0aXZpdHkgdG8gYW55IGNvbXBvbmVudCBvZiB0aGUgdmFjY2luZS03MgpAZGVjaXNpb246IElNTVouRDUuRFQuVHlwaG9pZCBjb250cmFpbmRpY2F0aW9ucwoqLwpkZWZpbmUgIlRoZSBjbGllbnQgaGFzIGh5cGVyc2Vuc2l0aXZpdHkgdG8gYW55IGNvbXBvbmVudCBvZiB0aGUgdmFjY2luZSI6CiAgRWxlbWVudHMuIlRoZSBjbGllbnQgaGFzIGh5cGVyc2Vuc2l0aXZpdHkgdG8gYW55IGNvbXBvbmVudCBvZiB0aGUgdmFjY2luZSIKCi8qCkBpbnB1dDogVGhlIGNsaWVudCBpcyBjdXJyZW50bHkgcHJlZ25hbnQKQHBzZXVkb2NvZGU6ICJQb3RlbnRpYWwgY29udHJhaW5kaWNhdGlvbnMiID0gIkN1cnJlbnRseSBwcmVnbmFudCIKQGNvZGU6IFRoZSBjbGllbnQgaXMgY3VycmVudGx5IHByZWduYW50LTUyCkBkZWNpc2lvbjogSU1NWi5ENS5EVC5UeXBob2lkIGNvbnRyYWluZGljYXRpb25zCiovCmRlZmluZSAiVGhlIGNsaWVudCBpcyBjdXJyZW50bHkgcHJlZ25hbnQiOgogIEVsZW1lbnRzLiJUaGUgY2xpZW50IGlzIHByZWduYW50IgoKLyoKQGlucHV0OiBUaGUgY2xpZW50IGlzIGN1cnJlbnRseSB0YWtpbmcgYW50aWJpb3RpY3MKQHBzZXVkb2NvZGU6ICJQb3RlbnRpYWwgY29udHJhaW5kaWNhdGlvbnMiID0gIlRha2luZyBhbnRpYmlvdGljcyIKQGNvZGU6IFRoZSBjbGllbnQgaXMgY3VycmVudGx5IHRha2luZyBhbnRpYmlvdGljcy01MgpAZGVjaXNpb246IElNTVouRDUuRFQuVHlwaG9pZCBjb250cmFpbmRpY2F0aW9ucwoqLwpkZWZpbmUgIlRoZSBjbGllbnQgaXMgY3VycmVudGx5IHRha2luZyBhbnRpYmlvdGljcyI6CiAgRWxlbWVudHMuIlRoZSBjbGllbnQgaXMgY3VycmVudGx5IHRha2luZyBhbnRpYmlvdGljcyIKCi8qCkBpbnB1dDogVGhlIGNsaWVudCdzIEhJViBzdGF0dXMgaXMgcG9zaXRpdmUKQHBzZXVkb2NvZGU6ICJISVYgc3RhdHVzIiA9ICJISVYtcG9zaXRpdmUiCkBjb2RlOiBUaGUgY2xpZW50J3MgSElWIHN0YXR1cyBpcyBwb3NpdGl2ZS0yOQpAZGVjaXNpb246IElNTVouRDUuRFQuVHlwaG9pZCBjb250cmFpbmRpY2F0aW9ucwoqLwpkZWZpbmUgIlRoZSBjbGllbnQncyBISVYgc3RhdHVzIGlzIHBvc2l0aXZlIjoKICBFbGVtZW50cy4iQ2xpZW50J3MgSElWIHN0YXR1cyBpcyBwb3NpdGl2ZSIKCi8qCkBpbnB1dDogVGhlIGNsaWVudCBpcyBub3QgaW1tdW5vbG9naWNhbGx5IHN0YWJsZQpAcHNldWRvY29kZTogIkltbXVub2xvZ2ljYWxseSBzdGFibGUiIOKJoCBUUlVFCkBjb2RlOiBUaGUgY2xpZW50IGlzIG5vdCBpbW11bm9sb2dpY2FsbHkgc3RhYmxlLTMxCkBkZWNpc2lvbjogSU1NWi5ENS5EVC5UeXBob2lkIGNvbnRyYWluZGljYXRpb25zCiovCmRlZmluZSAiVGhlIGNsaWVudCBpcyBub3QgaW1tdW5vbG9naWNhbGx5IHN0YWJsZSI6CiAgRWxlbWVudHMuIkNsaWVudCBpcyBub3QgaW1tdW5vbG9naWNhbGx5IHN0YWJsZSIK"
  }]
}

```
