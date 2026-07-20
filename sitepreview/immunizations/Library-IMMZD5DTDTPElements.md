# IMMZD5DTDTPElements - WHO Immunization Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD5DTDTPElements**

## Library: IMMZD5DTDTPElements 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Library/IMMZD5DTDTPElements | *Version*:1.0.0 |
| Draft as of 2026-04-09 | *Computable Name*:IMMZD5DTDTPElements |

 
This library defines context-independent elements for DTP used throughout the Immunization CPG 

* * **Content: **text/cql: ```` /* * Library: IMMZD5DTDTPElements */ library IMMZD5DTDTPElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for DTP dose */ define "Draft Medication Request for DTP dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."DTP-containing vaccines" /* @input: The client has a history of anaphylactic reactions @pseudocode: "Potential contraindications" = "History of anaphylactic reactions" @code: The client has a history of anaphylactic reactions-67 @decision: IMMZ.D5.DT.DTP contraindications */ define "The client has a history of anaphylactic reactions": Elements."The client has history of anaphylactic reactions" /* @input: The client currently has a severe acute illness @pseudocode: "Potential contraindications" = "Severe acute illness" @code: The client currently has a severe acute illness-54 @decision: IMMZ.D5.DT.DTP contraindications */ define "The client currently has a severe acute illness": Elements."The client currently has a severe acute illness" /* @internal: Draft Medication Request for Tetanus dose */ define "Draft Medication Request for Tetanus dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."Tetanus-containing vaccines" ````: **Id: **
  * ?: IMMZD5DTDTPElements
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTDTPElements */ library IMMZD5DTDTPElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for DTP dose */ define "Draft Medication Request for DTP dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."DTP-containing vaccines" /* @input: The client has a history of anaphylactic reactions @pseudocode: "Potential contraindications" = "History of anaphylactic reactions" @code: The client has a history of anaphylactic reactions-67 @decision: IMMZ.D5.DT.DTP contraindications */ define "The client has a history of anaphylactic reactions": Elements."The client has history of anaphylactic reactions" /* @input: The client currently has a severe acute illness @pseudocode: "Potential contraindications" = "Severe acute illness" @code: The client currently has a severe acute illness-54 @decision: IMMZ.D5.DT.DTP contraindications */ define "The client currently has a severe acute illness": Elements."The client currently has a severe acute illness" /* @internal: Draft Medication Request for Tetanus dose */ define "Draft Medication Request for Tetanus dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."Tetanus-containing vaccines" ````: **Version: **
  * ?: 1.0.0
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTDTPElements */ library IMMZD5DTDTPElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for DTP dose */ define "Draft Medication Request for DTP dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."DTP-containing vaccines" /* @input: The client has a history of anaphylactic reactions @pseudocode: "Potential contraindications" = "History of anaphylactic reactions" @code: The client has a history of anaphylactic reactions-67 @decision: IMMZ.D5.DT.DTP contraindications */ define "The client has a history of anaphylactic reactions": Elements."The client has history of anaphylactic reactions" /* @input: The client currently has a severe acute illness @pseudocode: "Potential contraindications" = "Severe acute illness" @code: The client currently has a severe acute illness-54 @decision: IMMZ.D5.DT.DTP contraindications */ define "The client currently has a severe acute illness": Elements."The client currently has a severe acute illness" /* @internal: Draft Medication Request for Tetanus dose */ define "Draft Medication Request for Tetanus dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."Tetanus-containing vaccines" ````: **Url: **
  * ?: [IMMZD5DTDTPElements](Library-IMMZD5DTDTPElements.md)
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTDTPElements */ library IMMZD5DTDTPElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for DTP dose */ define "Draft Medication Request for DTP dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."DTP-containing vaccines" /* @input: The client has a history of anaphylactic reactions @pseudocode: "Potential contraindications" = "History of anaphylactic reactions" @code: The client has a history of anaphylactic reactions-67 @decision: IMMZ.D5.DT.DTP contraindications */ define "The client has a history of anaphylactic reactions": Elements."The client has history of anaphylactic reactions" /* @input: The client currently has a severe acute illness @pseudocode: "Potential contraindications" = "Severe acute illness" @code: The client currently has a severe acute illness-54 @decision: IMMZ.D5.DT.DTP contraindications */ define "The client currently has a severe acute illness": Elements."The client currently has a severe acute illness" /* @internal: Draft Medication Request for Tetanus dose */ define "Draft Medication Request for Tetanus dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."Tetanus-containing vaccines" ````: **Status: **
  * ?: draft
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTDTPElements */ library IMMZD5DTDTPElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for DTP dose */ define "Draft Medication Request for DTP dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."DTP-containing vaccines" /* @input: The client has a history of anaphylactic reactions @pseudocode: "Potential contraindications" = "History of anaphylactic reactions" @code: The client has a history of anaphylactic reactions-67 @decision: IMMZ.D5.DT.DTP contraindications */ define "The client has a history of anaphylactic reactions": Elements."The client has history of anaphylactic reactions" /* @input: The client currently has a severe acute illness @pseudocode: "Potential contraindications" = "Severe acute illness" @code: The client currently has a severe acute illness-54 @decision: IMMZ.D5.DT.DTP contraindications */ define "The client currently has a severe acute illness": Elements."The client currently has a severe acute illness" /* @internal: Draft Medication Request for Tetanus dose */ define "Draft Medication Request for Tetanus dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."Tetanus-containing vaccines" ````: **Date: **
  * ?: 2026-04-09 14:34:42+0000
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTDTPElements */ library IMMZD5DTDTPElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for DTP dose */ define "Draft Medication Request for DTP dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."DTP-containing vaccines" /* @input: The client has a history of anaphylactic reactions @pseudocode: "Potential contraindications" = "History of anaphylactic reactions" @code: The client has a history of anaphylactic reactions-67 @decision: IMMZ.D5.DT.DTP contraindications */ define "The client has a history of anaphylactic reactions": Elements."The client has history of anaphylactic reactions" /* @input: The client currently has a severe acute illness @pseudocode: "Potential contraindications" = "Severe acute illness" @code: The client currently has a severe acute illness-54 @decision: IMMZ.D5.DT.DTP contraindications */ define "The client currently has a severe acute illness": Elements."The client currently has a severe acute illness" /* @internal: Draft Medication Request for Tetanus dose */ define "Draft Medication Request for Tetanus dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."Tetanus-containing vaccines" ````: **Publisher: **
  * ?: WHO
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTDTPElements */ library IMMZD5DTDTPElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for DTP dose */ define "Draft Medication Request for DTP dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."DTP-containing vaccines" /* @input: The client has a history of anaphylactic reactions @pseudocode: "Potential contraindications" = "History of anaphylactic reactions" @code: The client has a history of anaphylactic reactions-67 @decision: IMMZ.D5.DT.DTP contraindications */ define "The client has a history of anaphylactic reactions": Elements."The client has history of anaphylactic reactions" /* @input: The client currently has a severe acute illness @pseudocode: "Potential contraindications" = "Severe acute illness" @code: The client currently has a severe acute illness-54 @decision: IMMZ.D5.DT.DTP contraindications */ define "The client currently has a severe acute illness": Elements."The client currently has a severe acute illness" /* @internal: Draft Medication Request for Tetanus dose */ define "Draft Medication Request for Tetanus dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."Tetanus-containing vaccines" ````: **Description: **
  * ?: This library defines context-independent elements for DTP used throughout the Immunization CPG



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "IMMZD5DTDTPElements",
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
  "url" : "http://smart.who.int/immunizations/Library/IMMZD5DTDTPElements",
  "version" : "1.0.0",
  "name" : "IMMZD5DTDTPElements",
  "title" : "IMMZD5DTDTPElements",
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
  "description" : "This library defines context-independent elements for DTP used throughout the Immunization CPG",
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
    "name" : "Draft Medication Request for DTP dose",
    "use" : "out",
    "min" : 0,
    "max" : "*",
    "type" : "MedicationRequest"
  },
  {
    "name" : "The client has a history of anaphylactic reactions",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "The client currently has a severe acute illness",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "Draft Medication Request for Tetanus dose",
    "use" : "out",
    "min" : 0,
    "max" : "*",
    "type" : "MedicationRequest"
  }],
  "content" : [{
    "contentType" : "text/cql",
    "data" : "Ci8qCiAgKiBMaWJyYXJ5OiBJTU1aRDVEVERUUEVsZW1lbnRzCiAgKi8KbGlicmFyeSBJTU1aRDVEVERUUEVsZW1lbnRzCgp1c2luZyBGSElSIHZlcnNpb24gJzQuMC4xJwppbmNsdWRlIEZISVJIZWxwZXJzIHZlcnNpb24gJzQuMC4xJwoKaW5jbHVkZSBXSE9Db25jZXB0cwppbmNsdWRlIFdIT0NvbW1vbiBjYWxsZWQgV0MKaW5jbHVkZSBXSE9FbGVtZW50cyBjYWxsZWQgV0UKCmluY2x1ZGUgSU1NWkNvbW1vbiBjYWxsZWQgQ29tbW9uCmluY2x1ZGUgSU1NWkNvbmNlcHRzIGNhbGxlZCBDb25jZXB0cwppbmNsdWRlIElNTVpFbGVtZW50cyBjYWxsZWQgRWxlbWVudHMKCgpjb250ZXh0IFBhdGllbnQKCi8qCkBpbnRlcm5hbDogRHJhZnQgTWVkaWNhdGlvbiBSZXF1ZXN0IGZvciBEVFAgZG9zZQoqLwpkZWZpbmUgIkRyYWZ0IE1lZGljYXRpb24gUmVxdWVzdCBmb3IgRFRQIGRvc2UiOgogIEVsZW1lbnRzLiJEcmFmdCBNZWRpY2F0aW9uIFJlcXVlc3QgZm9yIFBhdGllbnQiIE1SIAogICAgd2hlcmUgTVIubWVkaWNhdGlvbiBpbiBDb25jZXB0cy4iRFRQLWNvbnRhaW5pbmcgdmFjY2luZXMiCgovKgpAaW5wdXQ6IFRoZSBjbGllbnQgaGFzIGEgaGlzdG9yeSBvZiBhbmFwaHlsYWN0aWMgcmVhY3Rpb25zCkBwc2V1ZG9jb2RlOiAiUG90ZW50aWFsIGNvbnRyYWluZGljYXRpb25zIiA9ICJIaXN0b3J5IG9mIGFuYXBoeWxhY3RpYyByZWFjdGlvbnMiCkBjb2RlOiBUaGUgY2xpZW50IGhhcyBhIGhpc3Rvcnkgb2YgYW5hcGh5bGFjdGljIHJlYWN0aW9ucy02NwpAZGVjaXNpb246IElNTVouRDUuRFQuRFRQIGNvbnRyYWluZGljYXRpb25zCiovCmRlZmluZSAiVGhlIGNsaWVudCBoYXMgYSBoaXN0b3J5IG9mIGFuYXBoeWxhY3RpYyByZWFjdGlvbnMiOgogIEVsZW1lbnRzLiJUaGUgY2xpZW50IGhhcyBoaXN0b3J5IG9mIGFuYXBoeWxhY3RpYyByZWFjdGlvbnMiCgovKgpAaW5wdXQ6IFRoZSBjbGllbnQgY3VycmVudGx5IGhhcyBhIHNldmVyZSBhY3V0ZSBpbGxuZXNzCkBwc2V1ZG9jb2RlOiAiUG90ZW50aWFsIGNvbnRyYWluZGljYXRpb25zIiA9ICJTZXZlcmUgYWN1dGUgaWxsbmVzcyIKQGNvZGU6IFRoZSBjbGllbnQgY3VycmVudGx5IGhhcyBhIHNldmVyZSBhY3V0ZSBpbGxuZXNzLTU0CkBkZWNpc2lvbjogSU1NWi5ENS5EVC5EVFAgY29udHJhaW5kaWNhdGlvbnMKKi8KZGVmaW5lICJUaGUgY2xpZW50IGN1cnJlbnRseSBoYXMgYSBzZXZlcmUgYWN1dGUgaWxsbmVzcyI6CiAgRWxlbWVudHMuIlRoZSBjbGllbnQgY3VycmVudGx5IGhhcyBhIHNldmVyZSBhY3V0ZSBpbGxuZXNzIgoKLyoKQGludGVybmFsOiBEcmFmdCBNZWRpY2F0aW9uIFJlcXVlc3QgZm9yIFRldGFudXMgZG9zZQoqLwpkZWZpbmUgIkRyYWZ0IE1lZGljYXRpb24gUmVxdWVzdCBmb3IgVGV0YW51cyBkb3NlIjoKICBFbGVtZW50cy4iRHJhZnQgTWVkaWNhdGlvbiBSZXF1ZXN0IGZvciBQYXRpZW50IiBNUgogICAgd2hlcmUgTVIubWVkaWNhdGlvbiBpbiBDb25jZXB0cy4iVGV0YW51cy1jb250YWluaW5nIHZhY2NpbmVzIgo="
  }]
}

```
