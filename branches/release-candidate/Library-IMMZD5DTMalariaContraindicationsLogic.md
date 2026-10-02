# IMMZD5DTMalariaContraindicationsLogic - WHO Immunization Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD5DTMalariaContraindicationsLogic**

## Library: IMMZD5DTMalariaContraindicationsLogic 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Library/IMMZD5DTMalariaContraindicationsLogic | *Version*:1.0.0 |
| Draft as of 2026-04-09 | *Computable Name*:IMMZD5DTMalariaContraindicationsLogic |

 
This library defines decision support logic for the IMMZ.D5.DT.Malaria contraindications decision table in the Immunization CPG 

* * **Content: **text/cql: ````/* * Library: IMMZD5DTMalariaContraindicationsLogic (IMMZ.D5.DT.Malaria contraindications) * Rule: Check for contraindications before administering the vaccine(s) due * Decision Table: IMMZ.D5.DT.Malaria contraindications * Trigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications */ library IMMZD5DTMalariaContraindicationsLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include IMMZD5DTMalariaEncounterElements called Encounter parameter Today Date default Today() context Patient /* @dynamicValue: Draft Medication Request ID for Malaria dose */ define "Draft Medication Request ID for Malaria dose": First(Encounter."Draft Medication Request for Malaria dose").id /* @dynamicValue: Guidance */ define "Guidance": case when "Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note" then "Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note Guidance" else '' end define "Has Guidance": "Guidance" is not null and "Guidance" != '' /* @output: Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note @pseudocode: "Immunization recommendation status" = "Further evaluation needed" */ define "Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note": Encounter."The client has hypersensitivity to any of the vaccine components" /* @output: Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note Guidance @guidance: Do not vaccinate client with RTS,S/AS01 vaccine if client has severe hypersensitivity to any of the vaccine components. */ define "Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note Guidance": 'Do not vaccinate client with RTS,S/AS01 vaccine if client has severe hypersensitivity to any of the vaccine components.' /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'Malaria23.1' then "Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note" and "Guidance" = 'Do not vaccinate client with RTS,S/AS01 vaccine if client has severe hypersensitivity to any of the vaccine components.' else 'No test case set' end ````: **Id: **
  * ?: IMMZD5DTMalariaContraindicationsLogic
* * **Content: **text/cql: ````/* * Library: IMMZD5DTMalariaContraindicationsLogic (IMMZ.D5.DT.Malaria contraindications) * Rule: Check for contraindications before administering the vaccine(s) due * Decision Table: IMMZ.D5.DT.Malaria contraindications * Trigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications */ library IMMZD5DTMalariaContraindicationsLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include IMMZD5DTMalariaEncounterElements called Encounter parameter Today Date default Today() context Patient /* @dynamicValue: Draft Medication Request ID for Malaria dose */ define "Draft Medication Request ID for Malaria dose": First(Encounter."Draft Medication Request for Malaria dose").id /* @dynamicValue: Guidance */ define "Guidance": case when "Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note" then "Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note Guidance" else '' end define "Has Guidance": "Guidance" is not null and "Guidance" != '' /* @output: Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note @pseudocode: "Immunization recommendation status" = "Further evaluation needed" */ define "Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note": Encounter."The client has hypersensitivity to any of the vaccine components" /* @output: Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note Guidance @guidance: Do not vaccinate client with RTS,S/AS01 vaccine if client has severe hypersensitivity to any of the vaccine components. */ define "Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note Guidance": 'Do not vaccinate client with RTS,S/AS01 vaccine if client has severe hypersensitivity to any of the vaccine components.' /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'Malaria23.1' then "Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note" and "Guidance" = 'Do not vaccinate client with RTS,S/AS01 vaccine if client has severe hypersensitivity to any of the vaccine components.' else 'No test case set' end ````: **Version: **
  * ?: 1.0.0
