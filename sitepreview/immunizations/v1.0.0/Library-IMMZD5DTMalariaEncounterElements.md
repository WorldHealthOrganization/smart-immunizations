# IMMZD5DTMalariaEncounterElements - WHO Immunization Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD5DTMalariaEncounterElements**

## Library: IMMZD5DTMalariaEncounterElements 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Library/IMMZD5DTMalariaEncounterElements | *Version*:1.0.0 |
| Draft as of 2026-04-09 | *Computable Name*:IMMZD5DTMalariaEncounterElements |

 
This library defines encounter-based elements for Malaria used throughout the Immunization CPG 

* * **Content: **text/cql: ```` /* * Library: IMMZD5DTMalariaEncounterElements */ library IMMZD5DTMalariaEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTMalariaElements called MalariaElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for Malaria dose */ define "Draft Medication Request for Malaria dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."Malaria vaccines" /* @input: The client has hypersensitivity to any of the vaccine components @pseudocode: "Potential contraindications" = "Hypersensitivity to vaccine components" @code: The client has hypersensitivity to any of the vaccine components-72 @decision: IMMZ.D5.DT.Malaria contraindications */ define "The client has hypersensitivity to any of the vaccine components": Encounter."The client has hypersensitivity to any component of the vaccine" ````: **Id: **
  * ?: IMMZD5DTMalariaEncounterElements
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTMalariaEncounterElements */ library IMMZD5DTMalariaEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTMalariaElements called MalariaElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for Malaria dose */ define "Draft Medication Request for Malaria dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."Malaria vaccines" /* @input: The client has hypersensitivity to any of the vaccine components @pseudocode: "Potential contraindications" = "Hypersensitivity to vaccine components" @code: The client has hypersensitivity to any of the vaccine components-72 @decision: IMMZ.D5.DT.Malaria contraindications */ define "The client has hypersensitivity to any of the vaccine components": Encounter."The client has hypersensitivity to any component of the vaccine" ````: **Version: **
  * ?: 1.0.0
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTMalariaEncounterElements */ library IMMZD5DTMalariaEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTMalariaElements called MalariaElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for Malaria dose */ define "Draft Medication Request for Malaria dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."Malaria vaccines" /* @input: The client has hypersensitivity to any of the vaccine components @pseudocode: "Potential contraindications" = "Hypersensitivity to vaccine components" @code: The client has hypersensitivity to any of the vaccine components-72 @decision: IMMZ.D5.DT.Malaria contraindications */ define "The client has hypersensitivity to any of the vaccine components": Encounter."The client has hypersensitivity to any component of the vaccine" ````: **Url: **
  * ?: [IMMZD5DTMalariaEncounterElements](Library-IMMZD5DTMalariaEncounterElements.md)
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTMalariaEncounterElements */ library IMMZD5DTMalariaEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTMalariaElements called MalariaElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for Malaria dose */ define "Draft Medication Request for Malaria dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."Malaria vaccines" /* @input: The client has hypersensitivity to any of the vaccine components @pseudocode: "Potential contraindications" = "Hypersensitivity to vaccine components" @code: The client has hypersensitivity to any of the vaccine components-72 @decision: IMMZ.D5.DT.Malaria contraindications */ define "The client has hypersensitivity to any of the vaccine components": Encounter."The client has hypersensitivity to any component of the vaccine" ````: **Status: **
  * ?: draft
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTMalariaEncounterElements */ library IMMZD5DTMalariaEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTMalariaElements called MalariaElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for Malaria dose */ define "Draft Medication Request for Malaria dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."Malaria vaccines" /* @input: The client has hypersensitivity to any of the vaccine components @pseudocode: "Potential contraindications" = "Hypersensitivity to vaccine components" @code: The client has hypersensitivity to any of the vaccine components-72 @decision: IMMZ.D5.DT.Malaria contraindications */ define "The client has hypersensitivity to any of the vaccine components": Encounter."The client has hypersensitivity to any component of the vaccine" ````: **Date: **
  * ?: 2026-04-09 14:18:30+0000
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTMalariaEncounterElements */ library IMMZD5DTMalariaEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTMalariaElements called MalariaElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for Malaria dose */ define "Draft Medication Request for Malaria dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."Malaria vaccines" /* @input: The client has hypersensitivity to any of the vaccine components @pseudocode: "Potential contraindications" = "Hypersensitivity to vaccine components" @code: The client has hypersensitivity to any of the vaccine components-72 @decision: IMMZ.D5.DT.Malaria contraindications */ define "The client has hypersensitivity to any of the vaccine components": Encounter."The client has hypersensitivity to any component of the vaccine" ````: **Publisher: **
  * ?: WHO
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTMalariaEncounterElements */ library IMMZD5DTMalariaEncounterElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called Encounter include IMMZD5DTMalariaElements called MalariaElements parameter Today Date default Today() parameter EncounterId String context Patient /* @internal: Draft Medication Request for Malaria dose */ define "Draft Medication Request for Malaria dose": Encounter."Draft Medication Request for Patient" MR where MR.medication in Concepts."Malaria vaccines" /* @input: The client has hypersensitivity to any of the vaccine components @pseudocode: "Potential contraindications" = "Hypersensitivity to vaccine components" @code: The client has hypersensitivity to any of the vaccine components-72 @decision: IMMZ.D5.DT.Malaria contraindications */ define "The client has hypersensitivity to any of the vaccine components": Encounter."The client has hypersensitivity to any component of the vaccine" ````: **Description: **
  * ?: This library defines encounter-based elements for Malaria used throughout the Immunization CPG



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "IMMZD5DTMalariaEncounterElements",
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
  "url" : "http://smart.who.int/immunizations/Library/IMMZD5DTMalariaEncounterElements",
  "version" : "1.0.0",
  "name" : "IMMZD5DTMalariaEncounterElements",
  "title" : "IMMZD5DTMalariaEncounterElements",
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
  "description" : "This library defines encounter-based elements for Malaria used throughout the Immunization CPG",
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
    "display" : "Library MalariaElements",
    "resource" : "http://smart.who.int/immunizations/Library/IMMZD5DTMalariaElements"
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
    "name" : "Draft Medication Request for Malaria dose",
    "use" : "out",
    "min" : 0,
    "max" : "*",
    "type" : "MedicationRequest"
  },
  {
    "name" : "The client has hypersensitivity to any of the vaccine components",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  }],
  "content" : [{
    "contentType" : "text/cql",
    "data" : "Ci8qCiAgKiBMaWJyYXJ5OiBJTU1aRDVEVE1hbGFyaWFFbmNvdW50ZXJFbGVtZW50cwogICovCmxpYnJhcnkgSU1NWkQ1RFRNYWxhcmlhRW5jb3VudGVyRWxlbWVudHMKCnVzaW5nIEZISVIgdmVyc2lvbiAnNC4wLjEnCmluY2x1ZGUgRkhJUkhlbHBlcnMgdmVyc2lvbiAnNC4wLjEnCgppbmNsdWRlIFdIT0NvbmNlcHRzCmluY2x1ZGUgV0hPQ29tbW9uIGNhbGxlZCBXQwppbmNsdWRlIFdIT0VsZW1lbnRzIGNhbGxlZCBXRQoKaW5jbHVkZSBJTU1aQ29tbW9uIGNhbGxlZCBDb21tb24KaW5jbHVkZSBJTU1aQ29uY2VwdHMgY2FsbGVkIENvbmNlcHRzCmluY2x1ZGUgSU1NWkVuY291bnRlckVsZW1lbnRzIGNhbGxlZCBFbmNvdW50ZXIKCmluY2x1ZGUgSU1NWkQ1RFRNYWxhcmlhRWxlbWVudHMgY2FsbGVkIE1hbGFyaWFFbGVtZW50cwoKcGFyYW1ldGVyIFRvZGF5IERhdGUgZGVmYXVsdCBUb2RheSgpCnBhcmFtZXRlciBFbmNvdW50ZXJJZCBTdHJpbmcKCmNvbnRleHQgUGF0aWVudAoKLyoKQGludGVybmFsOiBEcmFmdCBNZWRpY2F0aW9uIFJlcXVlc3QgZm9yIE1hbGFyaWEgZG9zZQoqLwpkZWZpbmUgIkRyYWZ0IE1lZGljYXRpb24gUmVxdWVzdCBmb3IgTWFsYXJpYSBkb3NlIjoKICBFbmNvdW50ZXIuIkRyYWZ0IE1lZGljYXRpb24gUmVxdWVzdCBmb3IgUGF0aWVudCIgTVIKICAgIHdoZXJlIE1SLm1lZGljYXRpb24gaW4gQ29uY2VwdHMuIk1hbGFyaWEgdmFjY2luZXMiCgovKgpAaW5wdXQ6IFRoZSBjbGllbnQgaGFzIGh5cGVyc2Vuc2l0aXZpdHkgdG8gYW55IG9mIHRoZSB2YWNjaW5lIGNvbXBvbmVudHMKQHBzZXVkb2NvZGU6ICJQb3RlbnRpYWwgY29udHJhaW5kaWNhdGlvbnMiID0gIkh5cGVyc2Vuc2l0aXZpdHkgdG8gdmFjY2luZSBjb21wb25lbnRzIgpAY29kZTogVGhlIGNsaWVudCBoYXMgaHlwZXJzZW5zaXRpdml0eSB0byBhbnkgb2YgdGhlIHZhY2NpbmUgY29tcG9uZW50cy03MgpAZGVjaXNpb246IElNTVouRDUuRFQuTWFsYXJpYSBjb250cmFpbmRpY2F0aW9ucwoqLwpkZWZpbmUgIlRoZSBjbGllbnQgaGFzIGh5cGVyc2Vuc2l0aXZpdHkgdG8gYW55IG9mIHRoZSB2YWNjaW5lIGNvbXBvbmVudHMiOgogIEVuY291bnRlci4iVGhlIGNsaWVudCBoYXMgaHlwZXJzZW5zaXRpdml0eSB0byBhbnkgY29tcG9uZW50IG9mIHRoZSB2YWNjaW5lIgo="
  }]
}

```
