# IMMZD5DTPolioEncounterElements - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD5DTPolioEncounterElements**

## Library: IMMZD5DTPolioEncounterElements 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Library/IMMZD5DTPolioEncounterElements | *Version*:0.2.0 |
| Draft as of 2026-03-31 | *Computable Name*:IMMZD5DTPolioEncounterElements |

 
This library defines encounter-based elements for Polio used throughout the Immunization CPG 

* * **Content: **text/cql: ```` /* * Library: IMMZD5DTPolioEncounterElements */ library IMMZD5DTPolioEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTPolioElements called PolioElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for Polio dose */ define "Draft Medication Request for Polio dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."Poliovirus-containing vaccines" /* @input: The client has history of severe allergic reactions @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has history of severe allergic reactions-59 @decision: IMMZ.D5.DT.Polio contraindications */ define "The client has history of severe allergic reactions": Encounter."The client has history of severe allergic reactions" /* @input: The client is severely immunocompromised @pseudocode: "Potential contraindications" = "Severely immunocompromised" @code: The client is severely immunocompromised-60 @decision: IMMZ.D5.DT.Polio contraindications */ define "The client is severely immunocompromised": Encounter."The client is severely immunocompromised" /* @input: The client has immunodeficiency syndromes @pseudocode: "Potential contraindications" = "Immunodeficiency syndromes" @code: The client has immunodeficiency syndromes-60 @decision: IMMZ.D5.DT.Polio contraindications */ define "The client has immunodeficiency syndromes": Encounter."The client has immunodeficiency syndromes" /* @internal: Draft Medication Request for bOPV dose */ define "Draft Medication Request for bOPV dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."Oral polio vaccines" ````: **Id: **
  * ?: IMMZD5DTPolioEncounterElements
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTPolioEncounterElements */ library IMMZD5DTPolioEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTPolioElements called PolioElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for Polio dose */ define "Draft Medication Request for Polio dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."Poliovirus-containing vaccines" /* @input: The client has history of severe allergic reactions @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has history of severe allergic reactions-59 @decision: IMMZ.D5.DT.Polio contraindications */ define "The client has history of severe allergic reactions": Encounter."The client has history of severe allergic reactions" /* @input: The client is severely immunocompromised @pseudocode: "Potential contraindications" = "Severely immunocompromised" @code: The client is severely immunocompromised-60 @decision: IMMZ.D5.DT.Polio contraindications */ define "The client is severely immunocompromised": Encounter."The client is severely immunocompromised" /* @input: The client has immunodeficiency syndromes @pseudocode: "Potential contraindications" = "Immunodeficiency syndromes" @code: The client has immunodeficiency syndromes-60 @decision: IMMZ.D5.DT.Polio contraindications */ define "The client has immunodeficiency syndromes": Encounter."The client has immunodeficiency syndromes" /* @internal: Draft Medication Request for bOPV dose */ define "Draft Medication Request for bOPV dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."Oral polio vaccines" ````: **Version: **
  * ?: 0.2.0
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTPolioEncounterElements */ library IMMZD5DTPolioEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTPolioElements called PolioElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for Polio dose */ define "Draft Medication Request for Polio dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."Poliovirus-containing vaccines" /* @input: The client has history of severe allergic reactions @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has history of severe allergic reactions-59 @decision: IMMZ.D5.DT.Polio contraindications */ define "The client has history of severe allergic reactions": Encounter."The client has history of severe allergic reactions" /* @input: The client is severely immunocompromised @pseudocode: "Potential contraindications" = "Severely immunocompromised" @code: The client is severely immunocompromised-60 @decision: IMMZ.D5.DT.Polio contraindications */ define "The client is severely immunocompromised": Encounter."The client is severely immunocompromised" /* @input: The client has immunodeficiency syndromes @pseudocode: "Potential contraindications" = "Immunodeficiency syndromes" @code: The client has immunodeficiency syndromes-60 @decision: IMMZ.D5.DT.Polio contraindications */ define "The client has immunodeficiency syndromes": Encounter."The client has immunodeficiency syndromes" /* @internal: Draft Medication Request for bOPV dose */ define "Draft Medication Request for bOPV dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."Oral polio vaccines" ````: **Url: **
  * ?: [IMMZD5DTPolioEncounterElements](Library-IMMZD5DTPolioEncounterElements.md)
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTPolioEncounterElements */ library IMMZD5DTPolioEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTPolioElements called PolioElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for Polio dose */ define "Draft Medication Request for Polio dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."Poliovirus-containing vaccines" /* @input: The client has history of severe allergic reactions @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has history of severe allergic reactions-59 @decision: IMMZ.D5.DT.Polio contraindications */ define "The client has history of severe allergic reactions": Encounter."The client has history of severe allergic reactions" /* @input: The client is severely immunocompromised @pseudocode: "Potential contraindications" = "Severely immunocompromised" @code: The client is severely immunocompromised-60 @decision: IMMZ.D5.DT.Polio contraindications */ define "The client is severely immunocompromised": Encounter."The client is severely immunocompromised" /* @input: The client has immunodeficiency syndromes @pseudocode: "Potential contraindications" = "Immunodeficiency syndromes" @code: The client has immunodeficiency syndromes-60 @decision: IMMZ.D5.DT.Polio contraindications */ define "The client has immunodeficiency syndromes": Encounter."The client has immunodeficiency syndromes" /* @internal: Draft Medication Request for bOPV dose */ define "Draft Medication Request for bOPV dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."Oral polio vaccines" ````: **Status: **
  * ?: draft
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTPolioEncounterElements */ library IMMZD5DTPolioEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTPolioElements called PolioElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for Polio dose */ define "Draft Medication Request for Polio dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."Poliovirus-containing vaccines" /* @input: The client has history of severe allergic reactions @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has history of severe allergic reactions-59 @decision: IMMZ.D5.DT.Polio contraindications */ define "The client has history of severe allergic reactions": Encounter."The client has history of severe allergic reactions" /* @input: The client is severely immunocompromised @pseudocode: "Potential contraindications" = "Severely immunocompromised" @code: The client is severely immunocompromised-60 @decision: IMMZ.D5.DT.Polio contraindications */ define "The client is severely immunocompromised": Encounter."The client is severely immunocompromised" /* @input: The client has immunodeficiency syndromes @pseudocode: "Potential contraindications" = "Immunodeficiency syndromes" @code: The client has immunodeficiency syndromes-60 @decision: IMMZ.D5.DT.Polio contraindications */ define "The client has immunodeficiency syndromes": Encounter."The client has immunodeficiency syndromes" /* @internal: Draft Medication Request for bOPV dose */ define "Draft Medication Request for bOPV dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."Oral polio vaccines" ````: **Date: **
  * ?: 2026-03-31 13:43:57+0000
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTPolioEncounterElements */ library IMMZD5DTPolioEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTPolioElements called PolioElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for Polio dose */ define "Draft Medication Request for Polio dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."Poliovirus-containing vaccines" /* @input: The client has history of severe allergic reactions @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has history of severe allergic reactions-59 @decision: IMMZ.D5.DT.Polio contraindications */ define "The client has history of severe allergic reactions": Encounter."The client has history of severe allergic reactions" /* @input: The client is severely immunocompromised @pseudocode: "Potential contraindications" = "Severely immunocompromised" @code: The client is severely immunocompromised-60 @decision: IMMZ.D5.DT.Polio contraindications */ define "The client is severely immunocompromised": Encounter."The client is severely immunocompromised" /* @input: The client has immunodeficiency syndromes @pseudocode: "Potential contraindications" = "Immunodeficiency syndromes" @code: The client has immunodeficiency syndromes-60 @decision: IMMZ.D5.DT.Polio contraindications */ define "The client has immunodeficiency syndromes": Encounter."The client has immunodeficiency syndromes" /* @internal: Draft Medication Request for bOPV dose */ define "Draft Medication Request for bOPV dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."Oral polio vaccines" ````: **Publisher: **
  * ?: WHO
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTPolioEncounterElements */ library IMMZD5DTPolioEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTPolioElements called PolioElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for Polio dose */ define "Draft Medication Request for Polio dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."Poliovirus-containing vaccines" /* @input: The client has history of severe allergic reactions @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has history of severe allergic reactions-59 @decision: IMMZ.D5.DT.Polio contraindications */ define "The client has history of severe allergic reactions": Encounter."The client has history of severe allergic reactions" /* @input: The client is severely immunocompromised @pseudocode: "Potential contraindications" = "Severely immunocompromised" @code: The client is severely immunocompromised-60 @decision: IMMZ.D5.DT.Polio contraindications */ define "The client is severely immunocompromised": Encounter."The client is severely immunocompromised" /* @input: The client has immunodeficiency syndromes @pseudocode: "Potential contraindications" = "Immunodeficiency syndromes" @code: The client has immunodeficiency syndromes-60 @decision: IMMZ.D5.DT.Polio contraindications */ define "The client has immunodeficiency syndromes": Encounter."The client has immunodeficiency syndromes" /* @internal: Draft Medication Request for bOPV dose */ define "Draft Medication Request for bOPV dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."Oral polio vaccines" ````: **Description: **
  * ?: This library defines encounter-based elements for Polio used throughout the Immunization CPG



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "IMMZD5DTPolioEncounterElements",
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
  "url" : "http://smart.who.int/immunizations/Library/IMMZD5DTPolioEncounterElements",
  "version" : "0.2.0",
  "name" : "IMMZD5DTPolioEncounterElements",
  "title" : "IMMZD5DTPolioEncounterElements",
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
  "description" : "This library defines encounter-based elements for Polio used throughout the Immunization CPG",
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
    "display" : "Library PolioElements",
    "resource" : "http://smart.who.int/immunizations/Library/IMMZD5DTPolioElements"
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
    "data" : "Ci8qCiAgKiBMaWJyYXJ5OiBJTU1aRDVEVFBvbGlvRW5jb3VudGVyRWxlbWVudHMKICAqLwpsaWJyYXJ5IElNTVpENURUUG9saW9FbmNvdW50ZXJFbGVtZW50cwoKdXNpbmcgRkhJUiB2ZXJzaW9uICc0LjAuMScKaW5jbHVkZSBGSElSSGVscGVycyB2ZXJzaW9uICc0LjAuMScKCmluY2x1ZGUgV0hPQ29uY2VwdHMKaW5jbHVkZSBXSE9Db21tb24gY2FsbGVkIFdDCmluY2x1ZGUgV0hPRWxlbWVudHMgY2FsbGVkIFdFCgppbmNsdWRlIElNTVpDb21tb24gY2FsbGVkIENvbW1vbgppbmNsdWRlIElNTVpDb25jZXB0cyBjYWxsZWQgQ29uY2VwdHMKaW5jbHVkZSBJTU1aRW5jb3VudGVyRWxlbWVudHMgY2FsbGVkIEVuY291bnRlcgoKaW5jbHVkZSBJTU1aRDVEVFBvbGlvRWxlbWVudHMgY2FsbGVkIFBvbGlvRWxlbWVudHMKCnBhcmFtZXRlciBUb2RheSBEYXRlIGRlZmF1bHQgVG9kYXkoKQpwYXJhbWV0ZXIgRW5jb3VudGVySWQgU3RyaW5nCgpjb250ZXh0IFBhdGllbnQKCi8qCkBpbnRlcm5hbDogRHJhZnQgTWVkaWNhdGlvbiBSZXF1ZXN0IGZvciBQb2xpbyBkb3NlCiovCmRlZmluZSAiRHJhZnQgTWVkaWNhdGlvbiBSZXF1ZXN0IGZvciBQb2xpbyBkb3NlIjoKCiAgRW5jb3VudGVyLiJEcmFmdCBNZWRpY2F0aW9uIFJlcXVlc3QgZm9yIFBhdGllbnQiIE1SIAogICAgd2hlcmUgTVIubWVkaWNhdGlvbiBpbiBDb25jZXB0cy4iUG9saW92aXJ1cy1jb250YWluaW5nIHZhY2NpbmVzIgoKLyoKQGlucHV0OiBUaGUgY2xpZW50IGhhcyBoaXN0b3J5IG9mIHNldmVyZSBhbGxlcmdpYyByZWFjdGlvbnMKQHBzZXVkb2NvZGU6ICJQb3RlbnRpYWwgY29udHJhaW5kaWNhdGlvbnMiID0gIlNldmVyZSBhbGxlcmdpYyByZWFjdGlvbnMiCkBjb2RlOiBUaGUgY2xpZW50IGhhcyBoaXN0b3J5IG9mIHNldmVyZSBhbGxlcmdpYyByZWFjdGlvbnMtNTkKQGRlY2lzaW9uOiBJTU1aLkQ1LkRULlBvbGlvIGNvbnRyYWluZGljYXRpb25zCiovCmRlZmluZSAiVGhlIGNsaWVudCBoYXMgaGlzdG9yeSBvZiBzZXZlcmUgYWxsZXJnaWMgcmVhY3Rpb25zIjoKICBFbmNvdW50ZXIuIlRoZSBjbGllbnQgaGFzIGhpc3Rvcnkgb2Ygc2V2ZXJlIGFsbGVyZ2ljIHJlYWN0aW9ucyIKCi8qCkBpbnB1dDogVGhlIGNsaWVudCBpcyBzZXZlcmVseSBpbW11bm9jb21wcm9taXNlZApAcHNldWRvY29kZTogIlBvdGVudGlhbCBjb250cmFpbmRpY2F0aW9ucyIgPSAiU2V2ZXJlbHkgaW1tdW5vY29tcHJvbWlzZWQiCkBjb2RlOiBUaGUgY2xpZW50IGlzIHNldmVyZWx5IGltbXVub2NvbXByb21pc2VkLTYwCkBkZWNpc2lvbjogSU1NWi5ENS5EVC5Qb2xpbyBjb250cmFpbmRpY2F0aW9ucwoqLwpkZWZpbmUgIlRoZSBjbGllbnQgaXMgc2V2ZXJlbHkgaW1tdW5vY29tcHJvbWlzZWQiOgogIEVuY291bnRlci4iVGhlIGNsaWVudCBpcyBzZXZlcmVseSBpbW11bm9jb21wcm9taXNlZCIKCi8qCkBpbnB1dDogVGhlIGNsaWVudCBoYXMgaW1tdW5vZGVmaWNpZW5jeSBzeW5kcm9tZXMKQHBzZXVkb2NvZGU6ICJQb3RlbnRpYWwgY29udHJhaW5kaWNhdGlvbnMiID0gIkltbXVub2RlZmljaWVuY3kgc3luZHJvbWVzIgpAY29kZTogVGhlIGNsaWVudCBoYXMgaW1tdW5vZGVmaWNpZW5jeSBzeW5kcm9tZXMtNjAKQGRlY2lzaW9uOiBJTU1aLkQ1LkRULlBvbGlvIGNvbnRyYWluZGljYXRpb25zCiovCmRlZmluZSAiVGhlIGNsaWVudCBoYXMgaW1tdW5vZGVmaWNpZW5jeSBzeW5kcm9tZXMiOgogIEVuY291bnRlci4iVGhlIGNsaWVudCBoYXMgaW1tdW5vZGVmaWNpZW5jeSBzeW5kcm9tZXMiCgovKgpAaW50ZXJuYWw6IERyYWZ0IE1lZGljYXRpb24gUmVxdWVzdCBmb3IgYk9QViBkb3NlCiovCmRlZmluZSAiRHJhZnQgTWVkaWNhdGlvbiBSZXF1ZXN0IGZvciBiT1BWIGRvc2UiOgogIEVuY291bnRlci4iRHJhZnQgTWVkaWNhdGlvbiBSZXF1ZXN0IGZvciBQYXRpZW50IiBNUgogICAgd2hlcmUgTVIubWVkaWNhdGlvbiBpbiBDb25jZXB0cy4iT3JhbCBwb2xpbyB2YWNjaW5lcyIK"
  }]
}

```
