# IMMZD5DTRabiesContraindicationsLogic - WHO Immunization Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD5DTRabiesContraindicationsLogic**

## Library: IMMZD5DTRabiesContraindicationsLogic 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Library/IMMZD5DTRabiesContraindicationsLogic | *Version*:1.0.0 |
| Draft as of 2026-03-31 | *Computable Name*:IMMZD5DTRabiesContraindicationsLogic |

 
This library defines decision support logic for the IMMZ.D5.DT.Rabies contraindications decision table in the Immunization CPG 

* * **Content: **text/cql: ````/* * Library: IMMZD5DTRabiesContraindicationsLogic (IMMZ.D5.DT.Rabies contraindications) * Rule: Check for contraindications before administering the vaccine(s) due * Decision Table: IMMZ.D5.DT.Rabies contraindications * Trigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications */ library IMMZD5DTRabiesContraindicationsLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include IMMZD5DTRabiesEncounterElements called Encounter parameter Today Date default Today() context Patient /* @dynamicValue: Draft Medication Request ID for Rabies dose */ define "Draft Medication Request ID for Rabies dose": First(Encounter."Draft Medication Request for Rabies dose").id /* @dynamicValue: Guidance */ define "Guidance": case when "Clinical judgement is required. Create a clinical note" then "Clinical judgement is required. Create a clinical note Guidance" else '' end define "Has Guidance": "Guidance" is not null and "Guidance" != '' /* @output: Clinical judgement is required. Create a clinical note @pseudocode: "Immunization recommendation status" = "Further evaluation needed" */ define "Clinical judgement is required. Create a clinical note": Encounter."The client has history of severe allergic reactions" /* @output: Clinical judgement is required. Create a clinical note Guidance @guidance: Check if the client has a history of severe hypersensitivity to any of the components or to excipients listed by the vaccine manufacturer. If so, provide an alternative rabies vaccine product for PreP. */ define "Clinical judgement is required. Create a clinical note Guidance": 'Check if the client has a history of severe hypersensitivity to any of the components or to excipients listed by the vaccine manufacturer. If so, provide an alternative rabies vaccine product for PreP.' /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'Rabies17.1' then "Clinical judgement is required. Create a clinical note" and "Guidance" = 'Check if the client has a history of severe hypersensitivity to any of the components or to excipients listed by the vaccine manufacturer. If so, provide an alternative rabies vaccine product for PreP.' else 'No test case set' end ````: **Id: **
  * ?: IMMZD5DTRabiesContraindicationsLogic
* * **Content: **text/cql: ````/* * Library: IMMZD5DTRabiesContraindicationsLogic (IMMZ.D5.DT.Rabies contraindications) * Rule: Check for contraindications before administering the vaccine(s) due * Decision Table: IMMZ.D5.DT.Rabies contraindications * Trigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications */ library IMMZD5DTRabiesContraindicationsLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include IMMZD5DTRabiesEncounterElements called Encounter parameter Today Date default Today() context Patient /* @dynamicValue: Draft Medication Request ID for Rabies dose */ define "Draft Medication Request ID for Rabies dose": First(Encounter."Draft Medication Request for Rabies dose").id /* @dynamicValue: Guidance */ define "Guidance": case when "Clinical judgement is required. Create a clinical note" then "Clinical judgement is required. Create a clinical note Guidance" else '' end define "Has Guidance": "Guidance" is not null and "Guidance" != '' /* @output: Clinical judgement is required. Create a clinical note @pseudocode: "Immunization recommendation status" = "Further evaluation needed" */ define "Clinical judgement is required. Create a clinical note": Encounter."The client has history of severe allergic reactions" /* @output: Clinical judgement is required. Create a clinical note Guidance @guidance: Check if the client has a history of severe hypersensitivity to any of the components or to excipients listed by the vaccine manufacturer. If so, provide an alternative rabies vaccine product for PreP. */ define "Clinical judgement is required. Create a clinical note Guidance": 'Check if the client has a history of severe hypersensitivity to any of the components or to excipients listed by the vaccine manufacturer. If so, provide an alternative rabies vaccine product for PreP.' /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'Rabies17.1' then "Clinical judgement is required. Create a clinical note" and "Guidance" = 'Check if the client has a history of severe hypersensitivity to any of the components or to excipients listed by the vaccine manufacturer. If so, provide an alternative rabies vaccine product for PreP.' else 'No test case set' end ````: **Version: **
  * ?: 1.0.0
