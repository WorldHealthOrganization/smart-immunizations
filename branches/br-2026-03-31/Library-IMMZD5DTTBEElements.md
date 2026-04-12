# IMMZD5DTTBEElements - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD5DTTBEElements**

## Library: IMMZD5DTTBEElements 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Library/IMMZD5DTTBEElements | *Version*:0.2.0 |
| Draft as of 2026-03-31 | *Computable Name*:IMMZD5DTTBEElements |

 
This library defines context-independent elements for TBE used throughout the Immunization CPG 

* * **Content: **text/cql: ```` /* * Library: IMMZD5DTTBEElements */ library IMMZD5DTTBEElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for TBE dose */ define "Draft Medication Request for TBE dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."TBE vaccines" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.TBE contraindications */ define "The client is currently pregnant": Elements."The client is pregnant" /* @input: The client has moderate to severe fever @pseudocode: "Potential contraindications" = "Moderate to severe fever" @code: The client has moderate to severe fever-58 @decision: IMMZ.D5.DT.TBE contraindications */ define "The client has moderate to severe fever": Elements."The client has moderate to severe fever" ````: **Id: **
  * ?: IMMZD5DTTBEElements
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTTBEElements */ library IMMZD5DTTBEElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for TBE dose */ define "Draft Medication Request for TBE dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."TBE vaccines" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.TBE contraindications */ define "The client is currently pregnant": Elements."The client is pregnant" /* @input: The client has moderate to severe fever @pseudocode: "Potential contraindications" = "Moderate to severe fever" @code: The client has moderate to severe fever-58 @decision: IMMZ.D5.DT.TBE contraindications */ define "The client has moderate to severe fever": Elements."The client has moderate to severe fever" ````: **Version: **
  * ?: 0.2.0
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTTBEElements */ library IMMZD5DTTBEElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for TBE dose */ define "Draft Medication Request for TBE dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."TBE vaccines" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.TBE contraindications */ define "The client is currently pregnant": Elements."The client is pregnant" /* @input: The client has moderate to severe fever @pseudocode: "Potential contraindications" = "Moderate to severe fever" @code: The client has moderate to severe fever-58 @decision: IMMZ.D5.DT.TBE contraindications */ define "The client has moderate to severe fever": Elements."The client has moderate to severe fever" ````: **Url: **
  * ?: [IMMZD5DTTBEElements](Library-IMMZD5DTTBEElements.md)
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTTBEElements */ library IMMZD5DTTBEElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for TBE dose */ define "Draft Medication Request for TBE dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."TBE vaccines" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.TBE contraindications */ define "The client is currently pregnant": Elements."The client is pregnant" /* @input: The client has moderate to severe fever @pseudocode: "Potential contraindications" = "Moderate to severe fever" @code: The client has moderate to severe fever-58 @decision: IMMZ.D5.DT.TBE contraindications */ define "The client has moderate to severe fever": Elements."The client has moderate to severe fever" ````: **Status: **
  * ?: draft
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTTBEElements */ library IMMZD5DTTBEElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for TBE dose */ define "Draft Medication Request for TBE dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."TBE vaccines" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.TBE contraindications */ define "The client is currently pregnant": Elements."The client is pregnant" /* @input: The client has moderate to severe fever @pseudocode: "Potential contraindications" = "Moderate to severe fever" @code: The client has moderate to severe fever-58 @decision: IMMZ.D5.DT.TBE contraindications */ define "The client has moderate to severe fever": Elements."The client has moderate to severe fever" ````: **Date: **
  * ?: 2026-03-31 13:43:57+0000
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTTBEElements */ library IMMZD5DTTBEElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for TBE dose */ define "Draft Medication Request for TBE dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."TBE vaccines" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.TBE contraindications */ define "The client is currently pregnant": Elements."The client is pregnant" /* @input: The client has moderate to severe fever @pseudocode: "Potential contraindications" = "Moderate to severe fever" @code: The client has moderate to severe fever-58 @decision: IMMZ.D5.DT.TBE contraindications */ define "The client has moderate to severe fever": Elements."The client has moderate to severe fever" ````: **Publisher: **
  * ?: WHO
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTTBEElements */ library IMMZD5DTTBEElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for TBE dose */ define "Draft Medication Request for TBE dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."TBE vaccines" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.TBE contraindications */ define "The client is currently pregnant": Elements."The client is pregnant" /* @input: The client has moderate to severe fever @pseudocode: "Potential contraindications" = "Moderate to severe fever" @code: The client has moderate to severe fever-58 @decision: IMMZ.D5.DT.TBE contraindications */ define "The client has moderate to severe fever": Elements."The client has moderate to severe fever" ````: **Description: **
  * ?: This library defines context-independent elements for TBE used throughout the Immunization CPG



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "IMMZD5DTTBEElements",
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
  "url" : "http://smart.who.int/immunizations/Library/IMMZD5DTTBEElements",
  "version" : "0.2.0",
  "name" : "IMMZD5DTTBEElements",
  "title" : "IMMZD5DTTBEElements",
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
  "description" : "This library defines context-independent elements for TBE used throughout the Immunization CPG",
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
    "data" : "Ci8qCiAgKiBMaWJyYXJ5OiBJTU1aRDVEVFRCRUVsZW1lbnRzCiAgKi8KbGlicmFyeSBJTU1aRDVEVFRCRUVsZW1lbnRzCgp1c2luZyBGSElSIHZlcnNpb24gJzQuMC4xJwppbmNsdWRlIEZISVJIZWxwZXJzIHZlcnNpb24gJzQuMC4xJwoKaW5jbHVkZSBXSE9Db25jZXB0cwppbmNsdWRlIFdIT0NvbW1vbiBjYWxsZWQgV0MKaW5jbHVkZSBXSE9FbGVtZW50cyBjYWxsZWQgV0UKCmluY2x1ZGUgSU1NWkNvbW1vbiBjYWxsZWQgQ29tbW9uCmluY2x1ZGUgSU1NWkNvbmNlcHRzIGNhbGxlZCBDb25jZXB0cwppbmNsdWRlIElNTVpFbGVtZW50cyBjYWxsZWQgRWxlbWVudHMKCgpjb250ZXh0IFBhdGllbnQKCi8qCkBpbnRlcm5hbDogRHJhZnQgTWVkaWNhdGlvbiBSZXF1ZXN0IGZvciBUQkUgZG9zZQoqLwpkZWZpbmUgIkRyYWZ0IE1lZGljYXRpb24gUmVxdWVzdCBmb3IgVEJFIGRvc2UiOgogIEVsZW1lbnRzLiJEcmFmdCBNZWRpY2F0aW9uIFJlcXVlc3QgZm9yIFBhdGllbnQiIE1SCiAgICB3aGVyZSBNUi5tZWRpY2F0aW9uIGluIENvbmNlcHRzLiJUQkUgdmFjY2luZXMiCgovKgpAaW5wdXQ6IFRoZSBjbGllbnQgaXMgY3VycmVudGx5IHByZWduYW50CkBwc2V1ZG9jb2RlOiAiUG90ZW50aWFsIGNvbnRyYWluZGljYXRpb25zIiA9ICJDdXJyZW50bHkgcHJlZ25hbnQiCkBjb2RlOiBUaGUgY2xpZW50IGlzIGN1cnJlbnRseSBwcmVnbmFudC01MgpAZGVjaXNpb246IElNTVouRDUuRFQuVEJFIGNvbnRyYWluZGljYXRpb25zCiovCmRlZmluZSAiVGhlIGNsaWVudCBpcyBjdXJyZW50bHkgcHJlZ25hbnQiOgogIEVsZW1lbnRzLiJUaGUgY2xpZW50IGlzIHByZWduYW50IgoKLyoKQGlucHV0OiBUaGUgY2xpZW50IGhhcyBtb2RlcmF0ZSB0byBzZXZlcmUgZmV2ZXIKQHBzZXVkb2NvZGU6ICJQb3RlbnRpYWwgY29udHJhaW5kaWNhdGlvbnMiID0gIk1vZGVyYXRlIHRvIHNldmVyZSBmZXZlciIKQGNvZGU6IFRoZSBjbGllbnQgaGFzIG1vZGVyYXRlIHRvIHNldmVyZSBmZXZlci01OApAZGVjaXNpb246IElNTVouRDUuRFQuVEJFIGNvbnRyYWluZGljYXRpb25zCiovCmRlZmluZSAiVGhlIGNsaWVudCBoYXMgbW9kZXJhdGUgdG8gc2V2ZXJlIGZldmVyIjoKICBFbGVtZW50cy4iVGhlIGNsaWVudCBoYXMgbW9kZXJhdGUgdG8gc2V2ZXJlIGZldmVyIgo="
  }]
}

```
