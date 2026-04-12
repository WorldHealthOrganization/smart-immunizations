# IMMZD5DTJEEncounterElements - WHO Immunization Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD5DTJEEncounterElements**

## Library: IMMZD5DTJEEncounterElements 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Library/IMMZD5DTJEEncounterElements | *Version*:1.0.0 |
| Draft as of 2026-04-09 | *Computable Name*:IMMZD5DTJEEncounterElements |

 
This library defines encounter-based elements for JE used throughout the Immunization CPG 

* * **Content: **text/cql: ```` /* * Library: IMMZD5DTJEEncounterElements */ library IMMZD5DTJEEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTJEElements called JEElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for JE dose */ define "Draft Medication Request for JE dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."JE vaccines" /* @input: The client is immunocomprised @pseudocode: "Potential contraindications" = "Immunocompromised" @code: The client is immunocomprised-51 @decision: IMMZ.D5.DT.JE contraindications */ define "The client is immunocomprised": Encounter."The client is immunocompromised" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.JE contraindications */ define "The client is currently pregnant": Encounter."The client is pregnant" ````: **Id: **
  * ?: IMMZD5DTJEEncounterElements
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTJEEncounterElements */ library IMMZD5DTJEEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTJEElements called JEElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for JE dose */ define "Draft Medication Request for JE dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."JE vaccines" /* @input: The client is immunocomprised @pseudocode: "Potential contraindications" = "Immunocompromised" @code: The client is immunocomprised-51 @decision: IMMZ.D5.DT.JE contraindications */ define "The client is immunocomprised": Encounter."The client is immunocompromised" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.JE contraindications */ define "The client is currently pregnant": Encounter."The client is pregnant" ````: **Version: **
  * ?: 1.0.0
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTJEEncounterElements */ library IMMZD5DTJEEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTJEElements called JEElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for JE dose */ define "Draft Medication Request for JE dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."JE vaccines" /* @input: The client is immunocomprised @pseudocode: "Potential contraindications" = "Immunocompromised" @code: The client is immunocomprised-51 @decision: IMMZ.D5.DT.JE contraindications */ define "The client is immunocomprised": Encounter."The client is immunocompromised" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.JE contraindications */ define "The client is currently pregnant": Encounter."The client is pregnant" ````: **Url: **
  * ?: [IMMZD5DTJEEncounterElements](Library-IMMZD5DTJEEncounterElements.md)
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTJEEncounterElements */ library IMMZD5DTJEEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTJEElements called JEElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for JE dose */ define "Draft Medication Request for JE dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."JE vaccines" /* @input: The client is immunocomprised @pseudocode: "Potential contraindications" = "Immunocompromised" @code: The client is immunocomprised-51 @decision: IMMZ.D5.DT.JE contraindications */ define "The client is immunocomprised": Encounter."The client is immunocompromised" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.JE contraindications */ define "The client is currently pregnant": Encounter."The client is pregnant" ````: **Status: **
  * ?: draft
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTJEEncounterElements */ library IMMZD5DTJEEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTJEElements called JEElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for JE dose */ define "Draft Medication Request for JE dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."JE vaccines" /* @input: The client is immunocomprised @pseudocode: "Potential contraindications" = "Immunocompromised" @code: The client is immunocomprised-51 @decision: IMMZ.D5.DT.JE contraindications */ define "The client is immunocomprised": Encounter."The client is immunocompromised" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.JE contraindications */ define "The client is currently pregnant": Encounter."The client is pregnant" ````: **Date: **
  * ?: 2026-04-09 14:34:42+0000
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTJEEncounterElements */ library IMMZD5DTJEEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTJEElements called JEElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for JE dose */ define "Draft Medication Request for JE dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."JE vaccines" /* @input: The client is immunocomprised @pseudocode: "Potential contraindications" = "Immunocompromised" @code: The client is immunocomprised-51 @decision: IMMZ.D5.DT.JE contraindications */ define "The client is immunocomprised": Encounter."The client is immunocompromised" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.JE contraindications */ define "The client is currently pregnant": Encounter."The client is pregnant" ````: **Publisher: **
  * ?: WHO
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTJEEncounterElements */ library IMMZD5DTJEEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTJEElements called JEElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for JE dose */ define "Draft Medication Request for JE dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."JE vaccines" /* @input: The client is immunocomprised @pseudocode: "Potential contraindications" = "Immunocompromised" @code: The client is immunocomprised-51 @decision: IMMZ.D5.DT.JE contraindications */ define "The client is immunocomprised": Encounter."The client is immunocompromised" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.JE contraindications */ define "The client is currently pregnant": Encounter."The client is pregnant" ````: **Description: **
  * ?: This library defines encounter-based elements for JE used throughout the Immunization CPG



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "IMMZD5DTJEEncounterElements",
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
  "url" : "http://smart.who.int/immunizations/Library/IMMZD5DTJEEncounterElements",
  "version" : "1.0.0",
  "name" : "IMMZD5DTJEEncounterElements",
  "title" : "IMMZD5DTJEEncounterElements",
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
  "description" : "This library defines encounter-based elements for JE used throughout the Immunization CPG",
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
    "display" : "Library JEElements",
    "resource" : "http://smart.who.int/immunizations/Library/IMMZD5DTJEElements"
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
    "data" : "Ci8qCiAgKiBMaWJyYXJ5OiBJTU1aRDVEVEpFRW5jb3VudGVyRWxlbWVudHMKICAqLwpsaWJyYXJ5IElNTVpENURUSkVFbmNvdW50ZXJFbGVtZW50cwoKdXNpbmcgRkhJUiB2ZXJzaW9uICc0LjAuMScKaW5jbHVkZSBGSElSSGVscGVycyB2ZXJzaW9uICc0LjAuMScKCmluY2x1ZGUgV0hPQ29uY2VwdHMKaW5jbHVkZSBXSE9Db21tb24gY2FsbGVkIFdDCmluY2x1ZGUgV0hPRWxlbWVudHMgY2FsbGVkIFdFCgppbmNsdWRlIElNTVpDb21tb24gY2FsbGVkIENvbW1vbgppbmNsdWRlIElNTVpDb25jZXB0cyBjYWxsZWQgQ29uY2VwdHMKaW5jbHVkZSBJTU1aRW5jb3VudGVyRWxlbWVudHMgY2FsbGVkIEVuY291bnRlcgoKaW5jbHVkZSBJTU1aRDVEVEpFRWxlbWVudHMgY2FsbGVkIEpFRWxlbWVudHMKCnBhcmFtZXRlciBUb2RheSBEYXRlIGRlZmF1bHQgVG9kYXkoKQpwYXJhbWV0ZXIgRW5jb3VudGVySWQgU3RyaW5nCgpjb250ZXh0IFBhdGllbnQKCi8qCkBpbnRlcm5hbDogRHJhZnQgTWVkaWNhdGlvbiBSZXF1ZXN0IGZvciBKRSBkb3NlCiovCmRlZmluZSAiRHJhZnQgTWVkaWNhdGlvbiBSZXF1ZXN0IGZvciBKRSBkb3NlIjoKICBFbmNvdW50ZXIuIkRyYWZ0IE1lZGljYXRpb24gUmVxdWVzdCBmb3IgUGF0aWVudCIgTVIKICAgIHdoZXJlIE1SLm1lZGljYXRpb24gaW4gQ29uY2VwdHMuIkpFIHZhY2NpbmVzIgoKLyoKQGlucHV0OiBUaGUgY2xpZW50IGlzIGltbXVub2NvbXByaXNlZApAcHNldWRvY29kZTogIlBvdGVudGlhbCBjb250cmFpbmRpY2F0aW9ucyIgPSAiSW1tdW5vY29tcHJvbWlzZWQiCkBjb2RlOiBUaGUgY2xpZW50IGlzIGltbXVub2NvbXByaXNlZC01MQpAZGVjaXNpb246IElNTVouRDUuRFQuSkUgY29udHJhaW5kaWNhdGlvbnMKKi8KZGVmaW5lICJUaGUgY2xpZW50IGlzIGltbXVub2NvbXByaXNlZCI6CiAgRW5jb3VudGVyLiJUaGUgY2xpZW50IGlzIGltbXVub2NvbXByb21pc2VkIgoKLyoKQGlucHV0OiBUaGUgY2xpZW50IGlzIGN1cnJlbnRseSBwcmVnbmFudApAcHNldWRvY29kZTogIlBvdGVudGlhbCBjb250cmFpbmRpY2F0aW9ucyIgPSAiQ3VycmVudGx5IHByZWduYW50IgpAY29kZTogVGhlIGNsaWVudCBpcyBjdXJyZW50bHkgcHJlZ25hbnQtNTIKQGRlY2lzaW9uOiBJTU1aLkQ1LkRULkpFIGNvbnRyYWluZGljYXRpb25zCiovCmRlZmluZSAiVGhlIGNsaWVudCBpcyBjdXJyZW50bHkgcHJlZ25hbnQiOgogIEVuY291bnRlci4iVGhlIGNsaWVudCBpcyBwcmVnbmFudCIK"
  }]
}

```