* * **Content: **text/cql: ````/* * Library: IMMZD5DTMalariaContraindicationsLogic (IMMZ.D5.DT.Malaria contraindications) * Rule: Check for contraindications before administering the vaccine(s) due * Decision Table: IMMZ.D5.DT.Malaria contraindications * Trigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications */ library IMMZD5DTMalariaContraindicationsLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include IMMZD5DTMalariaEncounterElements called Encounter parameter Today Date default Today() context Patient /* @dynamicValue: Draft Medication Request ID for Malaria dose */ define "Draft Medication Request ID for Malaria dose": First(Encounter."Draft Medication Request for Malaria dose").id /* @dynamicValue: Guidance */ define "Guidance": case when "Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note" then "Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note Guidance" else '' end define "Has Guidance": "Guidance" is not null and "Guidance" != '' /* @output: Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note @pseudocode: "Immunization recommendation status" = "Further evaluation needed" */ define "Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note": Encounter."The client has hypersensitivity to any of the vaccine components" /* @output: Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note Guidance @guidance: Do not vaccinate client with RTS,S/AS01 vaccine if client has severe hypersensitivity to any of the vaccine components. */ define "Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note Guidance": 'Do not vaccinate client with RTS,S/AS01 vaccine if client has severe hypersensitivity to any of the vaccine components.' /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'Malaria23.1' then "Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note" and "Guidance" = 'Do not vaccinate client with RTS,S/AS01 vaccine if client has severe hypersensitivity to any of the vaccine components.' else 'No test case set' end ````: **Url: **
  * ?: [IMMZD5DTMalariaContraindicationsLogic](Library-IMMZD5DTMalariaContraindicationsLogic.md)
* * **Content: **text/cql: ````/* * Library: IMMZD5DTMalariaContraindicationsLogic (IMMZ.D5.DT.Malaria contraindications) * Rule: Check for contraindications before administering the vaccine(s) due * Decision Table: IMMZ.D5.DT.Malaria contraindications * Trigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications */ library IMMZD5DTMalariaContraindicationsLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include IMMZD5DTMalariaEncounterElements called Encounter parameter Today Date default Today() context Patient /* @dynamicValue: Draft Medication Request ID for Malaria dose */ define "Draft Medication Request ID for Malaria dose": First(Encounter."Draft Medication Request for Malaria dose").id /* @dynamicValue: Guidance */ define "Guidance": case when "Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note" then "Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note Guidance" else '' end define "Has Guidance": "Guidance" is not null and "Guidance" != '' /* @output: Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note @pseudocode: "Immunization recommendation status" = "Further evaluation needed" */ define "Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note": Encounter."The client has hypersensitivity to any of the vaccine components" /* @output: Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note Guidance @guidance: Do not vaccinate client with RTS,S/AS01 vaccine if client has severe hypersensitivity to any of the vaccine components. */ define "Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note Guidance": 'Do not vaccinate client with RTS,S/AS01 vaccine if client has severe hypersensitivity to any of the vaccine components.' /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'Malaria23.1' then "Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note" and "Guidance" = 'Do not vaccinate client with RTS,S/AS01 vaccine if client has severe hypersensitivity to any of the vaccine components.' else 'No test case set' end ````: **Status: **
  * ?: draft
* * **Content: **text/cql: ````/* * Library: IMMZD5DTMalariaContraindicationsLogic (IMMZ.D5.DT.Malaria contraindications) * Rule: Check for contraindications before administering the vaccine(s) due * Decision Table: IMMZ.D5.DT.Malaria contraindications * Trigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications */ library IMMZD5DTMalariaContraindicationsLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include IMMZD5DTMalariaEncounterElements called Encounter parameter Today Date default Today() context Patient /* @dynamicValue: Draft Medication Request ID for Malaria dose */ define "Draft Medication Request ID for Malaria dose": First(Encounter."Draft Medication Request for Malaria dose").id /* @dynamicValue: Guidance */ define "Guidance": case when "Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note" then "Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note Guidance" else '' end define "Has Guidance": "Guidance" is not null and "Guidance" != '' /* @output: Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note @pseudocode: "Immunization recommendation status" = "Further evaluation needed" */ define "Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note": Encounter."The client has hypersensitivity to any of the vaccine components" /* @output: Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note Guidance @guidance: Do not vaccinate client with RTS,S/AS01 vaccine if client has severe hypersensitivity to any of the vaccine components. */ define "Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note Guidance": 'Do not vaccinate client with RTS,S/AS01 vaccine if client has severe hypersensitivity to any of the vaccine components.' /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'Malaria23.1' then "Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note" and "Guidance" = 'Do not vaccinate client with RTS,S/AS01 vaccine if client has severe hypersensitivity to any of the vaccine components.' else 'No test case set' end ````: **Date: **
  * ?: 2026-04-09 13:50:16+0000
