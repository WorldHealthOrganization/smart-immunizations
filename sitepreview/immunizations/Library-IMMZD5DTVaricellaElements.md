# IMMZD5DTVaricellaElements - WHO Immunization Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD5DTVaricellaElements**

## Library: IMMZD5DTVaricellaElements 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Library/IMMZD5DTVaricellaElements | *Version*:1.0.0 |
| Draft as of 2026-04-09 | *Computable Name*:IMMZD5DTVaricellaElements |

 
This library defines context-independent elements for Varicella used throughout the Immunization CPG 

* * **Content: **text/cql: ```` /* * Library: IMMZD5DTVaricellaElements */ library IMMZD5DTVaricellaElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for Varicella dose */ define "Draft Medication Request for Varicella dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."Varicella-containing vaccines" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.Varicella contraindications */ define "The client is currently pregnant": Elements."The client is pregnant" /* @input: The client is planning to get pregnant in the next month @pseudocode: "Potential contraindications" = "Planning to get pregnant in the next month" @code: The client is planning to get pregnant in the next month-76 @decision: IMMZ.D5.DT.Varicella contraindications */ define "The client is planning to get pregnant in the next month": Elements."The client is planning to get pregnant in next month" /* @input: The client has immune deficiency @pseudocode: "Potential contraindications" = "Immunodeficiency syndromes" @code: The client has immune deficiency-60 @decision: IMMZ.D5.DT.Varicella contraindications */ define "The client has immune deficiency": Elements."The client has immunodeficiency syndromes" /* @input: The client is immunocompromised @pseudocode: "Potential contraindications" = "Immunocompromised" @code: The client is immunocompromised-51 @decision: IMMZ.D5.DT.Varicella contraindications */ define "The client is immunocompromised": Elements."The client is immunocompromised" /* @input: The client is receiving or has received medications that may be immunosuppressive @pseudocode: "Potential contraindications" = "Exposed to immunosuppressive treatment" @code: The client is receiving or has received medications that may be immunosuppressive-72 @decision: IMMZ.D5.DT.Varicella contraindications */ define "The client is receiving or has received medications that may be immunosuppressive": Elements."The client is exposed to immunosuppressive treatment" ````: **Id: **
  * ?: IMMZD5DTVaricellaElements
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTVaricellaElements */ library IMMZD5DTVaricellaElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for Varicella dose */ define "Draft Medication Request for Varicella dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."Varicella-containing vaccines" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.Varicella contraindications */ define "The client is currently pregnant": Elements."The client is pregnant" /* @input: The client is planning to get pregnant in the next month @pseudocode: "Potential contraindications" = "Planning to get pregnant in the next month" @code: The client is planning to get pregnant in the next month-76 @decision: IMMZ.D5.DT.Varicella contraindications */ define "The client is planning to get pregnant in the next month": Elements."The client is planning to get pregnant in next month" /* @input: The client has immune deficiency @pseudocode: "Potential contraindications" = "Immunodeficiency syndromes" @code: The client has immune deficiency-60 @decision: IMMZ.D5.DT.Varicella contraindications */ define "The client has immune deficiency": Elements."The client has immunodeficiency syndromes" /* @input: The client is immunocompromised @pseudocode: "Potential contraindications" = "Immunocompromised" @code: The client is immunocompromised-51 @decision: IMMZ.D5.DT.Varicella contraindications */ define "The client is immunocompromised": Elements."The client is immunocompromised" /* @input: The client is receiving or has received medications that may be immunosuppressive @pseudocode: "Potential contraindications" = "Exposed to immunosuppressive treatment" @code: The client is receiving or has received medications that may be immunosuppressive-72 @decision: IMMZ.D5.DT.Varicella contraindications */ define "The client is receiving or has received medications that may be immunosuppressive": Elements."The client is exposed to immunosuppressive treatment" ````: **Version: **
  * ?: 1.0.0
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTVaricellaElements */ library IMMZD5DTVaricellaElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for Varicella dose */ define "Draft Medication Request for Varicella dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."Varicella-containing vaccines" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.Varicella contraindications */ define "The client is currently pregnant": Elements."The client is pregnant" /* @input: The client is planning to get pregnant in the next month @pseudocode: "Potential contraindications" = "Planning to get pregnant in the next month" @code: The client is planning to get pregnant in the next month-76 @decision: IMMZ.D5.DT.Varicella contraindications */ define "The client is planning to get pregnant in the next month": Elements."The client is planning to get pregnant in next month" /* @input: The client has immune deficiency @pseudocode: "Potential contraindications" = "Immunodeficiency syndromes" @code: The client has immune deficiency-60 @decision: IMMZ.D5.DT.Varicella contraindications */ define "The client has immune deficiency": Elements."The client has immunodeficiency syndromes" /* @input: The client is immunocompromised @pseudocode: "Potential contraindications" = "Immunocompromised" @code: The client is immunocompromised-51 @decision: IMMZ.D5.DT.Varicella contraindications */ define "The client is immunocompromised": Elements."The client is immunocompromised" /* @input: The client is receiving or has received medications that may be immunosuppressive @pseudocode: "Potential contraindications" = "Exposed to immunosuppressive treatment" @code: The client is receiving or has received medications that may be immunosuppressive-72 @decision: IMMZ.D5.DT.Varicella contraindications */ define "The client is receiving or has received medications that may be immunosuppressive": Elements."The client is exposed to immunosuppressive treatment" ````: **Url: **
  * ?: [IMMZD5DTVaricellaElements](Library-IMMZD5DTVaricellaElements.md)
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTVaricellaElements */ library IMMZD5DTVaricellaElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for Varicella dose */ define "Draft Medication Request for Varicella dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."Varicella-containing vaccines" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.Varicella contraindications */ define "The client is currently pregnant": Elements."The client is pregnant" /* @input: The client is planning to get pregnant in the next month @pseudocode: "Potential contraindications" = "Planning to get pregnant in the next month" @code: The client is planning to get pregnant in the next month-76 @decision: IMMZ.D5.DT.Varicella contraindications */ define "The client is planning to get pregnant in the next month": Elements."The client is planning to get pregnant in next month" /* @input: The client has immune deficiency @pseudocode: "Potential contraindications" = "Immunodeficiency syndromes" @code: The client has immune deficiency-60 @decision: IMMZ.D5.DT.Varicella contraindications */ define "The client has immune deficiency": Elements."The client has immunodeficiency syndromes" /* @input: The client is immunocompromised @pseudocode: "Potential contraindications" = "Immunocompromised" @code: The client is immunocompromised-51 @decision: IMMZ.D5.DT.Varicella contraindications */ define "The client is immunocompromised": Elements."The client is immunocompromised" /* @input: The client is receiving or has received medications that may be immunosuppressive @pseudocode: "Potential contraindications" = "Exposed to immunosuppressive treatment" @code: The client is receiving or has received medications that may be immunosuppressive-72 @decision: IMMZ.D5.DT.Varicella contraindications */ define "The client is receiving or has received medications that may be immunosuppressive": Elements."The client is exposed to immunosuppressive treatment" ````: **Status: **
  * ?: draft
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTVaricellaElements */ library IMMZD5DTVaricellaElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for Varicella dose */ define "Draft Medication Request for Varicella dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."Varicella-containing vaccines" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.Varicella contraindications */ define "The client is currently pregnant": Elements."The client is pregnant" /* @input: The client is planning to get pregnant in the next month @pseudocode: "Potential contraindications" = "Planning to get pregnant in the next month" @code: The client is planning to get pregnant in the next month-76 @decision: IMMZ.D5.DT.Varicella contraindications */ define "The client is planning to get pregnant in the next month": Elements."The client is planning to get pregnant in next month" /* @input: The client has immune deficiency @pseudocode: "Potential contraindications" = "Immunodeficiency syndromes" @code: The client has immune deficiency-60 @decision: IMMZ.D5.DT.Varicella contraindications */ define "The client has immune deficiency": Elements."The client has immunodeficiency syndromes" /* @input: The client is immunocompromised @pseudocode: "Potential contraindications" = "Immunocompromised" @code: The client is immunocompromised-51 @decision: IMMZ.D5.DT.Varicella contraindications */ define "The client is immunocompromised": Elements."The client is immunocompromised" /* @input: The client is receiving or has received medications that may be immunosuppressive @pseudocode: "Potential contraindications" = "Exposed to immunosuppressive treatment" @code: The client is receiving or has received medications that may be immunosuppressive-72 @decision: IMMZ.D5.DT.Varicella contraindications */ define "The client is receiving or has received medications that may be immunosuppressive": Elements."The client is exposed to immunosuppressive treatment" ````: **Date: **
  * ?: 2026-04-09 14:34:42+0000
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTVaricellaElements */ library IMMZD5DTVaricellaElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for Varicella dose */ define "Draft Medication Request for Varicella dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."Varicella-containing vaccines" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.Varicella contraindications */ define "The client is currently pregnant": Elements."The client is pregnant" /* @input: The client is planning to get pregnant in the next month @pseudocode: "Potential contraindications" = "Planning to get pregnant in the next month" @code: The client is planning to get pregnant in the next month-76 @decision: IMMZ.D5.DT.Varicella contraindications */ define "The client is planning to get pregnant in the next month": Elements."The client is planning to get pregnant in next month" /* @input: The client has immune deficiency @pseudocode: "Potential contraindications" = "Immunodeficiency syndromes" @code: The client has immune deficiency-60 @decision: IMMZ.D5.DT.Varicella contraindications */ define "The client has immune deficiency": Elements."The client has immunodeficiency syndromes" /* @input: The client is immunocompromised @pseudocode: "Potential contraindications" = "Immunocompromised" @code: The client is immunocompromised-51 @decision: IMMZ.D5.DT.Varicella contraindications */ define "The client is immunocompromised": Elements."The client is immunocompromised" /* @input: The client is receiving or has received medications that may be immunosuppressive @pseudocode: "Potential contraindications" = "Exposed to immunosuppressive treatment" @code: The client is receiving or has received medications that may be immunosuppressive-72 @decision: IMMZ.D5.DT.Varicella contraindications */ define "The client is receiving or has received medications that may be immunosuppressive": Elements."The client is exposed to immunosuppressive treatment" ````: **Publisher: **
  * ?: WHO
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTVaricellaElements */ library IMMZD5DTVaricellaElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for Varicella dose */ define "Draft Medication Request for Varicella dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."Varicella-containing vaccines" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.Varicella contraindications */ define "The client is currently pregnant": Elements."The client is pregnant" /* @input: The client is planning to get pregnant in the next month @pseudocode: "Potential contraindications" = "Planning to get pregnant in the next month" @code: The client is planning to get pregnant in the next month-76 @decision: IMMZ.D5.DT.Varicella contraindications */ define "The client is planning to get pregnant in the next month": Elements."The client is planning to get pregnant in next month" /* @input: The client has immune deficiency @pseudocode: "Potential contraindications" = "Immunodeficiency syndromes" @code: The client has immune deficiency-60 @decision: IMMZ.D5.DT.Varicella contraindications */ define "The client has immune deficiency": Elements."The client has immunodeficiency syndromes" /* @input: The client is immunocompromised @pseudocode: "Potential contraindications" = "Immunocompromised" @code: The client is immunocompromised-51 @decision: IMMZ.D5.DT.Varicella contraindications */ define "The client is immunocompromised": Elements."The client is immunocompromised" /* @input: The client is receiving or has received medications that may be immunosuppressive @pseudocode: "Potential contraindications" = "Exposed to immunosuppressive treatment" @code: The client is receiving or has received medications that may be immunosuppressive-72 @decision: IMMZ.D5.DT.Varicella contraindications */ define "The client is receiving or has received medications that may be immunosuppressive": Elements."The client is exposed to immunosuppressive treatment" ````: **Description: **
  * ?: This library defines context-independent elements for Varicella used throughout the Immunization CPG



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "IMMZD5DTVaricellaElements",
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
  "url" : "http://smart.who.int/immunizations/Library/IMMZD5DTVaricellaElements",
  "version" : "1.0.0",
  "name" : "IMMZD5DTVaricellaElements",
  "title" : "IMMZD5DTVaricellaElements",
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
  "description" : "This library defines context-independent elements for Varicella used throughout the Immunization CPG",
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
    "data" : "Ci8qCiAgKiBMaWJyYXJ5OiBJTU1aRDVEVFZhcmljZWxsYUVsZW1lbnRzCiAgKi8KbGlicmFyeSBJTU1aRDVEVFZhcmljZWxsYUVsZW1lbnRzCgp1c2luZyBGSElSIHZlcnNpb24gJzQuMC4xJwppbmNsdWRlIEZISVJIZWxwZXJzIHZlcnNpb24gJzQuMC4xJwoKaW5jbHVkZSBXSE9Db25jZXB0cwppbmNsdWRlIFdIT0NvbW1vbiBjYWxsZWQgV0MKaW5jbHVkZSBXSE9FbGVtZW50cyBjYWxsZWQgV0UKCmluY2x1ZGUgSU1NWkNvbW1vbiBjYWxsZWQgQ29tbW9uCmluY2x1ZGUgSU1NWkNvbmNlcHRzIGNhbGxlZCBDb25jZXB0cwppbmNsdWRlIElNTVpFbGVtZW50cyBjYWxsZWQgRWxlbWVudHMKCgpjb250ZXh0IFBhdGllbnQKCi8qCkBpbnRlcm5hbDogRHJhZnQgTWVkaWNhdGlvbiBSZXF1ZXN0IGZvciBWYXJpY2VsbGEgZG9zZQoqLwpkZWZpbmUgIkRyYWZ0IE1lZGljYXRpb24gUmVxdWVzdCBmb3IgVmFyaWNlbGxhIGRvc2UiOgogIEVsZW1lbnRzLiJEcmFmdCBNZWRpY2F0aW9uIFJlcXVlc3QgZm9yIFBhdGllbnQiIE1SCiAgICB3aGVyZSBNUi5tZWRpY2F0aW9uIGluIENvbmNlcHRzLiJWYXJpY2VsbGEtY29udGFpbmluZyB2YWNjaW5lcyIKCi8qCkBpbnB1dDogVGhlIGNsaWVudCBpcyBjdXJyZW50bHkgcHJlZ25hbnQKQHBzZXVkb2NvZGU6ICJQb3RlbnRpYWwgY29udHJhaW5kaWNhdGlvbnMiID0gIkN1cnJlbnRseSBwcmVnbmFudCIKQGNvZGU6IFRoZSBjbGllbnQgaXMgY3VycmVudGx5IHByZWduYW50LTUyCkBkZWNpc2lvbjogSU1NWi5ENS5EVC5WYXJpY2VsbGEgY29udHJhaW5kaWNhdGlvbnMKKi8KZGVmaW5lICJUaGUgY2xpZW50IGlzIGN1cnJlbnRseSBwcmVnbmFudCI6CiAgRWxlbWVudHMuIlRoZSBjbGllbnQgaXMgcHJlZ25hbnQiCgovKgpAaW5wdXQ6IFRoZSBjbGllbnQgaXMgcGxhbm5pbmcgdG8gZ2V0IHByZWduYW50IGluIHRoZSBuZXh0IG1vbnRoCkBwc2V1ZG9jb2RlOiAiUG90ZW50aWFsIGNvbnRyYWluZGljYXRpb25zIiA9ICJQbGFubmluZyB0byBnZXQgcHJlZ25hbnQgaW4gdGhlIG5leHQgbW9udGgiCkBjb2RlOiBUaGUgY2xpZW50IGlzIHBsYW5uaW5nIHRvIGdldCBwcmVnbmFudCBpbiB0aGUgbmV4dCBtb250aC03NgpAZGVjaXNpb246IElNTVouRDUuRFQuVmFyaWNlbGxhIGNvbnRyYWluZGljYXRpb25zCiovCmRlZmluZSAiVGhlIGNsaWVudCBpcyBwbGFubmluZyB0byBnZXQgcHJlZ25hbnQgaW4gdGhlIG5leHQgbW9udGgiOgogIEVsZW1lbnRzLiJUaGUgY2xpZW50IGlzIHBsYW5uaW5nIHRvIGdldCBwcmVnbmFudCBpbiBuZXh0IG1vbnRoIgoKLyoKQGlucHV0OiBUaGUgY2xpZW50IGhhcyBpbW11bmUgZGVmaWNpZW5jeQpAcHNldWRvY29kZTogIlBvdGVudGlhbCBjb250cmFpbmRpY2F0aW9ucyIgPSAiSW1tdW5vZGVmaWNpZW5jeSBzeW5kcm9tZXMiCkBjb2RlOiBUaGUgY2xpZW50IGhhcyBpbW11bmUgZGVmaWNpZW5jeS02MApAZGVjaXNpb246IElNTVouRDUuRFQuVmFyaWNlbGxhIGNvbnRyYWluZGljYXRpb25zCiovCmRlZmluZSAiVGhlIGNsaWVudCBoYXMgaW1tdW5lIGRlZmljaWVuY3kiOgogIEVsZW1lbnRzLiJUaGUgY2xpZW50IGhhcyBpbW11bm9kZWZpY2llbmN5IHN5bmRyb21lcyIKCi8qCkBpbnB1dDogVGhlIGNsaWVudCBpcyBpbW11bm9jb21wcm9taXNlZApAcHNldWRvY29kZTogIlBvdGVudGlhbCBjb250cmFpbmRpY2F0aW9ucyIgPSAiSW1tdW5vY29tcHJvbWlzZWQiCkBjb2RlOiBUaGUgY2xpZW50IGlzIGltbXVub2NvbXByb21pc2VkLTUxCkBkZWNpc2lvbjogSU1NWi5ENS5EVC5WYXJpY2VsbGEgY29udHJhaW5kaWNhdGlvbnMKKi8KZGVmaW5lICJUaGUgY2xpZW50IGlzIGltbXVub2NvbXByb21pc2VkIjoKICBFbGVtZW50cy4iVGhlIGNsaWVudCBpcyBpbW11bm9jb21wcm9taXNlZCIKCi8qCkBpbnB1dDogVGhlIGNsaWVudCBpcyByZWNlaXZpbmcgb3IgaGFzIHJlY2VpdmVkIG1lZGljYXRpb25zIHRoYXQgbWF5IGJlIGltbXVub3N1cHByZXNzaXZlCkBwc2V1ZG9jb2RlOiAiUG90ZW50aWFsIGNvbnRyYWluZGljYXRpb25zIiA9ICJFeHBvc2VkIHRvIGltbXVub3N1cHByZXNzaXZlIHRyZWF0bWVudCIKQGNvZGU6IFRoZSBjbGllbnQgaXMgcmVjZWl2aW5nIG9yIGhhcyByZWNlaXZlZCBtZWRpY2F0aW9ucyB0aGF0IG1heSBiZSBpbW11bm9zdXBwcmVzc2l2ZS03MgpAZGVjaXNpb246IElNTVouRDUuRFQuVmFyaWNlbGxhIGNvbnRyYWluZGljYXRpb25zCiovCmRlZmluZSAiVGhlIGNsaWVudCBpcyByZWNlaXZpbmcgb3IgaGFzIHJlY2VpdmVkIG1lZGljYXRpb25zIHRoYXQgbWF5IGJlIGltbXVub3N1cHByZXNzaXZlIjoKICBFbGVtZW50cy4iVGhlIGNsaWVudCBpcyBleHBvc2VkIHRvIGltbXVub3N1cHByZXNzaXZlIHRyZWF0bWVudCIK"
  }]
}

```
