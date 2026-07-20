# IMMZD5DTSeasonalinfluenzaElements - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD5DTSeasonalinfluenzaElements**

## Library: IMMZD5DTSeasonalinfluenzaElements 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Library/IMMZD5DTSeasonalinfluenzaElements | *Version*:0.2.0 |
| Draft as of 2026-03-31 | *Computable Name*:IMMZD5DTSeasonalinfluenzaElements |

 
This library defines context-independent elements for Seasonal influenza used throughout the Immunization CPG 

* * **Content: **text/cql: ```` /* * Library: IMMZD5DTSeasonalinfluenzaElements */ library IMMZD5DTSeasonalinfluenzaElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for Seasonal influenza dose */ define "Draft Medication Request for Seasonal influenza dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."Seasonal influenza vaccines" /* @input: The client has a history of anaphylactic reactions @pseudocode: "Potential contraindications" = "History of anaphylactic reactions" @code: The client has a history of anaphylactic reactions-67 @decision: IMMZ.D5.DT.Seasonal influenza contraindications */ define "The client has a history of anaphylactic reactions": Elements."The client has history of anaphylactic reactions" /* @input: The client has a history of severe allergic reactions after a previous dose or to a vaccine component @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has a history of severe allergic reactions after a previous dose or to a vaccine component-59 @decision: IMMZ.D5.DT.Seasonal influenza contraindications */ define "The client has a history of severe allergic reactions after a previous dose or to a vaccine component": Elements."The client has history of severe allergic reactions" ````: **Id: **
  * ?: IMMZD5DTSeasonalinfluenzaElements
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTSeasonalinfluenzaElements */ library IMMZD5DTSeasonalinfluenzaElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for Seasonal influenza dose */ define "Draft Medication Request for Seasonal influenza dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."Seasonal influenza vaccines" /* @input: The client has a history of anaphylactic reactions @pseudocode: "Potential contraindications" = "History of anaphylactic reactions" @code: The client has a history of anaphylactic reactions-67 @decision: IMMZ.D5.DT.Seasonal influenza contraindications */ define "The client has a history of anaphylactic reactions": Elements."The client has history of anaphylactic reactions" /* @input: The client has a history of severe allergic reactions after a previous dose or to a vaccine component @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has a history of severe allergic reactions after a previous dose or to a vaccine component-59 @decision: IMMZ.D5.DT.Seasonal influenza contraindications */ define "The client has a history of severe allergic reactions after a previous dose or to a vaccine component": Elements."The client has history of severe allergic reactions" ````: **Version: **
  * ?: 0.2.0
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTSeasonalinfluenzaElements */ library IMMZD5DTSeasonalinfluenzaElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for Seasonal influenza dose */ define "Draft Medication Request for Seasonal influenza dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."Seasonal influenza vaccines" /* @input: The client has a history of anaphylactic reactions @pseudocode: "Potential contraindications" = "History of anaphylactic reactions" @code: The client has a history of anaphylactic reactions-67 @decision: IMMZ.D5.DT.Seasonal influenza contraindications */ define "The client has a history of anaphylactic reactions": Elements."The client has history of anaphylactic reactions" /* @input: The client has a history of severe allergic reactions after a previous dose or to a vaccine component @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has a history of severe allergic reactions after a previous dose or to a vaccine component-59 @decision: IMMZ.D5.DT.Seasonal influenza contraindications */ define "The client has a history of severe allergic reactions after a previous dose or to a vaccine component": Elements."The client has history of severe allergic reactions" ````: **Url: **
  * ?: [IMMZD5DTSeasonalinfluenzaElements](Library-IMMZD5DTSeasonalinfluenzaElements.md)
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTSeasonalinfluenzaElements */ library IMMZD5DTSeasonalinfluenzaElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for Seasonal influenza dose */ define "Draft Medication Request for Seasonal influenza dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."Seasonal influenza vaccines" /* @input: The client has a history of anaphylactic reactions @pseudocode: "Potential contraindications" = "History of anaphylactic reactions" @code: The client has a history of anaphylactic reactions-67 @decision: IMMZ.D5.DT.Seasonal influenza contraindications */ define "The client has a history of anaphylactic reactions": Elements."The client has history of anaphylactic reactions" /* @input: The client has a history of severe allergic reactions after a previous dose or to a vaccine component @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has a history of severe allergic reactions after a previous dose or to a vaccine component-59 @decision: IMMZ.D5.DT.Seasonal influenza contraindications */ define "The client has a history of severe allergic reactions after a previous dose or to a vaccine component": Elements."The client has history of severe allergic reactions" ````: **Status: **
  * ?: draft
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTSeasonalinfluenzaElements */ library IMMZD5DTSeasonalinfluenzaElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for Seasonal influenza dose */ define "Draft Medication Request for Seasonal influenza dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."Seasonal influenza vaccines" /* @input: The client has a history of anaphylactic reactions @pseudocode: "Potential contraindications" = "History of anaphylactic reactions" @code: The client has a history of anaphylactic reactions-67 @decision: IMMZ.D5.DT.Seasonal influenza contraindications */ define "The client has a history of anaphylactic reactions": Elements."The client has history of anaphylactic reactions" /* @input: The client has a history of severe allergic reactions after a previous dose or to a vaccine component @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has a history of severe allergic reactions after a previous dose or to a vaccine component-59 @decision: IMMZ.D5.DT.Seasonal influenza contraindications */ define "The client has a history of severe allergic reactions after a previous dose or to a vaccine component": Elements."The client has history of severe allergic reactions" ````: **Date: **
  * ?: 2026-03-31 13:43:57+0000
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTSeasonalinfluenzaElements */ library IMMZD5DTSeasonalinfluenzaElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for Seasonal influenza dose */ define "Draft Medication Request for Seasonal influenza dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."Seasonal influenza vaccines" /* @input: The client has a history of anaphylactic reactions @pseudocode: "Potential contraindications" = "History of anaphylactic reactions" @code: The client has a history of anaphylactic reactions-67 @decision: IMMZ.D5.DT.Seasonal influenza contraindications */ define "The client has a history of anaphylactic reactions": Elements."The client has history of anaphylactic reactions" /* @input: The client has a history of severe allergic reactions after a previous dose or to a vaccine component @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has a history of severe allergic reactions after a previous dose or to a vaccine component-59 @decision: IMMZ.D5.DT.Seasonal influenza contraindications */ define "The client has a history of severe allergic reactions after a previous dose or to a vaccine component": Elements."The client has history of severe allergic reactions" ````: **Publisher: **
  * ?: WHO
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTSeasonalinfluenzaElements */ library IMMZD5DTSeasonalinfluenzaElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for Seasonal influenza dose */ define "Draft Medication Request for Seasonal influenza dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."Seasonal influenza vaccines" /* @input: The client has a history of anaphylactic reactions @pseudocode: "Potential contraindications" = "History of anaphylactic reactions" @code: The client has a history of anaphylactic reactions-67 @decision: IMMZ.D5.DT.Seasonal influenza contraindications */ define "The client has a history of anaphylactic reactions": Elements."The client has history of anaphylactic reactions" /* @input: The client has a history of severe allergic reactions after a previous dose or to a vaccine component @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has a history of severe allergic reactions after a previous dose or to a vaccine component-59 @decision: IMMZ.D5.DT.Seasonal influenza contraindications */ define "The client has a history of severe allergic reactions after a previous dose or to a vaccine component": Elements."The client has history of severe allergic reactions" ````: **Description: **
  * ?: This library defines context-independent elements for Seasonal influenza used throughout the Immunization CPG



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "IMMZD5DTSeasonalinfluenzaElements",
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
  "url" : "http://smart.who.int/immunizations/Library/IMMZD5DTSeasonalinfluenzaElements",
  "version" : "0.2.0",
  "name" : "IMMZD5DTSeasonalinfluenzaElements",
  "title" : "IMMZD5DTSeasonalinfluenzaElements",
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
  "description" : "This library defines context-independent elements for Seasonal influenza used throughout the Immunization CPG",
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
    "name" : "Draft Medication Request for Seasonal influenza dose",
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
    "name" : "The client has a history of severe allergic reactions after a previous dose or to a vaccine component",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  }],
  "content" : [{
    "contentType" : "text/cql",
    "data" : "Ci8qCiAgKiBMaWJyYXJ5OiBJTU1aRDVEVFNlYXNvbmFsaW5mbHVlbnphRWxlbWVudHMKICAqLwpsaWJyYXJ5IElNTVpENURUU2Vhc29uYWxpbmZsdWVuemFFbGVtZW50cwoKdXNpbmcgRkhJUiB2ZXJzaW9uICc0LjAuMScKaW5jbHVkZSBGSElSSGVscGVycyB2ZXJzaW9uICc0LjAuMScKCmluY2x1ZGUgV0hPQ29uY2VwdHMKaW5jbHVkZSBXSE9Db21tb24gY2FsbGVkIFdDCmluY2x1ZGUgV0hPRWxlbWVudHMgY2FsbGVkIFdFCgppbmNsdWRlIElNTVpDb21tb24gY2FsbGVkIENvbW1vbgppbmNsdWRlIElNTVpDb25jZXB0cyBjYWxsZWQgQ29uY2VwdHMKaW5jbHVkZSBJTU1aRWxlbWVudHMgY2FsbGVkIEVsZW1lbnRzCgoKY29udGV4dCBQYXRpZW50CgovKgpAaW50ZXJuYWw6IERyYWZ0IE1lZGljYXRpb24gUmVxdWVzdCBmb3IgU2Vhc29uYWwgaW5mbHVlbnphIGRvc2UKKi8KZGVmaW5lICJEcmFmdCBNZWRpY2F0aW9uIFJlcXVlc3QgZm9yIFNlYXNvbmFsIGluZmx1ZW56YSBkb3NlIjoKICBFbGVtZW50cy4iRHJhZnQgTWVkaWNhdGlvbiBSZXF1ZXN0IGZvciBQYXRpZW50IiBNUgogICAgd2hlcmUgTVIubWVkaWNhdGlvbiBpbiBDb25jZXB0cy4iU2Vhc29uYWwgaW5mbHVlbnphIHZhY2NpbmVzIgoKLyoKQGlucHV0OiBUaGUgY2xpZW50IGhhcyBhIGhpc3Rvcnkgb2YgYW5hcGh5bGFjdGljIHJlYWN0aW9ucwpAcHNldWRvY29kZTogIlBvdGVudGlhbCBjb250cmFpbmRpY2F0aW9ucyIgPSAiSGlzdG9yeSBvZiBhbmFwaHlsYWN0aWMgcmVhY3Rpb25zIgpAY29kZTogVGhlIGNsaWVudCBoYXMgYSBoaXN0b3J5IG9mIGFuYXBoeWxhY3RpYyByZWFjdGlvbnMtNjcKQGRlY2lzaW9uOiBJTU1aLkQ1LkRULlNlYXNvbmFsIGluZmx1ZW56YSBjb250cmFpbmRpY2F0aW9ucwoqLwpkZWZpbmUgIlRoZSBjbGllbnQgaGFzIGEgaGlzdG9yeSBvZiBhbmFwaHlsYWN0aWMgcmVhY3Rpb25zIjoKICBFbGVtZW50cy4iVGhlIGNsaWVudCBoYXMgaGlzdG9yeSBvZiBhbmFwaHlsYWN0aWMgcmVhY3Rpb25zIgoKLyoKQGlucHV0OiBUaGUgY2xpZW50IGhhcyBhIGhpc3Rvcnkgb2Ygc2V2ZXJlIGFsbGVyZ2ljIHJlYWN0aW9ucyBhZnRlciBhIHByZXZpb3VzIGRvc2Ugb3IgdG8gYSB2YWNjaW5lIGNvbXBvbmVudApAcHNldWRvY29kZTogIlBvdGVudGlhbCBjb250cmFpbmRpY2F0aW9ucyIgPSAiU2V2ZXJlIGFsbGVyZ2ljIHJlYWN0aW9ucyIKQGNvZGU6IFRoZSBjbGllbnQgaGFzIGEgaGlzdG9yeSBvZiBzZXZlcmUgYWxsZXJnaWMgcmVhY3Rpb25zIGFmdGVyIGEgcHJldmlvdXMgZG9zZSBvciB0byBhIHZhY2NpbmUgY29tcG9uZW50LTU5CkBkZWNpc2lvbjogSU1NWi5ENS5EVC5TZWFzb25hbCBpbmZsdWVuemEgY29udHJhaW5kaWNhdGlvbnMKKi8KZGVmaW5lICJUaGUgY2xpZW50IGhhcyBhIGhpc3Rvcnkgb2Ygc2V2ZXJlIGFsbGVyZ2ljIHJlYWN0aW9ucyBhZnRlciBhIHByZXZpb3VzIGRvc2Ugb3IgdG8gYSB2YWNjaW5lIGNvbXBvbmVudCI6CiAgRWxlbWVudHMuIlRoZSBjbGllbnQgaGFzIGhpc3Rvcnkgb2Ygc2V2ZXJlIGFsbGVyZ2ljIHJlYWN0aW9ucyIK"
  }]
}

```