* * **Content: **text/cql: ````/* * Library: IMMZD5DTRabiesContraindicationsLogic (IMMZ.D5.DT.Rabies contraindications) * Rule: Check for contraindications before administering the vaccine(s) due * Decision Table: IMMZ.D5.DT.Rabies contraindications * Trigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications */ library IMMZD5DTRabiesContraindicationsLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include IMMZD5DTRabiesEncounterElements called Encounter parameter Today Date default Today() context Patient /* @dynamicValue: Draft Medication Request ID for Rabies dose */ define "Draft Medication Request ID for Rabies dose": First(Encounter."Draft Medication Request for Rabies dose").id /* @dynamicValue: Guidance */ define "Guidance": case when "Clinical judgement is required. Create a clinical note" then "Clinical judgement is required. Create a clinical note Guidance" else '' end define "Has Guidance": "Guidance" is not null and "Guidance" != '' /* @output: Clinical judgement is required. Create a clinical note @pseudocode: "Immunization recommendation status" = "Further evaluation needed" */ define "Clinical judgement is required. Create a clinical note": Encounter."The client has history of severe allergic reactions" /* @output: Clinical judgement is required. Create a clinical note Guidance @guidance: Check if the client has a history of severe hypersensitivity to any of the components or to excipients listed by the vaccine manufacturer. If so, provide an alternative rabies vaccine product for PreP. */ define "Clinical judgement is required. Create a clinical note Guidance": 'Check if the client has a history of severe hypersensitivity to any of the components or to excipients listed by the vaccine manufacturer. If so, provide an alternative rabies vaccine product for PreP.' /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'Rabies17.1' then "Clinical judgement is required. Create a clinical note" and "Guidance" = 'Check if the client has a history of severe hypersensitivity to any of the components or to excipients listed by the vaccine manufacturer. If so, provide an alternative rabies vaccine product for PreP.' else 'No test case set' end ````: **Url: **
  * ?: [IMMZD5DTRabiesContraindicationsLogic](Library-IMMZD5DTRabiesContraindicationsLogic.md)
* * **Content: **text/cql: ````/* * Library: IMMZD5DTRabiesContraindicationsLogic (IMMZ.D5.DT.Rabies contraindications) * Rule: Check for contraindications before administering the vaccine(s) due * Decision Table: IMMZ.D5.DT.Rabies contraindications * Trigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications */ library IMMZD5DTRabiesContraindicationsLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include IMMZD5DTRabiesEncounterElements called Encounter parameter Today Date default Today() context Patient /* @dynamicValue: Draft Medication Request ID for Rabies dose */ define "Draft Medication Request ID for Rabies dose": First(Encounter."Draft Medication Request for Rabies dose").id /* @dynamicValue: Guidance */ define "Guidance": case when "Clinical judgement is required. Create a clinical note" then "Clinical judgement is required. Create a clinical note Guidance" else '' end define "Has Guidance": "Guidance" is not null and "Guidance" != '' /* @output: Clinical judgement is required. Create a clinical note @pseudocode: "Immunization recommendation status" = "Further evaluation needed" */ define "Clinical judgement is required. Create a clinical note": Encounter."The client has history of severe allergic reactions" /* @output: Clinical judgement is required. Create a clinical note Guidance @guidance: Check if the client has a history of severe hypersensitivity to any of the components or to excipients listed by the vaccine manufacturer. If so, provide an alternative rabies vaccine product for PreP. */ define "Clinical judgement is required. Create a clinical note Guidance": 'Check if the client has a history of severe hypersensitivity to any of the components or to excipients listed by the vaccine manufacturer. If so, provide an alternative rabies vaccine product for PreP.' /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'Rabies17.1' then "Clinical judgement is required. Create a clinical note" and "Guidance" = 'Check if the client has a history of severe hypersensitivity to any of the components or to excipients listed by the vaccine manufacturer. If so, provide an alternative rabies vaccine product for PreP.' else 'No test case set' end ````: **Status: **
  * ?: draft
