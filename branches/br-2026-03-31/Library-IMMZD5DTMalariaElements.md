# IMMZD5DTMalariaElements - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD5DTMalariaElements**

## Library: IMMZD5DTMalariaElements 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Library/IMMZD5DTMalariaElements | *Version*:0.2.0 |
| Draft as of 2026-03-31 | *Computable Name*:IMMZD5DTMalariaElements |

 
This library defines context-independent elements for Malaria used throughout the Immunization CPG 

* * **Content: **text/cql: ```` /* * Library: IMMZD5DTMalariaElements */ library IMMZD5DTMalariaElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for Malaria dose */ define "Draft Medication Request for Malaria dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."Malaria vaccines" /* @input: The client has hypersensitivity to any of the vaccine components @pseudocode: "Potential contraindications" = "Hypersensitivity to vaccine components" @code: The client has hypersensitivity to any of the vaccine components-72 @decision: IMMZ.D5.DT.Malaria contraindications */ define "The client has hypersensitivity to any of the vaccine components": Elements."The client has hypersensitivity to any component of the vaccine" ````: **Id: **
  * ?: IMMZD5DTMalariaElements
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTMalariaElements */ library IMMZD5DTMalariaElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for Malaria dose */ define "Draft Medication Request for Malaria dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."Malaria vaccines" /* @input: The client has hypersensitivity to any of the vaccine components @pseudocode: "Potential contraindications" = "Hypersensitivity to vaccine components" @code: The client has hypersensitivity to any of the vaccine components-72 @decision: IMMZ.D5.DT.Malaria contraindications */ define "The client has hypersensitivity to any of the vaccine components": Elements."The client has hypersensitivity to any component of the vaccine" ````: **Version: **
  * ?: 0.2.0
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTMalariaElements */ library IMMZD5DTMalariaElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for Malaria dose */ define "Draft Medication Request for Malaria dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."Malaria vaccines" /* @input: The client has hypersensitivity to any of the vaccine components @pseudocode: "Potential contraindications" = "Hypersensitivity to vaccine components" @code: The client has hypersensitivity to any of the vaccine components-72 @decision: IMMZ.D5.DT.Malaria contraindications */ define "The client has hypersensitivity to any of the vaccine components": Elements."The client has hypersensitivity to any component of the vaccine" ````: **Url: **
  * ?: [IMMZD5DTMalariaElements](Library-IMMZD5DTMalariaElements.md)
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTMalariaElements */ library IMMZD5DTMalariaElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for Malaria dose */ define "Draft Medication Request for Malaria dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."Malaria vaccines" /* @input: The client has hypersensitivity to any of the vaccine components @pseudocode: "Potential contraindications" = "Hypersensitivity to vaccine components" @code: The client has hypersensitivity to any of the vaccine components-72 @decision: IMMZ.D5.DT.Malaria contraindications */ define "The client has hypersensitivity to any of the vaccine components": Elements."The client has hypersensitivity to any component of the vaccine" ````: **Status: **
  * ?: draft
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTMalariaElements */ library IMMZD5DTMalariaElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for Malaria dose */ define "Draft Medication Request for Malaria dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."Malaria vaccines" /* @input: The client has hypersensitivity to any of the vaccine components @pseudocode: "Potential contraindications" = "Hypersensitivity to vaccine components" @code: The client has hypersensitivity to any of the vaccine components-72 @decision: IMMZ.D5.DT.Malaria contraindications */ define "The client has hypersensitivity to any of the vaccine components": Elements."The client has hypersensitivity to any component of the vaccine" ````: **Date: **
  * ?: 2026-03-31 13:43:57+0000
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTMalariaElements */ library IMMZD5DTMalariaElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for Malaria dose */ define "Draft Medication Request for Malaria dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."Malaria vaccines" /* @input: The client has hypersensitivity to any of the vaccine components @pseudocode: "Potential contraindications" = "Hypersensitivity to vaccine components" @code: The client has hypersensitivity to any of the vaccine components-72 @decision: IMMZ.D5.DT.Malaria contraindications */ define "The client has hypersensitivity to any of the vaccine components": Elements."The client has hypersensitivity to any component of the vaccine" ````: **Publisher: **
  * ?: WHO
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTMalariaElements */ library IMMZD5DTMalariaElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for Malaria dose */ define "Draft Medication Request for Malaria dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."Malaria vaccines" /* @input: The client has hypersensitivity to any of the vaccine components @pseudocode: "Potential contraindications" = "Hypersensitivity to vaccine components" @code: The client has hypersensitivity to any of the vaccine components-72 @decision: IMMZ.D5.DT.Malaria contraindications */ define "The client has hypersensitivity to any of the vaccine components": Elements."The client has hypersensitivity to any component of the vaccine" ````: **Description: **
  * ?: This library defines context-independent elements for Malaria used throughout the Immunization CPG



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "IMMZD5DTMalariaElements",
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
  "url" : "http://smart.who.int/immunizations/Library/IMMZD5DTMalariaElements",
  "version" : "0.2.0",
  "name" : "IMMZD5DTMalariaElements",
  "title" : "IMMZD5DTMalariaElements",
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
  "description" : "This library defines context-independent elements for Malaria used throughout the Immunization CPG",
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
    "data" : "Ci8qCiAgKiBMaWJyYXJ5OiBJTU1aRDVEVE1hbGFyaWFFbGVtZW50cwogICovCmxpYnJhcnkgSU1NWkQ1RFRNYWxhcmlhRWxlbWVudHMKCnVzaW5nIEZISVIgdmVyc2lvbiAnNC4wLjEnCmluY2x1ZGUgRkhJUkhlbHBlcnMgdmVyc2lvbiAnNC4wLjEnCgppbmNsdWRlIFdIT0NvbmNlcHRzCmluY2x1ZGUgV0hPQ29tbW9uIGNhbGxlZCBXQwppbmNsdWRlIFdIT0VsZW1lbnRzIGNhbGxlZCBXRQoKaW5jbHVkZSBJTU1aQ29tbW9uIGNhbGxlZCBDb21tb24KaW5jbHVkZSBJTU1aQ29uY2VwdHMgY2FsbGVkIENvbmNlcHRzCmluY2x1ZGUgSU1NWkVsZW1lbnRzIGNhbGxlZCBFbGVtZW50cwoKCmNvbnRleHQgUGF0aWVudAoKLyoKQGludGVybmFsOiBEcmFmdCBNZWRpY2F0aW9uIFJlcXVlc3QgZm9yIE1hbGFyaWEgZG9zZQoqLwpkZWZpbmUgIkRyYWZ0IE1lZGljYXRpb24gUmVxdWVzdCBmb3IgTWFsYXJpYSBkb3NlIjoKICBFbGVtZW50cy4iRHJhZnQgTWVkaWNhdGlvbiBSZXF1ZXN0IGZvciBQYXRpZW50IiBNUgogICAgd2hlcmUgTVIubWVkaWNhdGlvbiBpbiBDb25jZXB0cy4iTWFsYXJpYSB2YWNjaW5lcyIKCi8qCkBpbnB1dDogVGhlIGNsaWVudCBoYXMgaHlwZXJzZW5zaXRpdml0eSB0byBhbnkgb2YgdGhlIHZhY2NpbmUgY29tcG9uZW50cwpAcHNldWRvY29kZTogIlBvdGVudGlhbCBjb250cmFpbmRpY2F0aW9ucyIgPSAiSHlwZXJzZW5zaXRpdml0eSB0byB2YWNjaW5lIGNvbXBvbmVudHMiCkBjb2RlOiBUaGUgY2xpZW50IGhhcyBoeXBlcnNlbnNpdGl2aXR5IHRvIGFueSBvZiB0aGUgdmFjY2luZSBjb21wb25lbnRzLTcyCkBkZWNpc2lvbjogSU1NWi5ENS5EVC5NYWxhcmlhIGNvbnRyYWluZGljYXRpb25zCiovCmRlZmluZSAiVGhlIGNsaWVudCBoYXMgaHlwZXJzZW5zaXRpdml0eSB0byBhbnkgb2YgdGhlIHZhY2NpbmUgY29tcG9uZW50cyI6CiAgRWxlbWVudHMuIlRoZSBjbGllbnQgaGFzIGh5cGVyc2Vuc2l0aXZpdHkgdG8gYW55IGNvbXBvbmVudCBvZiB0aGUgdmFjY2luZSIK"
  }]
}

```
