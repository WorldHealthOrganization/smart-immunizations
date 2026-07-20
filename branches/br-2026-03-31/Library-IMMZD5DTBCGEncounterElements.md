# IMMZD5DTBCGEncounterElements - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD5DTBCGEncounterElements**

## Library: IMMZD5DTBCGEncounterElements 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Library/IMMZD5DTBCGEncounterElements | *Version*:0.2.0 |
| Draft as of 2026-03-31 | *Computable Name*:IMMZD5DTBCGEncounterElements |

 
This library defines encounter-based elements for BCG used throughout the Immunization CPG 

* * **Content: **text/cql: ```` /* * Library: IMMZD5DTBCGEncounterElements */ library IMMZD5DTBCGEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTBCGElements called BCGElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for BCG dose */ define "Draft Medication Request for BCG dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."BCG vaccines" /* @input: The client is pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is pregnant-52 @decision: IMMZ.D5.DT.BCG contraindications */ define "The client is pregnant": Encounter."The client is pregnant" /* @input: The client has history of severe allergic reactions @pseudocode: '"Potential contraindications" = "Severe allergic reactions" @code: The client has history of severe allergic reactions-60 @decision: IMMZ.D5.DT.BCG contraindications */ define "The client has history of severe allergic reactions": Encounter."The client has history of severe allergic reactions" /* @input: The client has immunodeficiency syndromes @pseudocode: "Potential contraindications" = "Immunodeficiency syndromes" @code: The client has immunodeficiency syndromes-60 @decision: IMMZ.D5.DT.BCG contraindications */ define "The client has immunodeficiency syndromes": Encounter."The client has immunodeficiency syndromes" /* @input: The client is exposed to immunosuppressive treatment @pseudocode: "Potential contraindications" = "Exposed to immunosuppressive treatment" @code: The client is exposed to immunosuppressive treatment-72 @decision: IMMZ.D5.DT.BCG contraindications */ define "The client is exposed to immunosuppressive treatment": Encounter."The client is exposed to immunosuppressive treatment" /* @input: Client's age is less than 1 year @pseudocode: "Age" < 1 year @code: Client's age is less than 1 year-14 @decision: IMMZ.D5.DT.BCG contraindications */ define "Client's age is less than 1 year": Encounter."Current Patient Age In Years" < 1 /* @input: Client's age is more than or equal to 1 year @pseudocode: "Age" ≥ 1 year @code: Client's age is more than or equal to 1 year-14 @decision: IMMZ.D5.DT.BCG contraindications */ define "Client's age is more than or equal to 1 year": Encounter."Current Patient Age In Years" >= 1 ````: **Id: **
  * ?: IMMZD5DTBCGEncounterElements
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTBCGEncounterElements */ library IMMZD5DTBCGEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTBCGElements called BCGElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for BCG dose */ define "Draft Medication Request for BCG dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."BCG vaccines" /* @input: The client is pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is pregnant-52 @decision: IMMZ.D5.DT.BCG contraindications */ define "The client is pregnant": Encounter."The client is pregnant" /* @input: The client has history of severe allergic reactions @pseudocode: '"Potential contraindications" = "Severe allergic reactions" @code: The client has history of severe allergic reactions-60 @decision: IMMZ.D5.DT.BCG contraindications */ define "The client has history of severe allergic reactions": Encounter."The client has history of severe allergic reactions" /* @input: The client has immunodeficiency syndromes @pseudocode: "Potential contraindications" = "Immunodeficiency syndromes" @code: The client has immunodeficiency syndromes-60 @decision: IMMZ.D5.DT.BCG contraindications */ define "The client has immunodeficiency syndromes": Encounter."The client has immunodeficiency syndromes" /* @input: The client is exposed to immunosuppressive treatment @pseudocode: "Potential contraindications" = "Exposed to immunosuppressive treatment" @code: The client is exposed to immunosuppressive treatment-72 @decision: IMMZ.D5.DT.BCG contraindications */ define "The client is exposed to immunosuppressive treatment": Encounter."The client is exposed to immunosuppressive treatment" /* @input: Client's age is less than 1 year @pseudocode: "Age" < 1 year @code: Client's age is less than 1 year-14 @decision: IMMZ.D5.DT.BCG contraindications */ define "Client's age is less than 1 year": Encounter."Current Patient Age In Years" < 1 /* @input: Client's age is more than or equal to 1 year @pseudocode: "Age" ≥ 1 year @code: Client's age is more than or equal to 1 year-14 @decision: IMMZ.D5.DT.BCG contraindications */ define "Client's age is more than or equal to 1 year": Encounter."Current Patient Age In Years" >= 1 ````: **Version: **
  * ?: 0.2.0
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTBCGEncounterElements */ library IMMZD5DTBCGEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTBCGElements called BCGElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for BCG dose */ define "Draft Medication Request for BCG dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."BCG vaccines" /* @input: The client is pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is pregnant-52 @decision: IMMZ.D5.DT.BCG contraindications */ define "The client is pregnant": Encounter."The client is pregnant" /* @input: The client has history of severe allergic reactions @pseudocode: '"Potential contraindications" = "Severe allergic reactions" @code: The client has history of severe allergic reactions-60 @decision: IMMZ.D5.DT.BCG contraindications */ define "The client has history of severe allergic reactions": Encounter."The client has history of severe allergic reactions" /* @input: The client has immunodeficiency syndromes @pseudocode: "Potential contraindications" = "Immunodeficiency syndromes" @code: The client has immunodeficiency syndromes-60 @decision: IMMZ.D5.DT.BCG contraindications */ define "The client has immunodeficiency syndromes": Encounter."The client has immunodeficiency syndromes" /* @input: The client is exposed to immunosuppressive treatment @pseudocode: "Potential contraindications" = "Exposed to immunosuppressive treatment" @code: The client is exposed to immunosuppressive treatment-72 @decision: IMMZ.D5.DT.BCG contraindications */ define "The client is exposed to immunosuppressive treatment": Encounter."The client is exposed to immunosuppressive treatment" /* @input: Client's age is less than 1 year @pseudocode: "Age" < 1 year @code: Client's age is less than 1 year-14 @decision: IMMZ.D5.DT.BCG contraindications */ define "Client's age is less than 1 year": Encounter."Current Patient Age In Years" < 1 /* @input: Client's age is more than or equal to 1 year @pseudocode: "Age" ≥ 1 year @code: Client's age is more than or equal to 1 year-14 @decision: IMMZ.D5.DT.BCG contraindications */ define "Client's age is more than or equal to 1 year": Encounter."Current Patient Age In Years" >= 1 ````: **Url: **
  * ?: [IMMZD5DTBCGEncounterElements](Library-IMMZD5DTBCGEncounterElements.md)
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTBCGEncounterElements */ library IMMZD5DTBCGEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTBCGElements called BCGElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for BCG dose */ define "Draft Medication Request for BCG dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."BCG vaccines" /* @input: The client is pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is pregnant-52 @decision: IMMZ.D5.DT.BCG contraindications */ define "The client is pregnant": Encounter."The client is pregnant" /* @input: The client has history of severe allergic reactions @pseudocode: '"Potential contraindications" = "Severe allergic reactions" @code: The client has history of severe allergic reactions-60 @decision: IMMZ.D5.DT.BCG contraindications */ define "The client has history of severe allergic reactions": Encounter."The client has history of severe allergic reactions" /* @input: The client has immunodeficiency syndromes @pseudocode: "Potential contraindications" = "Immunodeficiency syndromes" @code: The client has immunodeficiency syndromes-60 @decision: IMMZ.D5.DT.BCG contraindications */ define "The client has immunodeficiency syndromes": Encounter."The client has immunodeficiency syndromes" /* @input: The client is exposed to immunosuppressive treatment @pseudocode: "Potential contraindications" = "Exposed to immunosuppressive treatment" @code: The client is exposed to immunosuppressive treatment-72 @decision: IMMZ.D5.DT.BCG contraindications */ define "The client is exposed to immunosuppressive treatment": Encounter."The client is exposed to immunosuppressive treatment" /* @input: Client's age is less than 1 year @pseudocode: "Age" < 1 year @code: Client's age is less than 1 year-14 @decision: IMMZ.D5.DT.BCG contraindications */ define "Client's age is less than 1 year": Encounter."Current Patient Age In Years" < 1 /* @input: Client's age is more than or equal to 1 year @pseudocode: "Age" ≥ 1 year @code: Client's age is more than or equal to 1 year-14 @decision: IMMZ.D5.DT.BCG contraindications */ define "Client's age is more than or equal to 1 year": Encounter."Current Patient Age In Years" >= 1 ````: **Status: **
  * ?: draft
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTBCGEncounterElements */ library IMMZD5DTBCGEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTBCGElements called BCGElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for BCG dose */ define "Draft Medication Request for BCG dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."BCG vaccines" /* @input: The client is pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is pregnant-52 @decision: IMMZ.D5.DT.BCG contraindications */ define "The client is pregnant": Encounter."The client is pregnant" /* @input: The client has history of severe allergic reactions @pseudocode: '"Potential contraindications" = "Severe allergic reactions" @code: The client has history of severe allergic reactions-60 @decision: IMMZ.D5.DT.BCG contraindications */ define "The client has history of severe allergic reactions": Encounter."The client has history of severe allergic reactions" /* @input: The client has immunodeficiency syndromes @pseudocode: "Potential contraindications" = "Immunodeficiency syndromes" @code: The client has immunodeficiency syndromes-60 @decision: IMMZ.D5.DT.BCG contraindications */ define "The client has immunodeficiency syndromes": Encounter."The client has immunodeficiency syndromes" /* @input: The client is exposed to immunosuppressive treatment @pseudocode: "Potential contraindications" = "Exposed to immunosuppressive treatment" @code: The client is exposed to immunosuppressive treatment-72 @decision: IMMZ.D5.DT.BCG contraindications */ define "The client is exposed to immunosuppressive treatment": Encounter."The client is exposed to immunosuppressive treatment" /* @input: Client's age is less than 1 year @pseudocode: "Age" < 1 year @code: Client's age is less than 1 year-14 @decision: IMMZ.D5.DT.BCG contraindications */ define "Client's age is less than 1 year": Encounter."Current Patient Age In Years" < 1 /* @input: Client's age is more than or equal to 1 year @pseudocode: "Age" ≥ 1 year @code: Client's age is more than or equal to 1 year-14 @decision: IMMZ.D5.DT.BCG contraindications */ define "Client's age is more than or equal to 1 year": Encounter."Current Patient Age In Years" >= 1 ````: **Date: **
  * ?: 2026-03-31 13:43:57+0000
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTBCGEncounterElements */ library IMMZD5DTBCGEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTBCGElements called BCGElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for BCG dose */ define "Draft Medication Request for BCG dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."BCG vaccines" /* @input: The client is pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is pregnant-52 @decision: IMMZ.D5.DT.BCG contraindications */ define "The client is pregnant": Encounter."The client is pregnant" /* @input: The client has history of severe allergic reactions @pseudocode: '"Potential contraindications" = "Severe allergic reactions" @code: The client has history of severe allergic reactions-60 @decision: IMMZ.D5.DT.BCG contraindications */ define "The client has history of severe allergic reactions": Encounter."The client has history of severe allergic reactions" /* @input: The client has immunodeficiency syndromes @pseudocode: "Potential contraindications" = "Immunodeficiency syndromes" @code: The client has immunodeficiency syndromes-60 @decision: IMMZ.D5.DT.BCG contraindications */ define "The client has immunodeficiency syndromes": Encounter."The client has immunodeficiency syndromes" /* @input: The client is exposed to immunosuppressive treatment @pseudocode: "Potential contraindications" = "Exposed to immunosuppressive treatment" @code: The client is exposed to immunosuppressive treatment-72 @decision: IMMZ.D5.DT.BCG contraindications */ define "The client is exposed to immunosuppressive treatment": Encounter."The client is exposed to immunosuppressive treatment" /* @input: Client's age is less than 1 year @pseudocode: "Age" < 1 year @code: Client's age is less than 1 year-14 @decision: IMMZ.D5.DT.BCG contraindications */ define "Client's age is less than 1 year": Encounter."Current Patient Age In Years" < 1 /* @input: Client's age is more than or equal to 1 year @pseudocode: "Age" ≥ 1 year @code: Client's age is more than or equal to 1 year-14 @decision: IMMZ.D5.DT.BCG contraindications */ define "Client's age is more than or equal to 1 year": Encounter."Current Patient Age In Years" >= 1 ````: **Publisher: **
  * ?: WHO
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTBCGEncounterElements */ library IMMZD5DTBCGEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTBCGElements called BCGElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for BCG dose */ define "Draft Medication Request for BCG dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."BCG vaccines" /* @input: The client is pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is pregnant-52 @decision: IMMZ.D5.DT.BCG contraindications */ define "The client is pregnant": Encounter."The client is pregnant" /* @input: The client has history of severe allergic reactions @pseudocode: '"Potential contraindications" = "Severe allergic reactions" @code: The client has history of severe allergic reactions-60 @decision: IMMZ.D5.DT.BCG contraindications */ define "The client has history of severe allergic reactions": Encounter."The client has history of severe allergic reactions" /* @input: The client has immunodeficiency syndromes @pseudocode: "Potential contraindications" = "Immunodeficiency syndromes" @code: The client has immunodeficiency syndromes-60 @decision: IMMZ.D5.DT.BCG contraindications */ define "The client has immunodeficiency syndromes": Encounter."The client has immunodeficiency syndromes" /* @input: The client is exposed to immunosuppressive treatment @pseudocode: "Potential contraindications" = "Exposed to immunosuppressive treatment" @code: The client is exposed to immunosuppressive treatment-72 @decision: IMMZ.D5.DT.BCG contraindications */ define "The client is exposed to immunosuppressive treatment": Encounter."The client is exposed to immunosuppressive treatment" /* @input: Client's age is less than 1 year @pseudocode: "Age" < 1 year @code: Client's age is less than 1 year-14 @decision: IMMZ.D5.DT.BCG contraindications */ define "Client's age is less than 1 year": Encounter."Current Patient Age In Years" < 1 /* @input: Client's age is more than or equal to 1 year @pseudocode: "Age" ≥ 1 year @code: Client's age is more than or equal to 1 year-14 @decision: IMMZ.D5.DT.BCG contraindications */ define "Client's age is more than or equal to 1 year": Encounter."Current Patient Age In Years" >= 1 ````: **Description: **
  * ?: This library defines encounter-based elements for BCG used throughout the Immunization CPG



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "IMMZD5DTBCGEncounterElements",
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
  "url" : "http://smart.who.int/immunizations/Library/IMMZD5DTBCGEncounterElements",
  "version" : "0.2.0",
  "name" : "IMMZD5DTBCGEncounterElements",
  "title" : "IMMZD5DTBCGEncounterElements",
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
  "description" : "This library defines encounter-based elements for BCG used throughout the Immunization CPG",
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
    "display" : "Library BCGElements",
    "resource" : "http://smart.who.int/immunizations/Library/IMMZD5DTBCGElements"
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
    "data" : "Ci8qCiAgKiBMaWJyYXJ5OiBJTU1aRDVEVEJDR0VuY291bnRlckVsZW1lbnRzCiAgKi8KbGlicmFyeSBJTU1aRDVEVEJDR0VuY291bnRlckVsZW1lbnRzCgp1c2luZyBGSElSIHZlcnNpb24gJzQuMC4xJwppbmNsdWRlIEZISVJIZWxwZXJzIHZlcnNpb24gJzQuMC4xJwoKaW5jbHVkZSBXSE9Db25jZXB0cwppbmNsdWRlIFdIT0NvbW1vbiBjYWxsZWQgV0MKaW5jbHVkZSBXSE9FbGVtZW50cyBjYWxsZWQgV0UKCmluY2x1ZGUgSU1NWkNvbW1vbiBjYWxsZWQgQ29tbW9uCmluY2x1ZGUgSU1NWkNvbmNlcHRzIGNhbGxlZCBDb25jZXB0cwppbmNsdWRlIElNTVpFbmNvdW50ZXJFbGVtZW50cyBjYWxsZWQgRW5jb3VudGVyCgppbmNsdWRlIElNTVpENURUQkNHRWxlbWVudHMgY2FsbGVkIEJDR0VsZW1lbnRzCgpwYXJhbWV0ZXIgVG9kYXkgRGF0ZSBkZWZhdWx0IFRvZGF5KCkKcGFyYW1ldGVyIEVuY291bnRlcklkIFN0cmluZwoKY29udGV4dCBQYXRpZW50CgovKgpAaW50ZXJuYWw6IERyYWZ0IE1lZGljYXRpb24gUmVxdWVzdCBmb3IgQkNHIGRvc2UKKi8KZGVmaW5lICJEcmFmdCBNZWRpY2F0aW9uIFJlcXVlc3QgZm9yIEJDRyBkb3NlIjoKICBFbmNvdW50ZXIuIkRyYWZ0IE1lZGljYXRpb24gUmVxdWVzdCBmb3IgUGF0aWVudCIgTVIKICAgIHdoZXJlIE1SLm1lZGljYXRpb24gaW4gQ29uY2VwdHMuIkJDRyB2YWNjaW5lcyIKCi8qCkBpbnB1dDogVGhlIGNsaWVudCBpcyBwcmVnbmFudApAcHNldWRvY29kZTogIlBvdGVudGlhbCBjb250cmFpbmRpY2F0aW9ucyIgPSAiQ3VycmVudGx5IHByZWduYW50IgpAY29kZTogVGhlIGNsaWVudCBpcyBwcmVnbmFudC01MgpAZGVjaXNpb246IElNTVouRDUuRFQuQkNHIGNvbnRyYWluZGljYXRpb25zCiovCmRlZmluZSAiVGhlIGNsaWVudCBpcyBwcmVnbmFudCI6CiAgRW5jb3VudGVyLiJUaGUgY2xpZW50IGlzIHByZWduYW50IgoKLyoKQGlucHV0OiBUaGUgY2xpZW50IGhhcyBoaXN0b3J5IG9mIHNldmVyZSBhbGxlcmdpYyByZWFjdGlvbnMKQHBzZXVkb2NvZGU6ICciUG90ZW50aWFsIGNvbnRyYWluZGljYXRpb25zIiA9ICJTZXZlcmUgYWxsZXJnaWMgcmVhY3Rpb25zIgpAY29kZTogVGhlIGNsaWVudCBoYXMgaGlzdG9yeSBvZiBzZXZlcmUgYWxsZXJnaWMgcmVhY3Rpb25zLTYwCkBkZWNpc2lvbjogSU1NWi5ENS5EVC5CQ0cgY29udHJhaW5kaWNhdGlvbnMKKi8KZGVmaW5lICJUaGUgY2xpZW50IGhhcyBoaXN0b3J5IG9mIHNldmVyZSBhbGxlcmdpYyByZWFjdGlvbnMiOgogIEVuY291bnRlci4iVGhlIGNsaWVudCBoYXMgaGlzdG9yeSBvZiBzZXZlcmUgYWxsZXJnaWMgcmVhY3Rpb25zIgoKLyoKQGlucHV0OiBUaGUgY2xpZW50IGhhcyBpbW11bm9kZWZpY2llbmN5IHN5bmRyb21lcwpAcHNldWRvY29kZTogIlBvdGVudGlhbCBjb250cmFpbmRpY2F0aW9ucyIgPSAiSW1tdW5vZGVmaWNpZW5jeSBzeW5kcm9tZXMiCkBjb2RlOiBUaGUgY2xpZW50IGhhcyBpbW11bm9kZWZpY2llbmN5IHN5bmRyb21lcy02MApAZGVjaXNpb246IElNTVouRDUuRFQuQkNHIGNvbnRyYWluZGljYXRpb25zCiovCmRlZmluZSAiVGhlIGNsaWVudCBoYXMgaW1tdW5vZGVmaWNpZW5jeSBzeW5kcm9tZXMiOgogIEVuY291bnRlci4iVGhlIGNsaWVudCBoYXMgaW1tdW5vZGVmaWNpZW5jeSBzeW5kcm9tZXMiCgovKgpAaW5wdXQ6IFRoZSBjbGllbnQgaXMgZXhwb3NlZCB0byBpbW11bm9zdXBwcmVzc2l2ZSB0cmVhdG1lbnQKQHBzZXVkb2NvZGU6ICJQb3RlbnRpYWwgY29udHJhaW5kaWNhdGlvbnMiID0gIkV4cG9zZWQgdG8gaW1tdW5vc3VwcHJlc3NpdmUgdHJlYXRtZW50IgpAY29kZTogVGhlIGNsaWVudCBpcyBleHBvc2VkIHRvIGltbXVub3N1cHByZXNzaXZlIHRyZWF0bWVudC03MgpAZGVjaXNpb246IElNTVouRDUuRFQuQkNHIGNvbnRyYWluZGljYXRpb25zCiovCmRlZmluZSAiVGhlIGNsaWVudCBpcyBleHBvc2VkIHRvIGltbXVub3N1cHByZXNzaXZlIHRyZWF0bWVudCI6CiAgRW5jb3VudGVyLiJUaGUgY2xpZW50IGlzIGV4cG9zZWQgdG8gaW1tdW5vc3VwcHJlc3NpdmUgdHJlYXRtZW50IgoKLyoKQGlucHV0OiBDbGllbnQncyBhZ2UgaXMgbGVzcyB0aGFuIDEgeWVhcgpAcHNldWRvY29kZTogIkFnZSIgPCAxIHllYXIKQGNvZGU6IENsaWVudCdzIGFnZSBpcyBsZXNzIHRoYW4gMSB5ZWFyLTE0CkBkZWNpc2lvbjogSU1NWi5ENS5EVC5CQ0cgY29udHJhaW5kaWNhdGlvbnMKKi8KZGVmaW5lICJDbGllbnQncyBhZ2UgaXMgbGVzcyB0aGFuIDEgeWVhciI6CiAgRW5jb3VudGVyLiJDdXJyZW50IFBhdGllbnQgQWdlIEluIFllYXJzIiA8IDEKCi8qCkBpbnB1dDogQ2xpZW50J3MgYWdlIGlzIG1vcmUgdGhhbiBvciBlcXVhbCB0byAxIHllYXIKQHBzZXVkb2NvZGU6ICJBZ2UiIOKJpSAxIHllYXIKQGNvZGU6IENsaWVudCdzIGFnZSBpcyBtb3JlIHRoYW4gb3IgZXF1YWwgdG8gMSB5ZWFyLTE0CkBkZWNpc2lvbjogSU1NWi5ENS5EVC5CQ0cgY29udHJhaW5kaWNhdGlvbnMKKi8KZGVmaW5lICJDbGllbnQncyBhZ2UgaXMgbW9yZSB0aGFuIG9yIGVxdWFsIHRvIDEgeWVhciI6CiAgRW5jb3VudGVyLiJDdXJyZW50IFBhdGllbnQgQWdlIEluIFllYXJzIiA+PSAxCg=="
  }]
}

```