* * **Content: **text/cql: ````/* * Library: IMMZD5DTRabiesContraindicationsLogic (IMMZ.D5.DT.Rabies contraindications) * Rule: Check for contraindications before administering the vaccine(s) due * Decision Table: IMMZ.D5.DT.Rabies contraindications * Trigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications */ library IMMZD5DTRabiesContraindicationsLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include IMMZD5DTRabiesEncounterElements called Encounter parameter Today Date default Today() context Patient /* @dynamicValue: Draft Medication Request ID for Rabies dose */ define "Draft Medication Request ID for Rabies dose": First(Encounter."Draft Medication Request for Rabies dose").id /* @dynamicValue: Guidance */ define "Guidance": case when "Clinical judgement is required. Create a clinical note" then "Clinical judgement is required. Create a clinical note Guidance" else '' end define "Has Guidance": "Guidance" is not null and "Guidance" != '' /* @output: Clinical judgement is required. Create a clinical note @pseudocode: "Immunization recommendation status" = "Further evaluation needed" */ define "Clinical judgement is required. Create a clinical note": Encounter."The client has history of severe allergic reactions" /* @output: Clinical judgement is required. Create a clinical note Guidance @guidance: Check if the client has a history of severe hypersensitivity to any of the components or to excipients listed by the vaccine manufacturer. If so, provide an alternative rabies vaccine product for PreP. */ define "Clinical judgement is required. Create a clinical note Guidance": 'Check if the client has a history of severe hypersensitivity to any of the components or to excipients listed by the vaccine manufacturer. If so, provide an alternative rabies vaccine product for PreP.' /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'Rabies17.1' then "Clinical judgement is required. Create a clinical note" and "Guidance" = 'Check if the client has a history of severe hypersensitivity to any of the components or to excipients listed by the vaccine manufacturer. If so, provide an alternative rabies vaccine product for PreP.' else 'No test case set' end ````: **Date: **
  * ?: 2026-03-31 13:54:17+0000
* * **Content: **text/cql: ````/* * Library: IMMZD5DTRabiesContraindicationsLogic (IMMZ.D5.DT.Rabies contraindications) * Rule: Check for contraindications before administering the vaccine(s) due * Decision Table: IMMZ.D5.DT.Rabies contraindications * Trigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications */ library IMMZD5DTRabiesContraindicationsLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include IMMZD5DTRabiesEncounterElements called Encounter parameter Today Date default Today() context Patient /* @dynamicValue: Draft Medication Request ID for Rabies dose */ define "Draft Medication Request ID for Rabies dose": First(Encounter."Draft Medication Request for Rabies dose").id /* @dynamicValue: Guidance */ define "Guidance": case when "Clinical judgement is required. Create a clinical note" then "Clinical judgement is required. Create a clinical note Guidance" else '' end define "Has Guidance": "Guidance" is not null and "Guidance" != '' /* @output: Clinical judgement is required. Create a clinical note @pseudocode: "Immunization recommendation status" = "Further evaluation needed" */ define "Clinical judgement is required. Create a clinical note": Encounter."The client has history of severe allergic reactions" /* @output: Clinical judgement is required. Create a clinical note Guidance @guidance: Check if the client has a history of severe hypersensitivity to any of the components or to excipients listed by the vaccine manufacturer. If so, provide an alternative rabies vaccine product for PreP. */ define "Clinical judgement is required. Create a clinical note Guidance": 'Check if the client has a history of severe hypersensitivity to any of the components or to excipients listed by the vaccine manufacturer. If so, provide an alternative rabies vaccine product for PreP.' /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'Rabies17.1' then "Clinical judgement is required. Create a clinical note" and "Guidance" = 'Check if the client has a history of severe hypersensitivity to any of the components or to excipients listed by the vaccine manufacturer. If so, provide an alternative rabies vaccine product for PreP.' else 'No test case set' end ````: **Publisher: **
  * ?: WHO
