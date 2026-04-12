# IMMZD5DTHepatitisAElements - WHO Immunization Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD5DTHepatitisAElements**

## Library: IMMZD5DTHepatitisAElements 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Library/IMMZD5DTHepatitisAElements | *Version*:1.0.0 |
| Draft as of 2026-03-31 | *Computable Name*:IMMZD5DTHepatitisAElements |

 
This library defines context-independent elements for Hepatitis A used throughout the Immunization CPG 

* * **Content: **text/cql: ```` /* * Library: IMMZD5DTHepatitisAElements */ library IMMZD5DTHepatitisAElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for Hepatitis A dose */ define "Draft Medication Request for Hepatitis A dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."Hepatitis A-containing vaccines" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.Hepatitis A contraindications */ define "The client is currently pregnant": Elements."The client is pregnant" /* @input: The client is severely immunocompromised @pseudocode: "Potential contraindications" = "Severely immunocompromised" @code: The client is severely immunocompromised-60 @decision: IMMZ.D5.DT.Hepatitis A contraindications */ define "The client is severely immunocompromised": Elements."The client is severely immunocompromised" /* @input: The client has a history of severe allergic reactions @pseudocode: '"Potential contraindications" = "Severe allergic reactions" @code: The client has a history of severe allergic reactions-60 @decision: IMMZ.D5.DT.Hepatitis A contraindications */ define "The client has a history of severe allergic reactions": Elements."The client has history of severe allergic reactions" ````: **Id: **
  * ?: IMMZD5DTHepatitisAElements
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTHepatitisAElements */ library IMMZD5DTHepatitisAElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for Hepatitis A dose */ define "Draft Medication Request for Hepatitis A dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."Hepatitis A-containing vaccines" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.Hepatitis A contraindications */ define "The client is currently pregnant": Elements."The client is pregnant" /* @input: The client is severely immunocompromised @pseudocode: "Potential contraindications" = "Severely immunocompromised" @code: The client is severely immunocompromised-60 @decision: IMMZ.D5.DT.Hepatitis A contraindications */ define "The client is severely immunocompromised": Elements."The client is severely immunocompromised" /* @input: The client has a history of severe allergic reactions @pseudocode: '"Potential contraindications" = "Severe allergic reactions" @code: The client has a history of severe allergic reactions-60 @decision: IMMZ.D5.DT.Hepatitis A contraindications */ define "The client has a history of severe allergic reactions": Elements."The client has history of severe allergic reactions" ````: **Version: **
  * ?: 1.0.0
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTHepatitisAElements */ library IMMZD5DTHepatitisAElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for Hepatitis A dose */ define "Draft Medication Request for Hepatitis A dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."Hepatitis A-containing vaccines" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.Hepatitis A contraindications */ define "The client is currently pregnant": Elements."The client is pregnant" /* @input: The client is severely immunocompromised @pseudocode: "Potential contraindications" = "Severely immunocompromised" @code: The client is severely immunocompromised-60 @decision: IMMZ.D5.DT.Hepatitis A contraindications */ define "The client is severely immunocompromised": Elements."The client is severely immunocompromised" /* @input: The client has a history of severe allergic reactions @pseudocode: '"Potential contraindications" = "Severe allergic reactions" @code: The client has a history of severe allergic reactions-60 @decision: IMMZ.D5.DT.Hepatitis A contraindications */ define "The client has a history of severe allergic reactions": Elements."The client has history of severe allergic reactions" ````: **Url: **
  * ?: [IMMZD5DTHepatitisAElements](Library-IMMZD5DTHepatitisAElements.md)
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTHepatitisAElements */ library IMMZD5DTHepatitisAElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for Hepatitis A dose */ define "Draft Medication Request for Hepatitis A dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."Hepatitis A-containing vaccines" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.Hepatitis A contraindications */ define "The client is currently pregnant": Elements."The client is pregnant" /* @input: The client is severely immunocompromised @pseudocode: "Potential contraindications" = "Severely immunocompromised" @code: The client is severely immunocompromised-60 @decision: IMMZ.D5.DT.Hepatitis A contraindications */ define "The client is severely immunocompromised": Elements."The client is severely immunocompromised" /* @input: The client has a history of severe allergic reactions @pseudocode: '"Potential contraindications" = "Severe allergic reactions" @code: The client has a history of severe allergic reactions-60 @decision: IMMZ.D5.DT.Hepatitis A contraindications */ define "The client has a history of severe allergic reactions": Elements."The client has history of severe allergic reactions" ````: **Status: **
  * ?: draft
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTHepatitisAElements */ library IMMZD5DTHepatitisAElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for Hepatitis A dose */ define "Draft Medication Request for Hepatitis A dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."Hepatitis A-containing vaccines" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.Hepatitis A contraindications */ define "The client is currently pregnant": Elements."The client is pregnant" /* @input: The client is severely immunocompromised @pseudocode: "Potential contraindications" = "Severely immunocompromised" @code: The client is severely immunocompromised-60 @decision: IMMZ.D5.DT.Hepatitis A contraindications */ define "The client is severely immunocompromised": Elements."The client is severely immunocompromised" /* @input: The client has a history of severe allergic reactions @pseudocode: '"Potential contraindications" = "Severe allergic reactions" @code: The client has a history of severe allergic reactions-60 @decision: IMMZ.D5.DT.Hepatitis A contraindications */ define "The client has a history of severe allergic reactions": Elements."The client has history of severe allergic reactions" ````: **Date: **
  * ?: 2026-03-31 13:54:17+0000
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTHepatitisAElements */ library IMMZD5DTHepatitisAElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for Hepatitis A dose */ define "Draft Medication Request for Hepatitis A dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."Hepatitis A-containing vaccines" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.Hepatitis A contraindications */ define "The client is currently pregnant": Elements."The client is pregnant" /* @input: The client is severely immunocompromised @pseudocode: "Potential contraindications" = "Severely immunocompromised" @code: The client is severely immunocompromised-60 @decision: IMMZ.D5.DT.Hepatitis A contraindications */ define "The client is severely immunocompromised": Elements."The client is severely immunocompromised" /* @input: The client has a history of severe allergic reactions @pseudocode: '"Potential contraindications" = "Severe allergic reactions" @code: The client has a history of severe allergic reactions-60 @decision: IMMZ.D5.DT.Hepatitis A contraindications */ define "The client has a history of severe allergic reactions": Elements."The client has history of severe allergic reactions" ````: **Publisher: **
  * ?: WHO
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTHepatitisAElements */ library IMMZD5DTHepatitisAElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for Hepatitis A dose */ define "Draft Medication Request for Hepatitis A dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."Hepatitis A-containing vaccines" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.Hepatitis A contraindications */ define "The client is currently pregnant": Elements."The client is pregnant" /* @input: The client is severely immunocompromised @pseudocode: "Potential contraindications" = "Severely immunocompromised" @code: The client is severely immunocompromised-60 @decision: IMMZ.D5.DT.Hepatitis A contraindications */ define "The client is severely immunocompromised": Elements."The client is severely immunocompromised" /* @input: The client has a history of severe allergic reactions @pseudocode: '"Potential contraindications" = "Severe allergic reactions" @code: The client has a history of severe allergic reactions-60 @decision: IMMZ.D5.DT.Hepatitis A contraindications */ define "The client has a history of severe allergic reactions": Elements."The client has history of severe allergic reactions" ````: **Description: **
  * ?: This library defines context-independent elements for Hepatitis A used throughout the Immunization CPG



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "IMMZD5DTHepatitisAElements",
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
  "url" : "http://smart.who.int/immunizations/Library/IMMZD5DTHepatitisAElements",
  "version" : "1.0.0",
  "name" : "IMMZD5DTHepatitisAElements",
  "title" : "IMMZD5DTHepatitisAElements",
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
  "description" : "This library defines context-independent elements for Hepatitis A used throughout the Immunization CPG",
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
    "name" : "Draft Medication Request for Hepatitis A dose",
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
    "name" : "The client is severely immunocompromised",
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
    "data" : "Ci8qCiAgKiBMaWJyYXJ5OiBJTU1aRDVEVEhlcGF0aXRpc0FFbGVtZW50cwogICovCmxpYnJhcnkgSU1NWkQ1RFRIZXBhdGl0aXNBRWxlbWVudHMKCnVzaW5nIEZISVIgdmVyc2lvbiAnNC4wLjEnCmluY2x1ZGUgRkhJUkhlbHBlcnMgdmVyc2lvbiAnNC4wLjEnCgppbmNsdWRlIFdIT0NvbmNlcHRzCmluY2x1ZGUgV0hPQ29tbW9uIGNhbGxlZCBXQwppbmNsdWRlIFdIT0VsZW1lbnRzIGNhbGxlZCBXRQoKaW5jbHVkZSBJTU1aQ29tbW9uIGNhbGxlZCBDb21tb24KaW5jbHVkZSBJTU1aQ29uY2VwdHMgY2FsbGVkIENvbmNlcHRzCmluY2x1ZGUgSU1NWkVsZW1lbnRzIGNhbGxlZCBFbGVtZW50cwoKCmNvbnRleHQgUGF0aWVudAoKLyoKQGludGVybmFsOiBEcmFmdCBNZWRpY2F0aW9uIFJlcXVlc3QgZm9yIEhlcGF0aXRpcyBBIGRvc2UKKi8KZGVmaW5lICJEcmFmdCBNZWRpY2F0aW9uIFJlcXVlc3QgZm9yIEhlcGF0aXRpcyBBIGRvc2UiOgogIEVsZW1lbnRzLiJEcmFmdCBNZWRpY2F0aW9uIFJlcXVlc3QgZm9yIFBhdGllbnQiIE1SCiAgICB3aGVyZSBNUi5tZWRpY2F0aW9uIGluIENvbmNlcHRzLiJIZXBhdGl0aXMgQS1jb250YWluaW5nIHZhY2NpbmVzIgoKLyoKQGlucHV0OiBUaGUgY2xpZW50IGlzIGN1cnJlbnRseSBwcmVnbmFudApAcHNldWRvY29kZTogIlBvdGVudGlhbCBjb250cmFpbmRpY2F0aW9ucyIgPSAiQ3VycmVudGx5IHByZWduYW50IgpAY29kZTogVGhlIGNsaWVudCBpcyBjdXJyZW50bHkgcHJlZ25hbnQtNTIKQGRlY2lzaW9uOiBJTU1aLkQ1LkRULkhlcGF0aXRpcyBBIGNvbnRyYWluZGljYXRpb25zCiovCmRlZmluZSAiVGhlIGNsaWVudCBpcyBjdXJyZW50bHkgcHJlZ25hbnQiOgogIEVsZW1lbnRzLiJUaGUgY2xpZW50IGlzIHByZWduYW50IgoKLyoKQGlucHV0OiBUaGUgY2xpZW50IGlzIHNldmVyZWx5IGltbXVub2NvbXByb21pc2VkCkBwc2V1ZG9jb2RlOiAiUG90ZW50aWFsIGNvbnRyYWluZGljYXRpb25zIiA9ICJTZXZlcmVseSBpbW11bm9jb21wcm9taXNlZCIKQGNvZGU6IFRoZSBjbGllbnQgaXMgc2V2ZXJlbHkgaW1tdW5vY29tcHJvbWlzZWQtNjAKQGRlY2lzaW9uOiBJTU1aLkQ1LkRULkhlcGF0aXRpcyBBIGNvbnRyYWluZGljYXRpb25zCiovCmRlZmluZSAiVGhlIGNsaWVudCBpcyBzZXZlcmVseSBpbW11bm9jb21wcm9taXNlZCI6CiAgRWxlbWVudHMuIlRoZSBjbGllbnQgaXMgc2V2ZXJlbHkgaW1tdW5vY29tcHJvbWlzZWQiCgovKgpAaW5wdXQ6IFRoZSBjbGllbnQgaGFzIGEgaGlzdG9yeSBvZiBzZXZlcmUgYWxsZXJnaWMgcmVhY3Rpb25zCkBwc2V1ZG9jb2RlOiAnIlBvdGVudGlhbCBjb250cmFpbmRpY2F0aW9ucyIgPSAiU2V2ZXJlIGFsbGVyZ2ljIHJlYWN0aW9ucyIKQGNvZGU6IFRoZSBjbGllbnQgaGFzIGEgaGlzdG9yeSBvZiBzZXZlcmUgYWxsZXJnaWMgcmVhY3Rpb25zLTYwCkBkZWNpc2lvbjogSU1NWi5ENS5EVC5IZXBhdGl0aXMgQSBjb250cmFpbmRpY2F0aW9ucwoqLwpkZWZpbmUgIlRoZSBjbGllbnQgaGFzIGEgaGlzdG9yeSBvZiBzZXZlcmUgYWxsZXJnaWMgcmVhY3Rpb25zIjoKICBFbGVtZW50cy4iVGhlIGNsaWVudCBoYXMgaGlzdG9yeSBvZiBzZXZlcmUgYWxsZXJnaWMgcmVhY3Rpb25zIgo="
  }]
}

```
