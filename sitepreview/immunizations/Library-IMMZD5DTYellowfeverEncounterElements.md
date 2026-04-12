# IMMZD5DTYellowfeverEncounterElements - WHO Immunization Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD5DTYellowfeverEncounterElements**

## Library: IMMZD5DTYellowfeverEncounterElements 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Library/IMMZD5DTYellowfeverEncounterElements | *Version*:1.0.0 |
| Draft as of 2026-04-09 | *Computable Name*:IMMZD5DTYellowfeverEncounterElements |

 
This library defines encounter-based elements for Yellow fever used throughout the Immunization CPG 

* * **Content: **text/cql: ```` /* * Library: IMMZD5DTYellowfeverEncounterElements */ library IMMZD5DTYellowfeverEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTYellowfeverElements called YellowfeverElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for Yellow fever dose */ define "Draft Medication Request for Yellow fever dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."Yellow fever vaccines" /* @input: Client's age is less than 6 months @pseudocode: Today's date − "Date of birth" < 6 months @code: Client's age is less than 6 months-41 @decision: IMMZ.D5.DT.Yellow fever contraindications */ define "Client's age is less than 6 months": Encounter."Current Patient Age In Months" < 6 /* @input: Client's age is 6–9 months @pseudocode: 6 months ≤ Today's date − "Date of birth" < 9 months @code: Client's age is 6–9 months-52 @decision: IMMZ.D5.DT.Yellow fever contraindications */ define "Client's age is 6–9 months": 6 <= Encounter."Current Patient Age In Months" and Encounter."Current Patient Age In Months" < 9 /* @input: Client's age is more than or equal to 60 years @pseudocode: Today's date − "Date of birth" ≥ 60 years @code: Client's age is more than or equal to 60 years-41 @decision: IMMZ.D5.DT.Yellow fever contraindications */ define "Client's age is more than or equal to 60 years": Encounter."Current Patient Age In Years" >= 60 /* @input: The client has a history of severe allergic reactions @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has a history of severe allergic reactions-59 @decision: IMMZ.D5.DT.Yellow fever contraindications */ define "The client has a history of severe allergic reactions": Encounter."The client has history of severe allergic reactions" /* @input: The client is severely immunocompromised @pseudocode: "Potential contraindications" = "Severely immunocompromised" @code: The client is severely immunocompromised-60 @decision: IMMZ.D5.DT.Yellow fever contraindications */ define "The client is severely immunocompromised": Encounter."The client is severely immunocompromised" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.Yellow fever contraindications */ define "The client is currently pregnant": Encounter."The client is pregnant" /* @input: The client is lactating @pseudocode: "Potential contraindications" = "Breastfeeding" @code: The client is lactating-47 @decision: IMMZ.D5.DT.Yellow fever contraindications */ define "The client is lactating": Encounter."The client is lactating" ````: **Id: **
  * ?: IMMZD5DTYellowfeverEncounterElements
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTYellowfeverEncounterElements */ library IMMZD5DTYellowfeverEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTYellowfeverElements called YellowfeverElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for Yellow fever dose */ define "Draft Medication Request for Yellow fever dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."Yellow fever vaccines" /* @input: Client's age is less than 6 months @pseudocode: Today's date − "Date of birth" < 6 months @code: Client's age is less than 6 months-41 @decision: IMMZ.D5.DT.Yellow fever contraindications */ define "Client's age is less than 6 months": Encounter."Current Patient Age In Months" < 6 /* @input: Client's age is 6–9 months @pseudocode: 6 months ≤ Today's date − "Date of birth" < 9 months @code: Client's age is 6–9 months-52 @decision: IMMZ.D5.DT.Yellow fever contraindications */ define "Client's age is 6–9 months": 6 <= Encounter."Current Patient Age In Months" and Encounter."Current Patient Age In Months" < 9 /* @input: Client's age is more than or equal to 60 years @pseudocode: Today's date − "Date of birth" ≥ 60 years @code: Client's age is more than or equal to 60 years-41 @decision: IMMZ.D5.DT.Yellow fever contraindications */ define "Client's age is more than or equal to 60 years": Encounter."Current Patient Age In Years" >= 60 /* @input: The client has a history of severe allergic reactions @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has a history of severe allergic reactions-59 @decision: IMMZ.D5.DT.Yellow fever contraindications */ define "The client has a history of severe allergic reactions": Encounter."The client has history of severe allergic reactions" /* @input: The client is severely immunocompromised @pseudocode: "Potential contraindications" = "Severely immunocompromised" @code: The client is severely immunocompromised-60 @decision: IMMZ.D5.DT.Yellow fever contraindications */ define "The client is severely immunocompromised": Encounter."The client is severely immunocompromised" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.Yellow fever contraindications */ define "The client is currently pregnant": Encounter."The client is pregnant" /* @input: The client is lactating @pseudocode: "Potential contraindications" = "Breastfeeding" @code: The client is lactating-47 @decision: IMMZ.D5.DT.Yellow fever contraindications */ define "The client is lactating": Encounter."The client is lactating" ````: **Version: **
  * ?: 1.0.0
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTYellowfeverEncounterElements */ library IMMZD5DTYellowfeverEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTYellowfeverElements called YellowfeverElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for Yellow fever dose */ define "Draft Medication Request for Yellow fever dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."Yellow fever vaccines" /* @input: Client's age is less than 6 months @pseudocode: Today's date − "Date of birth" < 6 months @code: Client's age is less than 6 months-41 @decision: IMMZ.D5.DT.Yellow fever contraindications */ define "Client's age is less than 6 months": Encounter."Current Patient Age In Months" < 6 /* @input: Client's age is 6–9 months @pseudocode: 6 months ≤ Today's date − "Date of birth" < 9 months @code: Client's age is 6–9 months-52 @decision: IMMZ.D5.DT.Yellow fever contraindications */ define "Client's age is 6–9 months": 6 <= Encounter."Current Patient Age In Months" and Encounter."Current Patient Age In Months" < 9 /* @input: Client's age is more than or equal to 60 years @pseudocode: Today's date − "Date of birth" ≥ 60 years @code: Client's age is more than or equal to 60 years-41 @decision: IMMZ.D5.DT.Yellow fever contraindications */ define "Client's age is more than or equal to 60 years": Encounter."Current Patient Age In Years" >= 60 /* @input: The client has a history of severe allergic reactions @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has a history of severe allergic reactions-59 @decision: IMMZ.D5.DT.Yellow fever contraindications */ define "The client has a history of severe allergic reactions": Encounter."The client has history of severe allergic reactions" /* @input: The client is severely immunocompromised @pseudocode: "Potential contraindications" = "Severely immunocompromised" @code: The client is severely immunocompromised-60 @decision: IMMZ.D5.DT.Yellow fever contraindications */ define "The client is severely immunocompromised": Encounter."The client is severely immunocompromised" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.Yellow fever contraindications */ define "The client is currently pregnant": Encounter."The client is pregnant" /* @input: The client is lactating @pseudocode: "Potential contraindications" = "Breastfeeding" @code: The client is lactating-47 @decision: IMMZ.D5.DT.Yellow fever contraindications */ define "The client is lactating": Encounter."The client is lactating" ````: **Url: **
  * ?: [IMMZD5DTYellowfeverEncounterElements](Library-IMMZD5DTYellowfeverEncounterElements.md)
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTYellowfeverEncounterElements */ library IMMZD5DTYellowfeverEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTYellowfeverElements called YellowfeverElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for Yellow fever dose */ define "Draft Medication Request for Yellow fever dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."Yellow fever vaccines" /* @input: Client's age is less than 6 months @pseudocode: Today's date − "Date of birth" < 6 months @code: Client's age is less than 6 months-41 @decision: IMMZ.D5.DT.Yellow fever contraindications */ define "Client's age is less than 6 months": Encounter."Current Patient Age In Months" < 6 /* @input: Client's age is 6–9 months @pseudocode: 6 months ≤ Today's date − "Date of birth" < 9 months @code: Client's age is 6–9 months-52 @decision: IMMZ.D5.DT.Yellow fever contraindications */ define "Client's age is 6–9 months": 6 <= Encounter."Current Patient Age In Months" and Encounter."Current Patient Age In Months" < 9 /* @input: Client's age is more than or equal to 60 years @pseudocode: Today's date − "Date of birth" ≥ 60 years @code: Client's age is more than or equal to 60 years-41 @decision: IMMZ.D5.DT.Yellow fever contraindications */ define "Client's age is more than or equal to 60 years": Encounter."Current Patient Age In Years" >= 60 /* @input: The client has a history of severe allergic reactions @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has a history of severe allergic reactions-59 @decision: IMMZ.D5.DT.Yellow fever contraindications */ define "The client has a history of severe allergic reactions": Encounter."The client has history of severe allergic reactions" /* @input: The client is severely immunocompromised @pseudocode: "Potential contraindications" = "Severely immunocompromised" @code: The client is severely immunocompromised-60 @decision: IMMZ.D5.DT.Yellow fever contraindications */ define "The client is severely immunocompromised": Encounter."The client is severely immunocompromised" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.Yellow fever contraindications */ define "The client is currently pregnant": Encounter."The client is pregnant" /* @input: The client is lactating @pseudocode: "Potential contraindications" = "Breastfeeding" @code: The client is lactating-47 @decision: IMMZ.D5.DT.Yellow fever contraindications */ define "The client is lactating": Encounter."The client is lactating" ````: **Status: **
  * ?: draft
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTYellowfeverEncounterElements */ library IMMZD5DTYellowfeverEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTYellowfeverElements called YellowfeverElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for Yellow fever dose */ define "Draft Medication Request for Yellow fever dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."Yellow fever vaccines" /* @input: Client's age is less than 6 months @pseudocode: Today's date − "Date of birth" < 6 months @code: Client's age is less than 6 months-41 @decision: IMMZ.D5.DT.Yellow fever contraindications */ define "Client's age is less than 6 months": Encounter."Current Patient Age In Months" < 6 /* @input: Client's age is 6–9 months @pseudocode: 6 months ≤ Today's date − "Date of birth" < 9 months @code: Client's age is 6–9 months-52 @decision: IMMZ.D5.DT.Yellow fever contraindications */ define "Client's age is 6–9 months": 6 <= Encounter."Current Patient Age In Months" and Encounter."Current Patient Age In Months" < 9 /* @input: Client's age is more than or equal to 60 years @pseudocode: Today's date − "Date of birth" ≥ 60 years @code: Client's age is more than or equal to 60 years-41 @decision: IMMZ.D5.DT.Yellow fever contraindications */ define "Client's age is more than or equal to 60 years": Encounter."Current Patient Age In Years" >= 60 /* @input: The client has a history of severe allergic reactions @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has a history of severe allergic reactions-59 @decision: IMMZ.D5.DT.Yellow fever contraindications */ define "The client has a history of severe allergic reactions": Encounter."The client has history of severe allergic reactions" /* @input: The client is severely immunocompromised @pseudocode: "Potential contraindications" = "Severely immunocompromised" @code: The client is severely immunocompromised-60 @decision: IMMZ.D5.DT.Yellow fever contraindications */ define "The client is severely immunocompromised": Encounter."The client is severely immunocompromised" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.Yellow fever contraindications */ define "The client is currently pregnant": Encounter."The client is pregnant" /* @input: The client is lactating @pseudocode: "Potential contraindications" = "Breastfeeding" @code: The client is lactating-47 @decision: IMMZ.D5.DT.Yellow fever contraindications */ define "The client is lactating": Encounter."The client is lactating" ````: **Date: **
  * ?: 2026-04-09 14:34:42+0000
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTYellowfeverEncounterElements */ library IMMZD5DTYellowfeverEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTYellowfeverElements called YellowfeverElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for Yellow fever dose */ define "Draft Medication Request for Yellow fever dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."Yellow fever vaccines" /* @input: Client's age is less than 6 months @pseudocode: Today's date − "Date of birth" < 6 months @code: Client's age is less than 6 months-41 @decision: IMMZ.D5.DT.Yellow fever contraindications */ define "Client's age is less than 6 months": Encounter."Current Patient Age In Months" < 6 /* @input: Client's age is 6–9 months @pseudocode: 6 months ≤ Today's date − "Date of birth" < 9 months @code: Client's age is 6–9 months-52 @decision: IMMZ.D5.DT.Yellow fever contraindications */ define "Client's age is 6–9 months": 6 <= Encounter."Current Patient Age In Months" and Encounter."Current Patient Age In Months" < 9 /* @input: Client's age is more than or equal to 60 years @pseudocode: Today's date − "Date of birth" ≥ 60 years @code: Client's age is more than or equal to 60 years-41 @decision: IMMZ.D5.DT.Yellow fever contraindications */ define "Client's age is more than or equal to 60 years": Encounter."Current Patient Age In Years" >= 60 /* @input: The client has a history of severe allergic reactions @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has a history of severe allergic reactions-59 @decision: IMMZ.D5.DT.Yellow fever contraindications */ define "The client has a history of severe allergic reactions": Encounter."The client has history of severe allergic reactions" /* @input: The client is severely immunocompromised @pseudocode: "Potential contraindications" = "Severely immunocompromised" @code: The client is severely immunocompromised-60 @decision: IMMZ.D5.DT.Yellow fever contraindications */ define "The client is severely immunocompromised": Encounter."The client is severely immunocompromised" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.Yellow fever contraindications */ define "The client is currently pregnant": Encounter."The client is pregnant" /* @input: The client is lactating @pseudocode: "Potential contraindications" = "Breastfeeding" @code: The client is lactating-47 @decision: IMMZ.D5.DT.Yellow fever contraindications */ define "The client is lactating": Encounter."The client is lactating" ````: **Publisher: **
  * ?: WHO
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTYellowfeverEncounterElements */ library IMMZD5DTYellowfeverEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTYellowfeverElements called YellowfeverElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for Yellow fever dose */ define "Draft Medication Request for Yellow fever dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."Yellow fever vaccines" /* @input: Client's age is less than 6 months @pseudocode: Today's date − "Date of birth" < 6 months @code: Client's age is less than 6 months-41 @decision: IMMZ.D5.DT.Yellow fever contraindications */ define "Client's age is less than 6 months": Encounter."Current Patient Age In Months" < 6 /* @input: Client's age is 6–9 months @pseudocode: 6 months ≤ Today's date − "Date of birth" < 9 months @code: Client's age is 6–9 months-52 @decision: IMMZ.D5.DT.Yellow fever contraindications */ define "Client's age is 6–9 months": 6 <= Encounter."Current Patient Age In Months" and Encounter."Current Patient Age In Months" < 9 /* @input: Client's age is more than or equal to 60 years @pseudocode: Today's date − "Date of birth" ≥ 60 years @code: Client's age is more than or equal to 60 years-41 @decision: IMMZ.D5.DT.Yellow fever contraindications */ define "Client's age is more than or equal to 60 years": Encounter."Current Patient Age In Years" >= 60 /* @input: The client has a history of severe allergic reactions @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has a history of severe allergic reactions-59 @decision: IMMZ.D5.DT.Yellow fever contraindications */ define "The client has a history of severe allergic reactions": Encounter."The client has history of severe allergic reactions" /* @input: The client is severely immunocompromised @pseudocode: "Potential contraindications" = "Severely immunocompromised" @code: The client is severely immunocompromised-60 @decision: IMMZ.D5.DT.Yellow fever contraindications */ define "The client is severely immunocompromised": Encounter."The client is severely immunocompromised" /* @input: The client is currently pregnant @pseudocode: "Potential contraindications" = "Currently pregnant" @code: The client is currently pregnant-52 @decision: IMMZ.D5.DT.Yellow fever contraindications */ define "The client is currently pregnant": Encounter."The client is pregnant" /* @input: The client is lactating @pseudocode: "Potential contraindications" = "Breastfeeding" @code: The client is lactating-47 @decision: IMMZ.D5.DT.Yellow fever contraindications */ define "The client is lactating": Encounter."The client is lactating" ````: **Description: **
  * ?: This library defines encounter-based elements for Yellow fever used throughout the Immunization CPG



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "IMMZD5DTYellowfeverEncounterElements",
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
  "url" : "http://smart.who.int/immunizations/Library/IMMZD5DTYellowfeverEncounterElements",
  "version" : "1.0.0",
  "name" : "IMMZD5DTYellowfeverEncounterElements",
  "title" : "IMMZD5DTYellowfeverEncounterElements",
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
  "description" : "This library defines encounter-based elements for Yellow fever used throughout the Immunization CPG",
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
    "display" : "Library YellowfeverElements",
    "resource" : "http://smart.who.int/immunizations/Library/IMMZD5DTYellowfeverElements"
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
    "data" : "Ci8qCiAgKiBMaWJyYXJ5OiBJTU1aRDVEVFllbGxvd2ZldmVyRW5jb3VudGVyRWxlbWVudHMKICAqLwpsaWJyYXJ5IElNTVpENURUWWVsbG93ZmV2ZXJFbmNvdW50ZXJFbGVtZW50cwoKdXNpbmcgRkhJUiB2ZXJzaW9uICc0LjAuMScKaW5jbHVkZSBGSElSSGVscGVycyB2ZXJzaW9uICc0LjAuMScKCmluY2x1ZGUgV0hPQ29uY2VwdHMKaW5jbHVkZSBXSE9Db21tb24gY2FsbGVkIFdDCmluY2x1ZGUgV0hPRWxlbWVudHMgY2FsbGVkIFdFCgppbmNsdWRlIElNTVpDb21tb24gY2FsbGVkIENvbW1vbgppbmNsdWRlIElNTVpDb25jZXB0cyBjYWxsZWQgQ29uY2VwdHMKaW5jbHVkZSBJTU1aRW5jb3VudGVyRWxlbWVudHMgY2FsbGVkIEVuY291bnRlcgoKaW5jbHVkZSBJTU1aRDVEVFllbGxvd2ZldmVyRWxlbWVudHMgY2FsbGVkIFllbGxvd2ZldmVyRWxlbWVudHMKCnBhcmFtZXRlciBUb2RheSBEYXRlIGRlZmF1bHQgVG9kYXkoKQpwYXJhbWV0ZXIgRW5jb3VudGVySWQgU3RyaW5nCgpjb250ZXh0IFBhdGllbnQKCi8qCkBpbnRlcm5hbDogRHJhZnQgTWVkaWNhdGlvbiBSZXF1ZXN0IGZvciBZZWxsb3cgZmV2ZXIgZG9zZQoqLwpkZWZpbmUgIkRyYWZ0IE1lZGljYXRpb24gUmVxdWVzdCBmb3IgWWVsbG93IGZldmVyIGRvc2UiOgogIEVuY291bnRlci4iRHJhZnQgTWVkaWNhdGlvbiBSZXF1ZXN0IGZvciBQYXRpZW50IiBNUgogICAgd2hlcmUgTVIubWVkaWNhdGlvbiBpbiBDb25jZXB0cy4iWWVsbG93IGZldmVyIHZhY2NpbmVzIgoKLyoKQGlucHV0OiBDbGllbnQncyBhZ2UgaXMgbGVzcyB0aGFuIDYgbW9udGhzCkBwc2V1ZG9jb2RlOiBUb2RheSdzIGRhdGUg4oiSICJEYXRlIG9mIGJpcnRoIiA8IDYgbW9udGhzCkBjb2RlOiBDbGllbnQncyBhZ2UgaXMgbGVzcyB0aGFuIDYgbW9udGhzLTQxCkBkZWNpc2lvbjogSU1NWi5ENS5EVC5ZZWxsb3cgZmV2ZXIgY29udHJhaW5kaWNhdGlvbnMKKi8KZGVmaW5lICJDbGllbnQncyBhZ2UgaXMgbGVzcyB0aGFuIDYgbW9udGhzIjoKICBFbmNvdW50ZXIuIkN1cnJlbnQgUGF0aWVudCBBZ2UgSW4gTW9udGhzIiA8IDYKCi8qCkBpbnB1dDogQ2xpZW50J3MgYWdlIGlzIDbigJM5IG1vbnRocwpAcHNldWRvY29kZTogNiBtb250aHMg4omkIFRvZGF5J3MgZGF0ZSDiiJIgIkRhdGUgb2YgYmlydGgiIDwgOSBtb250aHMKQGNvZGU6IENsaWVudCdzIGFnZSBpcyA24oCTOSBtb250aHMtNTIKQGRlY2lzaW9uOiBJTU1aLkQ1LkRULlllbGxvdyBmZXZlciBjb250cmFpbmRpY2F0aW9ucwoqLwpkZWZpbmUgIkNsaWVudCdzIGFnZSBpcyA24oCTOSBtb250aHMiOgogIDYgPD0gRW5jb3VudGVyLiJDdXJyZW50IFBhdGllbnQgQWdlIEluIE1vbnRocyIKICBhbmQgRW5jb3VudGVyLiJDdXJyZW50IFBhdGllbnQgQWdlIEluIE1vbnRocyIgPCA5CgovKgpAaW5wdXQ6IENsaWVudCdzIGFnZSBpcyBtb3JlIHRoYW4gb3IgZXF1YWwgdG8gNjAgeWVhcnMKQHBzZXVkb2NvZGU6IFRvZGF5J3MgZGF0ZSDiiJIgIkRhdGUgb2YgYmlydGgiIOKJpSA2MCB5ZWFycwpAY29kZTogQ2xpZW50J3MgYWdlIGlzIG1vcmUgdGhhbiBvciBlcXVhbCB0byA2MCB5ZWFycy00MQpAZGVjaXNpb246IElNTVouRDUuRFQuWWVsbG93IGZldmVyIGNvbnRyYWluZGljYXRpb25zCiovCmRlZmluZSAiQ2xpZW50J3MgYWdlIGlzIG1vcmUgdGhhbiBvciBlcXVhbCB0byA2MCB5ZWFycyI6CiAgRW5jb3VudGVyLiJDdXJyZW50IFBhdGllbnQgQWdlIEluIFllYXJzIiA+PSA2MAoKLyoKQGlucHV0OiBUaGUgY2xpZW50IGhhcyBhIGhpc3Rvcnkgb2Ygc2V2ZXJlIGFsbGVyZ2ljIHJlYWN0aW9ucwpAcHNldWRvY29kZTogIlBvdGVudGlhbCBjb250cmFpbmRpY2F0aW9ucyIgPSAiU2V2ZXJlIGFsbGVyZ2ljIHJlYWN0aW9ucyIKQGNvZGU6IFRoZSBjbGllbnQgaGFzIGEgaGlzdG9yeSBvZiBzZXZlcmUgYWxsZXJnaWMgcmVhY3Rpb25zLTU5CkBkZWNpc2lvbjogSU1NWi5ENS5EVC5ZZWxsb3cgZmV2ZXIgY29udHJhaW5kaWNhdGlvbnMKKi8KZGVmaW5lICJUaGUgY2xpZW50IGhhcyBhIGhpc3Rvcnkgb2Ygc2V2ZXJlIGFsbGVyZ2ljIHJlYWN0aW9ucyI6CiAgRW5jb3VudGVyLiJUaGUgY2xpZW50IGhhcyBoaXN0b3J5IG9mIHNldmVyZSBhbGxlcmdpYyByZWFjdGlvbnMiCgovKgpAaW5wdXQ6IFRoZSBjbGllbnQgaXMgc2V2ZXJlbHkgaW1tdW5vY29tcHJvbWlzZWQKQHBzZXVkb2NvZGU6ICJQb3RlbnRpYWwgY29udHJhaW5kaWNhdGlvbnMiID0gIlNldmVyZWx5IGltbXVub2NvbXByb21pc2VkIgpAY29kZTogVGhlIGNsaWVudCBpcyBzZXZlcmVseSBpbW11bm9jb21wcm9taXNlZC02MApAZGVjaXNpb246IElNTVouRDUuRFQuWWVsbG93IGZldmVyIGNvbnRyYWluZGljYXRpb25zCiovCmRlZmluZSAiVGhlIGNsaWVudCBpcyBzZXZlcmVseSBpbW11bm9jb21wcm9taXNlZCI6CiAgRW5jb3VudGVyLiJUaGUgY2xpZW50IGlzIHNldmVyZWx5IGltbXVub2NvbXByb21pc2VkIgoKLyoKQGlucHV0OiBUaGUgY2xpZW50IGlzIGN1cnJlbnRseSBwcmVnbmFudApAcHNldWRvY29kZTogIlBvdGVudGlhbCBjb250cmFpbmRpY2F0aW9ucyIgPSAiQ3VycmVudGx5IHByZWduYW50IgpAY29kZTogVGhlIGNsaWVudCBpcyBjdXJyZW50bHkgcHJlZ25hbnQtNTIKQGRlY2lzaW9uOiBJTU1aLkQ1LkRULlllbGxvdyBmZXZlciBjb250cmFpbmRpY2F0aW9ucwoqLwpkZWZpbmUgIlRoZSBjbGllbnQgaXMgY3VycmVudGx5IHByZWduYW50IjoKICBFbmNvdW50ZXIuIlRoZSBjbGllbnQgaXMgcHJlZ25hbnQiCgovKgpAaW5wdXQ6IFRoZSBjbGllbnQgaXMgbGFjdGF0aW5nCkBwc2V1ZG9jb2RlOiAiUG90ZW50aWFsIGNvbnRyYWluZGljYXRpb25zIiA9ICJCcmVhc3RmZWVkaW5nIgpAY29kZTogVGhlIGNsaWVudCBpcyBsYWN0YXRpbmctNDcKQGRlY2lzaW9uOiBJTU1aLkQ1LkRULlllbGxvdyBmZXZlciBjb250cmFpbmRpY2F0aW9ucwoqLwpkZWZpbmUgIlRoZSBjbGllbnQgaXMgbGFjdGF0aW5nIjoKICBFbmNvdW50ZXIuIlRoZSBjbGllbnQgaXMgbGFjdGF0aW5nIgo="
  }]
}

```