* * **Content: **text/cql: ````/* * Library: IMMZD5DTRabiesContraindicationsLogic (IMMZ.D5.DT.Rabies contraindications) * Rule: Check for contraindications before administering the vaccine(s) due * Decision Table: IMMZ.D5.DT.Rabies contraindications * Trigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications */ library IMMZD5DTRabiesContraindicationsLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include IMMZD5DTRabiesEncounterElements called Encounter parameter Today Date default Today() context Patient /* @dynamicValue: Draft Medication Request ID for Rabies dose */ define "Draft Medication Request ID for Rabies dose": First(Encounter."Draft Medication Request for Rabies dose").id /* @dynamicValue: Guidance */ define "Guidance": case when "Clinical judgement is required. Create a clinical note" then "Clinical judgement is required. Create a clinical note Guidance" else '' end define "Has Guidance": "Guidance" is not null and "Guidance" != '' /* @output: Clinical judgement is required. Create a clinical note @pseudocode: "Immunization recommendation status" = "Further evaluation needed" */ define "Clinical judgement is required. Create a clinical note": Encounter."The client has history of severe allergic reactions" /* @output: Clinical judgement is required. Create a clinical note Guidance @guidance: Check if the client has a history of severe hypersensitivity to any of the components or to excipients listed by the vaccine manufacturer. If so, provide an alternative rabies vaccine product for PreP. */ define "Clinical judgement is required. Create a clinical note Guidance": 'Check if the client has a history of severe hypersensitivity to any of the components or to excipients listed by the vaccine manufacturer. If so, provide an alternative rabies vaccine product for PreP.' /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'Rabies17.1' then "Clinical judgement is required. Create a clinical note" and "Guidance" = 'Check if the client has a history of severe hypersensitivity to any of the components or to excipients listed by the vaccine manufacturer. If so, provide an alternative rabies vaccine product for PreP.' else 'No test case set' end ````: **Description: **
  * ?: This library defines decision support logic for the IMMZ.D5.DT.Rabies contraindications decision table in the Immunization CPG



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "IMMZD5DTRabiesContraindicationsLogic",
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
  "url" : "http://smart.who.int/immunizations/Library/IMMZD5DTRabiesContraindicationsLogic",
  "version" : "1.0.0",
  "name" : "IMMZD5DTRabiesContraindicationsLogic",
  "title" : "IMMZD5DTRabiesContraindicationsLogic",
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
  "description" : "This library defines decision support logic for the IMMZ.D5.DT.Rabies contraindications decision table in the Immunization CPG",
  "relatedArtifact" : [{
    "type" : "depends-on",
    "display" : "Library Encounter",
    "resource" : "http://smart.who.int/immunizations/Library/IMMZD5DTRabiesEncounterElements"
  }],
  "parameter" : [{
    "name" : "Today",
    "use" : "in",
    "min" : 0,
    "max" : "1",
    "type" : "date"
  },
  {
    "name" : "Patient",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "Patient"
  },
  {
    "name" : "Draft Medication Request ID for Rabies dose",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "id"
  },
  {
    "name" : "Clinical judgement is required. Create a clinical note",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "Clinical judgement is required. Create a clinical note Guidance",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "string"
  },
  {
    "name" : "Guidance",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "string"
  },
  {
    "name" : "Has Guidance",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "Test Validation",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "Resource"
  }],
  "content" : [{
    "contentType" : "text/cql",
    "data" : "LyoKICogTGlicmFyeTogSU1NWkQ1RFRSYWJpZXNDb250cmFpbmRpY2F0aW9uc0xvZ2ljIChJTU1aLkQ1LkRULlJhYmllcyBjb250cmFpbmRpY2F0aW9ucykKICogUnVsZTogQ2hlY2sgZm9yIGNvbnRyYWluZGljYXRpb25zIGJlZm9yZSBhZG1pbmlzdGVyaW5nIHRoZSB2YWNjaW5lKHMpIGR1ZQogKiBEZWNpc2lvbiBUYWJsZTogSU1NWi5ENS5EVC5SYWJpZXMgY29udHJhaW5kaWNhdGlvbnMKICogVHJpZ2dlcjogSU1NWi5ENSBEZXRlcm1pbmUgdmFjY2luZShzKSB0byBiZSBhZG1pbmlzdGVyZWQgYmFzZWQgb24gY29udHJhaW5kaWNhdGlvbnMKICovCmxpYnJhcnkgSU1NWkQ1RFRSYWJpZXNDb250cmFpbmRpY2F0aW9uc0xvZ2ljCgp1c2luZyBGSElSIHZlcnNpb24gJzQuMC4xJwppbmNsdWRlIEZISVJIZWxwZXJzIHZlcnNpb24gJzQuMC4xJwoKaW5jbHVkZSBJTU1aRDVEVFJhYmllc0VuY291bnRlckVsZW1lbnRzIGNhbGxlZCBFbmNvdW50ZXIKCnBhcmFtZXRlciBUb2RheSBEYXRlIGRlZmF1bHQgVG9kYXkoKQoKY29udGV4dCBQYXRpZW50CgovKgogIEBkeW5hbWljVmFsdWU6IERyYWZ0IE1lZGljYXRpb24gUmVxdWVzdCBJRCBmb3IgUmFiaWVzIGRvc2UKICAqLwogIGRlZmluZSAiRHJhZnQgTWVkaWNhdGlvbiBSZXF1ZXN0IElEIGZvciBSYWJpZXMgZG9zZSI6CiAgICBGaXJzdChFbmNvdW50ZXIuIkRyYWZ0IE1lZGljYXRpb24gUmVxdWVzdCBmb3IgUmFiaWVzIGRvc2UiKS5pZAoKCi8qCkBkeW5hbWljVmFsdWU6IEd1aWRhbmNlCiovCmRlZmluZSAiR3VpZGFuY2UiOgogIGNhc2UgCiAgICB3aGVuICJDbGluaWNhbCBqdWRnZW1lbnQgaXMgcmVxdWlyZWQuIENyZWF0ZSBhIGNsaW5pY2FsIG5vdGUiIHRoZW4gIkNsaW5pY2FsIGp1ZGdlbWVudCBpcyByZXF1aXJlZC4gQ3JlYXRlIGEgY2xpbmljYWwgbm90ZSBHdWlkYW5jZSIgCiAgICBlbHNlICcnCiAgZW5kCiAgCmRlZmluZSAiSGFzIEd1aWRhbmNlIjoKICAiR3VpZGFuY2UiIGlzIG5vdCBudWxsIGFuZCAiR3VpZGFuY2UiICE9ICcnCgovKgpAb3V0cHV0OiBDbGluaWNhbCBqdWRnZW1lbnQgaXMgcmVxdWlyZWQuIENyZWF0ZSBhIGNsaW5pY2FsIG5vdGUKQHBzZXVkb2NvZGU6ICJJbW11bml6YXRpb24gcmVjb21tZW5kYXRpb24gc3RhdHVzIiA9ICJGdXJ0aGVyIGV2YWx1YXRpb24gbmVlZGVkIgoqLwpkZWZpbmUgIkNsaW5pY2FsIGp1ZGdlbWVudCBpcyByZXF1aXJlZC4gQ3JlYXRlIGEgY2xpbmljYWwgbm90ZSI6CiAgRW5jb3VudGVyLiJUaGUgY2xpZW50IGhhcyBoaXN0b3J5IG9mIHNldmVyZSBhbGxlcmdpYyByZWFjdGlvbnMiCgovKgpAb3V0cHV0OiBDbGluaWNhbCBqdWRnZW1lbnQgaXMgcmVxdWlyZWQuIENyZWF0ZSBhIGNsaW5pY2FsIG5vdGUgR3VpZGFuY2UKQGd1aWRhbmNlOiBDaGVjayBpZiB0aGUgY2xpZW50IGhhcyBhIGhpc3Rvcnkgb2Ygc2V2ZXJlIGh5cGVyc2Vuc2l0aXZpdHkgdG8gYW55IG9mIHRoZSBjb21wb25lbnRzIG9yIHRvIGV4Y2lwaWVudHMgbGlzdGVkIGJ5IHRoZSB2YWNjaW5lIG1hbnVmYWN0dXJlci4gSWYgc28sIHByb3ZpZGUgYW4gYWx0ZXJuYXRpdmUgcmFiaWVzIHZhY2NpbmUgcHJvZHVjdCBmb3IgUHJlUC4KKi8KZGVmaW5lICJDbGluaWNhbCBqdWRnZW1lbnQgaXMgcmVxdWlyZWQuIENyZWF0ZSBhIGNsaW5pY2FsIG5vdGUgR3VpZGFuY2UiOgogICdDaGVjayBpZiB0aGUgY2xpZW50IGhhcyBhIGhpc3Rvcnkgb2Ygc2V2ZXJlIGh5cGVyc2Vuc2l0aXZpdHkgdG8gYW55IG9mIHRoZSBjb21wb25lbnRzIG9yIHRvIGV4Y2lwaWVudHMgbGlzdGVkIGJ5IHRoZSB2YWNjaW5lIG1hbnVmYWN0dXJlci4gSWYgc28sIHByb3ZpZGUgYW4gYWx0ZXJuYXRpdmUgcmFiaWVzIHZhY2NpbmUgcHJvZHVjdCBmb3IgUHJlUC4nCgoKLyoKQHRlc3Q6IFRlc3QgZXhwZWN0ZWQgcmVzdWx0cyBiYXNlZCBvbiBleGFtcGxlIHBhdGllbnRzCiovCmRlZmluZSAiVGVzdCBWYWxpZGF0aW9uIjoKICBjYXNlCiAgICB3aGVuIFBhdGllbnQuaWQgPSAnUmFiaWVzMTcuMScgdGhlbiAiQ2xpbmljYWwganVkZ2VtZW50IGlzIHJlcXVpcmVkLiBDcmVhdGUgYSBjbGluaWNhbCBub3RlIiBhbmQgIkd1aWRhbmNlIiA9ICdDaGVjayBpZiB0aGUgY2xpZW50IGhhcyBhIGhpc3Rvcnkgb2Ygc2V2ZXJlIGh5cGVyc2Vuc2l0aXZpdHkgdG8gYW55IG9mIHRoZSBjb21wb25lbnRzIG9yIHRvIGV4Y2lwaWVudHMgbGlzdGVkIGJ5IHRoZSB2YWNjaW5lIG1hbnVmYWN0dXJlci4gSWYgc28sIHByb3ZpZGUgYW4gYWx0ZXJuYXRpdmUgcmFiaWVzIHZhY2NpbmUgcHJvZHVjdCBmb3IgUHJlUC4nCiAgICBlbHNlICdObyB0ZXN0IGNhc2Ugc2V0JwogIGVuZAo="
  }]
}

```