* * **Content: **text/cql: ````/* * Library: IMMZD5DTMalariaContraindicationsLogic (IMMZ.D5.DT.Malaria contraindications) * Rule: Check for contraindications before administering the vaccine(s) due * Decision Table: IMMZ.D5.DT.Malaria contraindications * Trigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications */ library IMMZD5DTMalariaContraindicationsLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include IMMZD5DTMalariaEncounterElements called Encounter parameter Today Date default Today() context Patient /* @dynamicValue: Draft Medication Request ID for Malaria dose */ define "Draft Medication Request ID for Malaria dose": First(Encounter."Draft Medication Request for Malaria dose").id /* @dynamicValue: Guidance */ define "Guidance": case when "Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note" then "Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note Guidance" else '' end define "Has Guidance": "Guidance" is not null and "Guidance" != '' /* @output: Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note @pseudocode: "Immunization recommendation status" = "Further evaluation needed" */ define "Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note": Encounter."The client has hypersensitivity to any of the vaccine components" /* @output: Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note Guidance @guidance: Do not vaccinate client with RTS,S/AS01 vaccine if client has severe hypersensitivity to any of the vaccine components. */ define "Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note Guidance": 'Do not vaccinate client with RTS,S/AS01 vaccine if client has severe hypersensitivity to any of the vaccine components.' /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'Malaria23.1' then "Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note" and "Guidance" = 'Do not vaccinate client with RTS,S/AS01 vaccine if client has severe hypersensitivity to any of the vaccine components.' else 'No test case set' end ````: **Publisher: **
  * ?: WHO
