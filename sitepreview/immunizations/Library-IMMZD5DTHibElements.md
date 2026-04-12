# IMMZD5DTHibElements - WHO Immunization Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD5DTHibElements**

## Library: IMMZD5DTHibElements 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Library/IMMZD5DTHibElements | *Version*:1.0.0 |
| Draft as of 2026-04-09 | *Computable Name*:IMMZD5DTHibElements |

 
This library defines context-independent elements for Hib used throughout the Immunization CPG 

* * **Content: **text/cql: ```` /* * Library: IMMZD5DTHibElements */ library IMMZD5DTHibElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for Hib dose */ define "Draft Medication Request for Hib dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."Hib-containing vaccines" /* @input: The client has a history of severe allergic reactions @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has a history of severe allergic reactions-59 @decision: IMMZ.D5.DT.Hib contraindications */ define "The client has a history of severe allergic reactions": Elements."The client has history of severe allergic reactions" ````: **Id: **
  * ?: IMMZD5DTHibElements
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTHibElements */ library IMMZD5DTHibElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for Hib dose */ define "Draft Medication Request for Hib dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."Hib-containing vaccines" /* @input: The client has a history of severe allergic reactions @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has a history of severe allergic reactions-59 @decision: IMMZ.D5.DT.Hib contraindications */ define "The client has a history of severe allergic reactions": Elements."The client has history of severe allergic reactions" ````: **Version: **
  * ?: 1.0.0
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTHibElements */ library IMMZD5DTHibElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for Hib dose */ define "Draft Medication Request for Hib dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."Hib-containing vaccines" /* @input: The client has a history of severe allergic reactions @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has a history of severe allergic reactions-59 @decision: IMMZ.D5.DT.Hib contraindications */ define "The client has a history of severe allergic reactions": Elements."The client has history of severe allergic reactions" ````: **Url: **
  * ?: [IMMZD5DTHibElements](Library-IMMZD5DTHibElements.md)
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTHibElements */ library IMMZD5DTHibElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for Hib dose */ define "Draft Medication Request for Hib dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."Hib-containing vaccines" /* @input: The client has a history of severe allergic reactions @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has a history of severe allergic reactions-59 @decision: IMMZ.D5.DT.Hib contraindications */ define "The client has a history of severe allergic reactions": Elements."The client has history of severe allergic reactions" ````: **Status: **
  * ?: draft
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTHibElements */ library IMMZD5DTHibElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for Hib dose */ define "Draft Medication Request for Hib dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."Hib-containing vaccines" /* @input: The client has a history of severe allergic reactions @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has a history of severe allergic reactions-59 @decision: IMMZ.D5.DT.Hib contraindications */ define "The client has a history of severe allergic reactions": Elements."The client has history of severe allergic reactions" ````: **Date: **
  * ?: 2026-04-09 14:34:42+0000
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTHibElements */ library IMMZD5DTHibElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for Hib dose */ define "Draft Medication Request for Hib dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."Hib-containing vaccines" /* @input: The client has a history of severe allergic reactions @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has a history of severe allergic reactions-59 @decision: IMMZ.D5.DT.Hib contraindications */ define "The client has a history of severe allergic reactions": Elements."The client has history of severe allergic reactions" ````: **Publisher: **
  * ?: WHO
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTHibElements */ library IMMZD5DTHibElements using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOConcepts include WHOCommon called WC include WHOElements called WE include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZElements called Elements context Patient /* @internal: Draft Medication Request for Hib dose */ define "Draft Medication Request for Hib dose": Elements."Draft Medication Request for Patient" MR where MR.medication in Concepts."Hib-containing vaccines" /* @input: The client has a history of severe allergic reactions @pseudocode: "Potential contraindications" = "Severe allergic reactions" @code: The client has a history of severe allergic reactions-59 @decision: IMMZ.D5.DT.Hib contraindications */ define "The client has a history of severe allergic reactions": Elements."The client has history of severe allergic reactions" ````: **Description: **
  * ?: This library defines context-independent elements for Hib used throughout the Immunization CPG



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "IMMZD5DTHibElements",
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
  "url" : "http://smart.who.int/immunizations/Library/IMMZD5DTHibElements",
  "version" : "1.0.0",
  "name" : "IMMZD5DTHibElements",
  "title" : "IMMZD5DTHibElements",
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
  "description" : "This library defines context-independent elements for Hib used throughout the Immunization CPG",
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
    "name" : "Draft Medication Request for Hib dose",
    "use" : "out",
    "min" : 0,
    "max" : "*",
    "type" : "MedicationRequest"
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
    "data" : "Ci8qCiAgKiBMaWJyYXJ5OiBJTU1aRDVEVEhpYkVsZW1lbnRzCiAgKi8KbGlicmFyeSBJTU1aRDVEVEhpYkVsZW1lbnRzCgp1c2luZyBGSElSIHZlcnNpb24gJzQuMC4xJwppbmNsdWRlIEZISVJIZWxwZXJzIHZlcnNpb24gJzQuMC4xJwoKaW5jbHVkZSBXSE9Db25jZXB0cwppbmNsdWRlIFdIT0NvbW1vbiBjYWxsZWQgV0MKaW5jbHVkZSBXSE9FbGVtZW50cyBjYWxsZWQgV0UKCmluY2x1ZGUgSU1NWkNvbW1vbiBjYWxsZWQgQ29tbW9uCmluY2x1ZGUgSU1NWkNvbmNlcHRzIGNhbGxlZCBDb25jZXB0cwppbmNsdWRlIElNTVpFbGVtZW50cyBjYWxsZWQgRWxlbWVudHMKCgpjb250ZXh0IFBhdGllbnQKCi8qCkBpbnRlcm5hbDogRHJhZnQgTWVkaWNhdGlvbiBSZXF1ZXN0IGZvciBIaWIgZG9zZQoqLwpkZWZpbmUgIkRyYWZ0IE1lZGljYXRpb24gUmVxdWVzdCBmb3IgSGliIGRvc2UiOgoKICBFbGVtZW50cy4iRHJhZnQgTWVkaWNhdGlvbiBSZXF1ZXN0IGZvciBQYXRpZW50IiBNUiAKICAgIHdoZXJlIE1SLm1lZGljYXRpb24gaW4gQ29uY2VwdHMuIkhpYi1jb250YWluaW5nIHZhY2NpbmVzIgoKLyoKQGlucHV0OiBUaGUgY2xpZW50IGhhcyBhIGhpc3Rvcnkgb2Ygc2V2ZXJlIGFsbGVyZ2ljIHJlYWN0aW9ucwpAcHNldWRvY29kZTogIlBvdGVudGlhbCBjb250cmFpbmRpY2F0aW9ucyIgPSAiU2V2ZXJlIGFsbGVyZ2ljIHJlYWN0aW9ucyIKQGNvZGU6IFRoZSBjbGllbnQgaGFzIGEgaGlzdG9yeSBvZiBzZXZlcmUgYWxsZXJnaWMgcmVhY3Rpb25zLTU5CkBkZWNpc2lvbjogSU1NWi5ENS5EVC5IaWIgY29udHJhaW5kaWNhdGlvbnMKKi8KZGVmaW5lICJUaGUgY2xpZW50IGhhcyBhIGhpc3Rvcnkgb2Ygc2V2ZXJlIGFsbGVyZ2ljIHJlYWN0aW9ucyI6CiAgRWxlbWVudHMuIlRoZSBjbGllbnQgaGFzIGhpc3Rvcnkgb2Ygc2V2ZXJlIGFsbGVyZ2ljIHJlYWN0aW9ucyIK"
  }]
}

```
