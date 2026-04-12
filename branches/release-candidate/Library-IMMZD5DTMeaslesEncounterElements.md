# IMMZD5DTMeaslesEncounterElements - WHO Immunization Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD5DTMeaslesEncounterElements**

## Library: IMMZD5DTMeaslesEncounterElements 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Library/IMMZD5DTMeaslesEncounterElements | *Version*:1.0.0 |
| Draft as of 2026-04-09 | *Computable Name*:IMMZD5DTMeaslesEncounterElements |

 
This library defines encounter-based elements for Measles used throughout the Immunization CPG 

* * **Content: **text/cql: ```` /* * Library: IMMZD5DTMeaslesEncounterElements */ library IMMZD5DTMeaslesEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTMeaslesElements called MeaslesElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for Measles dose */ define "Draft Medication Request for Measles dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."Measles-containing vaccines" /* @input: The client is pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is pregnant-52 @decision: IMMZ.D5.DT.Measles contraindications */ define "The client is pregnant": Encounter."The client is pregnant" /* @input: The client has history of anaphylactic reactions @pseudocode: "Potential contraindications" = "History of anaphylactic reactions" @code: The client has history of anaphylactic reactions-67 @decision: IMMZ.D5.DT.Measles contraindications */ define "The client has history of anaphylactic reactions": Encounter."The client has history of anaphylactic reactions" /* @input: The client has history of severe allergic reactions @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has history of severe allergic reactions-59 @decision: IMMZ.D5.DT.Measles contraindications */ define "The client has history of severe allergic reactions": Encounter."The client has history of severe allergic reactions" /* @input: The client is severely immunosuppressed @pseudocode: "Potential contraindications" = "Severely immunosuppressed" @code: The client is severely immunosuppressed-59 @decision: IMMZ.D5.DT.Measles contraindications */ define "The client is severely immunosuppressed": Encounter."The client is severely immunosuppressed" /* @input: The client has a symptomatic HIV infection @pseudocode: "Potential contraindications" = "Symptomatic HIV infection" @code: The client has a symptomatic HIV infection-59 @decision: IMMZ.D5.DT.Measles contraindications */ define "The client has a symptomatic HIV infection": Encounter."The client has a symptomatic HIV infection" /* @internal: Draft Medication Request for MCV dose */ define "Draft Medication Request for MCV dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."Measles-containing vaccines" ````: **Id: **
  * ?: IMMZD5DTMeaslesEncounterElements
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTMeaslesEncounterElements */ library IMMZD5DTMeaslesEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTMeaslesElements called MeaslesElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for Measles dose */ define "Draft Medication Request for Measles dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."Measles-containing vaccines" /* @input: The client is pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is pregnant-52 @decision: IMMZ.D5.DT.Measles contraindications */ define "The client is pregnant": Encounter."The client is pregnant" /* @input: The client has history of anaphylactic reactions @pseudocode: "Potential contraindications" = "History of anaphylactic reactions" @code: The client has history of anaphylactic reactions-67 @decision: IMMZ.D5.DT.Measles contraindications */ define "The client has history of anaphylactic reactions": Encounter."The client has history of anaphylactic reactions" /* @input: The client has history of severe allergic reactions @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has history of severe allergic reactions-59 @decision: IMMZ.D5.DT.Measles contraindications */ define "The client has history of severe allergic reactions": Encounter."The client has history of severe allergic reactions" /* @input: The client is severely immunosuppressed @pseudocode: "Potential contraindications" = "Severely immunosuppressed" @code: The client is severely immunosuppressed-59 @decision: IMMZ.D5.DT.Measles contraindications */ define "The client is severely immunosuppressed": Encounter."The client is severely immunosuppressed" /* @input: The client has a symptomatic HIV infection @pseudocode: "Potential contraindications" = "Symptomatic HIV infection" @code: The client has a symptomatic HIV infection-59 @decision: IMMZ.D5.DT.Measles contraindications */ define "The client has a symptomatic HIV infection": Encounter."The client has a symptomatic HIV infection" /* @internal: Draft Medication Request for MCV dose */ define "Draft Medication Request for MCV dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."Measles-containing vaccines" ````: **Version: **
  * ?: 1.0.0
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTMeaslesEncounterElements */ library IMMZD5DTMeaslesEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTMeaslesElements called MeaslesElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for Measles dose */ define "Draft Medication Request for Measles dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."Measles-containing vaccines" /* @input: The client is pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is pregnant-52 @decision: IMMZ.D5.DT.Measles contraindications */ define "The client is pregnant": Encounter."The client is pregnant" /* @input: The client has history of anaphylactic reactions @pseudocode: "Potential contraindications" = "History of anaphylactic reactions" @code: The client has history of anaphylactic reactions-67 @decision: IMMZ.D5.DT.Measles contraindications */ define "The client has history of anaphylactic reactions": Encounter."The client has history of anaphylactic reactions" /* @input: The client has history of severe allergic reactions @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has history of severe allergic reactions-59 @decision: IMMZ.D5.DT.Measles contraindications */ define "The client has history of severe allergic reactions": Encounter."The client has history of severe allergic reactions" /* @input: The client is severely immunosuppressed @pseudocode: "Potential contraindications" = "Severely immunosuppressed" @code: The client is severely immunosuppressed-59 @decision: IMMZ.D5.DT.Measles contraindications */ define "The client is severely immunosuppressed": Encounter."The client is severely immunosuppressed" /* @input: The client has a symptomatic HIV infection @pseudocode: "Potential contraindications" = "Symptomatic HIV infection" @code: The client has a symptomatic HIV infection-59 @decision: IMMZ.D5.DT.Measles contraindications */ define "The client has a symptomatic HIV infection": Encounter."The client has a symptomatic HIV infection" /* @internal: Draft Medication Request for MCV dose */ define "Draft Medication Request for MCV dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."Measles-containing vaccines" ````: **Url: **
  * ?: [IMMZD5DTMeaslesEncounterElements](Library-IMMZD5DTMeaslesEncounterElements.md)
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTMeaslesEncounterElements */ library IMMZD5DTMeaslesEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTMeaslesElements called MeaslesElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for Measles dose */ define "Draft Medication Request for Measles dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."Measles-containing vaccines" /* @input: The client is pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is pregnant-52 @decision: IMMZ.D5.DT.Measles contraindications */ define "The client is pregnant": Encounter."The client is pregnant" /* @input: The client has history of anaphylactic reactions @pseudocode: "Potential contraindications" = "History of anaphylactic reactions" @code: The client has history of anaphylactic reactions-67 @decision: IMMZ.D5.DT.Measles contraindications */ define "The client has history of anaphylactic reactions": Encounter."The client has history of anaphylactic reactions" /* @input: The client has history of severe allergic reactions @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has history of severe allergic reactions-59 @decision: IMMZ.D5.DT.Measles contraindications */ define "The client has history of severe allergic reactions": Encounter."The client has history of severe allergic reactions" /* @input: The client is severely immunosuppressed @pseudocode: "Potential contraindications" = "Severely immunosuppressed" @code: The client is severely immunosuppressed-59 @decision: IMMZ.D5.DT.Measles contraindications */ define "The client is severely immunosuppressed": Encounter."The client is severely immunosuppressed" /* @input: The client has a symptomatic HIV infection @pseudocode: "Potential contraindications" = "Symptomatic HIV infection" @code: The client has a symptomatic HIV infection-59 @decision: IMMZ.D5.DT.Measles contraindications */ define "The client has a symptomatic HIV infection": Encounter."The client has a symptomatic HIV infection" /* @internal: Draft Medication Request for MCV dose */ define "Draft Medication Request for MCV dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."Measles-containing vaccines" ````: **Status: **
  * ?: draft
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTMeaslesEncounterElements */ library IMMZD5DTMeaslesEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTMeaslesElements called MeaslesElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for Measles dose */ define "Draft Medication Request for Measles dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."Measles-containing vaccines" /* @input: The client is pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is pregnant-52 @decision: IMMZ.D5.DT.Measles contraindications */ define "The client is pregnant": Encounter."The client is pregnant" /* @input: The client has history of anaphylactic reactions @pseudocode: "Potential contraindications" = "History of anaphylactic reactions" @code: The client has history of anaphylactic reactions-67 @decision: IMMZ.D5.DT.Measles contraindications */ define "The client has history of anaphylactic reactions": Encounter."The client has history of anaphylactic reactions" /* @input: The client has history of severe allergic reactions @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has history of severe allergic reactions-59 @decision: IMMZ.D5.DT.Measles contraindications */ define "The client has history of severe allergic reactions": Encounter."The client has history of severe allergic reactions" /* @input: The client is severely immunosuppressed @pseudocode: "Potential contraindications" = "Severely immunosuppressed" @code: The client is severely immunosuppressed-59 @decision: IMMZ.D5.DT.Measles contraindications */ define "The client is severely immunosuppressed": Encounter."The client is severely immunosuppressed" /* @input: The client has a symptomatic HIV infection @pseudocode: "Potential contraindications" = "Symptomatic HIV infection" @code: The client has a symptomatic HIV infection-59 @decision: IMMZ.D5.DT.Measles contraindications */ define "The client has a symptomatic HIV infection": Encounter."The client has a symptomatic HIV infection" /* @internal: Draft Medication Request for MCV dose */ define "Draft Medication Request for MCV dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."Measles-containing vaccines" ````: **Date: **
  * ?: 2026-04-09 13:50:16+0000
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTMeaslesEncounterElements */ library IMMZD5DTMeaslesEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTMeaslesElements called MeaslesElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for Measles dose */ define "Draft Medication Request for Measles dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."Measles-containing vaccines" /* @input: The client is pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is pregnant-52 @decision: IMMZ.D5.DT.Measles contraindications */ define "The client is pregnant": Encounter."The client is pregnant" /* @input: The client has history of anaphylactic reactions @pseudocode: "Potential contraindications" = "History of anaphylactic reactions" @code: The client has history of anaphylactic reactions-67 @decision: IMMZ.D5.DT.Measles contraindications */ define "The client has history of anaphylactic reactions": Encounter."The client has history of anaphylactic reactions" /* @input: The client has history of severe allergic reactions @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has history of severe allergic reactions-59 @decision: IMMZ.D5.DT.Measles contraindications */ define "The client has history of severe allergic reactions": Encounter."The client has history of severe allergic reactions" /* @input: The client is severely immunosuppressed @pseudocode: "Potential contraindications" = "Severely immunosuppressed" @code: The client is severely immunosuppressed-59 @decision: IMMZ.D5.DT.Measles contraindications */ define "The client is severely immunosuppressed": Encounter."The client is severely immunosuppressed" /* @input: The client has a symptomatic HIV infection @pseudocode: "Potential contraindications" = "Symptomatic HIV infection" @code: The client has a symptomatic HIV infection-59 @decision: IMMZ.D5.DT.Measles contraindications */ define "The client has a symptomatic HIV infection": Encounter."The client has a symptomatic HIV infection" /* @internal: Draft Medication Request for MCV dose */ define "Draft Medication Request for MCV dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."Measles-containing vaccines" ````: **Publisher: **
  * ?: WHO
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTMeaslesEncounterElements */ library IMMZD5DTMeaslesEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTMeaslesElements called MeaslesElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for Measles dose */ define "Draft Medication Request for Measles dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."Measles-containing vaccines" /* @input: The client is pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is pregnant-52 @decision: IMMZ.D5.DT.Measles contraindications */ define "The client is pregnant": Encounter."The client is pregnant" /* @input: The client has history of anaphylactic reactions @pseudocode: "Potential contraindications" = "History of anaphylactic reactions" @code: The client has history of anaphylactic reactions-67 @decision: IMMZ.D5.DT.Measles contraindications */ define "The client has history of anaphylactic reactions": Encounter."The client has history of anaphylactic reactions" /* @input: The client has history of severe allergic reactions @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has history of severe allergic reactions-59 @decision: IMMZ.D5.DT.Measles contraindications */ define "The client has history of severe allergic reactions": Encounter."The client has history of severe allergic reactions" /* @input: The client is severely immunosuppressed @pseudocode: "Potential contraindications" = "Severely immunosuppressed" @code: The client is severely immunosuppressed-59 @decision: IMMZ.D5.DT.Measles contraindications */ define "The client is severely immunosuppressed": Encounter."The client is severely immunosuppressed" /* @input: The client has a symptomatic HIV infection @pseudocode: "Potential contraindications" = "Symptomatic HIV infection" @code: The client has a symptomatic HIV infection-59 @decision: IMMZ.D5.DT.Measles contraindications */ define "The client has a symptomatic HIV infection": Encounter."The client has a symptomatic HIV infection" /* @internal: Draft Medication Request for MCV dose */ define "Draft Medication Request for MCV dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."Measles-containing vaccines" ````: **Description: **
  * ?: This library defines encounter-based elements for Measles used throughout the Immunization CPG



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "IMMZD5DTMeaslesEncounterElements",
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
  "url" : "http://smart.who.int/immunizations/Library/IMMZD5DTMeaslesEncounterElements",
  "version" : "1.0.0",
  "name" : "IMMZD5DTMeaslesEncounterElements",
  "title" : "IMMZD5DTMeaslesEncounterElements",
  "status" : "draft",
  "experimental" : false,
  "type" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/library-type",
      "code" : "logic-library"
    }]
  },
  "date" : "2026-04-09T13:50:16+00:00",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "This library defines encounter-based elements for Measles used throughout the Immunization CPG",
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
    "display" : "Library MeaslesElements",
    "resource" : "http://smart.who.int/immunizations/Library/IMMZD5DTMeaslesElements"
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
    "name" : "Draft Medication Request for Measles dose",
    "use" : "out",
    "min" : 0,
    "max" : "*",
    "type" : "MedicationRequest"
  },
  {
    "name" : "The client is pregnant",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "The client has history of anaphylactic reactions",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "The client has history of severe allergic reactions",
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
  },
  {
    "name" : "The client has a symptomatic HIV infection",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "Draft Medication Request for MCV dose",
    "use" : "out",
    "min" : 0,
    "max" : "*",
    "type" : "MedicationRequest"
  }],
  "content" : [{
    "contentType" : "text/cql",
    "data" : "Ci8qCiAgKiBMaWJyYXJ5OiBJTU1aRDVEVE1lYXNsZXNFbmNvdW50ZXJFbGVtZW50cwogICovCmxpYnJhcnkgSU1NWkQ1RFRNZWFzbGVzRW5jb3VudGVyRWxlbWVudHMKCnVzaW5nIEZISVIgdmVyc2lvbiAnNC4wLjEnCmluY2x1ZGUgRkhJUkhlbHBlcnMgdmVyc2lvbiAnNC4wLjEnCgppbmNsdWRlIFdIT0NvbmNlcHRzCmluY2x1ZGUgV0hPQ29tbW9uIGNhbGxlZCBXQwppbmNsdWRlIFdIT0VsZW1lbnRzIGNhbGxlZCBXRQoKaW5jbHVkZSBJTU1aQ29tbW9uIGNhbGxlZCBDb21tb24KaW5jbHVkZSBJTU1aQ29uY2VwdHMgY2FsbGVkIENvbmNlcHRzCmluY2x1ZGUgSU1NWkVuY291bnRlckVsZW1lbnRzIGNhbGxlZCBFbmNvdW50ZXIKCmluY2x1ZGUgSU1NWkQ1RFRNZWFzbGVzRWxlbWVudHMgY2FsbGVkIE1lYXNsZXNFbGVtZW50cwoKcGFyYW1ldGVyIFRvZGF5IERhdGUgZGVmYXVsdCBUb2RheSgpCnBhcmFtZXRlciBFbmNvdW50ZXJJZCBTdHJpbmcKCmNvbnRleHQgUGF0aWVudAoKLyoKQGludGVybmFsOiBEcmFmdCBNZWRpY2F0aW9uIFJlcXVlc3QgZm9yIE1lYXNsZXMgZG9zZQoqLwpkZWZpbmUgIkRyYWZ0IE1lZGljYXRpb24gUmVxdWVzdCBmb3IgTWVhc2xlcyBkb3NlIjoKCiAgRW5jb3VudGVyLiJEcmFmdCBNZWRpY2F0aW9uIFJlcXVlc3QgZm9yIFBhdGllbnQiIE1SIAogICAgd2hlcmUgTVIubWVkaWNhdGlvbiBpbiBDb25jZXB0cy4iTWVhc2xlcy1jb250YWluaW5nIHZhY2NpbmVzIgoKLyoKQGlucHV0OiBUaGUgY2xpZW50IGlzIHByZWduYW50CkBwc2V1ZG9jb2RlOiAiUG90ZW50aWFsIGNvbnRyYWluZGljYXRpb25zIiA9ICJDdXJyZW50bHkgcHJlZ25hbnQiCkBjb2RlOiBUaGUgY2xpZW50IGlzIHByZWduYW50LTUyCkBkZWNpc2lvbjogSU1NWi5ENS5EVC5NZWFzbGVzIGNvbnRyYWluZGljYXRpb25zCiovCmRlZmluZSAiVGhlIGNsaWVudCBpcyBwcmVnbmFudCI6CiAgRW5jb3VudGVyLiJUaGUgY2xpZW50IGlzIHByZWduYW50IgoKLyoKQGlucHV0OiBUaGUgY2xpZW50IGhhcyBoaXN0b3J5IG9mIGFuYXBoeWxhY3RpYyByZWFjdGlvbnMKQHBzZXVkb2NvZGU6ICJQb3RlbnRpYWwgY29udHJhaW5kaWNhdGlvbnMiID0gIkhpc3Rvcnkgb2YgYW5hcGh5bGFjdGljIHJlYWN0aW9ucyIKQGNvZGU6IFRoZSBjbGllbnQgaGFzIGhpc3Rvcnkgb2YgYW5hcGh5bGFjdGljIHJlYWN0aW9ucy02NwpAZGVjaXNpb246IElNTVouRDUuRFQuTWVhc2xlcyBjb250cmFpbmRpY2F0aW9ucwoqLwpkZWZpbmUgIlRoZSBjbGllbnQgaGFzIGhpc3Rvcnkgb2YgYW5hcGh5bGFjdGljIHJlYWN0aW9ucyI6CiAgRW5jb3VudGVyLiJUaGUgY2xpZW50IGhhcyBoaXN0b3J5IG9mIGFuYXBoeWxhY3RpYyByZWFjdGlvbnMiCgovKgpAaW5wdXQ6IFRoZSBjbGllbnQgaGFzIGhpc3Rvcnkgb2Ygc2V2ZXJlIGFsbGVyZ2ljIHJlYWN0aW9ucwpAcHNldWRvY29kZTogIlBvdGVudGlhbCBjb250cmFpbmRpY2F0aW9ucyIgPSAiU2V2ZXJlIGFsbGVyZ2ljIHJlYWN0aW9ucyIKQGNvZGU6IFRoZSBjbGllbnQgaGFzIGhpc3Rvcnkgb2Ygc2V2ZXJlIGFsbGVyZ2ljIHJlYWN0aW9ucy01OQpAZGVjaXNpb246IElNTVouRDUuRFQuTWVhc2xlcyBjb250cmFpbmRpY2F0aW9ucwoqLwpkZWZpbmUgIlRoZSBjbGllbnQgaGFzIGhpc3Rvcnkgb2Ygc2V2ZXJlIGFsbGVyZ2ljIHJlYWN0aW9ucyI6CiAgRW5jb3VudGVyLiJUaGUgY2xpZW50IGhhcyBoaXN0b3J5IG9mIHNldmVyZSBhbGxlcmdpYyByZWFjdGlvbnMiCgovKgpAaW5wdXQ6IFRoZSBjbGllbnQgaXMgc2V2ZXJlbHkgaW1tdW5vc3VwcHJlc3NlZApAcHNldWRvY29kZTogIlBvdGVudGlhbCBjb250cmFpbmRpY2F0aW9ucyIgPSAiU2V2ZXJlbHkgaW1tdW5vc3VwcHJlc3NlZCIKQGNvZGU6IFRoZSBjbGllbnQgaXMgc2V2ZXJlbHkgaW1tdW5vc3VwcHJlc3NlZC01OQpAZGVjaXNpb246IElNTVouRDUuRFQuTWVhc2xlcyBjb250cmFpbmRpY2F0aW9ucwoqLwpkZWZpbmUgIlRoZSBjbGllbnQgaXMgc2V2ZXJlbHkgaW1tdW5vc3VwcHJlc3NlZCI6CiAgRW5jb3VudGVyLiJUaGUgY2xpZW50IGlzIHNldmVyZWx5IGltbXVub3N1cHByZXNzZWQiCgovKgpAaW5wdXQ6IFRoZSBjbGllbnQgaGFzIGEgc3ltcHRvbWF0aWMgSElWIGluZmVjdGlvbgpAcHNldWRvY29kZTogIlBvdGVudGlhbCBjb250cmFpbmRpY2F0aW9ucyIgPSAiU3ltcHRvbWF0aWMgSElWIGluZmVjdGlvbiIKQGNvZGU6IFRoZSBjbGllbnQgaGFzIGEgc3ltcHRvbWF0aWMgSElWIGluZmVjdGlvbi01OQpAZGVjaXNpb246IElNTVouRDUuRFQuTWVhc2xlcyBjb250cmFpbmRpY2F0aW9ucwoqLwpkZWZpbmUgIlRoZSBjbGllbnQgaGFzIGEgc3ltcHRvbWF0aWMgSElWIGluZmVjdGlvbiI6CiAgRW5jb3VudGVyLiJUaGUgY2xpZW50IGhhcyBhIHN5bXB0b21hdGljIEhJViBpbmZlY3Rpb24iCgovKgpAaW50ZXJuYWw6IERyYWZ0IE1lZGljYXRpb24gUmVxdWVzdCBmb3IgTUNWIGRvc2UKKi8KZGVmaW5lICJEcmFmdCBNZWRpY2F0aW9uIFJlcXVlc3QgZm9yIE1DViBkb3NlIjoKICBFbmNvdW50ZXIuIkRyYWZ0IE1lZGljYXRpb24gUmVxdWVzdCBmb3IgUGF0aWVudCIgTVIKICAgIHdoZXJlIE1SLm1lZGljYXRpb24gaW4gQ29uY2VwdHMuIk1lYXNsZXMtY29udGFpbmluZyB2YWNjaW5lcyIK"
  }]
}

```
