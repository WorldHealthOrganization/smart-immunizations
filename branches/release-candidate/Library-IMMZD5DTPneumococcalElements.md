# IMMZD5DTPneumococcalElements - WHO Immunization Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD5DTPneumococcalElements**

## Library: IMMZD5DTPneumococcalElements 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Library/IMMZD5DTPneumococcalElements | *Version*:1.0.0 |
| Draft as of 2026-04-09 | *Computable Name*:IMMZD5DTPneumococcalElements |

 
This library defines context-independent elements for Pneumococcal used throughout the Immunization CPG 

* * **Content: **text/cql: ```` /* * Library: IMMZD5DTPneumococcalElements */ library IMMZD5DTPneumococcalElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for Pneumococcal dose */ define "Draft Medication Request for Pneumococcal dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."Pneumococcal vaccines" /* @input: The client has a history of anaphylactic reactions @pseudocode: "Potential contraindications" = "History of anaphylactic reactions" @code: The client has a history of anaphylactic reactions-67 @decision: IMMZ.D5.DT.Pneumococcal contraindications */ define "The client has a history of anaphylactic reactions": Elements."The client has history of anaphylactic reactions" /* @input: The client has a history of severe allergic reactions @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has a history of severe allergic reactions-59 @decision: IMMZ.D5.DT.Pneumococcal contraindications */ define "The client has a history of severe allergic reactions": Elements."The client has history of severe allergic reactions" ````: **Id: **
  * ?: IMMZD5DTPneumococcalElements
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTPneumococcalElements */ library IMMZD5DTPneumococcalElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for Pneumococcal dose */ define "Draft Medication Request for Pneumococcal dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."Pneumococcal vaccines" /* @input: The client has a history of anaphylactic reactions @pseudocode: "Potential contraindications" = "History of anaphylactic reactions" @code: The client has a history of anaphylactic reactions-67 @decision: IMMZ.D5.DT.Pneumococcal contraindications */ define "The client has a history of anaphylactic reactions": Elements."The client has history of anaphylactic reactions" /* @input: The client has a history of severe allergic reactions @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has a history of severe allergic reactions-59 @decision: IMMZ.D5.DT.Pneumococcal contraindications */ define "The client has a history of severe allergic reactions": Elements."The client has history of severe allergic reactions" ````: **Version: **
  * ?: 1.0.0
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTPneumococcalElements */ library IMMZD5DTPneumococcalElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for Pneumococcal dose */ define "Draft Medication Request for Pneumococcal dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."Pneumococcal vaccines" /* @input: The client has a history of anaphylactic reactions @pseudocode: "Potential contraindications" = "History of anaphylactic reactions" @code: The client has a history of anaphylactic reactions-67 @decision: IMMZ.D5.DT.Pneumococcal contraindications */ define "The client has a history of anaphylactic reactions": Elements."The client has history of anaphylactic reactions" /* @input: The client has a history of severe allergic reactions @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has a history of severe allergic reactions-59 @decision: IMMZ.D5.DT.Pneumococcal contraindications */ define "The client has a history of severe allergic reactions": Elements."The client has history of severe allergic reactions" ````: **Url: **
  * ?: [IMMZD5DTPneumococcalElements](Library-IMMZD5DTPneumococcalElements.md)
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTPneumococcalElements */ library IMMZD5DTPneumococcalElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for Pneumococcal dose */ define "Draft Medication Request for Pneumococcal dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."Pneumococcal vaccines" /* @input: The client has a history of anaphylactic reactions @pseudocode: "Potential contraindications" = "History of anaphylactic reactions" @code: The client has a history of anaphylactic reactions-67 @decision: IMMZ.D5.DT.Pneumococcal contraindications */ define "The client has a history of anaphylactic reactions": Elements."The client has history of anaphylactic reactions" /* @input: The client has a history of severe allergic reactions @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has a history of severe allergic reactions-59 @decision: IMMZ.D5.DT.Pneumococcal contraindications */ define "The client has a history of severe allergic reactions": Elements."The client has history of severe allergic reactions" ````: **Status: **
  * ?: draft
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTPneumococcalElements */ library IMMZD5DTPneumococcalElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for Pneumococcal dose */ define "Draft Medication Request for Pneumococcal dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."Pneumococcal vaccines" /* @input: The client has a history of anaphylactic reactions @pseudocode: "Potential contraindications" = "History of anaphylactic reactions" @code: The client has a history of anaphylactic reactions-67 @decision: IMMZ.D5.DT.Pneumococcal contraindications */ define "The client has a history of anaphylactic reactions": Elements."The client has history of anaphylactic reactions" /* @input: The client has a history of severe allergic reactions @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has a history of severe allergic reactions-59 @decision: IMMZ.D5.DT.Pneumococcal contraindications */ define "The client has a history of severe allergic reactions": Elements."The client has history of severe allergic reactions" ````: **Date: **
  * ?: 2026-04-09 13:50:16+0000
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTPneumococcalElements */ library IMMZD5DTPneumococcalElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for Pneumococcal dose */ define "Draft Medication Request for Pneumococcal dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."Pneumococcal vaccines" /* @input: The client has a history of anaphylactic reactions @pseudocode: "Potential contraindications" = "History of anaphylactic reactions" @code: The client has a history of anaphylactic reactions-67 @decision: IMMZ.D5.DT.Pneumococcal contraindications */ define "The client has a history of anaphylactic reactions": Elements."The client has history of anaphylactic reactions" /* @input: The client has a history of severe allergic reactions @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has a history of severe allergic reactions-59 @decision: IMMZ.D5.DT.Pneumococcal contraindications */ define "The client has a history of severe allergic reactions": Elements."The client has history of severe allergic reactions" ````: **Publisher: **
  * ?: WHO
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTPneumococcalElements */ library IMMZD5DTPneumococcalElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for Pneumococcal dose */ define "Draft Medication Request for Pneumococcal dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."Pneumococcal vaccines" /* @input: The client has a history of anaphylactic reactions @pseudocode: "Potential contraindications" = "History of anaphylactic reactions" @code: The client has a history of anaphylactic reactions-67 @decision: IMMZ.D5.DT.Pneumococcal contraindications */ define "The client has a history of anaphylactic reactions": Elements."The client has history of anaphylactic reactions" /* @input: The client has a history of severe allergic reactions @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has a history of severe allergic reactions-59 @decision: IMMZ.D5.DT.Pneumococcal contraindications */ define "The client has a history of severe allergic reactions": Elements."The client has history of severe allergic reactions" ````: **Description: **
  * ?: This library defines context-independent elements for Pneumococcal used throughout the Immunization CPG



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "IMMZD5DTPneumococcalElements",
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
  "url" : "http://smart.who.int/immunizations/Library/IMMZD5DTPneumococcalElements",
  "version" : "1.0.0",
  "name" : "IMMZD5DTPneumococcalElements",
  "title" : "IMMZD5DTPneumococcalElements",
  "status" : "draft",
  "experimental" : false,
  "type" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/library-type",
      "code" : "logic-library"
    }]
  },
  "date" : "2026-04-09T13:50:16+00:00",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "This library defines context-independent elements for Pneumococcal used throughout the Immunization CPG",
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
    "name" : "Draft Medication Request for Pneumococcal dose",
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
    "name" : "The client has a history of severe allergic reactions",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  }],
  "content" : [{
    "contentType" : "text/cql",
    "data" : "Ci8qCiAgKiBMaWJyYXJ5OiBJTU1aRDVEVFBuZXVtb2NvY2NhbEVsZW1lbnRzCiAgKi8KbGlicmFyeSBJTU1aRDVEVFBuZXVtb2NvY2NhbEVsZW1lbnRzCgp1c2luZyBGSElSIHZlcnNpb24gJzQuMC4xJwppbmNsdWRlIEZISVJIZWxwZXJzIHZlcnNpb24gJzQuMC4xJwoKaW5jbHVkZSBXSE9Db25jZXB0cwppbmNsdWRlIFdIT0NvbW1vbiBjYWxsZWQgV0MKaW5jbHVkZSBXSE9FbGVtZW50cyBjYWxsZWQgV0UKCmluY2x1ZGUgSU1NWkNvbW1vbiBjYWxsZWQgQ29tbW9uCmluY2x1ZGUgSU1NWkNvbmNlcHRzIGNhbGxlZCBDb25jZXB0cwppbmNsdWRlIElNTVpFbGVtZW50cyBjYWxsZWQgRWxlbWVudHMKCgpjb250ZXh0IFBhdGllbnQKCi8qCkBpbnRlcm5hbDogRHJhZnQgTWVkaWNhdGlvbiBSZXF1ZXN0IGZvciBQbmV1bW9jb2NjYWwgZG9zZQoqLwpkZWZpbmUgIkRyYWZ0IE1lZGljYXRpb24gUmVxdWVzdCBmb3IgUG5ldW1vY29jY2FsIGRvc2UiOgoKICBFbGVtZW50cy4iRHJhZnQgTWVkaWNhdGlvbiBSZXF1ZXN0IGZvciBQYXRpZW50IiBNUiAKICAgIHdoZXJlIE1SLm1lZGljYXRpb24gaW4gQ29uY2VwdHMuIlBuZXVtb2NvY2NhbCB2YWNjaW5lcyIKCi8qCkBpbnB1dDogVGhlIGNsaWVudCBoYXMgYSBoaXN0b3J5IG9mIGFuYXBoeWxhY3RpYyByZWFjdGlvbnMKQHBzZXVkb2NvZGU6ICJQb3RlbnRpYWwgY29udHJhaW5kaWNhdGlvbnMiID0gIkhpc3Rvcnkgb2YgYW5hcGh5bGFjdGljIHJlYWN0aW9ucyIKQGNvZGU6IFRoZSBjbGllbnQgaGFzIGEgaGlzdG9yeSBvZiBhbmFwaHlsYWN0aWMgcmVhY3Rpb25zLTY3CkBkZWNpc2lvbjogSU1NWi5ENS5EVC5QbmV1bW9jb2NjYWwgY29udHJhaW5kaWNhdGlvbnMKKi8KZGVmaW5lICJUaGUgY2xpZW50IGhhcyBhIGhpc3Rvcnkgb2YgYW5hcGh5bGFjdGljIHJlYWN0aW9ucyI6CiAgRWxlbWVudHMuIlRoZSBjbGllbnQgaGFzIGhpc3Rvcnkgb2YgYW5hcGh5bGFjdGljIHJlYWN0aW9ucyIKCi8qCkBpbnB1dDogVGhlIGNsaWVudCBoYXMgYSBoaXN0b3J5IG9mIHNldmVyZSBhbGxlcmdpYyByZWFjdGlvbnMKQHBzZXVkb2NvZGU6ICJQb3RlbnRpYWwgY29udHJhaW5kaWNhdGlvbnMiID0gIlNldmVyZSBhbGxlcmdpYyByZWFjdGlvbnMiCkBjb2RlOiBUaGUgY2xpZW50IGhhcyBhIGhpc3Rvcnkgb2Ygc2V2ZXJlIGFsbGVyZ2ljIHJlYWN0aW9ucy01OQpAZGVjaXNpb246IElNTVouRDUuRFQuUG5ldW1vY29jY2FsIGNvbnRyYWluZGljYXRpb25zCiovCmRlZmluZSAiVGhlIGNsaWVudCBoYXMgYSBoaXN0b3J5IG9mIHNldmVyZSBhbGxlcmdpYyByZWFjdGlvbnMiOgogIEVsZW1lbnRzLiJUaGUgY2xpZW50IGhhcyBoaXN0b3J5IG9mIHNldmVyZSBhbGxlcmdpYyByZWFjdGlvbnMiCg=="
  }]
}

```
