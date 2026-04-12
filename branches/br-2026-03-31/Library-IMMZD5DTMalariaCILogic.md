# IMMZD5DTMalariaCILogic - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD5DTMalariaCILogic**

## Library: IMMZD5DTMalariaCILogic (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Library/IMMZD5DTMalariaCILogic | *Version*:0.2.0 |
| Draft as of 2026-03-31 | *Computable Name*:IMMZD5DTMalariaCILogic |

 
This library defines decision support logic for the IMMZ.D5.DT.Malaria contraindications decision table in the Immunization CPG 

* * **Content: **text/cql: ```` /* * Library: IMMZD5DTMalariaCILogic (IMMZ.D5.DT.Malaria contraindications) * Rule: Check for contraindications before administering the vaccine(s) due * Decision Table: Potential contraindications * Trigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications */ library IMMZD5DTMalariaCILogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include IMMZD5DTMalariaEncounterElements called Encounter parameter Today Date default Today() context Patient /* @dynamicValue: Draft Medication Request ID for Malaria dose */ define "Draft Medication Request ID for Malaria dose": First(Encounter."Draft Medication Request for Malaria dose").id /* @dynamicValue: Guidance */ define "Guidance": case when "Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note" then "Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note Guidance" else '' end define "Has Guidance": "Guidance" is not null and "Guidance" != '' /* @output: Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note @pseudocode: "Immunization recommendation status" = "Further evaluation needed" */ define "Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note": Encounter."The client has hypersensitivity to any of the vaccine components" /* @output: Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note Guidance @guidance: Do not vaccinate client with RTS,S/AS01 vaccine if client has severe hypersensitivity to any of the vaccine components. */ define "Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note Guidance": 'Do not vaccinate client with RTS,S/AS01 vaccine if client has severe hypersensitivity to any of the vaccine components.' /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = '23.0' then "Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note" and "Guidance" = 'Do not vaccinate client with RTS,S/AS01 vaccine if client has severe hypersensitivity to any of the vaccine components.' else 'No test case set' end ````: **Id: **
  * ?: IMMZD5DTMalariaCILogic
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTMalariaCILogic (IMMZ.D5.DT.Malaria contraindications) * Rule: Check for contraindications before administering the vaccine(s) due * Decision Table: Potential contraindications * Trigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications */ library IMMZD5DTMalariaCILogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include IMMZD5DTMalariaEncounterElements called Encounter parameter Today Date default Today() context Patient /* @dynamicValue: Draft Medication Request ID for Malaria dose */ define "Draft Medication Request ID for Malaria dose": First(Encounter."Draft Medication Request for Malaria dose").id /* @dynamicValue: Guidance */ define "Guidance": case when "Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note" then "Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note Guidance" else '' end define "Has Guidance": "Guidance" is not null and "Guidance" != '' /* @output: Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note @pseudocode: "Immunization recommendation status" = "Further evaluation needed" */ define "Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note": Encounter."The client has hypersensitivity to any of the vaccine components" /* @output: Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note Guidance @guidance: Do not vaccinate client with RTS,S/AS01 vaccine if client has severe hypersensitivity to any of the vaccine components. */ define "Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note Guidance": 'Do not vaccinate client with RTS,S/AS01 vaccine if client has severe hypersensitivity to any of the vaccine components.' /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = '23.0' then "Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note" and "Guidance" = 'Do not vaccinate client with RTS,S/AS01 vaccine if client has severe hypersensitivity to any of the vaccine components.' else 'No test case set' end ````: **Version: **
  * ?: 0.2.0
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTMalariaCILogic (IMMZ.D5.DT.Malaria contraindications) * Rule: Check for contraindications before administering the vaccine(s) due * Decision Table: Potential contraindications * Trigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications */ library IMMZD5DTMalariaCILogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include IMMZD5DTMalariaEncounterElements called Encounter parameter Today Date default Today() context Patient /* @dynamicValue: Draft Medication Request ID for Malaria dose */ define "Draft Medication Request ID for Malaria dose": First(Encounter."Draft Medication Request for Malaria dose").id /* @dynamicValue: Guidance */ define "Guidance": case when "Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note" then "Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note Guidance" else '' end define "Has Guidance": "Guidance" is not null and "Guidance" != '' /* @output: Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note @pseudocode: "Immunization recommendation status" = "Further evaluation needed" */ define "Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note": Encounter."The client has hypersensitivity to any of the vaccine components" /* @output: Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note Guidance @guidance: Do not vaccinate client with RTS,S/AS01 vaccine if client has severe hypersensitivity to any of the vaccine components. */ define "Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note Guidance": 'Do not vaccinate client with RTS,S/AS01 vaccine if client has severe hypersensitivity to any of the vaccine components.' /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = '23.0' then "Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note" and "Guidance" = 'Do not vaccinate client with RTS,S/AS01 vaccine if client has severe hypersensitivity to any of the vaccine components.' else 'No test case set' end ````: **Url: **
  * ?: [IMMZD5DTMalariaCILogic](Library-IMMZD5DTMalariaCILogic.md)
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTMalariaCILogic (IMMZ.D5.DT.Malaria contraindications) * Rule: Check for contraindications before administering the vaccine(s) due * Decision Table: Potential contraindications * Trigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications */ library IMMZD5DTMalariaCILogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include IMMZD5DTMalariaEncounterElements called Encounter parameter Today Date default Today() context Patient /* @dynamicValue: Draft Medication Request ID for Malaria dose */ define "Draft Medication Request ID for Malaria dose": First(Encounter."Draft Medication Request for Malaria dose").id /* @dynamicValue: Guidance */ define "Guidance": case when "Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note" then "Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note Guidance" else '' end define "Has Guidance": "Guidance" is not null and "Guidance" != '' /* @output: Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note @pseudocode: "Immunization recommendation status" = "Further evaluation needed" */ define "Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note": Encounter."The client has hypersensitivity to any of the vaccine components" /* @output: Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note Guidance @guidance: Do not vaccinate client with RTS,S/AS01 vaccine if client has severe hypersensitivity to any of the vaccine components. */ define "Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note Guidance": 'Do not vaccinate client with RTS,S/AS01 vaccine if client has severe hypersensitivity to any of the vaccine components.' /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = '23.0' then "Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note" and "Guidance" = 'Do not vaccinate client with RTS,S/AS01 vaccine if client has severe hypersensitivity to any of the vaccine components.' else 'No test case set' end ````: **Status: **
  * ?: draft
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTMalariaCILogic (IMMZ.D5.DT.Malaria contraindications) * Rule: Check for contraindications before administering the vaccine(s) due * Decision Table: Potential contraindications * Trigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications */ library IMMZD5DTMalariaCILogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include IMMZD5DTMalariaEncounterElements called Encounter parameter Today Date default Today() context Patient /* @dynamicValue: Draft Medication Request ID for Malaria dose */ define "Draft Medication Request ID for Malaria dose": First(Encounter."Draft Medication Request for Malaria dose").id /* @dynamicValue: Guidance */ define "Guidance": case when "Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note" then "Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note Guidance" else '' end define "Has Guidance": "Guidance" is not null and "Guidance" != '' /* @output: Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note @pseudocode: "Immunization recommendation status" = "Further evaluation needed" */ define "Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note": Encounter."The client has hypersensitivity to any of the vaccine components" /* @output: Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note Guidance @guidance: Do not vaccinate client with RTS,S/AS01 vaccine if client has severe hypersensitivity to any of the vaccine components. */ define "Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note Guidance": 'Do not vaccinate client with RTS,S/AS01 vaccine if client has severe hypersensitivity to any of the vaccine components.' /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = '23.0' then "Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note" and "Guidance" = 'Do not vaccinate client with RTS,S/AS01 vaccine if client has severe hypersensitivity to any of the vaccine components.' else 'No test case set' end ````: **Experimental: **
  * ?: true
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTMalariaCILogic (IMMZ.D5.DT.Malaria contraindications) * Rule: Check for contraindications before administering the vaccine(s) due * Decision Table: Potential contraindications * Trigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications */ library IMMZD5DTMalariaCILogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include IMMZD5DTMalariaEncounterElements called Encounter parameter Today Date default Today() context Patient /* @dynamicValue: Draft Medication Request ID for Malaria dose */ define "Draft Medication Request ID for Malaria dose": First(Encounter."Draft Medication Request for Malaria dose").id /* @dynamicValue: Guidance */ define "Guidance": case when "Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note" then "Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note Guidance" else '' end define "Has Guidance": "Guidance" is not null and "Guidance" != '' /* @output: Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note @pseudocode: "Immunization recommendation status" = "Further evaluation needed" */ define "Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note": Encounter."The client has hypersensitivity to any of the vaccine components" /* @output: Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note Guidance @guidance: Do not vaccinate client with RTS,S/AS01 vaccine if client has severe hypersensitivity to any of the vaccine components. */ define "Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note Guidance": 'Do not vaccinate client with RTS,S/AS01 vaccine if client has severe hypersensitivity to any of the vaccine components.' /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = '23.0' then "Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note" and "Guidance" = 'Do not vaccinate client with RTS,S/AS01 vaccine if client has severe hypersensitivity to any of the vaccine components.' else 'No test case set' end ````: **Date: **
  * ?: 2026-03-31 13:43:43+0000
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTMalariaCILogic (IMMZ.D5.DT.Malaria contraindications) * Rule: Check for contraindications before administering the vaccine(s) due * Decision Table: Potential contraindications * Trigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications */ library IMMZD5DTMalariaCILogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include IMMZD5DTMalariaEncounterElements called Encounter parameter Today Date default Today() context Patient /* @dynamicValue: Draft Medication Request ID for Malaria dose */ define "Draft Medication Request ID for Malaria dose": First(Encounter."Draft Medication Request for Malaria dose").id /* @dynamicValue: Guidance */ define "Guidance": case when "Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note" then "Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note Guidance" else '' end define "Has Guidance": "Guidance" is not null and "Guidance" != '' /* @output: Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note @pseudocode: "Immunization recommendation status" = "Further evaluation needed" */ define "Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note": Encounter."The client has hypersensitivity to any of the vaccine components" /* @output: Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note Guidance @guidance: Do not vaccinate client with RTS,S/AS01 vaccine if client has severe hypersensitivity to any of the vaccine components. */ define "Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note Guidance": 'Do not vaccinate client with RTS,S/AS01 vaccine if client has severe hypersensitivity to any of the vaccine components.' /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = '23.0' then "Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note" and "Guidance" = 'Do not vaccinate client with RTS,S/AS01 vaccine if client has severe hypersensitivity to any of the vaccine components.' else 'No test case set' end ````: **Publisher: **
  * ?: WHO
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTMalariaCILogic (IMMZ.D5.DT.Malaria contraindications) * Rule: Check for contraindications before administering the vaccine(s) due * Decision Table: Potential contraindications * Trigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications */ library IMMZD5DTMalariaCILogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include IMMZD5DTMalariaEncounterElements called Encounter parameter Today Date default Today() context Patient /* @dynamicValue: Draft Medication Request ID for Malaria dose */ define "Draft Medication Request ID for Malaria dose": First(Encounter."Draft Medication Request for Malaria dose").id /* @dynamicValue: Guidance */ define "Guidance": case when "Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note" then "Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note Guidance" else '' end define "Has Guidance": "Guidance" is not null and "Guidance" != '' /* @output: Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note @pseudocode: "Immunization recommendation status" = "Further evaluation needed" */ define "Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note": Encounter."The client has hypersensitivity to any of the vaccine components" /* @output: Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note Guidance @guidance: Do not vaccinate client with RTS,S/AS01 vaccine if client has severe hypersensitivity to any of the vaccine components. */ define "Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note Guidance": 'Do not vaccinate client with RTS,S/AS01 vaccine if client has severe hypersensitivity to any of the vaccine components.' /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = '23.0' then "Malaria vaccination could be contraindicated. Clinical judgement is required. Create a clinical note" and "Guidance" = 'Do not vaccinate client with RTS,S/AS01 vaccine if client has severe hypersensitivity to any of the vaccine components.' else 'No test case set' end ````: **Description: **
  * ?: This library defines decision support logic for the IMMZ.D5.DT.Malaria contraindications decision table in the Immunization CPG



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "IMMZD5DTMalariaCILogic",
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
  "url" : "http://smart.who.int/immunizations/Library/IMMZD5DTMalariaCILogic",
  "version" : "0.2.0",
  "name" : "IMMZD5DTMalariaCILogic",
  "title" : "IMMZD5DTMalariaCILogic",
  "status" : "draft",
  "experimental" : true,
  "type" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/library-type",
      "code" : "logic-library"
    }]
  },
  "date" : "2026-03-31T13:43:43+00:00",
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
    "data" : "Ci8qCiAqIExpYnJhcnk6IElNTVpENURUTWFsYXJpYUNJTG9naWMgKElNTVouRDUuRFQuTWFsYXJpYSBjb250cmFpbmRpY2F0aW9ucykKICogUnVsZTogQ2hlY2sgZm9yIGNvbnRyYWluZGljYXRpb25zIGJlZm9yZSBhZG1pbmlzdGVyaW5nIHRoZSB2YWNjaW5lKHMpIGR1ZQkKICogRGVjaXNpb24gVGFibGU6IFBvdGVudGlhbCBjb250cmFpbmRpY2F0aW9ucwogKiBUcmlnZ2VyOiBJTU1aLkQ1IERldGVybWluZSB2YWNjaW5lKHMpIHRvIGJlIGFkbWluaXN0ZXJlZCBiYXNlZCBvbiBjb250cmFpbmRpY2F0aW9ucwogKi8KbGlicmFyeSBJTU1aRDVEVE1hbGFyaWFDSUxvZ2ljCgp1c2luZyBGSElSIHZlcnNpb24gJzQuMC4xJwppbmNsdWRlIEZISVJIZWxwZXJzIHZlcnNpb24gJzQuMC4xJwoKaW5jbHVkZSBJTU1aRDVEVE1hbGFyaWFFbmNvdW50ZXJFbGVtZW50cyBjYWxsZWQgRW5jb3VudGVyCgpwYXJhbWV0ZXIgVG9kYXkgRGF0ZSBkZWZhdWx0IFRvZGF5KCkKCmNvbnRleHQgUGF0aWVudAoKLyoKICBAZHluYW1pY1ZhbHVlOiBEcmFmdCBNZWRpY2F0aW9uIFJlcXVlc3QgSUQgZm9yIE1hbGFyaWEgZG9zZQogICovCiAgZGVmaW5lICJEcmFmdCBNZWRpY2F0aW9uIFJlcXVlc3QgSUQgZm9yIE1hbGFyaWEgZG9zZSI6CiAgICBGaXJzdChFbmNvdW50ZXIuIkRyYWZ0IE1lZGljYXRpb24gUmVxdWVzdCBmb3IgTWFsYXJpYSBkb3NlIikuaWQKCgovKgpAZHluYW1pY1ZhbHVlOiBHdWlkYW5jZQoqLwpkZWZpbmUgIkd1aWRhbmNlIjoKICBjYXNlCiAgICB3aGVuICJNYWxhcmlhIHZhY2NpbmF0aW9uIGNvdWxkIGJlIGNvbnRyYWluZGljYXRlZC4gQ2xpbmljYWwganVkZ2VtZW50IGlzIHJlcXVpcmVkLiBDcmVhdGUgYSBjbGluaWNhbCBub3RlIiB0aGVuICJNYWxhcmlhIHZhY2NpbmF0aW9uIGNvdWxkIGJlIGNvbnRyYWluZGljYXRlZC4gQ2xpbmljYWwganVkZ2VtZW50IGlzIHJlcXVpcmVkLiBDcmVhdGUgYSBjbGluaWNhbCBub3RlIEd1aWRhbmNlIgogICAgZWxzZSAnJwogIGVuZAoKZGVmaW5lICJIYXMgR3VpZGFuY2UiOgogICJHdWlkYW5jZSIgaXMgbm90IG51bGwgYW5kICJHdWlkYW5jZSIgIT0gJycKCi8qCkBvdXRwdXQ6IE1hbGFyaWEgdmFjY2luYXRpb24gY291bGQgYmUgY29udHJhaW5kaWNhdGVkLiBDbGluaWNhbCBqdWRnZW1lbnQgaXMgcmVxdWlyZWQuIENyZWF0ZSBhIGNsaW5pY2FsIG5vdGUKQHBzZXVkb2NvZGU6ICJJbW11bml6YXRpb24gcmVjb21tZW5kYXRpb24gc3RhdHVzIiA9ICAiRnVydGhlciBldmFsdWF0aW9uIG5lZWRlZCIKKi8KZGVmaW5lICJNYWxhcmlhIHZhY2NpbmF0aW9uIGNvdWxkIGJlIGNvbnRyYWluZGljYXRlZC4gQ2xpbmljYWwganVkZ2VtZW50IGlzIHJlcXVpcmVkLiBDcmVhdGUgYSBjbGluaWNhbCBub3RlIjoKICBFbmNvdW50ZXIuIlRoZSBjbGllbnQgaGFzIGh5cGVyc2Vuc2l0aXZpdHkgdG8gYW55IG9mIHRoZSB2YWNjaW5lIGNvbXBvbmVudHMiCgovKgpAb3V0cHV0OiBNYWxhcmlhIHZhY2NpbmF0aW9uIGNvdWxkIGJlIGNvbnRyYWluZGljYXRlZC4gQ2xpbmljYWwganVkZ2VtZW50IGlzIHJlcXVpcmVkLiBDcmVhdGUgYSBjbGluaWNhbCBub3RlIEd1aWRhbmNlCkBndWlkYW5jZTogRG8gbm90IHZhY2NpbmF0ZSBjbGllbnQgd2l0aCBSVFMsUy9BUzAxIHZhY2NpbmUgaWYgY2xpZW50IGhhcyBzZXZlcmUgaHlwZXJzZW5zaXRpdml0eSB0byBhbnkgb2YgdGhlIHZhY2NpbmUgY29tcG9uZW50cy4KKi8KZGVmaW5lICJNYWxhcmlhIHZhY2NpbmF0aW9uIGNvdWxkIGJlIGNvbnRyYWluZGljYXRlZC4gQ2xpbmljYWwganVkZ2VtZW50IGlzIHJlcXVpcmVkLiBDcmVhdGUgYSBjbGluaWNhbCBub3RlIEd1aWRhbmNlIjoKICAnRG8gbm90IHZhY2NpbmF0ZSBjbGllbnQgd2l0aCBSVFMsUy9BUzAxIHZhY2NpbmUgaWYgY2xpZW50IGhhcyBzZXZlcmUgaHlwZXJzZW5zaXRpdml0eSB0byBhbnkgb2YgdGhlIHZhY2NpbmUgY29tcG9uZW50cy4nCgoKLyoKQHRlc3Q6IFRlc3QgZXhwZWN0ZWQgcmVzdWx0cyBiYXNlZCBvbiBleGFtcGxlIHBhdGllbnRzCiovCmRlZmluZSAiVGVzdCBWYWxpZGF0aW9uIjoKICBjYXNlCiAgICB3aGVuIFBhdGllbnQuaWQgPSAnMjMuMCcgdGhlbiAiTWFsYXJpYSB2YWNjaW5hdGlvbiBjb3VsZCBiZSBjb250cmFpbmRpY2F0ZWQuIENsaW5pY2FsIGp1ZGdlbWVudCBpcyByZXF1aXJlZC4gQ3JlYXRlIGEgY2xpbmljYWwgbm90ZSIgYW5kICJHdWlkYW5jZSIgPSAnRG8gbm90IHZhY2NpbmF0ZSBjbGllbnQgd2l0aCBSVFMsUy9BUzAxIHZhY2NpbmUgaWYgY2xpZW50IGhhcyBzZXZlcmUgaHlwZXJzZW5zaXRpdml0eSB0byBhbnkgb2YgdGhlIHZhY2NpbmUgY29tcG9uZW50cy4nCiAgICBlbHNlICdObyB0ZXN0IGNhc2Ugc2V0JwogIGVuZAo="
  }]
}

```
