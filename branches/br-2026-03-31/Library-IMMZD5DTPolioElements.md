# IMMZD5DTPolioElements - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD5DTPolioElements**

## Library: IMMZD5DTPolioElements 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Library/IMMZD5DTPolioElements | *Version*:0.2.0 |
| Draft as of 2026-03-31 | *Computable Name*:IMMZD5DTPolioElements |

 
This library defines context-independent elements for Polio used throughout the Immunization CPG 

* * **Content: **text/cql: ```` /* * Library: IMMZD5DTPolioElements */ library IMMZD5DTPolioElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for Polio dose */ define "Draft Medication Request for Polio dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."Poliovirus-containing vaccines" /* @input: The client has history of severe allergic reactions @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has history of severe allergic reactions-59 @decision: IMMZ.D5.DT.Polio contraindications */ define "The client has history of severe allergic reactions": Elements."The client has history of severe allergic reactions" /* @input: The client is severely immunocompromised @pseudocode: "Potential contraindications" = "Severely immunocompromised" @code: The client is severely immunocompromised-60 @decision: IMMZ.D5.DT.Polio contraindications */ define "The client is severely immunocompromised": Elements."The client is severely immunocompromised" /* @input: The client has immunodeficiency syndromes @pseudocode: "Potential contraindications" = "Immunodeficiency syndromes" @code: The client has immunodeficiency syndromes-60 @decision: IMMZ.D5.DT.Polio contraindications */ define "The client has immunodeficiency syndromes": Elements."The client has immunodeficiency syndromes" /* @internal: Draft Medication Request for bOPV dose */ define "Draft Medication Request for bOPV dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."Oral polio vaccines" ````: **Id: **
  * ?: IMMZD5DTPolioElements
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTPolioElements */ library IMMZD5DTPolioElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for Polio dose */ define "Draft Medication Request for Polio dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."Poliovirus-containing vaccines" /* @input: The client has history of severe allergic reactions @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has history of severe allergic reactions-59 @decision: IMMZ.D5.DT.Polio contraindications */ define "The client has history of severe allergic reactions": Elements."The client has history of severe allergic reactions" /* @input: The client is severely immunocompromised @pseudocode: "Potential contraindications" = "Severely immunocompromised" @code: The client is severely immunocompromised-60 @decision: IMMZ.D5.DT.Polio contraindications */ define "The client is severely immunocompromised": Elements."The client is severely immunocompromised" /* @input: The client has immunodeficiency syndromes @pseudocode: "Potential contraindications" = "Immunodeficiency syndromes" @code: The client has immunodeficiency syndromes-60 @decision: IMMZ.D5.DT.Polio contraindications */ define "The client has immunodeficiency syndromes": Elements."The client has immunodeficiency syndromes" /* @internal: Draft Medication Request for bOPV dose */ define "Draft Medication Request for bOPV dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."Oral polio vaccines" ````: **Version: **
  * ?: 0.2.0
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTPolioElements */ library IMMZD5DTPolioElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for Polio dose */ define "Draft Medication Request for Polio dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."Poliovirus-containing vaccines" /* @input: The client has history of severe allergic reactions @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has history of severe allergic reactions-59 @decision: IMMZ.D5.DT.Polio contraindications */ define "The client has history of severe allergic reactions": Elements."The client has history of severe allergic reactions" /* @input: The client is severely immunocompromised @pseudocode: "Potential contraindications" = "Severely immunocompromised" @code: The client is severely immunocompromised-60 @decision: IMMZ.D5.DT.Polio contraindications */ define "The client is severely immunocompromised": Elements."The client is severely immunocompromised" /* @input: The client has immunodeficiency syndromes @pseudocode: "Potential contraindications" = "Immunodeficiency syndromes" @code: The client has immunodeficiency syndromes-60 @decision: IMMZ.D5.DT.Polio contraindications */ define "The client has immunodeficiency syndromes": Elements."The client has immunodeficiency syndromes" /* @internal: Draft Medication Request for bOPV dose */ define "Draft Medication Request for bOPV dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."Oral polio vaccines" ````: **Url: **
  * ?: [IMMZD5DTPolioElements](Library-IMMZD5DTPolioElements.md)
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTPolioElements */ library IMMZD5DTPolioElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for Polio dose */ define "Draft Medication Request for Polio dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."Poliovirus-containing vaccines" /* @input: The client has history of severe allergic reactions @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has history of severe allergic reactions-59 @decision: IMMZ.D5.DT.Polio contraindications */ define "The client has history of severe allergic reactions": Elements."The client has history of severe allergic reactions" /* @input: The client is severely immunocompromised @pseudocode: "Potential contraindications" = "Severely immunocompromised" @code: The client is severely immunocompromised-60 @decision: IMMZ.D5.DT.Polio contraindications */ define "The client is severely immunocompromised": Elements."The client is severely immunocompromised" /* @input: The client has immunodeficiency syndromes @pseudocode: "Potential contraindications" = "Immunodeficiency syndromes" @code: The client has immunodeficiency syndromes-60 @decision: IMMZ.D5.DT.Polio contraindications */ define "The client has immunodeficiency syndromes": Elements."The client has immunodeficiency syndromes" /* @internal: Draft Medication Request for bOPV dose */ define "Draft Medication Request for bOPV dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."Oral polio vaccines" ````: **Status: **
  * ?: draft
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTPolioElements */ library IMMZD5DTPolioElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for Polio dose */ define "Draft Medication Request for Polio dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."Poliovirus-containing vaccines" /* @input: The client has history of severe allergic reactions @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has history of severe allergic reactions-59 @decision: IMMZ.D5.DT.Polio contraindications */ define "The client has history of severe allergic reactions": Elements."The client has history of severe allergic reactions" /* @input: The client is severely immunocompromised @pseudocode: "Potential contraindications" = "Severely immunocompromised" @code: The client is severely immunocompromised-60 @decision: IMMZ.D5.DT.Polio contraindications */ define "The client is severely immunocompromised": Elements."The client is severely immunocompromised" /* @input: The client has immunodeficiency syndromes @pseudocode: "Potential contraindications" = "Immunodeficiency syndromes" @code: The client has immunodeficiency syndromes-60 @decision: IMMZ.D5.DT.Polio contraindications */ define "The client has immunodeficiency syndromes": Elements."The client has immunodeficiency syndromes" /* @internal: Draft Medication Request for bOPV dose */ define "Draft Medication Request for bOPV dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."Oral polio vaccines" ````: **Date: **
  * ?: 2026-03-31 13:43:57+0000
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTPolioElements */ library IMMZD5DTPolioElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for Polio dose */ define "Draft Medication Request for Polio dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."Poliovirus-containing vaccines" /* @input: The client has history of severe allergic reactions @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has history of severe allergic reactions-59 @decision: IMMZ.D5.DT.Polio contraindications */ define "The client has history of severe allergic reactions": Elements."The client has history of severe allergic reactions" /* @input: The client is severely immunocompromised @pseudocode: "Potential contraindications" = "Severely immunocompromised" @code: The client is severely immunocompromised-60 @decision: IMMZ.D5.DT.Polio contraindications */ define "The client is severely immunocompromised": Elements."The client is severely immunocompromised" /* @input: The client has immunodeficiency syndromes @pseudocode: "Potential contraindications" = "Immunodeficiency syndromes" @code: The client has immunodeficiency syndromes-60 @decision: IMMZ.D5.DT.Polio contraindications */ define "The client has immunodeficiency syndromes": Elements."The client has immunodeficiency syndromes" /* @internal: Draft Medication Request for bOPV dose */ define "Draft Medication Request for bOPV dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."Oral polio vaccines" ````: **Publisher: **
  * ?: WHO
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTPolioElements */ library IMMZD5DTPolioElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for Polio dose */ define "Draft Medication Request for Polio dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."Poliovirus-containing vaccines" /* @input: The client has history of severe allergic reactions @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has history of severe allergic reactions-59 @decision: IMMZ.D5.DT.Polio contraindications */ define "The client has history of severe allergic reactions": Elements."The client has history of severe allergic reactions" /* @input: The client is severely immunocompromised @pseudocode: "Potential contraindications" = "Severely immunocompromised" @code: The client is severely immunocompromised-60 @decision: IMMZ.D5.DT.Polio contraindications */ define "The client is severely immunocompromised": Elements."The client is severely immunocompromised" /* @input: The client has immunodeficiency syndromes @pseudocode: "Potential contraindications" = "Immunodeficiency syndromes" @code: The client has immunodeficiency syndromes-60 @decision: IMMZ.D5.DT.Polio contraindications */ define "The client has immunodeficiency syndromes": Elements."The client has immunodeficiency syndromes" /* @internal: Draft Medication Request for bOPV dose */ define "Draft Medication Request for bOPV dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."Oral polio vaccines" ````: **Description: **
  * ?: This library defines context-independent elements for Polio used throughout the Immunization CPG



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "IMMZD5DTPolioElements",
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
  "url" : "http://smart.who.int/immunizations/Library/IMMZD5DTPolioElements",
  "version" : "0.2.0",
  "name" : "IMMZD5DTPolioElements",
  "title" : "IMMZD5DTPolioElements",
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
  "description" : "This library defines context-independent elements for Polio used throughout the Immunization CPG",
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
    "name" : "Draft Medication Request for Polio dose",
    "use" : "out",
    "min" : 0,
    "max" : "*",
    "type" : "MedicationRequest"
  },
  {
    "name" : "The client has history of severe allergic reactions",
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
    "name" : "The client has immunodeficiency syndromes",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "Draft Medication Request for bOPV dose",
    "use" : "out",
    "min" : 0,
    "max" : "*",
    "type" : "MedicationRequest"
  }],
  "content" : [{
    "contentType" : "text/cql",
    "data" : "Ci8qCiAgKiBMaWJyYXJ5OiBJTU1aRDVEVFBvbGlvRWxlbWVudHMKICAqLwpsaWJyYXJ5IElNTVpENURUUG9saW9FbGVtZW50cwoKdXNpbmcgRkhJUiB2ZXJzaW9uICc0LjAuMScKaW5jbHVkZSBGSElSSGVscGVycyB2ZXJzaW9uICc0LjAuMScKCmluY2x1ZGUgV0hPQ29uY2VwdHMKaW5jbHVkZSBXSE9Db21tb24gY2FsbGVkIFdDCmluY2x1ZGUgV0hPRWxlbWVudHMgY2FsbGVkIFdFCgppbmNsdWRlIElNTVpDb21tb24gY2FsbGVkIENvbW1vbgppbmNsdWRlIElNTVpDb25jZXB0cyBjYWxsZWQgQ29uY2VwdHMKaW5jbHVkZSBJTU1aRWxlbWVudHMgY2FsbGVkIEVsZW1lbnRzCgoKY29udGV4dCBQYXRpZW50CgovKgpAaW50ZXJuYWw6IERyYWZ0IE1lZGljYXRpb24gUmVxdWVzdCBmb3IgUG9saW8gZG9zZQoqLwpkZWZpbmUgIkRyYWZ0IE1lZGljYXRpb24gUmVxdWVzdCBmb3IgUG9saW8gZG9zZSI6CgogIEVsZW1lbnRzLiJEcmFmdCBNZWRpY2F0aW9uIFJlcXVlc3QgZm9yIFBhdGllbnQiIE1SIAogICAgd2hlcmUgTVIubWVkaWNhdGlvbiBpbiBDb25jZXB0cy4iUG9saW92aXJ1cy1jb250YWluaW5nIHZhY2NpbmVzIgoKLyoKQGlucHV0OiBUaGUgY2xpZW50IGhhcyBoaXN0b3J5IG9mIHNldmVyZSBhbGxlcmdpYyByZWFjdGlvbnMKQHBzZXVkb2NvZGU6ICJQb3RlbnRpYWwgY29udHJhaW5kaWNhdGlvbnMiID0gIlNldmVyZSBhbGxlcmdpYyByZWFjdGlvbnMiCkBjb2RlOiBUaGUgY2xpZW50IGhhcyBoaXN0b3J5IG9mIHNldmVyZSBhbGxlcmdpYyByZWFjdGlvbnMtNTkKQGRlY2lzaW9uOiBJTU1aLkQ1LkRULlBvbGlvIGNvbnRyYWluZGljYXRpb25zCiovCmRlZmluZSAiVGhlIGNsaWVudCBoYXMgaGlzdG9yeSBvZiBzZXZlcmUgYWxsZXJnaWMgcmVhY3Rpb25zIjoKICBFbGVtZW50cy4iVGhlIGNsaWVudCBoYXMgaGlzdG9yeSBvZiBzZXZlcmUgYWxsZXJnaWMgcmVhY3Rpb25zIgoKLyoKQGlucHV0OiBUaGUgY2xpZW50IGlzIHNldmVyZWx5IGltbXVub2NvbXByb21pc2VkCkBwc2V1ZG9jb2RlOiAiUG90ZW50aWFsIGNvbnRyYWluZGljYXRpb25zIiA9ICJTZXZlcmVseSBpbW11bm9jb21wcm9taXNlZCIKQGNvZGU6IFRoZSBjbGllbnQgaXMgc2V2ZXJlbHkgaW1tdW5vY29tcHJvbWlzZWQtNjAKQGRlY2lzaW9uOiBJTU1aLkQ1LkRULlBvbGlvIGNvbnRyYWluZGljYXRpb25zCiovCmRlZmluZSAiVGhlIGNsaWVudCBpcyBzZXZlcmVseSBpbW11bm9jb21wcm9taXNlZCI6CiAgRWxlbWVudHMuIlRoZSBjbGllbnQgaXMgc2V2ZXJlbHkgaW1tdW5vY29tcHJvbWlzZWQiCgovKgpAaW5wdXQ6IFRoZSBjbGllbnQgaGFzIGltbXVub2RlZmljaWVuY3kgc3luZHJvbWVzCkBwc2V1ZG9jb2RlOiAiUG90ZW50aWFsIGNvbnRyYWluZGljYXRpb25zIiA9ICJJbW11bm9kZWZpY2llbmN5IHN5bmRyb21lcyIKQGNvZGU6IFRoZSBjbGllbnQgaGFzIGltbXVub2RlZmljaWVuY3kgc3luZHJvbWVzLTYwCkBkZWNpc2lvbjogSU1NWi5ENS5EVC5Qb2xpbyBjb250cmFpbmRpY2F0aW9ucwoqLwpkZWZpbmUgIlRoZSBjbGllbnQgaGFzIGltbXVub2RlZmljaWVuY3kgc3luZHJvbWVzIjoKICBFbGVtZW50cy4iVGhlIGNsaWVudCBoYXMgaW1tdW5vZGVmaWNpZW5jeSBzeW5kcm9tZXMiCgovKgpAaW50ZXJuYWw6IERyYWZ0IE1lZGljYXRpb24gUmVxdWVzdCBmb3IgYk9QViBkb3NlCiovCmRlZmluZSAiRHJhZnQgTWVkaWNhdGlvbiBSZXF1ZXN0IGZvciBiT1BWIGRvc2UiOgogIEVsZW1lbnRzLiJEcmFmdCBNZWRpY2F0aW9uIFJlcXVlc3QgZm9yIFBhdGllbnQiIE1SCiAgICB3aGVyZSBNUi5tZWRpY2F0aW9uIGluIENvbmNlcHRzLiJPcmFsIHBvbGlvIHZhY2NpbmVzIgo="
  }]
}

```
