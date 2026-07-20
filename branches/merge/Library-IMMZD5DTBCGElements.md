# IMMZD5DTBCGElements - WHO Immunization Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD5DTBCGElements**

## Library: IMMZD5DTBCGElements 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Library/IMMZD5DTBCGElements | *Version*:1.0.0 |
| Draft as of 2026-03-31 | *Computable Name*:IMMZD5DTBCGElements |

 
This library defines context-independent elements for BCG used throughout the Immunization CPG 

* * **Content: **text/cql: ```` /* * Library: IMMZD5DTBCGElements */ library IMMZD5DTBCGElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for BCG dose */ define "Draft Medication Request for BCG dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."BCG vaccines" /* @input: The client is pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is pregnant-52 @decision: IMMZ.D5.DT.BCG contraindications */ define "The client is pregnant": Elements."The client is pregnant" /* @input: The client has history of severe allergic reactions @pseudocode: '"Potential contraindications" = "Severe allergic reactions" @code: The client has history of severe allergic reactions-60 @decision: IMMZ.D5.DT.BCG contraindications */ define "The client has history of severe allergic reactions": Elements."The client has history of severe allergic reactions" /* @input: The client has immunodeficiency syndromes @pseudocode: "Potential contraindications" = "Immunodeficiency syndromes" @code: The client has immunodeficiency syndromes-60 @decision: IMMZ.D5.DT.BCG contraindications */ define "The client has immunodeficiency syndromes": Elements."The client has immunodeficiency syndromes" /* @input: The client is exposed to immunosuppressive treatment @pseudocode: "Potential contraindications" = "Exposed to immunosuppressive treatment" @code: The client is exposed to immunosuppressive treatment-72 @decision: IMMZ.D5.DT.BCG contraindications */ define "The client is exposed to immunosuppressive treatment": Elements."The client is exposed to immunosuppressive treatment" /* @input: Client's age is less than 1 year @pseudocode: "Age" < 1 year @code: Client's age is less than 1 year-14 @decision: IMMZ.D5.DT.BCG contraindications */ define "Client's age is less than 1 year": Elements."Current Patient Age In Years" < 1 /* @input: Client's age is more than or equal to 1 year @pseudocode: "Age" ≥ 1 year @code: Client's age is more than or equal to 1 year-14 @decision: IMMZ.D5.DT.BCG contraindications */ define "Client's age is more than or equal to 1 year": Elements."Current Patient Age In Years" >= 1 ````: **Id: **
  * ?: IMMZD5DTBCGElements
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTBCGElements */ library IMMZD5DTBCGElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for BCG dose */ define "Draft Medication Request for BCG dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."BCG vaccines" /* @input: The client is pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is pregnant-52 @decision: IMMZ.D5.DT.BCG contraindications */ define "The client is pregnant": Elements."The client is pregnant" /* @input: The client has history of severe allergic reactions @pseudocode: '"Potential contraindications" = "Severe allergic reactions" @code: The client has history of severe allergic reactions-60 @decision: IMMZ.D5.DT.BCG contraindications */ define "The client has history of severe allergic reactions": Elements."The client has history of severe allergic reactions" /* @input: The client has immunodeficiency syndromes @pseudocode: "Potential contraindications" = "Immunodeficiency syndromes" @code: The client has immunodeficiency syndromes-60 @decision: IMMZ.D5.DT.BCG contraindications */ define "The client has immunodeficiency syndromes": Elements."The client has immunodeficiency syndromes" /* @input: The client is exposed to immunosuppressive treatment @pseudocode: "Potential contraindications" = "Exposed to immunosuppressive treatment" @code: The client is exposed to immunosuppressive treatment-72 @decision: IMMZ.D5.DT.BCG contraindications */ define "The client is exposed to immunosuppressive treatment": Elements."The client is exposed to immunosuppressive treatment" /* @input: Client's age is less than 1 year @pseudocode: "Age" < 1 year @code: Client's age is less than 1 year-14 @decision: IMMZ.D5.DT.BCG contraindications */ define "Client's age is less than 1 year": Elements."Current Patient Age In Years" < 1 /* @input: Client's age is more than or equal to 1 year @pseudocode: "Age" ≥ 1 year @code: Client's age is more than or equal to 1 year-14 @decision: IMMZ.D5.DT.BCG contraindications */ define "Client's age is more than or equal to 1 year": Elements."Current Patient Age In Years" >= 1 ````: **Version: **
  * ?: 1.0.0
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTBCGElements */ library IMMZD5DTBCGElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for BCG dose */ define "Draft Medication Request for BCG dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."BCG vaccines" /* @input: The client is pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is pregnant-52 @decision: IMMZ.D5.DT.BCG contraindications */ define "The client is pregnant": Elements."The client is pregnant" /* @input: The client has history of severe allergic reactions @pseudocode: '"Potential contraindications" = "Severe allergic reactions" @code: The client has history of severe allergic reactions-60 @decision: IMMZ.D5.DT.BCG contraindications */ define "The client has history of severe allergic reactions": Elements."The client has history of severe allergic reactions" /* @input: The client has immunodeficiency syndromes @pseudocode: "Potential contraindications" = "Immunodeficiency syndromes" @code: The client has immunodeficiency syndromes-60 @decision: IMMZ.D5.DT.BCG contraindications */ define "The client has immunodeficiency syndromes": Elements."The client has immunodeficiency syndromes" /* @input: The client is exposed to immunosuppressive treatment @pseudocode: "Potential contraindications" = "Exposed to immunosuppressive treatment" @code: The client is exposed to immunosuppressive treatment-72 @decision: IMMZ.D5.DT.BCG contraindications */ define "The client is exposed to immunosuppressive treatment": Elements."The client is exposed to immunosuppressive treatment" /* @input: Client's age is less than 1 year @pseudocode: "Age" < 1 year @code: Client's age is less than 1 year-14 @decision: IMMZ.D5.DT.BCG contraindications */ define "Client's age is less than 1 year": Elements."Current Patient Age In Years" < 1 /* @input: Client's age is more than or equal to 1 year @pseudocode: "Age" ≥ 1 year @code: Client's age is more than or equal to 1 year-14 @decision: IMMZ.D5.DT.BCG contraindications */ define "Client's age is more than or equal to 1 year": Elements."Current Patient Age In Years" >= 1 ````: **Url: **
  * ?: [IMMZD5DTBCGElements](Library-IMMZD5DTBCGElements.md)
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTBCGElements */ library IMMZD5DTBCGElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for BCG dose */ define "Draft Medication Request for BCG dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."BCG vaccines" /* @input: The client is pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is pregnant-52 @decision: IMMZ.D5.DT.BCG contraindications */ define "The client is pregnant": Elements."The client is pregnant" /* @input: The client has history of severe allergic reactions @pseudocode: '"Potential contraindications" = "Severe allergic reactions" @code: The client has history of severe allergic reactions-60 @decision: IMMZ.D5.DT.BCG contraindications */ define "The client has history of severe allergic reactions": Elements."The client has history of severe allergic reactions" /* @input: The client has immunodeficiency syndromes @pseudocode: "Potential contraindications" = "Immunodeficiency syndromes" @code: The client has immunodeficiency syndromes-60 @decision: IMMZ.D5.DT.BCG contraindications */ define "The client has immunodeficiency syndromes": Elements."The client has immunodeficiency syndromes" /* @input: The client is exposed to immunosuppressive treatment @pseudocode: "Potential contraindications" = "Exposed to immunosuppressive treatment" @code: The client is exposed to immunosuppressive treatment-72 @decision: IMMZ.D5.DT.BCG contraindications */ define "The client is exposed to immunosuppressive treatment": Elements."The client is exposed to immunosuppressive treatment" /* @input: Client's age is less than 1 year @pseudocode: "Age" < 1 year @code: Client's age is less than 1 year-14 @decision: IMMZ.D5.DT.BCG contraindications */ define "Client's age is less than 1 year": Elements."Current Patient Age In Years" < 1 /* @input: Client's age is more than or equal to 1 year @pseudocode: "Age" ≥ 1 year @code: Client's age is more than or equal to 1 year-14 @decision: IMMZ.D5.DT.BCG contraindications */ define "Client's age is more than or equal to 1 year": Elements."Current Patient Age In Years" >= 1 ````: **Status: **
  * ?: draft
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTBCGElements */ library IMMZD5DTBCGElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for BCG dose */ define "Draft Medication Request for BCG dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."BCG vaccines" /* @input: The client is pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is pregnant-52 @decision: IMMZ.D5.DT.BCG contraindications */ define "The client is pregnant": Elements."The client is pregnant" /* @input: The client has history of severe allergic reactions @pseudocode: '"Potential contraindications" = "Severe allergic reactions" @code: The client has history of severe allergic reactions-60 @decision: IMMZ.D5.DT.BCG contraindications */ define "The client has history of severe allergic reactions": Elements."The client has history of severe allergic reactions" /* @input: The client has immunodeficiency syndromes @pseudocode: "Potential contraindications" = "Immunodeficiency syndromes" @code: The client has immunodeficiency syndromes-60 @decision: IMMZ.D5.DT.BCG contraindications */ define "The client has immunodeficiency syndromes": Elements."The client has immunodeficiency syndromes" /* @input: The client is exposed to immunosuppressive treatment @pseudocode: "Potential contraindications" = "Exposed to immunosuppressive treatment" @code: The client is exposed to immunosuppressive treatment-72 @decision: IMMZ.D5.DT.BCG contraindications */ define "The client is exposed to immunosuppressive treatment": Elements."The client is exposed to immunosuppressive treatment" /* @input: Client's age is less than 1 year @pseudocode: "Age" < 1 year @code: Client's age is less than 1 year-14 @decision: IMMZ.D5.DT.BCG contraindications */ define "Client's age is less than 1 year": Elements."Current Patient Age In Years" < 1 /* @input: Client's age is more than or equal to 1 year @pseudocode: "Age" ≥ 1 year @code: Client's age is more than or equal to 1 year-14 @decision: IMMZ.D5.DT.BCG contraindications */ define "Client's age is more than or equal to 1 year": Elements."Current Patient Age In Years" >= 1 ````: **Date: **
  * ?: 2026-03-31 13:54:17+0000
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTBCGElements */ library IMMZD5DTBCGElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for BCG dose */ define "Draft Medication Request for BCG dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."BCG vaccines" /* @input: The client is pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is pregnant-52 @decision: IMMZ.D5.DT.BCG contraindications */ define "The client is pregnant": Elements."The client is pregnant" /* @input: The client has history of severe allergic reactions @pseudocode: '"Potential contraindications" = "Severe allergic reactions" @code: The client has history of severe allergic reactions-60 @decision: IMMZ.D5.DT.BCG contraindications */ define "The client has history of severe allergic reactions": Elements."The client has history of severe allergic reactions" /* @input: The client has immunodeficiency syndromes @pseudocode: "Potential contraindications" = "Immunodeficiency syndromes" @code: The client has immunodeficiency syndromes-60 @decision: IMMZ.D5.DT.BCG contraindications */ define "The client has immunodeficiency syndromes": Elements."The client has immunodeficiency syndromes" /* @input: The client is exposed to immunosuppressive treatment @pseudocode: "Potential contraindications" = "Exposed to immunosuppressive treatment" @code: The client is exposed to immunosuppressive treatment-72 @decision: IMMZ.D5.DT.BCG contraindications */ define "The client is exposed to immunosuppressive treatment": Elements."The client is exposed to immunosuppressive treatment" /* @input: Client's age is less than 1 year @pseudocode: "Age" < 1 year @code: Client's age is less than 1 year-14 @decision: IMMZ.D5.DT.BCG contraindications */ define "Client's age is less than 1 year": Elements."Current Patient Age In Years" < 1 /* @input: Client's age is more than or equal to 1 year @pseudocode: "Age" ≥ 1 year @code: Client's age is more than or equal to 1 year-14 @decision: IMMZ.D5.DT.BCG contraindications */ define "Client's age is more than or equal to 1 year": Elements."Current Patient Age In Years" >= 1 ````: **Publisher: **
  * ?: WHO
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTBCGElements */ library IMMZD5DTBCGElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for BCG dose */ define "Draft Medication Request for BCG dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."BCG vaccines" /* @input: The client is pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is pregnant-52 @decision: IMMZ.D5.DT.BCG contraindications */ define "The client is pregnant": Elements."The client is pregnant" /* @input: The client has history of severe allergic reactions @pseudocode: '"Potential contraindications" = "Severe allergic reactions" @code: The client has history of severe allergic reactions-60 @decision: IMMZ.D5.DT.BCG contraindications */ define "The client has history of severe allergic reactions": Elements."The client has history of severe allergic reactions" /* @input: The client has immunodeficiency syndromes @pseudocode: "Potential contraindications" = "Immunodeficiency syndromes" @code: The client has immunodeficiency syndromes-60 @decision: IMMZ.D5.DT.BCG contraindications */ define "The client has immunodeficiency syndromes": Elements."The client has immunodeficiency syndromes" /* @input: The client is exposed to immunosuppressive treatment @pseudocode: "Potential contraindications" = "Exposed to immunosuppressive treatment" @code: The client is exposed to immunosuppressive treatment-72 @decision: IMMZ.D5.DT.BCG contraindications */ define "The client is exposed to immunosuppressive treatment": Elements."The client is exposed to immunosuppressive treatment" /* @input: Client's age is less than 1 year @pseudocode: "Age" < 1 year @code: Client's age is less than 1 year-14 @decision: IMMZ.D5.DT.BCG contraindications */ define "Client's age is less than 1 year": Elements."Current Patient Age In Years" < 1 /* @input: Client's age is more than or equal to 1 year @pseudocode: "Age" ≥ 1 year @code: Client's age is more than or equal to 1 year-14 @decision: IMMZ.D5.DT.BCG contraindications */ define "Client's age is more than or equal to 1 year": Elements."Current Patient Age In Years" >= 1 ````: **Description: **
  * ?: This library defines context-independent elements for BCG used throughout the Immunization CPG



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "IMMZD5DTBCGElements",
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
  "url" : "http://smart.who.int/immunizations/Library/IMMZD5DTBCGElements",
  "version" : "1.0.0",
  "name" : "IMMZD5DTBCGElements",
  "title" : "IMMZD5DTBCGElements",
  "status" : "draft",
  "experimental" : false,
  "type" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/library-type",
      "code" : "logic-library"
    }]
  },
  "date" : "2026-03-31T13:54:17+00:00",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "This library defines context-independent elements for BCG used throughout the Immunization CPG",
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
    "name" : "Draft Medication Request for BCG dose",
    "use" : "out",
    "min" : 0,
    "max" : "*",
    "type" : "MedicationRequest"
  },
  {
    "name" : "The client is pregnant",
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
  },
  {
    "name" : "The client has immunodeficiency syndromes",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "The client is exposed to immunosuppressive treatment",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "Client's age is less than 1 year",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "Client's age is more than or equal to 1 year",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  }],
  "content" : [{
    "contentType" : "text/cql",
    "data" : "Ci8qCiAgKiBMaWJyYXJ5OiBJTU1aRDVEVEJDR0VsZW1lbnRzCiAgKi8KbGlicmFyeSBJTU1aRDVEVEJDR0VsZW1lbnRzCgp1c2luZyBGSElSIHZlcnNpb24gJzQuMC4xJwppbmNsdWRlIEZISVJIZWxwZXJzIHZlcnNpb24gJzQuMC4xJwoKaW5jbHVkZSBXSE9Db25jZXB0cwppbmNsdWRlIFdIT0NvbW1vbiBjYWxsZWQgV0MKaW5jbHVkZSBXSE9FbGVtZW50cyBjYWxsZWQgV0UKCmluY2x1ZGUgSU1NWkNvbW1vbiBjYWxsZWQgQ29tbW9uCmluY2x1ZGUgSU1NWkNvbmNlcHRzIGNhbGxlZCBDb25jZXB0cwppbmNsdWRlIElNTVpFbGVtZW50cyBjYWxsZWQgRWxlbWVudHMKCmNvbnRleHQgUGF0aWVudAoKLyoKQGludGVybmFsOiBEcmFmdCBNZWRpY2F0aW9uIFJlcXVlc3QgZm9yIEJDRyBkb3NlCiovCmRlZmluZSAiRHJhZnQgTWVkaWNhdGlvbiBSZXF1ZXN0IGZvciBCQ0cgZG9zZSI6CiAgRWxlbWVudHMuIkRyYWZ0IE1lZGljYXRpb24gUmVxdWVzdCBmb3IgUGF0aWVudCIgTVIKICAgIHdoZXJlIE1SLm1lZGljYXRpb24gaW4gQ29uY2VwdHMuIkJDRyB2YWNjaW5lcyIKCi8qCkBpbnB1dDogVGhlIGNsaWVudCBpcyBwcmVnbmFudApAcHNldWRvY29kZTogIlBvdGVudGlhbCBjb250cmFpbmRpY2F0aW9ucyIgPSAiQ3VycmVudGx5IHByZWduYW50IgpAY29kZTogVGhlIGNsaWVudCBpcyBwcmVnbmFudC01MgpAZGVjaXNpb246IElNTVouRDUuRFQuQkNHIGNvbnRyYWluZGljYXRpb25zCiovCmRlZmluZSAiVGhlIGNsaWVudCBpcyBwcmVnbmFudCI6CiAgRWxlbWVudHMuIlRoZSBjbGllbnQgaXMgcHJlZ25hbnQiCgovKgpAaW5wdXQ6IFRoZSBjbGllbnQgaGFzIGhpc3Rvcnkgb2Ygc2V2ZXJlIGFsbGVyZ2ljIHJlYWN0aW9ucwpAcHNldWRvY29kZTogJyJQb3RlbnRpYWwgY29udHJhaW5kaWNhdGlvbnMiID0gIlNldmVyZSBhbGxlcmdpYyByZWFjdGlvbnMiCkBjb2RlOiBUaGUgY2xpZW50IGhhcyBoaXN0b3J5IG9mIHNldmVyZSBhbGxlcmdpYyByZWFjdGlvbnMtNjAKQGRlY2lzaW9uOiBJTU1aLkQ1LkRULkJDRyBjb250cmFpbmRpY2F0aW9ucwoqLwpkZWZpbmUgIlRoZSBjbGllbnQgaGFzIGhpc3Rvcnkgb2Ygc2V2ZXJlIGFsbGVyZ2ljIHJlYWN0aW9ucyI6CiAgRWxlbWVudHMuIlRoZSBjbGllbnQgaGFzIGhpc3Rvcnkgb2Ygc2V2ZXJlIGFsbGVyZ2ljIHJlYWN0aW9ucyIKCi8qCkBpbnB1dDogVGhlIGNsaWVudCBoYXMgaW1tdW5vZGVmaWNpZW5jeSBzeW5kcm9tZXMKQHBzZXVkb2NvZGU6ICJQb3RlbnRpYWwgY29udHJhaW5kaWNhdGlvbnMiID0gIkltbXVub2RlZmljaWVuY3kgc3luZHJvbWVzIgpAY29kZTogVGhlIGNsaWVudCBoYXMgaW1tdW5vZGVmaWNpZW5jeSBzeW5kcm9tZXMtNjAKQGRlY2lzaW9uOiBJTU1aLkQ1LkRULkJDRyBjb250cmFpbmRpY2F0aW9ucwoqLwpkZWZpbmUgIlRoZSBjbGllbnQgaGFzIGltbXVub2RlZmljaWVuY3kgc3luZHJvbWVzIjoKICBFbGVtZW50cy4iVGhlIGNsaWVudCBoYXMgaW1tdW5vZGVmaWNpZW5jeSBzeW5kcm9tZXMiCgovKgpAaW5wdXQ6IFRoZSBjbGllbnQgaXMgZXhwb3NlZCB0byBpbW11bm9zdXBwcmVzc2l2ZSB0cmVhdG1lbnQKQHBzZXVkb2NvZGU6ICJQb3RlbnRpYWwgY29udHJhaW5kaWNhdGlvbnMiID0gIkV4cG9zZWQgdG8gaW1tdW5vc3VwcHJlc3NpdmUgdHJlYXRtZW50IgpAY29kZTogVGhlIGNsaWVudCBpcyBleHBvc2VkIHRvIGltbXVub3N1cHByZXNzaXZlIHRyZWF0bWVudC03MgpAZGVjaXNpb246IElNTVouRDUuRFQuQkNHIGNvbnRyYWluZGljYXRpb25zCiovCmRlZmluZSAiVGhlIGNsaWVudCBpcyBleHBvc2VkIHRvIGltbXVub3N1cHByZXNzaXZlIHRyZWF0bWVudCI6CiAgRWxlbWVudHMuIlRoZSBjbGllbnQgaXMgZXhwb3NlZCB0byBpbW11bm9zdXBwcmVzc2l2ZSB0cmVhdG1lbnQiCgovKgpAaW5wdXQ6IENsaWVudCdzIGFnZSBpcyBsZXNzIHRoYW4gMSB5ZWFyCkBwc2V1ZG9jb2RlOiAiQWdlIiA8IDEgeWVhcgpAY29kZTogQ2xpZW50J3MgYWdlIGlzIGxlc3MgdGhhbiAxIHllYXItMTQKQGRlY2lzaW9uOiBJTU1aLkQ1LkRULkJDRyBjb250cmFpbmRpY2F0aW9ucwoqLwpkZWZpbmUgIkNsaWVudCdzIGFnZSBpcyBsZXNzIHRoYW4gMSB5ZWFyIjoKICBFbGVtZW50cy4iQ3VycmVudCBQYXRpZW50IEFnZSBJbiBZZWFycyIgPCAxCgovKgpAaW5wdXQ6IENsaWVudCdzIGFnZSBpcyBtb3JlIHRoYW4gb3IgZXF1YWwgdG8gMSB5ZWFyCkBwc2V1ZG9jb2RlOiAiQWdlIiDiiaUgMSB5ZWFyCkBjb2RlOiBDbGllbnQncyBhZ2UgaXMgbW9yZSB0aGFuIG9yIGVxdWFsIHRvIDEgeWVhci0xNApAZGVjaXNpb246IElNTVouRDUuRFQuQkNHIGNvbnRyYWluZGljYXRpb25zCiovCmRlZmluZSAiQ2xpZW50J3MgYWdlIGlzIG1vcmUgdGhhbiBvciBlcXVhbCB0byAxIHllYXIiOgogIEVsZW1lbnRzLiJDdXJyZW50IFBhdGllbnQgQWdlIEluIFllYXJzIiA+PSAxCg=="
  }]
}

```
