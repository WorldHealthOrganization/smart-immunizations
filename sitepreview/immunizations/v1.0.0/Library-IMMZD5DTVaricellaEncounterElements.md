# IMMZD5DTVaricellaEncounterElements - WHO Immunization Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD5DTVaricellaEncounterElements**

## Library: IMMZD5DTVaricellaEncounterElements 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Library/IMMZD5DTVaricellaEncounterElements | *Version*:1.0.0 |
| Draft as of 2026-04-09 | *Computable Name*:IMMZD5DTVaricellaEncounterElements |

 
This library defines encounter-based elements for Varicella used throughout the Immunization CPG 

* * **Content: **text/cql: ```` /* * Library: IMMZD5DTVaricellaEncounterElements */ library IMMZD5DTVaricellaEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTVaricellaElements called VaricellaElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for Varicella dose */ define "Draft Medication Request for Varicella dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."Varicella-containing vaccines" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.Varicella contraindications */ define "The client is currently pregnant": Encounter."The client is pregnant" /* @input: The client is planning to get pregnant in the next month @pseudocode: "Potential contraindications" = "Planning to get pregnant in the next month" @code: The client is planning to get pregnant in the next month-76 @decision: IMMZ.D5.DT.Varicella contraindications */ define "The client is planning to get pregnant in the next month": Encounter."The client is planning to get pregnant in next month" /* @input: The client has immune deficiency @pseudocode: "Potential contraindications" = "Immunodeficiency syndromes" @code: The client has immune deficiency-60 @decision: IMMZ.D5.DT.Varicella contraindications */ define "The client has immune deficiency": Encounter."The client has immunodeficiency syndromes" /* @input: The client is immunocompromised @pseudocode: "Potential contraindications" = "Immunocompromised" @code: The client is immunocompromised-51 @decision: IMMZ.D5.DT.Varicella contraindications */ define "The client is immunocompromised": Encounter."The client is immunocompromised" /* @input: The client is receiving or has received medications that may be immunosuppressive @pseudocode: "Potential contraindications" = "Exposed to immunosuppressive treatment" @code: The client is receiving or has received medications that may be immunosuppressive-72 @decision: IMMZ.D5.DT.Varicella contraindications */ define "The client is receiving or has received medications that may be immunosuppressive": Encounter."The client is exposed to immunosuppressive treatment" ````: **Id: **
  * ?: IMMZD5DTVaricellaEncounterElements
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTVaricellaEncounterElements */ library IMMZD5DTVaricellaEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTVaricellaElements called VaricellaElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for Varicella dose */ define "Draft Medication Request for Varicella dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."Varicella-containing vaccines" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.Varicella contraindications */ define "The client is currently pregnant": Encounter."The client is pregnant" /* @input: The client is planning to get pregnant in the next month @pseudocode: "Potential contraindications" = "Planning to get pregnant in the next month" @code: The client is planning to get pregnant in the next month-76 @decision: IMMZ.D5.DT.Varicella contraindications */ define "The client is planning to get pregnant in the next month": Encounter."The client is planning to get pregnant in next month" /* @input: The client has immune deficiency @pseudocode: "Potential contraindications" = "Immunodeficiency syndromes" @code: The client has immune deficiency-60 @decision: IMMZ.D5.DT.Varicella contraindications */ define "The client has immune deficiency": Encounter."The client has immunodeficiency syndromes" /* @input: The client is immunocompromised @pseudocode: "Potential contraindications" = "Immunocompromised" @code: The client is immunocompromised-51 @decision: IMMZ.D5.DT.Varicella contraindications */ define "The client is immunocompromised": Encounter."The client is immunocompromised" /* @input: The client is receiving or has received medications that may be immunosuppressive @pseudocode: "Potential contraindications" = "Exposed to immunosuppressive treatment" @code: The client is receiving or has received medications that may be immunosuppressive-72 @decision: IMMZ.D5.DT.Varicella contraindications */ define "The client is receiving or has received medications that may be immunosuppressive": Encounter."The client is exposed to immunosuppressive treatment" ````: **Version: **
  * ?: 1.0.0
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTVaricellaEncounterElements */ library IMMZD5DTVaricellaEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTVaricellaElements called VaricellaElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for Varicella dose */ define "Draft Medication Request for Varicella dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."Varicella-containing vaccines" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.Varicella contraindications */ define "The client is currently pregnant": Encounter."The client is pregnant" /* @input: The client is planning to get pregnant in the next month @pseudocode: "Potential contraindications" = "Planning to get pregnant in the next month" @code: The client is planning to get pregnant in the next month-76 @decision: IMMZ.D5.DT.Varicella contraindications */ define "The client is planning to get pregnant in the next month": Encounter."The client is planning to get pregnant in next month" /* @input: The client has immune deficiency @pseudocode: "Potential contraindications" = "Immunodeficiency syndromes" @code: The client has immune deficiency-60 @decision: IMMZ.D5.DT.Varicella contraindications */ define "The client has immune deficiency": Encounter."The client has immunodeficiency syndromes" /* @input: The client is immunocompromised @pseudocode: "Potential contraindications" = "Immunocompromised" @code: The client is immunocompromised-51 @decision: IMMZ.D5.DT.Varicella contraindications */ define "The client is immunocompromised": Encounter."The client is immunocompromised" /* @input: The client is receiving or has received medications that may be immunosuppressive @pseudocode: "Potential contraindications" = "Exposed to immunosuppressive treatment" @code: The client is receiving or has received medications that may be immunosuppressive-72 @decision: IMMZ.D5.DT.Varicella contraindications */ define "The client is receiving or has received medications that may be immunosuppressive": Encounter."The client is exposed to immunosuppressive treatment" ````: **Url: **
  * ?: [IMMZD5DTVaricellaEncounterElements](Library-IMMZD5DTVaricellaEncounterElements.md)
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTVaricellaEncounterElements */ library IMMZD5DTVaricellaEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTVaricellaElements called VaricellaElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for Varicella dose */ define "Draft Medication Request for Varicella dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."Varicella-containing vaccines" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.Varicella contraindications */ define "The client is currently pregnant": Encounter."The client is pregnant" /* @input: The client is planning to get pregnant in the next month @pseudocode: "Potential contraindications" = "Planning to get pregnant in the next month" @code: The client is planning to get pregnant in the next month-76 @decision: IMMZ.D5.DT.Varicella contraindications */ define "The client is planning to get pregnant in the next month": Encounter."The client is planning to get pregnant in next month" /* @input: The client has immune deficiency @pseudocode: "Potential contraindications" = "Immunodeficiency syndromes" @code: The client has immune deficiency-60 @decision: IMMZ.D5.DT.Varicella contraindications */ define "The client has immune deficiency": Encounter."The client has immunodeficiency syndromes" /* @input: The client is immunocompromised @pseudocode: "Potential contraindications" = "Immunocompromised" @code: The client is immunocompromised-51 @decision: IMMZ.D5.DT.Varicella contraindications */ define "The client is immunocompromised": Encounter."The client is immunocompromised" /* @input: The client is receiving or has received medications that may be immunosuppressive @pseudocode: "Potential contraindications" = "Exposed to immunosuppressive treatment" @code: The client is receiving or has received medications that may be immunosuppressive-72 @decision: IMMZ.D5.DT.Varicella contraindications */ define "The client is receiving or has received medications that may be immunosuppressive": Encounter."The client is exposed to immunosuppressive treatment" ````: **Status: **
  * ?: draft
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTVaricellaEncounterElements */ library IMMZD5DTVaricellaEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTVaricellaElements called VaricellaElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for Varicella dose */ define "Draft Medication Request for Varicella dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."Varicella-containing vaccines" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.Varicella contraindications */ define "The client is currently pregnant": Encounter."The client is pregnant" /* @input: The client is planning to get pregnant in the next month @pseudocode: "Potential contraindications" = "Planning to get pregnant in the next month" @code: The client is planning to get pregnant in the next month-76 @decision: IMMZ.D5.DT.Varicella contraindications */ define "The client is planning to get pregnant in the next month": Encounter."The client is planning to get pregnant in next month" /* @input: The client has immune deficiency @pseudocode: "Potential contraindications" = "Immunodeficiency syndromes" @code: The client has immune deficiency-60 @decision: IMMZ.D5.DT.Varicella contraindications */ define "The client has immune deficiency": Encounter."The client has immunodeficiency syndromes" /* @input: The client is immunocompromised @pseudocode: "Potential contraindications" = "Immunocompromised" @code: The client is immunocompromised-51 @decision: IMMZ.D5.DT.Varicella contraindications */ define "The client is immunocompromised": Encounter."The client is immunocompromised" /* @input: The client is receiving or has received medications that may be immunosuppressive @pseudocode: "Potential contraindications" = "Exposed to immunosuppressive treatment" @code: The client is receiving or has received medications that may be immunosuppressive-72 @decision: IMMZ.D5.DT.Varicella contraindications */ define "The client is receiving or has received medications that may be immunosuppressive": Encounter."The client is exposed to immunosuppressive treatment" ````: **Date: **
  * ?: 2026-04-09 14:18:30+0000
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTVaricellaEncounterElements */ library IMMZD5DTVaricellaEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTVaricellaElements called VaricellaElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for Varicella dose */ define "Draft Medication Request for Varicella dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."Varicella-containing vaccines" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.Varicella contraindications */ define "The client is currently pregnant": Encounter."The client is pregnant" /* @input: The client is planning to get pregnant in the next month @pseudocode: "Potential contraindications" = "Planning to get pregnant in the next month" @code: The client is planning to get pregnant in the next month-76 @decision: IMMZ.D5.DT.Varicella contraindications */ define "The client is planning to get pregnant in the next month": Encounter."The client is planning to get pregnant in next month" /* @input: The client has immune deficiency @pseudocode: "Potential contraindications" = "Immunodeficiency syndromes" @code: The client has immune deficiency-60 @decision: IMMZ.D5.DT.Varicella contraindications */ define "The client has immune deficiency": Encounter."The client has immunodeficiency syndromes" /* @input: The client is immunocompromised @pseudocode: "Potential contraindications" = "Immunocompromised" @code: The client is immunocompromised-51 @decision: IMMZ.D5.DT.Varicella contraindications */ define "The client is immunocompromised": Encounter."The client is immunocompromised" /* @input: The client is receiving or has received medications that may be immunosuppressive @pseudocode: "Potential contraindications" = "Exposed to immunosuppressive treatment" @code: The client is receiving or has received medications that may be immunosuppressive-72 @decision: IMMZ.D5.DT.Varicella contraindications */ define "The client is receiving or has received medications that may be immunosuppressive": Encounter."The client is exposed to immunosuppressive treatment" ````: **Publisher: **
  * ?: WHO
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTVaricellaEncounterElements */ library IMMZD5DTVaricellaEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTVaricellaElements called VaricellaElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for Varicella dose */ define "Draft Medication Request for Varicella dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."Varicella-containing vaccines" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.Varicella contraindications */ define "The client is currently pregnant": Encounter."The client is pregnant" /* @input: The client is planning to get pregnant in the next month @pseudocode: "Potential contraindications" = "Planning to get pregnant in the next month" @code: The client is planning to get pregnant in the next month-76 @decision: IMMZ.D5.DT.Varicella contraindications */ define "The client is planning to get pregnant in the next month": Encounter."The client is planning to get pregnant in next month" /* @input: The client has immune deficiency @pseudocode: "Potential contraindications" = "Immunodeficiency syndromes" @code: The client has immune deficiency-60 @decision: IMMZ.D5.DT.Varicella contraindications */ define "The client has immune deficiency": Encounter."The client has immunodeficiency syndromes" /* @input: The client is immunocompromised @pseudocode: "Potential contraindications" = "Immunocompromised" @code: The client is immunocompromised-51 @decision: IMMZ.D5.DT.Varicella contraindications */ define "The client is immunocompromised": Encounter."The client is immunocompromised" /* @input: The client is receiving or has received medications that may be immunosuppressive @pseudocode: "Potential contraindications" = "Exposed to immunosuppressive treatment" @code: The client is receiving or has received medications that may be immunosuppressive-72 @decision: IMMZ.D5.DT.Varicella contraindications */ define "The client is receiving or has received medications that may be immunosuppressive": Encounter."The client is exposed to immunosuppressive treatment" ````: **Description: **
  * ?: This library defines encounter-based elements for Varicella used throughout the Immunization CPG



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "IMMZD5DTVaricellaEncounterElements",
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
  "url" : "http://smart.who.int/immunizations/Library/IMMZD5DTVaricellaEncounterElements",
  "version" : "1.0.0",
  "name" : "IMMZD5DTVaricellaEncounterElements",
  "title" : "IMMZD5DTVaricellaEncounterElements",
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
  "description" : "This library defines encounter-based elements for Varicella used throughout the Immunization CPG",
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
    "display" : "Library VaricellaElements",
    "resource" : "http://smart.who.int/immunizations/Library/IMMZD5DTVaricellaElements"
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
    "name" : "Draft Medication Request for Varicella dose",
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
    "name" : "The client is planning to get pregnant in the next month",
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
    "name" : "The client is immunocompromised",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "The client is receiving or has received medications that may be immunosuppressive",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  }],
  "content" : [{
    "contentType" : "text/cql",
    "data" : "Ci8qCiAgKiBMaWJyYXJ5OiBJTU1aRDVEVFZhcmljZWxsYUVuY291bnRlckVsZW1lbnRzCiAgKi8KbGlicmFyeSBJTU1aRDVEVFZhcmljZWxsYUVuY291bnRlckVsZW1lbnRzCgp1c2luZyBGSElSIHZlcnNpb24gJzQuMC4xJwppbmNsdWRlIEZISVJIZWxwZXJzIHZlcnNpb24gJzQuMC4xJwoKaW5jbHVkZSBXSE9Db25jZXB0cwppbmNsdWRlIFdIT0NvbW1vbiBjYWxsZWQgV0MKaW5jbHVkZSBXSE9FbGVtZW50cyBjYWxsZWQgV0UKCmluY2x1ZGUgSU1NWkNvbW1vbiBjYWxsZWQgQ29tbW9uCmluY2x1ZGUgSU1NWkNvbmNlcHRzIGNhbGxlZCBDb25jZXB0cwppbmNsdWRlIElNTVpFbmNvdW50ZXJFbGVtZW50cyBjYWxsZWQgRW5jb3VudGVyCgppbmNsdWRlIElNTVpENURUVmFyaWNlbGxhRWxlbWVudHMgY2FsbGVkIFZhcmljZWxsYUVsZW1lbnRzCgpwYXJhbWV0ZXIgVG9kYXkgRGF0ZSBkZWZhdWx0IFRvZGF5KCkKcGFyYW1ldGVyIEVuY291bnRlcklkIFN0cmluZwoKY29udGV4dCBQYXRpZW50CgovKgpAaW50ZXJuYWw6IERyYWZ0IE1lZGljYXRpb24gUmVxdWVzdCBmb3IgVmFyaWNlbGxhIGRvc2UKKi8KZGVmaW5lICJEcmFmdCBNZWRpY2F0aW9uIFJlcXVlc3QgZm9yIFZhcmljZWxsYSBkb3NlIjoKICBFbmNvdW50ZXIuIkRyYWZ0IE1lZGljYXRpb24gUmVxdWVzdCBmb3IgUGF0aWVudCIgTVIKICAgIHdoZXJlIE1SLm1lZGljYXRpb24gaW4gQ29uY2VwdHMuIlZhcmljZWxsYS1jb250YWluaW5nIHZhY2NpbmVzIgoKLyoKQGlucHV0OiBUaGUgY2xpZW50IGlzIGN1cnJlbnRseSBwcmVnbmFudApAcHNldWRvY29kZTogIlBvdGVudGlhbCBjb250cmFpbmRpY2F0aW9ucyIgPSAiQ3VycmVudGx5IHByZWduYW50IgpAY29kZTogVGhlIGNsaWVudCBpcyBjdXJyZW50bHkgcHJlZ25hbnQtNTIKQGRlY2lzaW9uOiBJTU1aLkQ1LkRULlZhcmljZWxsYSBjb250cmFpbmRpY2F0aW9ucwoqLwpkZWZpbmUgIlRoZSBjbGllbnQgaXMgY3VycmVudGx5IHByZWduYW50IjoKICBFbmNvdW50ZXIuIlRoZSBjbGllbnQgaXMgcHJlZ25hbnQiCgovKgpAaW5wdXQ6IFRoZSBjbGllbnQgaXMgcGxhbm5pbmcgdG8gZ2V0IHByZWduYW50IGluIHRoZSBuZXh0IG1vbnRoCkBwc2V1ZG9jb2RlOiAiUG90ZW50aWFsIGNvbnRyYWluZGljYXRpb25zIiA9ICJQbGFubmluZyB0byBnZXQgcHJlZ25hbnQgaW4gdGhlIG5leHQgbW9udGgiCkBjb2RlOiBUaGUgY2xpZW50IGlzIHBsYW5uaW5nIHRvIGdldCBwcmVnbmFudCBpbiB0aGUgbmV4dCBtb250aC03NgpAZGVjaXNpb246IElNTVouRDUuRFQuVmFyaWNlbGxhIGNvbnRyYWluZGljYXRpb25zCiovCmRlZmluZSAiVGhlIGNsaWVudCBpcyBwbGFubmluZyB0byBnZXQgcHJlZ25hbnQgaW4gdGhlIG5leHQgbW9udGgiOgogIEVuY291bnRlci4iVGhlIGNsaWVudCBpcyBwbGFubmluZyB0byBnZXQgcHJlZ25hbnQgaW4gbmV4dCBtb250aCIKCi8qCkBpbnB1dDogVGhlIGNsaWVudCBoYXMgaW1tdW5lIGRlZmljaWVuY3kKQHBzZXVkb2NvZGU6ICJQb3RlbnRpYWwgY29udHJhaW5kaWNhdGlvbnMiID0gIkltbXVub2RlZmljaWVuY3kgc3luZHJvbWVzIgpAY29kZTogVGhlIGNsaWVudCBoYXMgaW1tdW5lIGRlZmljaWVuY3ktNjAKQGRlY2lzaW9uOiBJTU1aLkQ1LkRULlZhcmljZWxsYSBjb250cmFpbmRpY2F0aW9ucwoqLwpkZWZpbmUgIlRoZSBjbGllbnQgaGFzIGltbXVuZSBkZWZpY2llbmN5IjoKICBFbmNvdW50ZXIuIlRoZSBjbGllbnQgaGFzIGltbXVub2RlZmljaWVuY3kgc3luZHJvbWVzIgoKLyoKQGlucHV0OiBUaGUgY2xpZW50IGlzIGltbXVub2NvbXByb21pc2VkCkBwc2V1ZG9jb2RlOiAiUG90ZW50aWFsIGNvbnRyYWluZGljYXRpb25zIiA9ICJJbW11bm9jb21wcm9taXNlZCIKQGNvZGU6IFRoZSBjbGllbnQgaXMgaW1tdW5vY29tcHJvbWlzZWQtNTEKQGRlY2lzaW9uOiBJTU1aLkQ1LkRULlZhcmljZWxsYSBjb250cmFpbmRpY2F0aW9ucwoqLwpkZWZpbmUgIlRoZSBjbGllbnQgaXMgaW1tdW5vY29tcHJvbWlzZWQiOgogIEVuY291bnRlci4iVGhlIGNsaWVudCBpcyBpbW11bm9jb21wcm9taXNlZCIKCi8qCkBpbnB1dDogVGhlIGNsaWVudCBpcyByZWNlaXZpbmcgb3IgaGFzIHJlY2VpdmVkIG1lZGljYXRpb25zIHRoYXQgbWF5IGJlIGltbXVub3N1cHByZXNzaXZlCkBwc2V1ZG9jb2RlOiAiUG90ZW50aWFsIGNvbnRyYWluZGljYXRpb25zIiA9ICJFeHBvc2VkIHRvIGltbXVub3N1cHByZXNzaXZlIHRyZWF0bWVudCIKQGNvZGU6IFRoZSBjbGllbnQgaXMgcmVjZWl2aW5nIG9yIGhhcyByZWNlaXZlZCBtZWRpY2F0aW9ucyB0aGF0IG1heSBiZSBpbW11bm9zdXBwcmVzc2l2ZS03MgpAZGVjaXNpb246IElNTVouRDUuRFQuVmFyaWNlbGxhIGNvbnRyYWluZGljYXRpb25zCiovCmRlZmluZSAiVGhlIGNsaWVudCBpcyByZWNlaXZpbmcgb3IgaGFzIHJlY2VpdmVkIG1lZGljYXRpb25zIHRoYXQgbWF5IGJlIGltbXVub3N1cHByZXNzaXZlIjoKICBFbmNvdW50ZXIuIlRoZSBjbGllbnQgaXMgZXhwb3NlZCB0byBpbW11bm9zdXBwcmVzc2l2ZSB0cmVhdG1lbnQiCg=="
  }]
}

```
