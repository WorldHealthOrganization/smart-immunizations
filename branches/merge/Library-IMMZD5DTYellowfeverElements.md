# IMMZD5DTYellowfeverElements - WHO Immunization Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD5DTYellowfeverElements**

## Library: IMMZD5DTYellowfeverElements 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Library/IMMZD5DTYellowfeverElements | *Version*:1.0.0 |
| Draft as of 2026-03-31 | *Computable Name*:IMMZD5DTYellowfeverElements |

 
This library defines context-independent elements for Yellow fever used throughout the Immunization CPG 

* * **Content: **text/cql: ```` /* * Library: IMMZD5DTYellowfeverElements */ library IMMZD5DTYellowfeverElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for Yellow fever dose */ define "Draft Medication Request for Yellow fever dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."Yellow fever vaccines" /* @input: Client's age is less than 6 months @pseudocode: Today's date − "Date of birth" < 6 months @code: Client's age is less than 6 months-41 @decision: IMMZ.D5.DT.Yellow fever contraindications */ define "Client's age is less than 6 months": Elements."Current Patient Age In Months" < 6 /* @input: Client's age is 6–9 months @pseudocode: 6 months ≤ Today's date − "Date of birth" < 9 months @code: Client's age is 6–9 months-52 @decision: IMMZ.D5.DT.Yellow fever contraindications */ define "Client's age is 6–9 months": 6 <= Elements."Current Patient Age In Months" and Elements."Current Patient Age In Months" < 9 /* @input: Client's age is more than or equal to 60 years @pseudocode: Today's date − "Date of birth" ≥ 60 years @code: Client's age is more than or equal to 60 years-41 @decision: IMMZ.D5.DT.Yellow fever contraindications */ define "Client's age is more than or equal to 60 years": Elements."Current Patient Age In Years" >= 60 /* @input: The client has a history of severe allergic reactions @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has a history of severe allergic reactions-59 @decision: IMMZ.D5.DT.Yellow fever contraindications */ define "The client has a history of severe allergic reactions": Elements."The client has history of severe allergic reactions" /* @input: The client is severely immunocompromised @pseudocode: "Potential contraindications" = "Severely immunocompromised" @code: The client is severely immunocompromised-60 @decision: IMMZ.D5.DT.Yellow fever contraindications */ define "The client is severely immunocompromised": Elements."The client is severely immunocompromised" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.Yellow fever contraindications */ define "The client is currently pregnant": Elements."The client is pregnant" /* @input: The client is lactating @pseudocode: "Potential contraindications" = "Breastfeeding" @code: The client is lactating-47 @decision: IMMZ.D5.DT.Yellow fever contraindications */ define "The client is lactating": Elements."The client is lactating" ````: **Id: **
  * ?: IMMZD5DTYellowfeverElements
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTYellowfeverElements */ library IMMZD5DTYellowfeverElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for Yellow fever dose */ define "Draft Medication Request for Yellow fever dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."Yellow fever vaccines" /* @input: Client's age is less than 6 months @pseudocode: Today's date − "Date of birth" < 6 months @code: Client's age is less than 6 months-41 @decision: IMMZ.D5.DT.Yellow fever contraindications */ define "Client's age is less than 6 months": Elements."Current Patient Age In Months" < 6 /* @input: Client's age is 6–9 months @pseudocode: 6 months ≤ Today's date − "Date of birth" < 9 months @code: Client's age is 6–9 months-52 @decision: IMMZ.D5.DT.Yellow fever contraindications */ define "Client's age is 6–9 months": 6 <= Elements."Current Patient Age In Months" and Elements."Current Patient Age In Months" < 9 /* @input: Client's age is more than or equal to 60 years @pseudocode: Today's date − "Date of birth" ≥ 60 years @code: Client's age is more than or equal to 60 years-41 @decision: IMMZ.D5.DT.Yellow fever contraindications */ define "Client's age is more than or equal to 60 years": Elements."Current Patient Age In Years" >= 60 /* @input: The client has a history of severe allergic reactions @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has a history of severe allergic reactions-59 @decision: IMMZ.D5.DT.Yellow fever contraindications */ define "The client has a history of severe allergic reactions": Elements."The client has history of severe allergic reactions" /* @input: The client is severely immunocompromised @pseudocode: "Potential contraindications" = "Severely immunocompromised" @code: The client is severely immunocompromised-60 @decision: IMMZ.D5.DT.Yellow fever contraindications */ define "The client is severely immunocompromised": Elements."The client is severely immunocompromised" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.Yellow fever contraindications */ define "The client is currently pregnant": Elements."The client is pregnant" /* @input: The client is lactating @pseudocode: "Potential contraindications" = "Breastfeeding" @code: The client is lactating-47 @decision: IMMZ.D5.DT.Yellow fever contraindications */ define "The client is lactating": Elements."The client is lactating" ````: **Version: **
  * ?: 1.0.0
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTYellowfeverElements */ library IMMZD5DTYellowfeverElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for Yellow fever dose */ define "Draft Medication Request for Yellow fever dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."Yellow fever vaccines" /* @input: Client's age is less than 6 months @pseudocode: Today's date − "Date of birth" < 6 months @code: Client's age is less than 6 months-41 @decision: IMMZ.D5.DT.Yellow fever contraindications */ define "Client's age is less than 6 months": Elements."Current Patient Age In Months" < 6 /* @input: Client's age is 6–9 months @pseudocode: 6 months ≤ Today's date − "Date of birth" < 9 months @code: Client's age is 6–9 months-52 @decision: IMMZ.D5.DT.Yellow fever contraindications */ define "Client's age is 6–9 months": 6 <= Elements."Current Patient Age In Months" and Elements."Current Patient Age In Months" < 9 /* @input: Client's age is more than or equal to 60 years @pseudocode: Today's date − "Date of birth" ≥ 60 years @code: Client's age is more than or equal to 60 years-41 @decision: IMMZ.D5.DT.Yellow fever contraindications */ define "Client's age is more than or equal to 60 years": Elements."Current Patient Age In Years" >= 60 /* @input: The client has a history of severe allergic reactions @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has a history of severe allergic reactions-59 @decision: IMMZ.D5.DT.Yellow fever contraindications */ define "The client has a history of severe allergic reactions": Elements."The client has history of severe allergic reactions" /* @input: The client is severely immunocompromised @pseudocode: "Potential contraindications" = "Severely immunocompromised" @code: The client is severely immunocompromised-60 @decision: IMMZ.D5.DT.Yellow fever contraindications */ define "The client is severely immunocompromised": Elements."The client is severely immunocompromised" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.Yellow fever contraindications */ define "The client is currently pregnant": Elements."The client is pregnant" /* @input: The client is lactating @pseudocode: "Potential contraindications" = "Breastfeeding" @code: The client is lactating-47 @decision: IMMZ.D5.DT.Yellow fever contraindications */ define "The client is lactating": Elements."The client is lactating" ````: **Url: **
  * ?: [IMMZD5DTYellowfeverElements](Library-IMMZD5DTYellowfeverElements.md)
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTYellowfeverElements */ library IMMZD5DTYellowfeverElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for Yellow fever dose */ define "Draft Medication Request for Yellow fever dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."Yellow fever vaccines" /* @input: Client's age is less than 6 months @pseudocode: Today's date − "Date of birth" < 6 months @code: Client's age is less than 6 months-41 @decision: IMMZ.D5.DT.Yellow fever contraindications */ define "Client's age is less than 6 months": Elements."Current Patient Age In Months" < 6 /* @input: Client's age is 6–9 months @pseudocode: 6 months ≤ Today's date − "Date of birth" < 9 months @code: Client's age is 6–9 months-52 @decision: IMMZ.D5.DT.Yellow fever contraindications */ define "Client's age is 6–9 months": 6 <= Elements."Current Patient Age In Months" and Elements."Current Patient Age In Months" < 9 /* @input: Client's age is more than or equal to 60 years @pseudocode: Today's date − "Date of birth" ≥ 60 years @code: Client's age is more than or equal to 60 years-41 @decision: IMMZ.D5.DT.Yellow fever contraindications */ define "Client's age is more than or equal to 60 years": Elements."Current Patient Age In Years" >= 60 /* @input: The client has a history of severe allergic reactions @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has a history of severe allergic reactions-59 @decision: IMMZ.D5.DT.Yellow fever contraindications */ define "The client has a history of severe allergic reactions": Elements."The client has history of severe allergic reactions" /* @input: The client is severely immunocompromised @pseudocode: "Potential contraindications" = "Severely immunocompromised" @code: The client is severely immunocompromised-60 @decision: IMMZ.D5.DT.Yellow fever contraindications */ define "The client is severely immunocompromised": Elements."The client is severely immunocompromised" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.Yellow fever contraindications */ define "The client is currently pregnant": Elements."The client is pregnant" /* @input: The client is lactating @pseudocode: "Potential contraindications" = "Breastfeeding" @code: The client is lactating-47 @decision: IMMZ.D5.DT.Yellow fever contraindications */ define "The client is lactating": Elements."The client is lactating" ````: **Status: **
  * ?: draft
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTYellowfeverElements */ library IMMZD5DTYellowfeverElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for Yellow fever dose */ define "Draft Medication Request for Yellow fever dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."Yellow fever vaccines" /* @input: Client's age is less than 6 months @pseudocode: Today's date − "Date of birth" < 6 months @code: Client's age is less than 6 months-41 @decision: IMMZ.D5.DT.Yellow fever contraindications */ define "Client's age is less than 6 months": Elements."Current Patient Age In Months" < 6 /* @input: Client's age is 6–9 months @pseudocode: 6 months ≤ Today's date − "Date of birth" < 9 months @code: Client's age is 6–9 months-52 @decision: IMMZ.D5.DT.Yellow fever contraindications */ define "Client's age is 6–9 months": 6 <= Elements."Current Patient Age In Months" and Elements."Current Patient Age In Months" < 9 /* @input: Client's age is more than or equal to 60 years @pseudocode: Today's date − "Date of birth" ≥ 60 years @code: Client's age is more than or equal to 60 years-41 @decision: IMMZ.D5.DT.Yellow fever contraindications */ define "Client's age is more than or equal to 60 years": Elements."Current Patient Age In Years" >= 60 /* @input: The client has a history of severe allergic reactions @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has a history of severe allergic reactions-59 @decision: IMMZ.D5.DT.Yellow fever contraindications */ define "The client has a history of severe allergic reactions": Elements."The client has history of severe allergic reactions" /* @input: The client is severely immunocompromised @pseudocode: "Potential contraindications" = "Severely immunocompromised" @code: The client is severely immunocompromised-60 @decision: IMMZ.D5.DT.Yellow fever contraindications */ define "The client is severely immunocompromised": Elements."The client is severely immunocompromised" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.Yellow fever contraindications */ define "The client is currently pregnant": Elements."The client is pregnant" /* @input: The client is lactating @pseudocode: "Potential contraindications" = "Breastfeeding" @code: The client is lactating-47 @decision: IMMZ.D5.DT.Yellow fever contraindications */ define "The client is lactating": Elements."The client is lactating" ````: **Date: **
  * ?: 2026-03-31 13:54:17+0000
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTYellowfeverElements */ library IMMZD5DTYellowfeverElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for Yellow fever dose */ define "Draft Medication Request for Yellow fever dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."Yellow fever vaccines" /* @input: Client's age is less than 6 months @pseudocode: Today's date − "Date of birth" < 6 months @code: Client's age is less than 6 months-41 @decision: IMMZ.D5.DT.Yellow fever contraindications */ define "Client's age is less than 6 months": Elements."Current Patient Age In Months" < 6 /* @input: Client's age is 6–9 months @pseudocode: 6 months ≤ Today's date − "Date of birth" < 9 months @code: Client's age is 6–9 months-52 @decision: IMMZ.D5.DT.Yellow fever contraindications */ define "Client's age is 6–9 months": 6 <= Elements."Current Patient Age In Months" and Elements."Current Patient Age In Months" < 9 /* @input: Client's age is more than or equal to 60 years @pseudocode: Today's date − "Date of birth" ≥ 60 years @code: Client's age is more than or equal to 60 years-41 @decision: IMMZ.D5.DT.Yellow fever contraindications */ define "Client's age is more than or equal to 60 years": Elements."Current Patient Age In Years" >= 60 /* @input: The client has a history of severe allergic reactions @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has a history of severe allergic reactions-59 @decision: IMMZ.D5.DT.Yellow fever contraindications */ define "The client has a history of severe allergic reactions": Elements."The client has history of severe allergic reactions" /* @input: The client is severely immunocompromised @pseudocode: "Potential contraindications" = "Severely immunocompromised" @code: The client is severely immunocompromised-60 @decision: IMMZ.D5.DT.Yellow fever contraindications */ define "The client is severely immunocompromised": Elements."The client is severely immunocompromised" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.Yellow fever contraindications */ define "The client is currently pregnant": Elements."The client is pregnant" /* @input: The client is lactating @pseudocode: "Potential contraindications" = "Breastfeeding" @code: The client is lactating-47 @decision: IMMZ.D5.DT.Yellow fever contraindications */ define "The client is lactating": Elements."The client is lactating" ````: **Publisher: **
  * ?: WHO
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTYellowfeverElements */ library IMMZD5DTYellowfeverElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for Yellow fever dose */ define "Draft Medication Request for Yellow fever dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."Yellow fever vaccines" /* @input: Client's age is less than 6 months @pseudocode: Today's date − "Date of birth" < 6 months @code: Client's age is less than 6 months-41 @decision: IMMZ.D5.DT.Yellow fever contraindications */ define "Client's age is less than 6 months": Elements."Current Patient Age In Months" < 6 /* @input: Client's age is 6–9 months @pseudocode: 6 months ≤ Today's date − "Date of birth" < 9 months @code: Client's age is 6–9 months-52 @decision: IMMZ.D5.DT.Yellow fever contraindications */ define "Client's age is 6–9 months": 6 <= Elements."Current Patient Age In Months" and Elements."Current Patient Age In Months" < 9 /* @input: Client's age is more than or equal to 60 years @pseudocode: Today's date − "Date of birth" ≥ 60 years @code: Client's age is more than or equal to 60 years-41 @decision: IMMZ.D5.DT.Yellow fever contraindications */ define "Client's age is more than or equal to 60 years": Elements."Current Patient Age In Years" >= 60 /* @input: The client has a history of severe allergic reactions @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has a history of severe allergic reactions-59 @decision: IMMZ.D5.DT.Yellow fever contraindications */ define "The client has a history of severe allergic reactions": Elements."The client has history of severe allergic reactions" /* @input: The client is severely immunocompromised @pseudocode: "Potential contraindications" = "Severely immunocompromised" @code: The client is severely immunocompromised-60 @decision: IMMZ.D5.DT.Yellow fever contraindications */ define "The client is severely immunocompromised": Elements."The client is severely immunocompromised" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.Yellow fever contraindications */ define "The client is currently pregnant": Elements."The client is pregnant" /* @input: The client is lactating @pseudocode: "Potential contraindications" = "Breastfeeding" @code: The client is lactating-47 @decision: IMMZ.D5.DT.Yellow fever contraindications */ define "The client is lactating": Elements."The client is lactating" ````: **Description: **
  * ?: This library defines context-independent elements for Yellow fever used throughout the Immunization CPG



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "IMMZD5DTYellowfeverElements",
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
  "url" : "http://smart.who.int/immunizations/Library/IMMZD5DTYellowfeverElements",
  "version" : "1.0.0",
  "name" : "IMMZD5DTYellowfeverElements",
  "title" : "IMMZD5DTYellowfeverElements",
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
  "description" : "This library defines context-independent elements for Yellow fever used throughout the Immunization CPG",
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
    "name" : "Draft Medication Request for Yellow fever dose",
    "use" : "out",
    "min" : 0,
    "max" : "*",
    "type" : "MedicationRequest"
  },
  {
    "name" : "Client's age is less than 6 months",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "Client's age is 6–9 months",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "Client's age is more than or equal to 60 years",
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
  },
  {
    "name" : "The client is severely immunocompromised",
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
  },
  {
    "name" : "The client is lactating",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  }],
  "content" : [{
    "contentType" : "text/cql",
    "data" : "Ci8qCiAgKiBMaWJyYXJ5OiBJTU1aRDVEVFllbGxvd2ZldmVyRWxlbWVudHMKICAqLwpsaWJyYXJ5IElNTVpENURUWWVsbG93ZmV2ZXJFbGVtZW50cwoKdXNpbmcgRkhJUiB2ZXJzaW9uICc0LjAuMScKaW5jbHVkZSBGSElSSGVscGVycyB2ZXJzaW9uICc0LjAuMScKCmluY2x1ZGUgV0hPQ29uY2VwdHMKaW5jbHVkZSBXSE9Db21tb24gY2FsbGVkIFdDCmluY2x1ZGUgV0hPRWxlbWVudHMgY2FsbGVkIFdFCgppbmNsdWRlIElNTVpDb21tb24gY2FsbGVkIENvbW1vbgppbmNsdWRlIElNTVpDb25jZXB0cyBjYWxsZWQgQ29uY2VwdHMKaW5jbHVkZSBJTU1aRWxlbWVudHMgY2FsbGVkIEVsZW1lbnRzCgoKY29udGV4dCBQYXRpZW50CgovKgpAaW50ZXJuYWw6IERyYWZ0IE1lZGljYXRpb24gUmVxdWVzdCBmb3IgWWVsbG93IGZldmVyIGRvc2UKKi8KZGVmaW5lICJEcmFmdCBNZWRpY2F0aW9uIFJlcXVlc3QgZm9yIFllbGxvdyBmZXZlciBkb3NlIjoKICBFbGVtZW50cy4iRHJhZnQgTWVkaWNhdGlvbiBSZXF1ZXN0IGZvciBQYXRpZW50IiBNUgogICAgd2hlcmUgTVIubWVkaWNhdGlvbiBpbiBDb25jZXB0cy4iWWVsbG93IGZldmVyIHZhY2NpbmVzIgoKLyoKQGlucHV0OiBDbGllbnQncyBhZ2UgaXMgbGVzcyB0aGFuIDYgbW9udGhzCkBwc2V1ZG9jb2RlOiBUb2RheSdzIGRhdGUg4oiSICJEYXRlIG9mIGJpcnRoIiA8IDYgbW9udGhzCkBjb2RlOiBDbGllbnQncyBhZ2UgaXMgbGVzcyB0aGFuIDYgbW9udGhzLTQxCkBkZWNpc2lvbjogSU1NWi5ENS5EVC5ZZWxsb3cgZmV2ZXIgY29udHJhaW5kaWNhdGlvbnMKKi8KZGVmaW5lICJDbGllbnQncyBhZ2UgaXMgbGVzcyB0aGFuIDYgbW9udGhzIjoKICBFbGVtZW50cy4iQ3VycmVudCBQYXRpZW50IEFnZSBJbiBNb250aHMiIDwgNgoKLyoKQGlucHV0OiBDbGllbnQncyBhZ2UgaXMgNuKAkzkgbW9udGhzCkBwc2V1ZG9jb2RlOiA2IG1vbnRocyDiiaQgVG9kYXkncyBkYXRlIOKIkiAiRGF0ZSBvZiBiaXJ0aCIgPCA5IG1vbnRocwpAY29kZTogQ2xpZW50J3MgYWdlIGlzIDbigJM5IG1vbnRocy01MgpAZGVjaXNpb246IElNTVouRDUuRFQuWWVsbG93IGZldmVyIGNvbnRyYWluZGljYXRpb25zCiovCmRlZmluZSAiQ2xpZW50J3MgYWdlIGlzIDbigJM5IG1vbnRocyI6CiAgNiA8PSBFbGVtZW50cy4iQ3VycmVudCBQYXRpZW50IEFnZSBJbiBNb250aHMiCiAgYW5kIEVsZW1lbnRzLiJDdXJyZW50IFBhdGllbnQgQWdlIEluIE1vbnRocyIgPCA5CgovKgpAaW5wdXQ6IENsaWVudCdzIGFnZSBpcyBtb3JlIHRoYW4gb3IgZXF1YWwgdG8gNjAgeWVhcnMKQHBzZXVkb2NvZGU6IFRvZGF5J3MgZGF0ZSDiiJIgIkRhdGUgb2YgYmlydGgiIOKJpSA2MCB5ZWFycwpAY29kZTogQ2xpZW50J3MgYWdlIGlzIG1vcmUgdGhhbiBvciBlcXVhbCB0byA2MCB5ZWFycy00MQpAZGVjaXNpb246IElNTVouRDUuRFQuWWVsbG93IGZldmVyIGNvbnRyYWluZGljYXRpb25zCiovCmRlZmluZSAiQ2xpZW50J3MgYWdlIGlzIG1vcmUgdGhhbiBvciBlcXVhbCB0byA2MCB5ZWFycyI6CiAgRWxlbWVudHMuIkN1cnJlbnQgUGF0aWVudCBBZ2UgSW4gWWVhcnMiID49IDYwCgovKgpAaW5wdXQ6IFRoZSBjbGllbnQgaGFzIGEgaGlzdG9yeSBvZiBzZXZlcmUgYWxsZXJnaWMgcmVhY3Rpb25zCkBwc2V1ZG9jb2RlOiAiUG90ZW50aWFsIGNvbnRyYWluZGljYXRpb25zIiA9ICJTZXZlcmUgYWxsZXJnaWMgcmVhY3Rpb25zIgpAY29kZTogVGhlIGNsaWVudCBoYXMgYSBoaXN0b3J5IG9mIHNldmVyZSBhbGxlcmdpYyByZWFjdGlvbnMtNTkKQGRlY2lzaW9uOiBJTU1aLkQ1LkRULlllbGxvdyBmZXZlciBjb250cmFpbmRpY2F0aW9ucwoqLwpkZWZpbmUgIlRoZSBjbGllbnQgaGFzIGEgaGlzdG9yeSBvZiBzZXZlcmUgYWxsZXJnaWMgcmVhY3Rpb25zIjoKICBFbGVtZW50cy4iVGhlIGNsaWVudCBoYXMgaGlzdG9yeSBvZiBzZXZlcmUgYWxsZXJnaWMgcmVhY3Rpb25zIgoKLyoKQGlucHV0OiBUaGUgY2xpZW50IGlzIHNldmVyZWx5IGltbXVub2NvbXByb21pc2VkCkBwc2V1ZG9jb2RlOiAiUG90ZW50aWFsIGNvbnRyYWluZGljYXRpb25zIiA9ICJTZXZlcmVseSBpbW11bm9jb21wcm9taXNlZCIKQGNvZGU6IFRoZSBjbGllbnQgaXMgc2V2ZXJlbHkgaW1tdW5vY29tcHJvbWlzZWQtNjAKQGRlY2lzaW9uOiBJTU1aLkQ1LkRULlllbGxvdyBmZXZlciBjb250cmFpbmRpY2F0aW9ucwoqLwpkZWZpbmUgIlRoZSBjbGllbnQgaXMgc2V2ZXJlbHkgaW1tdW5vY29tcHJvbWlzZWQiOgogIEVsZW1lbnRzLiJUaGUgY2xpZW50IGlzIHNldmVyZWx5IGltbXVub2NvbXByb21pc2VkIgoKLyoKQGlucHV0OiBUaGUgY2xpZW50IGlzIGN1cnJlbnRseSBwcmVnbmFudApAcHNldWRvY29kZTogIlBvdGVudGlhbCBjb250cmFpbmRpY2F0aW9ucyIgPSAiQ3VycmVudGx5IHByZWduYW50IgpAY29kZTogVGhlIGNsaWVudCBpcyBjdXJyZW50bHkgcHJlZ25hbnQtNTIKQGRlY2lzaW9uOiBJTU1aLkQ1LkRULlllbGxvdyBmZXZlciBjb250cmFpbmRpY2F0aW9ucwoqLwpkZWZpbmUgIlRoZSBjbGllbnQgaXMgY3VycmVudGx5IHByZWduYW50IjoKICBFbGVtZW50cy4iVGhlIGNsaWVudCBpcyBwcmVnbmFudCIKCi8qCkBpbnB1dDogVGhlIGNsaWVudCBpcyBsYWN0YXRpbmcKQHBzZXVkb2NvZGU6ICJQb3RlbnRpYWwgY29udHJhaW5kaWNhdGlvbnMiID0gIkJyZWFzdGZlZWRpbmciCkBjb2RlOiBUaGUgY2xpZW50IGlzIGxhY3RhdGluZy00NwpAZGVjaXNpb246IElNTVouRDUuRFQuWWVsbG93IGZldmVyIGNvbnRyYWluZGljYXRpb25zCiovCmRlZmluZSAiVGhlIGNsaWVudCBpcyBsYWN0YXRpbmciOgogIEVsZW1lbnRzLiJUaGUgY2xpZW50IGlzIGxhY3RhdGluZyIK"
  }]
}

```