* * **Content: **text/cql: ````/* * Library: IMMZD5DTMalariaContraindicationsLogic (IMMZ.D5.DT.Malaria contraindications) * Rule: Check for contraindications before administering the vaccine(s) due * Decision Table: IMMZ.D5.DT.Malaria contraindications * Trigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications */ library IMMZD5DTMalariaContraindicationsLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include IMMZD5DTMalariaEncounterElements called Encounter parameter Today Date default Today() context Patient /* @dynamicValue: Draft Medication Request ID for Malaria dose */ define "Draft Medication Request ID for Malaria dose": First(Encounter."Draft Medication Request for Malaria dose").id /* @dynamicValue: Guidance */ define "Guidance": case when "Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note" then "Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note Guidance" else '' end define "Has Guidance": "Guidance" is not null and "Guidance" != '' /* @output: Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note @pseudocode: "Immunization recommendation status" = "Further evaluation needed" */ define "Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note": Encounter."The client has hypersensitivity to any of the vaccine components" /* @output: Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note Guidance @guidance: Do not vaccinate client with RTS,S/AS01 vaccine if client has severe hypersensitivity to any of the vaccine components. */ define "Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note Guidance": 'Do not vaccinate client with RTS,S/AS01 vaccine if client has severe hypersensitivity to any of the vaccine components.' /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'Malaria23.1' then "Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note" and "Guidance" = 'Do not vaccinate client with RTS,S/AS01 vaccine if client has severe hypersensitivity to any of the vaccine components.' else 'No test case set' end ````: **Description: **
  * ?: This library defines decision support logic for the IMMZ.D5.DT.Malaria contraindications decision table in the Immunization CPG



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "IMMZD5DTMalariaContraindicationsLogic",
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
  "url" : "http://smart.who.int/immunizations/Library/IMMZD5DTMalariaContraindicationsLogic",
  "version" : "1.0.0",
  "name" : "IMMZD5DTMalariaContraindicationsLogic",
  "title" : "IMMZD5DTMalariaContraindicationsLogic",
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
  "description" : "This library defines decision support logic for the IMMZ.D5.DT.Malaria contraindications decision table in the Immunization CPG",
  "relatedArtifact" : [{
    "type" : "depends-on",
    "display" : "Library Encounter",
    "resource" : "http://smart.who.int/immunizations/Library/IMMZD5DTMalariaEncounterElements"
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
    "name" : "Draft Medication Request ID for Malaria dose",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "id"
  },
  {
    "name" : "Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note Guidance",
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
    "data" : "LyoKICogTGlicmFyeTogSU1NWkQ1RFRNYWxhcmlhQ29udHJhaW5kaWNhdGlvbnNMb2dpYyAoSU1NWi5ENS5EVC5NYWxhcmlhIGNvbnRyYWluZGljYXRpb25zKQogKiBSdWxlOiBDaGVjayBmb3IgY29udHJhaW5kaWNhdGlvbnMgYmVmb3JlIGFkbWluaXN0ZXJpbmcgdGhlIHZhY2NpbmUocykgZHVlCiAqIERlY2lzaW9uIFRhYmxlOiBJTU1aLkQ1LkRULk1hbGFyaWEgY29udHJhaW5kaWNhdGlvbnMKICogVHJpZ2dlcjogSU1NWi5ENSBEZXRlcm1pbmUgdmFjY2luZShzKSB0byBiZSBhZG1pbmlzdGVyZWQgYmFzZWQgb24gY29udHJhaW5kaWNhdGlvbnMKICovCmxpYnJhcnkgSU1NWkQ1RFRNYWxhcmlhQ29udHJhaW5kaWNhdGlvbnNMb2dpYwoKdXNpbmcgRkhJUiB2ZXJzaW9uICc0LjAuMScKaW5jbHVkZSBGSElSSGVscGVycyB2ZXJzaW9uICc0LjAuMScKCmluY2x1ZGUgSU1NWkQ1RFRNYWxhcmlhRW5jb3VudGVyRWxlbWVudHMgY2FsbGVkIEVuY291bnRlcgoKcGFyYW1ldGVyIFRvZGF5IERhdGUgZGVmYXVsdCBUb2RheSgpCgpjb250ZXh0IFBhdGllbnQKCi8qCiAgQGR5bmFtaWNWYWx1ZTogRHJhZnQgTWVkaWNhdGlvbiBSZXF1ZXN0IElEIGZvciBNYWxhcmlhIGRvc2UKICAqLwogIGRlZmluZSAiRHJhZnQgTWVkaWNhdGlvbiBSZXF1ZXN0IElEIGZvciBNYWxhcmlhIGRvc2UiOgogICAgRmlyc3QoRW5jb3VudGVyLiJEcmFmdCBNZWRpY2F0aW9uIFJlcXVlc3QgZm9yIE1hbGFyaWEgZG9zZSIpLmlkCgoKLyoKQGR5bmFtaWNWYWx1ZTogR3VpZGFuY2UKKi8KZGVmaW5lICJHdWlkYW5jZSI6CiAgY2FzZSAKICAgIHdoZW4gIk1hbGFyaWEgdmFjY2luYXRpb24gY291bGQgYmUgY29udHJhaW5kaWNhdGVkLiBDbGluaWNhbCBqdWRnZW1lbnQgaXMgcmVxdWlyZWQuIENyZWF0ZSBhIGNsaW5pY2FsIG5vdGUiIHRoZW4gIk1hbGFyaWEgdmFjY2luYXRpb24gY291bGQgYmUgY29udHJhaW5kaWNhdGVkLiBDbGluaWNhbCBqdWRnZW1lbnQgaXMgcmVxdWlyZWQuIENyZWF0ZSBhIGNsaW5pY2FsIG5vdGUgR3VpZGFuY2UiIAogICAgZWxzZSAnJwogIGVuZAogIApkZWZpbmUgIkhhcyBHdWlkYW5jZSI6CiAgIkd1aWRhbmNlIiBpcyBub3QgbnVsbCBhbmQgIkd1aWRhbmNlIiAhPSAnJwoKLyoKQG91dHB1dDogTWFsYXJpYSB2YWNjaW5hdGlvbiBjb3VsZCBiZSBjb250cmFpbmRpY2F0ZWQuIENsaW5pY2FsIGp1ZGdlbWVudCBpcyByZXF1aXJlZC4gQ3JlYXRlIGEgY2xpbmljYWwgbm90ZQpAcHNldWRvY29kZTogIkltbXVuaXphdGlvbiByZWNvbW1lbmRhdGlvbiBzdGF0dXMiID0gIkZ1cnRoZXIgZXZhbHVhdGlvbiBuZWVkZWQiCiovCmRlZmluZSAiTWFsYXJpYSB2YWNjaW5hdGlvbiBjb3VsZCBiZSBjb250cmFpbmRpY2F0ZWQuIENsaW5pY2FsIGp1ZGdlbWVudCBpcyByZXF1aXJlZC4gQ3JlYXRlIGEgY2xpbmljYWwgbm90ZSI6CiAgRW5jb3VudGVyLiJUaGUgY2xpZW50IGhhcyBoeXBlcnNlbnNpdGl2aXR5IHRvIGFueSBvZiB0aGUgdmFjY2luZSBjb21wb25lbnRzIgoKLyoKQG91dHB1dDogTWFsYXJpYSB2YWNjaW5hdGlvbiBjb3VsZCBiZSBjb250cmFpbmRpY2F0ZWQuIENsaW5pY2FsIGp1ZGdlbWVudCBpcyByZXF1aXJlZC4gQ3JlYXRlIGEgY2xpbmljYWwgbm90ZSBHdWlkYW5jZQpAZ3VpZGFuY2U6IERvIG5vdCB2YWNjaW5hdGUgY2xpZW50IHdpdGggUlRTLFMvQVMwMSB2YWNjaW5lIGlmIGNsaWVudCBoYXMgc2V2ZXJlIGh5cGVyc2Vuc2l0aXZpdHkgdG8gYW55IG9mIHRoZSB2YWNjaW5lIGNvbXBvbmVudHMuCiovCmRlZmluZSAiTWFsYXJpYSB2YWNjaW5hdGlvbiBjb3VsZCBiZSBjb250cmFpbmRpY2F0ZWQuIENsaW5pY2FsIGp1ZGdlbWVudCBpcyByZXF1aXJlZC4gQ3JlYXRlIGEgY2xpbmljYWwgbm90ZSBHdWlkYW5jZSI6CiAgJ0RvIG5vdCB2YWNjaW5hdGUgY2xpZW50IHdpdGggUlRTLFMvQVMwMSB2YWNjaW5lIGlmIGNsaWVudCBoYXMgc2V2ZXJlIGh5cGVyc2Vuc2l0aXZpdHkgdG8gYW55IG9mIHRoZSB2YWNjaW5lIGNvbXBvbmVudHMuJwoKCi8qCkB0ZXN0OiBUZXN0IGV4cGVjdGVkIHJlc3VsdHMgYmFzZWQgb24gZXhhbXBsZSBwYXRpZW50cwoqLwpkZWZpbmUgIlRlc3QgVmFsaWRhdGlvbiI6CiAgY2FzZQogICAgd2hlbiBQYXRpZW50LmlkID0gJ01hbGFyaWEyMy4xJyB0aGVuICJNYWxhcmlhIHZhY2NpbmF0aW9uIGNvdWxkIGJlIGNvbnRyYWluZGljYXRlZC4gQ2xpbmljYWwganVkZ2VtZW50IGlzIHJlcXVpcmVkLiBDcmVhdGUgYSBjbGluaWNhbCBub3RlIiBhbmQgIkd1aWRhbmNlIiA9ICdEbyBub3QgdmFjY2luYXRlIGNsaWVudCB3aXRoIFJUUyxTL0FTMDEgdmFjY2luZSBpZiBjbGllbnQgaGFzIHNldmVyZSBoeXBlcnNlbnNpdGl2aXR5IHRvIGFueSBvZiB0aGUgdmFjY2luZSBjb21wb25lbnRzLicKICAgIGVsc2UgJ05vIHRlc3QgY2FzZSBzZXQnCiAgZW5kCg=="
  }]
}

```
