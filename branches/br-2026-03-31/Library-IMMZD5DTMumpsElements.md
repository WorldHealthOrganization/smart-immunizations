# IMMZD5DTMumpsElements - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD5DTMumpsElements**

## Library: IMMZD5DTMumpsElements 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Library/IMMZD5DTMumpsElements | *Version*:0.2.0 |
| Draft as of 2026-03-31 | *Computable Name*:IMMZD5DTMumpsElements |

 
This library defines context-independent elements for Mumps used throughout the Immunization CPG 

* * **Content: **text/cql: ```` /* * Library: IMMZD5DTMumpsElements */ library IMMZD5DTMumpsElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for Mumps dose */ define "Draft Medication Request for Mumps dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."Mumps-containing vaccines" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.Mumps contraindications */ define "The client is currently pregnant": Elements."The client is pregnant" /* @input: The client has allergy to vaccine components @pseudocode: '"Potential contraindications" = "Severe allergic reactions" @code: The client has allergy to vaccine components-60 @decision: IMMZ.D5.DT.Mumps contraindications */ define "The client has allergy to vaccine components": Elements."The client has history of severe allergic reactions" /* @input: The client has immune deficiency @pseudocode: "Potential contraindications" = "Immunodeficiency syndromes" @code: The client has immune deficiency-60 @decision: IMMZ.D5.DT.Mumps contraindications */ define "The client has immune deficiency": Elements."The client has immunodeficiency syndromes" /* @input: The client is severely immunosuppressed @pseudocode: "Potential contraindications" = "Severely immunosuppressed" @code: The client is severely immunosuppressed-59 @decision: IMMZ.D5.DT.Mumps contraindications */ define "The client is severely immunosuppressed": Elements."The client is severely immunosuppressed" ````: **Id: **
  * ?: IMMZD5DTMumpsElements
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTMumpsElements */ library IMMZD5DTMumpsElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for Mumps dose */ define "Draft Medication Request for Mumps dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."Mumps-containing vaccines" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.Mumps contraindications */ define "The client is currently pregnant": Elements."The client is pregnant" /* @input: The client has allergy to vaccine components @pseudocode: '"Potential contraindications" = "Severe allergic reactions" @code: The client has allergy to vaccine components-60 @decision: IMMZ.D5.DT.Mumps contraindications */ define "The client has allergy to vaccine components": Elements."The client has history of severe allergic reactions" /* @input: The client has immune deficiency @pseudocode: "Potential contraindications" = "Immunodeficiency syndromes" @code: The client has immune deficiency-60 @decision: IMMZ.D5.DT.Mumps contraindications */ define "The client has immune deficiency": Elements."The client has immunodeficiency syndromes" /* @input: The client is severely immunosuppressed @pseudocode: "Potential contraindications" = "Severely immunosuppressed" @code: The client is severely immunosuppressed-59 @decision: IMMZ.D5.DT.Mumps contraindications */ define "The client is severely immunosuppressed": Elements."The client is severely immunosuppressed" ````: **Version: **
  * ?: 0.2.0
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTMumpsElements */ library IMMZD5DTMumpsElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for Mumps dose */ define "Draft Medication Request for Mumps dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."Mumps-containing vaccines" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.Mumps contraindications */ define "The client is currently pregnant": Elements."The client is pregnant" /* @input: The client has allergy to vaccine components @pseudocode: '"Potential contraindications" = "Severe allergic reactions" @code: The client has allergy to vaccine components-60 @decision: IMMZ.D5.DT.Mumps contraindications */ define "The client has allergy to vaccine components": Elements."The client has history of severe allergic reactions" /* @input: The client has immune deficiency @pseudocode: "Potential contraindications" = "Immunodeficiency syndromes" @code: The client has immune deficiency-60 @decision: IMMZ.D5.DT.Mumps contraindications */ define "The client has immune deficiency": Elements."The client has immunodeficiency syndromes" /* @input: The client is severely immunosuppressed @pseudocode: "Potential contraindications" = "Severely immunosuppressed" @code: The client is severely immunosuppressed-59 @decision: IMMZ.D5.DT.Mumps contraindications */ define "The client is severely immunosuppressed": Elements."The client is severely immunosuppressed" ````: **Url: **
  * ?: [IMMZD5DTMumpsElements](Library-IMMZD5DTMumpsElements.md)
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTMumpsElements */ library IMMZD5DTMumpsElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for Mumps dose */ define "Draft Medication Request for Mumps dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."Mumps-containing vaccines" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.Mumps contraindications */ define "The client is currently pregnant": Elements."The client is pregnant" /* @input: The client has allergy to vaccine components @pseudocode: '"Potential contraindications" = "Severe allergic reactions" @code: The client has allergy to vaccine components-60 @decision: IMMZ.D5.DT.Mumps contraindications */ define "The client has allergy to vaccine components": Elements."The client has history of severe allergic reactions" /* @input: The client has immune deficiency @pseudocode: "Potential contraindications" = "Immunodeficiency syndromes" @code: The client has immune deficiency-60 @decision: IMMZ.D5.DT.Mumps contraindications */ define "The client has immune deficiency": Elements."The client has immunodeficiency syndromes" /* @input: The client is severely immunosuppressed @pseudocode: "Potential contraindications" = "Severely immunosuppressed" @code: The client is severely immunosuppressed-59 @decision: IMMZ.D5.DT.Mumps contraindications */ define "The client is severely immunosuppressed": Elements."The client is severely immunosuppressed" ````: **Status: **
  * ?: draft
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTMumpsElements */ library IMMZD5DTMumpsElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for Mumps dose */ define "Draft Medication Request for Mumps dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."Mumps-containing vaccines" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.Mumps contraindications */ define "The client is currently pregnant": Elements."The client is pregnant" /* @input: The client has allergy to vaccine components @pseudocode: '"Potential contraindications" = "Severe allergic reactions" @code: The client has allergy to vaccine components-60 @decision: IMMZ.D5.DT.Mumps contraindications */ define "The client has allergy to vaccine components": Elements."The client has history of severe allergic reactions" /* @input: The client has immune deficiency @pseudocode: "Potential contraindications" = "Immunodeficiency syndromes" @code: The client has immune deficiency-60 @decision: IMMZ.D5.DT.Mumps contraindications */ define "The client has immune deficiency": Elements."The client has immunodeficiency syndromes" /* @input: The client is severely immunosuppressed @pseudocode: "Potential contraindications" = "Severely immunosuppressed" @code: The client is severely immunosuppressed-59 @decision: IMMZ.D5.DT.Mumps contraindications */ define "The client is severely immunosuppressed": Elements."The client is severely immunosuppressed" ````: **Date: **
  * ?: 2026-03-31 13:43:57+0000
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTMumpsElements */ library IMMZD5DTMumpsElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for Mumps dose */ define "Draft Medication Request for Mumps dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."Mumps-containing vaccines" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.Mumps contraindications */ define "The client is currently pregnant": Elements."The client is pregnant" /* @input: The client has allergy to vaccine components @pseudocode: '"Potential contraindications" = "Severe allergic reactions" @code: The client has allergy to vaccine components-60 @decision: IMMZ.D5.DT.Mumps contraindications */ define "The client has allergy to vaccine components": Elements."The client has history of severe allergic reactions" /* @input: The client has immune deficiency @pseudocode: "Potential contraindications" = "Immunodeficiency syndromes" @code: The client has immune deficiency-60 @decision: IMMZ.D5.DT.Mumps contraindications */ define "The client has immune deficiency": Elements."The client has immunodeficiency syndromes" /* @input: The client is severely immunosuppressed @pseudocode: "Potential contraindications" = "Severely immunosuppressed" @code: The client is severely immunosuppressed-59 @decision: IMMZ.D5.DT.Mumps contraindications */ define "The client is severely immunosuppressed": Elements."The client is severely immunosuppressed" ````: **Publisher: **
  * ?: WHO
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTMumpsElements */ library IMMZD5DTMumpsElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for Mumps dose */ define "Draft Medication Request for Mumps dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."Mumps-containing vaccines" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.Mumps contraindications */ define "The client is currently pregnant": Elements."The client is pregnant" /* @input: The client has allergy to vaccine components @pseudocode: '"Potential contraindications" = "Severe allergic reactions" @code: The client has allergy to vaccine components-60 @decision: IMMZ.D5.DT.Mumps contraindications */ define "The client has allergy to vaccine components": Elements."The client has history of severe allergic reactions" /* @input: The client has immune deficiency @pseudocode: "Potential contraindications" = "Immunodeficiency syndromes" @code: The client has immune deficiency-60 @decision: IMMZ.D5.DT.Mumps contraindications */ define "The client has immune deficiency": Elements."The client has immunodeficiency syndromes" /* @input: The client is severely immunosuppressed @pseudocode: "Potential contraindications" = "Severely immunosuppressed" @code: The client is severely immunosuppressed-59 @decision: IMMZ.D5.DT.Mumps contraindications */ define "The client is severely immunosuppressed": Elements."The client is severely immunosuppressed" ````: **Description: **
  * ?: This library defines context-independent elements for Mumps used throughout the Immunization CPG



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "IMMZD5DTMumpsElements",
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
  "url" : "http://smart.who.int/immunizations/Library/IMMZD5DTMumpsElements",
  "version" : "0.2.0",
  "name" : "IMMZD5DTMumpsElements",
  "title" : "IMMZD5DTMumpsElements",
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
  "description" : "This library defines context-independent elements for Mumps used throughout the Immunization CPG",
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
    "name" : "Draft Medication Request for Mumps dose",
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
    "name" : "The client has allergy to vaccine components",
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
    "name" : "The client is severely immunosuppressed",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  }],
  "content" : [{
    "contentType" : "text/cql",
    "data" : "Ci8qCiAgKiBMaWJyYXJ5OiBJTU1aRDVEVE11bXBzRWxlbWVudHMKICAqLwpsaWJyYXJ5IElNTVpENURUTXVtcHNFbGVtZW50cwoKdXNpbmcgRkhJUiB2ZXJzaW9uICc0LjAuMScKaW5jbHVkZSBGSElSSGVscGVycyB2ZXJzaW9uICc0LjAuMScKCmluY2x1ZGUgV0hPQ29uY2VwdHMKaW5jbHVkZSBXSE9Db21tb24gY2FsbGVkIFdDCmluY2x1ZGUgV0hPRWxlbWVudHMgY2FsbGVkIFdFCgppbmNsdWRlIElNTVpDb21tb24gY2FsbGVkIENvbW1vbgppbmNsdWRlIElNTVpDb25jZXB0cyBjYWxsZWQgQ29uY2VwdHMKaW5jbHVkZSBJTU1aRWxlbWVudHMgY2FsbGVkIEVsZW1lbnRzCgoKY29udGV4dCBQYXRpZW50CgovKgpAaW50ZXJuYWw6IERyYWZ0IE1lZGljYXRpb24gUmVxdWVzdCBmb3IgTXVtcHMgZG9zZQoqLwpkZWZpbmUgIkRyYWZ0IE1lZGljYXRpb24gUmVxdWVzdCBmb3IgTXVtcHMgZG9zZSI6CiAgRWxlbWVudHMuIkRyYWZ0IE1lZGljYXRpb24gUmVxdWVzdCBmb3IgUGF0aWVudCIgTVIKICAgIHdoZXJlIE1SLm1lZGljYXRpb24gaW4gQ29uY2VwdHMuIk11bXBzLWNvbnRhaW5pbmcgdmFjY2luZXMiCgovKgpAaW5wdXQ6IFRoZSBjbGllbnQgaXMgY3VycmVudGx5IHByZWduYW50CkBwc2V1ZG9jb2RlOiAiUG90ZW50aWFsIGNvbnRyYWluZGljYXRpb25zIiA9ICJDdXJyZW50bHkgcHJlZ25hbnQiCkBjb2RlOiBUaGUgY2xpZW50IGlzIGN1cnJlbnRseSBwcmVnbmFudC01MgpAZGVjaXNpb246IElNTVouRDUuRFQuTXVtcHMgY29udHJhaW5kaWNhdGlvbnMKKi8KZGVmaW5lICJUaGUgY2xpZW50IGlzIGN1cnJlbnRseSBwcmVnbmFudCI6CiAgRWxlbWVudHMuIlRoZSBjbGllbnQgaXMgcHJlZ25hbnQiCgovKgpAaW5wdXQ6IFRoZSBjbGllbnQgaGFzIGFsbGVyZ3kgdG8gdmFjY2luZSBjb21wb25lbnRzCkBwc2V1ZG9jb2RlOiAnIlBvdGVudGlhbCBjb250cmFpbmRpY2F0aW9ucyIgPSAiU2V2ZXJlIGFsbGVyZ2ljIHJlYWN0aW9ucyIKQGNvZGU6IFRoZSBjbGllbnQgaGFzIGFsbGVyZ3kgdG8gdmFjY2luZSBjb21wb25lbnRzLTYwCkBkZWNpc2lvbjogSU1NWi5ENS5EVC5NdW1wcyBjb250cmFpbmRpY2F0aW9ucwoqLwpkZWZpbmUgIlRoZSBjbGllbnQgaGFzIGFsbGVyZ3kgdG8gdmFjY2luZSBjb21wb25lbnRzIjoKICBFbGVtZW50cy4iVGhlIGNsaWVudCBoYXMgaGlzdG9yeSBvZiBzZXZlcmUgYWxsZXJnaWMgcmVhY3Rpb25zIgoKLyoKQGlucHV0OiBUaGUgY2xpZW50IGhhcyBpbW11bmUgZGVmaWNpZW5jeQpAcHNldWRvY29kZTogIlBvdGVudGlhbCBjb250cmFpbmRpY2F0aW9ucyIgPSAiSW1tdW5vZGVmaWNpZW5jeSBzeW5kcm9tZXMiCkBjb2RlOiBUaGUgY2xpZW50IGhhcyBpbW11bmUgZGVmaWNpZW5jeS02MApAZGVjaXNpb246IElNTVouRDUuRFQuTXVtcHMgY29udHJhaW5kaWNhdGlvbnMKKi8KZGVmaW5lICJUaGUgY2xpZW50IGhhcyBpbW11bmUgZGVmaWNpZW5jeSI6CiAgRWxlbWVudHMuIlRoZSBjbGllbnQgaGFzIGltbXVub2RlZmljaWVuY3kgc3luZHJvbWVzIgoKLyoKQGlucHV0OiBUaGUgY2xpZW50IGlzIHNldmVyZWx5IGltbXVub3N1cHByZXNzZWQKQHBzZXVkb2NvZGU6ICJQb3RlbnRpYWwgY29udHJhaW5kaWNhdGlvbnMiID0gIlNldmVyZWx5IGltbXVub3N1cHByZXNzZWQiCkBjb2RlOiBUaGUgY2xpZW50IGlzIHNldmVyZWx5IGltbXVub3N1cHByZXNzZWQtNTkKQGRlY2lzaW9uOiBJTU1aLkQ1LkRULk11bXBzIGNvbnRyYWluZGljYXRpb25zCiovCmRlZmluZSAiVGhlIGNsaWVudCBpcyBzZXZlcmVseSBpbW11bm9zdXBwcmVzc2VkIjoKICBFbGVtZW50cy4iVGhlIGNsaWVudCBpcyBzZXZlcmVseSBpbW11bm9zdXBwcmVzc2VkIgo="
  }]
}

```
