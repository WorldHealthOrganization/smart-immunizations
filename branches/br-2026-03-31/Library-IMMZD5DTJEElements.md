# IMMZD5DTJEElements - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD5DTJEElements**

## Library: IMMZD5DTJEElements 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Library/IMMZD5DTJEElements | *Version*:0.2.0 |
| Draft as of 2026-03-31 | *Computable Name*:IMMZD5DTJEElements |

 
This library defines context-independent elements for JE used throughout the Immunization CPG 

* * **Content: **text/cql: ```` /* * Library: IMMZD5DTJEElements */ library IMMZD5DTJEElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for JE dose */ define "Draft Medication Request for JE dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."JE vaccines" /* @input: The client is immunocomprised @pseudocode: "Potential contraindications" = "Immunocompromised" @code: The client is immunocomprised-51 @decision: IMMZ.D5.DT.JE contraindications */ define "The client is immunocomprised": Elements."The client is immunocompromised" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.JE contraindications */ define "The client is currently pregnant": Elements."The client is pregnant" ````: **Id: **
  * ?: IMMZD5DTJEElements
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTJEElements */ library IMMZD5DTJEElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for JE dose */ define "Draft Medication Request for JE dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."JE vaccines" /* @input: The client is immunocomprised @pseudocode: "Potential contraindications" = "Immunocompromised" @code: The client is immunocomprised-51 @decision: IMMZ.D5.DT.JE contraindications */ define "The client is immunocomprised": Elements."The client is immunocompromised" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.JE contraindications */ define "The client is currently pregnant": Elements."The client is pregnant" ````: **Version: **
  * ?: 0.2.0
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTJEElements */ library IMMZD5DTJEElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for JE dose */ define "Draft Medication Request for JE dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."JE vaccines" /* @input: The client is immunocomprised @pseudocode: "Potential contraindications" = "Immunocompromised" @code: The client is immunocomprised-51 @decision: IMMZ.D5.DT.JE contraindications */ define "The client is immunocomprised": Elements."The client is immunocompromised" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.JE contraindications */ define "The client is currently pregnant": Elements."The client is pregnant" ````: **Url: **
  * ?: [IMMZD5DTJEElements](Library-IMMZD5DTJEElements.md)
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTJEElements */ library IMMZD5DTJEElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for JE dose */ define "Draft Medication Request for JE dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."JE vaccines" /* @input: The client is immunocomprised @pseudocode: "Potential contraindications" = "Immunocompromised" @code: The client is immunocomprised-51 @decision: IMMZ.D5.DT.JE contraindications */ define "The client is immunocomprised": Elements."The client is immunocompromised" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.JE contraindications */ define "The client is currently pregnant": Elements."The client is pregnant" ````: **Status: **
  * ?: draft
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTJEElements */ library IMMZD5DTJEElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for JE dose */ define "Draft Medication Request for JE dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."JE vaccines" /* @input: The client is immunocomprised @pseudocode: "Potential contraindications" = "Immunocompromised" @code: The client is immunocomprised-51 @decision: IMMZ.D5.DT.JE contraindications */ define "The client is immunocomprised": Elements."The client is immunocompromised" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.JE contraindications */ define "The client is currently pregnant": Elements."The client is pregnant" ````: **Date: **
  * ?: 2026-03-31 13:43:57+0000
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTJEElements */ library IMMZD5DTJEElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for JE dose */ define "Draft Medication Request for JE dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."JE vaccines" /* @input: The client is immunocomprised @pseudocode: "Potential contraindications" = "Immunocompromised" @code: The client is immunocomprised-51 @decision: IMMZ.D5.DT.JE contraindications */ define "The client is immunocomprised": Elements."The client is immunocompromised" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.JE contraindications */ define "The client is currently pregnant": Elements."The client is pregnant" ````: **Publisher: **
  * ?: WHO
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTJEElements */ library IMMZD5DTJEElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for JE dose */ define "Draft Medication Request for JE dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."JE vaccines" /* @input: The client is immunocomprised @pseudocode: "Potential contraindications" = "Immunocompromised" @code: The client is immunocomprised-51 @decision: IMMZ.D5.DT.JE contraindications */ define "The client is immunocomprised": Elements."The client is immunocompromised" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.JE contraindications */ define "The client is currently pregnant": Elements."The client is pregnant" ````: **Description: **
  * ?: This library defines context-independent elements for JE used throughout the Immunization CPG



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "IMMZD5DTJEElements",
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
  "url" : "http://smart.who.int/immunizations/Library/IMMZD5DTJEElements",
  "version" : "0.2.0",
  "name" : "IMMZD5DTJEElements",
  "title" : "IMMZD5DTJEElements",
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
  "description" : "This library defines context-independent elements for JE used throughout the Immunization CPG",
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
    "name" : "Draft Medication Request for JE dose",
    "use" : "out",
    "min" : 0,
    "max" : "*",
    "type" : "MedicationRequest"
  },
  {
    "name" : "The client is immunocomprised",
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
  }],
  "content" : [{
    "contentType" : "text/cql",
    "data" : "Ci8qCiAgKiBMaWJyYXJ5OiBJTU1aRDVEVEpFRWxlbWVudHMKICAqLwpsaWJyYXJ5IElNTVpENURUSkVFbGVtZW50cwoKdXNpbmcgRkhJUiB2ZXJzaW9uICc0LjAuMScKaW5jbHVkZSBGSElSSGVscGVycyB2ZXJzaW9uICc0LjAuMScKCmluY2x1ZGUgV0hPQ29uY2VwdHMKaW5jbHVkZSBXSE9Db21tb24gY2FsbGVkIFdDCmluY2x1ZGUgV0hPRWxlbWVudHMgY2FsbGVkIFdFCgppbmNsdWRlIElNTVpDb21tb24gY2FsbGVkIENvbW1vbgppbmNsdWRlIElNTVpDb25jZXB0cyBjYWxsZWQgQ29uY2VwdHMKaW5jbHVkZSBJTU1aRWxlbWVudHMgY2FsbGVkIEVsZW1lbnRzCgoKY29udGV4dCBQYXRpZW50CgovKgpAaW50ZXJuYWw6IERyYWZ0IE1lZGljYXRpb24gUmVxdWVzdCBmb3IgSkUgZG9zZQoqLwpkZWZpbmUgIkRyYWZ0IE1lZGljYXRpb24gUmVxdWVzdCBmb3IgSkUgZG9zZSI6CiAgRWxlbWVudHMuIkRyYWZ0IE1lZGljYXRpb24gUmVxdWVzdCBmb3IgUGF0aWVudCIgTVIKICAgIHdoZXJlIE1SLm1lZGljYXRpb24gaW4gQ29uY2VwdHMuIkpFIHZhY2NpbmVzIgoKLyoKQGlucHV0OiBUaGUgY2xpZW50IGlzIGltbXVub2NvbXByaXNlZApAcHNldWRvY29kZTogIlBvdGVudGlhbCBjb250cmFpbmRpY2F0aW9ucyIgPSAiSW1tdW5vY29tcHJvbWlzZWQiCkBjb2RlOiBUaGUgY2xpZW50IGlzIGltbXVub2NvbXByaXNlZC01MQpAZGVjaXNpb246IElNTVouRDUuRFQuSkUgY29udHJhaW5kaWNhdGlvbnMKKi8KZGVmaW5lICJUaGUgY2xpZW50IGlzIGltbXVub2NvbXByaXNlZCI6CiAgRWxlbWVudHMuIlRoZSBjbGllbnQgaXMgaW1tdW5vY29tcHJvbWlzZWQiCgovKgpAaW5wdXQ6IFRoZSBjbGllbnQgaXMgY3VycmVudGx5IHByZWduYW50CkBwc2V1ZG9jb2RlOiAiUG90ZW50aWFsIGNvbnRyYWluZGljYXRpb25zIiA9ICJDdXJyZW50bHkgcHJlZ25hbnQiCkBjb2RlOiBUaGUgY2xpZW50IGlzIGN1cnJlbnRseSBwcmVnbmFudC01MgpAZGVjaXNpb246IElNTVouRDUuRFQuSkUgY29udHJhaW5kaWNhdGlvbnMKKi8KZGVmaW5lICJUaGUgY2xpZW50IGlzIGN1cnJlbnRseSBwcmVnbmFudCI6CiAgRWxlbWVudHMuIlRoZSBjbGllbnQgaXMgcHJlZ25hbnQiCg=="
  }]
}

```
