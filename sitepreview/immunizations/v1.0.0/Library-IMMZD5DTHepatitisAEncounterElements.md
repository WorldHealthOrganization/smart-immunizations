# IMMZD5DTHepatitisAEncounterElements - WHO Immunization Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD5DTHepatitisAEncounterElements**

## Library: IMMZD5DTHepatitisAEncounterElements 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Library/IMMZD5DTHepatitisAEncounterElements | *Version*:1.0.0 |
| Draft as of 2026-04-09 | *Computable Name*:IMMZD5DTHepatitisAEncounterElements |

 
This library defines encounter-based elements for Hepatitis A used throughout the Immunization CPG 

* * **Content: **text/cql: ```` /* * Library: IMMZD5DTHepatitisAEncounterElements */ library IMMZD5DTHepatitisAEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTHepatitisAElements called HepatitisAElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for Hepatitis A dose */ define "Draft Medication Request for Hepatitis A dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."Hepatitis A-containing vaccines" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.Hepatitis A contraindications */ define "The client is currently pregnant": Encounter."The client is pregnant" /* @input: The client is severely immunocompromised @pseudocode: "Potential contraindications" = "Severely immunocompromised" @code: The client is severely immunocompromised-60 @decision: IMMZ.D5.DT.Hepatitis A contraindications */ define "The client is severely immunocompromised": Encounter."The client is severely immunocompromised" /* @input: The client has a history of severe allergic reactions @pseudocode: '"Potential contraindications" = "Severe allergic reactions" @code: The client has a history of severe allergic reactions-60 @decision: IMMZ.D5.DT.Hepatitis A contraindications */ define "The client has a history of severe allergic reactions": Encounter."The client has history of severe allergic reactions" ````: **Id: **
  * ?: IMMZD5DTHepatitisAEncounterElements
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTHepatitisAEncounterElements */ library IMMZD5DTHepatitisAEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTHepatitisAElements called HepatitisAElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for Hepatitis A dose */ define "Draft Medication Request for Hepatitis A dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."Hepatitis A-containing vaccines" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.Hepatitis A contraindications */ define "The client is currently pregnant": Encounter."The client is pregnant" /* @input: The client is severely immunocompromised @pseudocode: "Potential contraindications" = "Severely immunocompromised" @code: The client is severely immunocompromised-60 @decision: IMMZ.D5.DT.Hepatitis A contraindications */ define "The client is severely immunocompromised": Encounter."The client is severely immunocompromised" /* @input: The client has a history of severe allergic reactions @pseudocode: '"Potential contraindications" = "Severe allergic reactions" @code: The client has a history of severe allergic reactions-60 @decision: IMMZ.D5.DT.Hepatitis A contraindications */ define "The client has a history of severe allergic reactions": Encounter."The client has history of severe allergic reactions" ````: **Version: **
  * ?: 1.0.0
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTHepatitisAEncounterElements */ library IMMZD5DTHepatitisAEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTHepatitisAElements called HepatitisAElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for Hepatitis A dose */ define "Draft Medication Request for Hepatitis A dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."Hepatitis A-containing vaccines" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.Hepatitis A contraindications */ define "The client is currently pregnant": Encounter."The client is pregnant" /* @input: The client is severely immunocompromised @pseudocode: "Potential contraindications" = "Severely immunocompromised" @code: The client is severely immunocompromised-60 @decision: IMMZ.D5.DT.Hepatitis A contraindications */ define "The client is severely immunocompromised": Encounter."The client is severely immunocompromised" /* @input: The client has a history of severe allergic reactions @pseudocode: '"Potential contraindications" = "Severe allergic reactions" @code: The client has a history of severe allergic reactions-60 @decision: IMMZ.D5.DT.Hepatitis A contraindications */ define "The client has a history of severe allergic reactions": Encounter."The client has history of severe allergic reactions" ````: **Url: **
  * ?: [IMMZD5DTHepatitisAEncounterElements](Library-IMMZD5DTHepatitisAEncounterElements.md)
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTHepatitisAEncounterElements */ library IMMZD5DTHepatitisAEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTHepatitisAElements called HepatitisAElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for Hepatitis A dose */ define "Draft Medication Request for Hepatitis A dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."Hepatitis A-containing vaccines" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.Hepatitis A contraindications */ define "The client is currently pregnant": Encounter."The client is pregnant" /* @input: The client is severely immunocompromised @pseudocode: "Potential contraindications" = "Severely immunocompromised" @code: The client is severely immunocompromised-60 @decision: IMMZ.D5.DT.Hepatitis A contraindications */ define "The client is severely immunocompromised": Encounter."The client is severely immunocompromised" /* @input: The client has a history of severe allergic reactions @pseudocode: '"Potential contraindications" = "Severe allergic reactions" @code: The client has a history of severe allergic reactions-60 @decision: IMMZ.D5.DT.Hepatitis A contraindications */ define "The client has a history of severe allergic reactions": Encounter."The client has history of severe allergic reactions" ````: **Status: **
  * ?: draft
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTHepatitisAEncounterElements */ library IMMZD5DTHepatitisAEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTHepatitisAElements called HepatitisAElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for Hepatitis A dose */ define "Draft Medication Request for Hepatitis A dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."Hepatitis A-containing vaccines" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.Hepatitis A contraindications */ define "The client is currently pregnant": Encounter."The client is pregnant" /* @input: The client is severely immunocompromised @pseudocode: "Potential contraindications" = "Severely immunocompromised" @code: The client is severely immunocompromised-60 @decision: IMMZ.D5.DT.Hepatitis A contraindications */ define "The client is severely immunocompromised": Encounter."The client is severely immunocompromised" /* @input: The client has a history of severe allergic reactions @pseudocode: '"Potential contraindications" = "Severe allergic reactions" @code: The client has a history of severe allergic reactions-60 @decision: IMMZ.D5.DT.Hepatitis A contraindications */ define "The client has a history of severe allergic reactions": Encounter."The client has history of severe allergic reactions" ````: **Date: **
  * ?: 2026-04-09 14:18:30+0000
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTHepatitisAEncounterElements */ library IMMZD5DTHepatitisAEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTHepatitisAElements called HepatitisAElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for Hepatitis A dose */ define "Draft Medication Request for Hepatitis A dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."Hepatitis A-containing vaccines" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.Hepatitis A contraindications */ define "The client is currently pregnant": Encounter."The client is pregnant" /* @input: The client is severely immunocompromised @pseudocode: "Potential contraindications" = "Severely immunocompromised" @code: The client is severely immunocompromised-60 @decision: IMMZ.D5.DT.Hepatitis A contraindications */ define "The client is severely immunocompromised": Encounter."The client is severely immunocompromised" /* @input: The client has a history of severe allergic reactions @pseudocode: '"Potential contraindications" = "Severe allergic reactions" @code: The client has a history of severe allergic reactions-60 @decision: IMMZ.D5.DT.Hepatitis A contraindications */ define "The client has a history of severe allergic reactions": Encounter."The client has history of severe allergic reactions" ````: **Publisher: **
  * ?: WHO
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTHepatitisAEncounterElements */ library IMMZD5DTHepatitisAEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTHepatitisAElements called HepatitisAElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for Hepatitis A dose */ define "Draft Medication Request for Hepatitis A dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."Hepatitis A-containing vaccines" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.Hepatitis A contraindications */ define "The client is currently pregnant": Encounter."The client is pregnant" /* @input: The client is severely immunocompromised @pseudocode: "Potential contraindications" = "Severely immunocompromised" @code: The client is severely immunocompromised-60 @decision: IMMZ.D5.DT.Hepatitis A contraindications */ define "The client is severely immunocompromised": Encounter."The client is severely immunocompromised" /* @input: The client has a history of severe allergic reactions @pseudocode: '"Potential contraindications" = "Severe allergic reactions" @code: The client has a history of severe allergic reactions-60 @decision: IMMZ.D5.DT.Hepatitis A contraindications */ define "The client has a history of severe allergic reactions": Encounter."The client has history of severe allergic reactions" ````: **Description: **
  * ?: This library defines encounter-based elements for Hepatitis A used throughout the Immunization CPG



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "IMMZD5DTHepatitisAEncounterElements",
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
  "url" : "http://smart.who.int/immunizations/Library/IMMZD5DTHepatitisAEncounterElements",
  "version" : "1.0.0",
  "name" : "IMMZD5DTHepatitisAEncounterElements",
  "title" : "IMMZD5DTHepatitisAEncounterElements",
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
  "description" : "This library defines encounter-based elements for Hepatitis A used throughout the Immunization CPG",
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
    "display" : "Library HepatitisAElements",
    "resource" : "http://smart.who.int/immunizations/Library/IMMZD5DTHepatitisAElements"
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
    "data" : "Ci8qCiAgKiBMaWJyYXJ5OiBJTU1aRDVEVEhlcGF0aXRpc0FFbmNvdW50ZXJFbGVtZW50cwogICovCmxpYnJhcnkgSU1NWkQ1RFRIZXBhdGl0aXNBRW5jb3VudGVyRWxlbWVudHMKCnVzaW5nIEZISVIgdmVyc2lvbiAnNC4wLjEnCmluY2x1ZGUgRkhJUkhlbHBlcnMgdmVyc2lvbiAnNC4wLjEnCgppbmNsdWRlIFdIT0NvbmNlcHRzCmluY2x1ZGUgV0hPQ29tbW9uIGNhbGxlZCBXQwppbmNsdWRlIFdIT0VsZW1lbnRzIGNhbGxlZCBXRQoKaW5jbHVkZSBJTU1aQ29tbW9uIGNhbGxlZCBDb21tb24KaW5jbHVkZSBJTU1aQ29uY2VwdHMgY2FsbGVkIENvbmNlcHRzCmluY2x1ZGUgSU1NWkVuY291bnRlckVsZW1lbnRzIGNhbGxlZCBFbmNvdW50ZXIKCmluY2x1ZGUgSU1NWkQ1RFRIZXBhdGl0aXNBRWxlbWVudHMgY2FsbGVkIEhlcGF0aXRpc0FFbGVtZW50cwoKcGFyYW1ldGVyIFRvZGF5IERhdGUgZGVmYXVsdCBUb2RheSgpCnBhcmFtZXRlciBFbmNvdW50ZXJJZCBTdHJpbmcKCmNvbnRleHQgUGF0aWVudAoKLyoKQGludGVybmFsOiBEcmFmdCBNZWRpY2F0aW9uIFJlcXVlc3QgZm9yIEhlcGF0aXRpcyBBIGRvc2UKKi8KZGVmaW5lICJEcmFmdCBNZWRpY2F0aW9uIFJlcXVlc3QgZm9yIEhlcGF0aXRpcyBBIGRvc2UiOgogIEVuY291bnRlci4iRHJhZnQgTWVkaWNhdGlvbiBSZXF1ZXN0IGZvciBQYXRpZW50IiBNUgogICAgd2hlcmUgTVIubWVkaWNhdGlvbiBpbiBDb25jZXB0cy4iSGVwYXRpdGlzIEEtY29udGFpbmluZyB2YWNjaW5lcyIKCi8qCkBpbnB1dDogVGhlIGNsaWVudCBpcyBjdXJyZW50bHkgcHJlZ25hbnQKQHBzZXVkb2NvZGU6ICJQb3RlbnRpYWwgY29udHJhaW5kaWNhdGlvbnMiID0gIkN1cnJlbnRseSBwcmVnbmFudCIKQGNvZGU6IFRoZSBjbGllbnQgaXMgY3VycmVudGx5IHByZWduYW50LTUyCkBkZWNpc2lvbjogSU1NWi5ENS5EVC5IZXBhdGl0aXMgQSBjb250cmFpbmRpY2F0aW9ucwoqLwpkZWZpbmUgIlRoZSBjbGllbnQgaXMgY3VycmVudGx5IHByZWduYW50IjoKICBFbmNvdW50ZXIuIlRoZSBjbGllbnQgaXMgcHJlZ25hbnQiCgovKgpAaW5wdXQ6IFRoZSBjbGllbnQgaXMgc2V2ZXJlbHkgaW1tdW5vY29tcHJvbWlzZWQKQHBzZXVkb2NvZGU6ICJQb3RlbnRpYWwgY29udHJhaW5kaWNhdGlvbnMiID0gIlNldmVyZWx5IGltbXVub2NvbXByb21pc2VkIgpAY29kZTogVGhlIGNsaWVudCBpcyBzZXZlcmVseSBpbW11bm9jb21wcm9taXNlZC02MApAZGVjaXNpb246IElNTVouRDUuRFQuSGVwYXRpdGlzIEEgY29udHJhaW5kaWNhdGlvbnMKKi8KZGVmaW5lICJUaGUgY2xpZW50IGlzIHNldmVyZWx5IGltbXVub2NvbXByb21pc2VkIjoKICBFbmNvdW50ZXIuIlRoZSBjbGllbnQgaXMgc2V2ZXJlbHkgaW1tdW5vY29tcHJvbWlzZWQiCgovKgpAaW5wdXQ6IFRoZSBjbGllbnQgaGFzIGEgaGlzdG9yeSBvZiBzZXZlcmUgYWxsZXJnaWMgcmVhY3Rpb25zCkBwc2V1ZG9jb2RlOiAnIlBvdGVudGlhbCBjb250cmFpbmRpY2F0aW9ucyIgPSAiU2V2ZXJlIGFsbGVyZ2ljIHJlYWN0aW9ucyIKQGNvZGU6IFRoZSBjbGllbnQgaGFzIGEgaGlzdG9yeSBvZiBzZXZlcmUgYWxsZXJnaWMgcmVhY3Rpb25zLTYwCkBkZWNpc2lvbjogSU1NWi5ENS5EVC5IZXBhdGl0aXMgQSBjb250cmFpbmRpY2F0aW9ucwoqLwpkZWZpbmUgIlRoZSBjbGllbnQgaGFzIGEgaGlzdG9yeSBvZiBzZXZlcmUgYWxsZXJnaWMgcmVhY3Rpb25zIjoKICBFbmNvdW50ZXIuIlRoZSBjbGllbnQgaGFzIGhpc3Rvcnkgb2Ygc2V2ZXJlIGFsbGVyZ2ljIHJlYWN0aW9ucyIK"
  }]
}

```
