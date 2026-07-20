# IMMZD5DTSeasonalinfluenzaEncounterElements - WHO Immunization Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD5DTSeasonalinfluenzaEncounterElements**

## Library: IMMZD5DTSeasonalinfluenzaEncounterElements 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Library/IMMZD5DTSeasonalinfluenzaEncounterElements | *Version*:1.0.0 |
| Draft as of 2026-04-09 | *Computable Name*:IMMZD5DTSeasonalinfluenzaEncounterElements |

 
This library defines encounter-based elements for Seasonal influenza used throughout the Immunization CPG 

* * **Content: **text/cql: ```` /* * Library: IMMZD5DTSeasonalinfluenzaEncounterElements */ library IMMZD5DTSeasonalinfluenzaEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTSeasonalinfluenzaElements called SeasonalinfluenzaElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for Seasonal influenza dose */ define "Draft Medication Request for Seasonal influenza dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."Seasonal influenza vaccines" /* @input: The client has a history of anaphylactic reactions @pseudocode: "Potential contraindications" = "History of anaphylactic reactions" @code: The client has a history of anaphylactic reactions-67 @decision: IMMZ.D5.DT.Seasonal influenza contraindications */ define "The client has a history of anaphylactic reactions": Encounter."The client has history of anaphylactic reactions" /* @input: The client has a history of severe allergic reactions after a previous dose or to a vaccine component @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has a history of severe allergic reactions after a previous dose or to a vaccine component-59 @decision: IMMZ.D5.DT.Seasonal influenza contraindications */ define "The client has a history of severe allergic reactions after a previous dose or to a vaccine component": Encounter."The client has history of severe allergic reactions" ````: **Id: **
  * ?: IMMZD5DTSeasonalinfluenzaEncounterElements
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTSeasonalinfluenzaEncounterElements */ library IMMZD5DTSeasonalinfluenzaEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTSeasonalinfluenzaElements called SeasonalinfluenzaElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for Seasonal influenza dose */ define "Draft Medication Request for Seasonal influenza dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."Seasonal influenza vaccines" /* @input: The client has a history of anaphylactic reactions @pseudocode: "Potential contraindications" = "History of anaphylactic reactions" @code: The client has a history of anaphylactic reactions-67 @decision: IMMZ.D5.DT.Seasonal influenza contraindications */ define "The client has a history of anaphylactic reactions": Encounter."The client has history of anaphylactic reactions" /* @input: The client has a history of severe allergic reactions after a previous dose or to a vaccine component @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has a history of severe allergic reactions after a previous dose or to a vaccine component-59 @decision: IMMZ.D5.DT.Seasonal influenza contraindications */ define "The client has a history of severe allergic reactions after a previous dose or to a vaccine component": Encounter."The client has history of severe allergic reactions" ````: **Version: **
  * ?: 1.0.0
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTSeasonalinfluenzaEncounterElements */ library IMMZD5DTSeasonalinfluenzaEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTSeasonalinfluenzaElements called SeasonalinfluenzaElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for Seasonal influenza dose */ define "Draft Medication Request for Seasonal influenza dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."Seasonal influenza vaccines" /* @input: The client has a history of anaphylactic reactions @pseudocode: "Potential contraindications" = "History of anaphylactic reactions" @code: The client has a history of anaphylactic reactions-67 @decision: IMMZ.D5.DT.Seasonal influenza contraindications */ define "The client has a history of anaphylactic reactions": Encounter."The client has history of anaphylactic reactions" /* @input: The client has a history of severe allergic reactions after a previous dose or to a vaccine component @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has a history of severe allergic reactions after a previous dose or to a vaccine component-59 @decision: IMMZ.D5.DT.Seasonal influenza contraindications */ define "The client has a history of severe allergic reactions after a previous dose or to a vaccine component": Encounter."The client has history of severe allergic reactions" ````: **Url: **
  * ?: [IMMZD5DTSeasonalinfluenzaEncounterElements](Library-IMMZD5DTSeasonalinfluenzaEncounterElements.md)
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTSeasonalinfluenzaEncounterElements */ library IMMZD5DTSeasonalinfluenzaEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTSeasonalinfluenzaElements called SeasonalinfluenzaElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for Seasonal influenza dose */ define "Draft Medication Request for Seasonal influenza dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."Seasonal influenza vaccines" /* @input: The client has a history of anaphylactic reactions @pseudocode: "Potential contraindications" = "History of anaphylactic reactions" @code: The client has a history of anaphylactic reactions-67 @decision: IMMZ.D5.DT.Seasonal influenza contraindications */ define "The client has a history of anaphylactic reactions": Encounter."The client has history of anaphylactic reactions" /* @input: The client has a history of severe allergic reactions after a previous dose or to a vaccine component @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has a history of severe allergic reactions after a previous dose or to a vaccine component-59 @decision: IMMZ.D5.DT.Seasonal influenza contraindications */ define "The client has a history of severe allergic reactions after a previous dose or to a vaccine component": Encounter."The client has history of severe allergic reactions" ````: **Status: **
  * ?: draft
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTSeasonalinfluenzaEncounterElements */ library IMMZD5DTSeasonalinfluenzaEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTSeasonalinfluenzaElements called SeasonalinfluenzaElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for Seasonal influenza dose */ define "Draft Medication Request for Seasonal influenza dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."Seasonal influenza vaccines" /* @input: The client has a history of anaphylactic reactions @pseudocode: "Potential contraindications" = "History of anaphylactic reactions" @code: The client has a history of anaphylactic reactions-67 @decision: IMMZ.D5.DT.Seasonal influenza contraindications */ define "The client has a history of anaphylactic reactions": Encounter."The client has history of anaphylactic reactions" /* @input: The client has a history of severe allergic reactions after a previous dose or to a vaccine component @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has a history of severe allergic reactions after a previous dose or to a vaccine component-59 @decision: IMMZ.D5.DT.Seasonal influenza contraindications */ define "The client has a history of severe allergic reactions after a previous dose or to a vaccine component": Encounter."The client has history of severe allergic reactions" ````: **Date: **
  * ?: 2026-04-09 14:34:42+0000
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTSeasonalinfluenzaEncounterElements */ library IMMZD5DTSeasonalinfluenzaEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTSeasonalinfluenzaElements called SeasonalinfluenzaElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for Seasonal influenza dose */ define "Draft Medication Request for Seasonal influenza dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."Seasonal influenza vaccines" /* @input: The client has a history of anaphylactic reactions @pseudocode: "Potential contraindications" = "History of anaphylactic reactions" @code: The client has a history of anaphylactic reactions-67 @decision: IMMZ.D5.DT.Seasonal influenza contraindications */ define "The client has a history of anaphylactic reactions": Encounter."The client has history of anaphylactic reactions" /* @input: The client has a history of severe allergic reactions after a previous dose or to a vaccine component @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has a history of severe allergic reactions after a previous dose or to a vaccine component-59 @decision: IMMZ.D5.DT.Seasonal influenza contraindications */ define "The client has a history of severe allergic reactions after a previous dose or to a vaccine component": Encounter."The client has history of severe allergic reactions" ````: **Publisher: **
  * ?: WHO
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTSeasonalinfluenzaEncounterElements */ library IMMZD5DTSeasonalinfluenzaEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTSeasonalinfluenzaElements called SeasonalinfluenzaElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for Seasonal influenza dose */ define "Draft Medication Request for Seasonal influenza dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."Seasonal influenza vaccines" /* @input: The client has a history of anaphylactic reactions @pseudocode: "Potential contraindications" = "History of anaphylactic reactions" @code: The client has a history of anaphylactic reactions-67 @decision: IMMZ.D5.DT.Seasonal influenza contraindications */ define "The client has a history of anaphylactic reactions": Encounter."The client has history of anaphylactic reactions" /* @input: The client has a history of severe allergic reactions after a previous dose or to a vaccine component @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has a history of severe allergic reactions after a previous dose or to a vaccine component-59 @decision: IMMZ.D5.DT.Seasonal influenza contraindications */ define "The client has a history of severe allergic reactions after a previous dose or to a vaccine component": Encounter."The client has history of severe allergic reactions" ````: **Description: **
  * ?: This library defines encounter-based elements for Seasonal influenza used throughout the Immunization CPG



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "IMMZD5DTSeasonalinfluenzaEncounterElements",
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
  "url" : "http://smart.who.int/immunizations/Library/IMMZD5DTSeasonalinfluenzaEncounterElements",
  "version" : "1.0.0",
  "name" : "IMMZD5DTSeasonalinfluenzaEncounterElements",
  "title" : "IMMZD5DTSeasonalinfluenzaEncounterElements",
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
  "description" : "This library defines encounter-based elements for Seasonal influenza used throughout the Immunization CPG",
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
    "display" : "Library SeasonalinfluenzaElements",
    "resource" : "http://smart.who.int/immunizations/Library/IMMZD5DTSeasonalinfluenzaElements"
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
    "data" : "Ci8qCiAgKiBMaWJyYXJ5OiBJTU1aRDVEVFNlYXNvbmFsaW5mbHVlbnphRW5jb3VudGVyRWxlbWVudHMKICAqLwpsaWJyYXJ5IElNTVpENURUU2Vhc29uYWxpbmZsdWVuemFFbmNvdW50ZXJFbGVtZW50cwoKdXNpbmcgRkhJUiB2ZXJzaW9uICc0LjAuMScKaW5jbHVkZSBGSElSSGVscGVycyB2ZXJzaW9uICc0LjAuMScKCmluY2x1ZGUgV0hPQ29uY2VwdHMKaW5jbHVkZSBXSE9Db21tb24gY2FsbGVkIFdDCmluY2x1ZGUgV0hPRWxlbWVudHMgY2FsbGVkIFdFCgppbmNsdWRlIElNTVpDb21tb24gY2FsbGVkIENvbW1vbgppbmNsdWRlIElNTVpDb25jZXB0cyBjYWxsZWQgQ29uY2VwdHMKaW5jbHVkZSBJTU1aRW5jb3VudGVyRWxlbWVudHMgY2FsbGVkIEVuY291bnRlcgoKaW5jbHVkZSBJTU1aRDVEVFNlYXNvbmFsaW5mbHVlbnphRWxlbWVudHMgY2FsbGVkIFNlYXNvbmFsaW5mbHVlbnphRWxlbWVudHMKCnBhcmFtZXRlciBUb2RheSBEYXRlIGRlZmF1bHQgVG9kYXkoKQpwYXJhbWV0ZXIgRW5jb3VudGVySWQgU3RyaW5nCgpjb250ZXh0IFBhdGllbnQKCi8qCkBpbnRlcm5hbDogRHJhZnQgTWVkaWNhdGlvbiBSZXF1ZXN0IGZvciBTZWFzb25hbCBpbmZsdWVuemEgZG9zZQoqLwpkZWZpbmUgIkRyYWZ0IE1lZGljYXRpb24gUmVxdWVzdCBmb3IgU2Vhc29uYWwgaW5mbHVlbnphIGRvc2UiOgogIEVuY291bnRlci4iRHJhZnQgTWVkaWNhdGlvbiBSZXF1ZXN0IGZvciBQYXRpZW50IiBNUgogICAgd2hlcmUgTVIubWVkaWNhdGlvbiBpbiBDb25jZXB0cy4iU2Vhc29uYWwgaW5mbHVlbnphIHZhY2NpbmVzIgoKLyoKQGlucHV0OiBUaGUgY2xpZW50IGhhcyBhIGhpc3Rvcnkgb2YgYW5hcGh5bGFjdGljIHJlYWN0aW9ucwpAcHNldWRvY29kZTogIlBvdGVudGlhbCBjb250cmFpbmRpY2F0aW9ucyIgPSAiSGlzdG9yeSBvZiBhbmFwaHlsYWN0aWMgcmVhY3Rpb25zIgpAY29kZTogVGhlIGNsaWVudCBoYXMgYSBoaXN0b3J5IG9mIGFuYXBoeWxhY3RpYyByZWFjdGlvbnMtNjcKQGRlY2lzaW9uOiBJTU1aLkQ1LkRULlNlYXNvbmFsIGluZmx1ZW56YSBjb250cmFpbmRpY2F0aW9ucwoqLwpkZWZpbmUgIlRoZSBjbGllbnQgaGFzIGEgaGlzdG9yeSBvZiBhbmFwaHlsYWN0aWMgcmVhY3Rpb25zIjoKICBFbmNvdW50ZXIuIlRoZSBjbGllbnQgaGFzIGhpc3Rvcnkgb2YgYW5hcGh5bGFjdGljIHJlYWN0aW9ucyIKCi8qCkBpbnB1dDogVGhlIGNsaWVudCBoYXMgYSBoaXN0b3J5IG9mIHNldmVyZSBhbGxlcmdpYyByZWFjdGlvbnMgYWZ0ZXIgYSBwcmV2aW91cyBkb3NlIG9yIHRvIGEgdmFjY2luZSBjb21wb25lbnQKQHBzZXVkb2NvZGU6ICJQb3RlbnRpYWwgY29udHJhaW5kaWNhdGlvbnMiID0gIlNldmVyZSBhbGxlcmdpYyByZWFjdGlvbnMiCkBjb2RlOiBUaGUgY2xpZW50IGhhcyBhIGhpc3Rvcnkgb2Ygc2V2ZXJlIGFsbGVyZ2ljIHJlYWN0aW9ucyBhZnRlciBhIHByZXZpb3VzIGRvc2Ugb3IgdG8gYSB2YWNjaW5lIGNvbXBvbmVudC01OQpAZGVjaXNpb246IElNTVouRDUuRFQuU2Vhc29uYWwgaW5mbHVlbnphIGNvbnRyYWluZGljYXRpb25zCiovCmRlZmluZSAiVGhlIGNsaWVudCBoYXMgYSBoaXN0b3J5IG9mIHNldmVyZSBhbGxlcmdpYyByZWFjdGlvbnMgYWZ0ZXIgYSBwcmV2aW91cyBkb3NlIG9yIHRvIGEgdmFjY2luZSBjb21wb25lbnQiOgogIEVuY291bnRlci4iVGhlIGNsaWVudCBoYXMgaGlzdG9yeSBvZiBzZXZlcmUgYWxsZXJnaWMgcmVhY3Rpb25zIgo="
  }]
}

```
