# IMMZD5DTMeningococcalCILogic - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD5DTMeningococcalCILogic**

## Library: IMMZD5DTMeningococcalCILogic (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Library/IMMZD5DTMeningococcalCILogic | *Version*:0.2.0 |
| Draft as of 2026-03-31 | *Computable Name*:IMMZD5DTMeningococcalCILogic |

 
This library defines decision support logic for the IMMZ.D5.DT.Meningococcal contraindications decision table in the Immunization CPG 

* * **Content: **text/cql: ```` /* * Library: IMMZD5DTMeningococcalCILogic (IMMZ.D5.DT.Meningococcal contraindications) * Rule: Check for contraindications before administering the vaccine(s) due * Decision Table: Potential contraindications * Trigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications */ library IMMZD5DTMeningococcalCILogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include IMMZD5DTMeningococcalEncounterElements called Encounter parameter Today Date default Today() context Patient /* @dynamicValue: Draft Medication Request ID for Meningococcal dose */ define "Draft Medication Request ID for Meningococcal dose": First(Encounter."Draft Medication Request for Meningococcal dose").id /* @dynamicValue: Guidance */ define "Guidance": case when "Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note" then "Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note Guidance" else '' end define "Has Guidance": "Guidance" is not null and "Guidance" != '' /* @output: Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note @pseudocode: "Immunization recommendation status" (where "Type of meningococcal dose" = "Polysaccharide vaccine") = "Further evaluation needed" */ define "Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note": Encounter."The client has history of severe allergic reactions" /* @output: Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note Guidance @guidance: Do not vaccinate client with meningococcal if client has history of severe allergic reaction to any component of the meningococcal vaccine. */ define "Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note Guidance": 'Do not vaccinate client with meningococcal if client has history of severe allergic reaction to any component of the meningococcal vaccine.' /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = '78.0' then "Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note" and "Guidance" = 'Do not vaccinate client with meningococcal if client has history of severe allergic reaction to any component of the meningococcal vaccine.' else 'No test case set' end ````: **Id: **
  * ?: IMMZD5DTMeningococcalCILogic
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTMeningococcalCILogic (IMMZ.D5.DT.Meningococcal contraindications) * Rule: Check for contraindications before administering the vaccine(s) due * Decision Table: Potential contraindications * Trigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications */ library IMMZD5DTMeningococcalCILogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include IMMZD5DTMeningococcalEncounterElements called Encounter parameter Today Date default Today() context Patient /* @dynamicValue: Draft Medication Request ID for Meningococcal dose */ define "Draft Medication Request ID for Meningococcal dose": First(Encounter."Draft Medication Request for Meningococcal dose").id /* @dynamicValue: Guidance */ define "Guidance": case when "Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note" then "Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note Guidance" else '' end define "Has Guidance": "Guidance" is not null and "Guidance" != '' /* @output: Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note @pseudocode: "Immunization recommendation status" (where "Type of meningococcal dose" = "Polysaccharide vaccine") = "Further evaluation needed" */ define "Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note": Encounter."The client has history of severe allergic reactions" /* @output: Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note Guidance @guidance: Do not vaccinate client with meningococcal if client has history of severe allergic reaction to any component of the meningococcal vaccine. */ define "Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note Guidance": 'Do not vaccinate client with meningococcal if client has history of severe allergic reaction to any component of the meningococcal vaccine.' /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = '78.0' then "Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note" and "Guidance" = 'Do not vaccinate client with meningococcal if client has history of severe allergic reaction to any component of the meningococcal vaccine.' else 'No test case set' end ````: **Version: **
  * ?: 0.2.0
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTMeningococcalCILogic (IMMZ.D5.DT.Meningococcal contraindications) * Rule: Check for contraindications before administering the vaccine(s) due * Decision Table: Potential contraindications * Trigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications */ library IMMZD5DTMeningococcalCILogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include IMMZD5DTMeningococcalEncounterElements called Encounter parameter Today Date default Today() context Patient /* @dynamicValue: Draft Medication Request ID for Meningococcal dose */ define "Draft Medication Request ID for Meningococcal dose": First(Encounter."Draft Medication Request for Meningococcal dose").id /* @dynamicValue: Guidance */ define "Guidance": case when "Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note" then "Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note Guidance" else '' end define "Has Guidance": "Guidance" is not null and "Guidance" != '' /* @output: Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note @pseudocode: "Immunization recommendation status" (where "Type of meningococcal dose" = "Polysaccharide vaccine") = "Further evaluation needed" */ define "Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note": Encounter."The client has history of severe allergic reactions" /* @output: Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note Guidance @guidance: Do not vaccinate client with meningococcal if client has history of severe allergic reaction to any component of the meningococcal vaccine. */ define "Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note Guidance": 'Do not vaccinate client with meningococcal if client has history of severe allergic reaction to any component of the meningococcal vaccine.' /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = '78.0' then "Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note" and "Guidance" = 'Do not vaccinate client with meningococcal if client has history of severe allergic reaction to any component of the meningococcal vaccine.' else 'No test case set' end ````: **Url: **
  * ?: [IMMZD5DTMeningococcalCILogic](Library-IMMZD5DTMeningococcalCILogic.md)
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTMeningococcalCILogic (IMMZ.D5.DT.Meningococcal contraindications) * Rule: Check for contraindications before administering the vaccine(s) due * Decision Table: Potential contraindications * Trigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications */ library IMMZD5DTMeningococcalCILogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include IMMZD5DTMeningococcalEncounterElements called Encounter parameter Today Date default Today() context Patient /* @dynamicValue: Draft Medication Request ID for Meningococcal dose */ define "Draft Medication Request ID for Meningococcal dose": First(Encounter."Draft Medication Request for Meningococcal dose").id /* @dynamicValue: Guidance */ define "Guidance": case when "Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note" then "Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note Guidance" else '' end define "Has Guidance": "Guidance" is not null and "Guidance" != '' /* @output: Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note @pseudocode: "Immunization recommendation status" (where "Type of meningococcal dose" = "Polysaccharide vaccine") = "Further evaluation needed" */ define "Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note": Encounter."The client has history of severe allergic reactions" /* @output: Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note Guidance @guidance: Do not vaccinate client with meningococcal if client has history of severe allergic reaction to any component of the meningococcal vaccine. */ define "Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note Guidance": 'Do not vaccinate client with meningococcal if client has history of severe allergic reaction to any component of the meningococcal vaccine.' /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = '78.0' then "Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note" and "Guidance" = 'Do not vaccinate client with meningococcal if client has history of severe allergic reaction to any component of the meningococcal vaccine.' else 'No test case set' end ````: **Status: **
  * ?: draft
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTMeningococcalCILogic (IMMZ.D5.DT.Meningococcal contraindications) * Rule: Check for contraindications before administering the vaccine(s) due * Decision Table: Potential contraindications * Trigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications */ library IMMZD5DTMeningococcalCILogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include IMMZD5DTMeningococcalEncounterElements called Encounter parameter Today Date default Today() context Patient /* @dynamicValue: Draft Medication Request ID for Meningococcal dose */ define "Draft Medication Request ID for Meningococcal dose": First(Encounter."Draft Medication Request for Meningococcal dose").id /* @dynamicValue: Guidance */ define "Guidance": case when "Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note" then "Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note Guidance" else '' end define "Has Guidance": "Guidance" is not null and "Guidance" != '' /* @output: Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note @pseudocode: "Immunization recommendation status" (where "Type of meningococcal dose" = "Polysaccharide vaccine") = "Further evaluation needed" */ define "Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note": Encounter."The client has history of severe allergic reactions" /* @output: Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note Guidance @guidance: Do not vaccinate client with meningococcal if client has history of severe allergic reaction to any component of the meningococcal vaccine. */ define "Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note Guidance": 'Do not vaccinate client with meningococcal if client has history of severe allergic reaction to any component of the meningococcal vaccine.' /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = '78.0' then "Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note" and "Guidance" = 'Do not vaccinate client with meningococcal if client has history of severe allergic reaction to any component of the meningococcal vaccine.' else 'No test case set' end ````: **Experimental: **
  * ?: true
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTMeningococcalCILogic (IMMZ.D5.DT.Meningococcal contraindications) * Rule: Check for contraindications before administering the vaccine(s) due * Decision Table: Potential contraindications * Trigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications */ library IMMZD5DTMeningococcalCILogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include IMMZD5DTMeningococcalEncounterElements called Encounter parameter Today Date default Today() context Patient /* @dynamicValue: Draft Medication Request ID for Meningococcal dose */ define "Draft Medication Request ID for Meningococcal dose": First(Encounter."Draft Medication Request for Meningococcal dose").id /* @dynamicValue: Guidance */ define "Guidance": case when "Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note" then "Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note Guidance" else '' end define "Has Guidance": "Guidance" is not null and "Guidance" != '' /* @output: Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note @pseudocode: "Immunization recommendation status" (where "Type of meningococcal dose" = "Polysaccharide vaccine") = "Further evaluation needed" */ define "Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note": Encounter."The client has history of severe allergic reactions" /* @output: Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note Guidance @guidance: Do not vaccinate client with meningococcal if client has history of severe allergic reaction to any component of the meningococcal vaccine. */ define "Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note Guidance": 'Do not vaccinate client with meningococcal if client has history of severe allergic reaction to any component of the meningococcal vaccine.' /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = '78.0' then "Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note" and "Guidance" = 'Do not vaccinate client with meningococcal if client has history of severe allergic reaction to any component of the meningococcal vaccine.' else 'No test case set' end ````: **Date: **
  * ?: 2026-03-31 13:43:43+0000
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTMeningococcalCILogic (IMMZ.D5.DT.Meningococcal contraindications) * Rule: Check for contraindications before administering the vaccine(s) due * Decision Table: Potential contraindications * Trigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications */ library IMMZD5DTMeningococcalCILogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include IMMZD5DTMeningococcalEncounterElements called Encounter parameter Today Date default Today() context Patient /* @dynamicValue: Draft Medication Request ID for Meningococcal dose */ define "Draft Medication Request ID for Meningococcal dose": First(Encounter."Draft Medication Request for Meningococcal dose").id /* @dynamicValue: Guidance */ define "Guidance": case when "Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note" then "Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note Guidance" else '' end define "Has Guidance": "Guidance" is not null and "Guidance" != '' /* @output: Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note @pseudocode: "Immunization recommendation status" (where "Type of meningococcal dose" = "Polysaccharide vaccine") = "Further evaluation needed" */ define "Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note": Encounter."The client has history of severe allergic reactions" /* @output: Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note Guidance @guidance: Do not vaccinate client with meningococcal if client has history of severe allergic reaction to any component of the meningococcal vaccine. */ define "Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note Guidance": 'Do not vaccinate client with meningococcal if client has history of severe allergic reaction to any component of the meningococcal vaccine.' /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = '78.0' then "Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note" and "Guidance" = 'Do not vaccinate client with meningococcal if client has history of severe allergic reaction to any component of the meningococcal vaccine.' else 'No test case set' end ````: **Publisher: **
  * ?: WHO
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTMeningococcalCILogic (IMMZ.D5.DT.Meningococcal contraindications) * Rule: Check for contraindications before administering the vaccine(s) due * Decision Table: Potential contraindications * Trigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications */ library IMMZD5DTMeningococcalCILogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include IMMZD5DTMeningococcalEncounterElements called Encounter parameter Today Date default Today() context Patient /* @dynamicValue: Draft Medication Request ID for Meningococcal dose */ define "Draft Medication Request ID for Meningococcal dose": First(Encounter."Draft Medication Request for Meningococcal dose").id /* @dynamicValue: Guidance */ define "Guidance": case when "Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note" then "Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note Guidance" else '' end define "Has Guidance": "Guidance" is not null and "Guidance" != '' /* @output: Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note @pseudocode: "Immunization recommendation status" (where "Type of meningococcal dose" = "Polysaccharide vaccine") = "Further evaluation needed" */ define "Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note": Encounter."The client has history of severe allergic reactions" /* @output: Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note Guidance @guidance: Do not vaccinate client with meningococcal if client has history of severe allergic reaction to any component of the meningococcal vaccine. */ define "Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note Guidance": 'Do not vaccinate client with meningococcal if client has history of severe allergic reaction to any component of the meningococcal vaccine.' /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = '78.0' then "Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note" and "Guidance" = 'Do not vaccinate client with meningococcal if client has history of severe allergic reaction to any component of the meningococcal vaccine.' else 'No test case set' end ````: **Description: **
  * ?: This library defines decision support logic for the IMMZ.D5.DT.Meningococcal contraindications decision table in the Immunization CPG



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "IMMZD5DTMeningococcalCILogic",
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
  "url" : "http://smart.who.int/immunizations/Library/IMMZD5DTMeningococcalCILogic",
  "version" : "0.2.0",
  "name" : "IMMZD5DTMeningococcalCILogic",
  "title" : "IMMZD5DTMeningococcalCILogic",
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
  "description" : "This library defines decision support logic for the IMMZ.D5.DT.Meningococcal contraindications decision table in the Immunization CPG",
  "relatedArtifact" : [{
    "type" : "depends-on",
    "display" : "Library Encounter",
    "resource" : "http://smart.who.int/immunizations/Library/IMMZD5DTMeningococcalEncounterElements"
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
    "name" : "Draft Medication Request ID for Meningococcal dose",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "id"
  },
  {
    "name" : "Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note Guidance",
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
    "data" : "Ci8qCiAqIExpYnJhcnk6IElNTVpENURUTWVuaW5nb2NvY2NhbENJTG9naWMgKElNTVouRDUuRFQuTWVuaW5nb2NvY2NhbCBjb250cmFpbmRpY2F0aW9ucykKICogUnVsZTogQ2hlY2sgZm9yIGNvbnRyYWluZGljYXRpb25zIGJlZm9yZSBhZG1pbmlzdGVyaW5nIHRoZSB2YWNjaW5lKHMpIGR1ZQkKICogRGVjaXNpb24gVGFibGU6IFBvdGVudGlhbCBjb250cmFpbmRpY2F0aW9ucwogKiBUcmlnZ2VyOiBJTU1aLkQ1IERldGVybWluZSB2YWNjaW5lKHMpIHRvIGJlIGFkbWluaXN0ZXJlZCBiYXNlZCBvbiBjb250cmFpbmRpY2F0aW9ucwogKi8KbGlicmFyeSBJTU1aRDVEVE1lbmluZ29jb2NjYWxDSUxvZ2ljCgp1c2luZyBGSElSIHZlcnNpb24gJzQuMC4xJwppbmNsdWRlIEZISVJIZWxwZXJzIHZlcnNpb24gJzQuMC4xJwoKaW5jbHVkZSBJTU1aRDVEVE1lbmluZ29jb2NjYWxFbmNvdW50ZXJFbGVtZW50cyBjYWxsZWQgRW5jb3VudGVyCgpwYXJhbWV0ZXIgVG9kYXkgRGF0ZSBkZWZhdWx0IFRvZGF5KCkKCmNvbnRleHQgUGF0aWVudAoKLyoKICBAZHluYW1pY1ZhbHVlOiBEcmFmdCBNZWRpY2F0aW9uIFJlcXVlc3QgSUQgZm9yIE1lbmluZ29jb2NjYWwgZG9zZQogICovCiAgZGVmaW5lICJEcmFmdCBNZWRpY2F0aW9uIFJlcXVlc3QgSUQgZm9yIE1lbmluZ29jb2NjYWwgZG9zZSI6CiAgICBGaXJzdChFbmNvdW50ZXIuIkRyYWZ0IE1lZGljYXRpb24gUmVxdWVzdCBmb3IgTWVuaW5nb2NvY2NhbCBkb3NlIikuaWQKCgovKgpAZHluYW1pY1ZhbHVlOiBHdWlkYW5jZQoqLwpkZWZpbmUgIkd1aWRhbmNlIjoKICBjYXNlCiAgICB3aGVuICJNZW5pbmdvY29jY2FsIHZhY2NpbmF0aW9uIGNvdWxkIGJlIGNvbnRyYWluZGljYXRlZC4gQ2xpbmljYWwganVkZ2VtZW50IGlzIHJlcXVpcmVkLiBDcmVhdGUgYSBjbGluaWNhbCBub3RlIiB0aGVuICJNZW5pbmdvY29jY2FsIHZhY2NpbmF0aW9uIGNvdWxkIGJlIGNvbnRyYWluZGljYXRlZC4gQ2xpbmljYWwganVkZ2VtZW50IGlzIHJlcXVpcmVkLiBDcmVhdGUgYSBjbGluaWNhbCBub3RlIEd1aWRhbmNlIgogICAgZWxzZSAnJwogIGVuZAoKZGVmaW5lICJIYXMgR3VpZGFuY2UiOgogICJHdWlkYW5jZSIgaXMgbm90IG51bGwgYW5kICJHdWlkYW5jZSIgIT0gJycKCi8qCkBvdXRwdXQ6IE1lbmluZ29jb2NjYWwgdmFjY2luYXRpb24gY291bGQgYmUgY29udHJhaW5kaWNhdGVkLiBDbGluaWNhbCBqdWRnZW1lbnQgaXMgcmVxdWlyZWQuIENyZWF0ZSBhIGNsaW5pY2FsIG5vdGUKQHBzZXVkb2NvZGU6ICJJbW11bml6YXRpb24gcmVjb21tZW5kYXRpb24gc3RhdHVzIiAod2hlcmUgIlR5cGUgb2YgbWVuaW5nb2NvY2NhbCBkb3NlIiA9ICJQb2x5c2FjY2hhcmlkZSB2YWNjaW5lIikgPSAiRnVydGhlciBldmFsdWF0aW9uIG5lZWRlZCIKKi8KZGVmaW5lICJNZW5pbmdvY29jY2FsIHZhY2NpbmF0aW9uIGNvdWxkIGJlIGNvbnRyYWluZGljYXRlZC4gQ2xpbmljYWwganVkZ2VtZW50IGlzIHJlcXVpcmVkLiBDcmVhdGUgYSBjbGluaWNhbCBub3RlIjoKICBFbmNvdW50ZXIuIlRoZSBjbGllbnQgaGFzIGhpc3Rvcnkgb2Ygc2V2ZXJlIGFsbGVyZ2ljIHJlYWN0aW9ucyIKCi8qCkBvdXRwdXQ6IE1lbmluZ29jb2NjYWwgdmFjY2luYXRpb24gY291bGQgYmUgY29udHJhaW5kaWNhdGVkLiBDbGluaWNhbCBqdWRnZW1lbnQgaXMgcmVxdWlyZWQuIENyZWF0ZSBhIGNsaW5pY2FsIG5vdGUgR3VpZGFuY2UKQGd1aWRhbmNlOiBEbyBub3QgdmFjY2luYXRlIGNsaWVudCB3aXRoIG1lbmluZ29jb2NjYWwgaWYgY2xpZW50IGhhcyBoaXN0b3J5IG9mIHNldmVyZSBhbGxlcmdpYyByZWFjdGlvbiB0byBhbnkgY29tcG9uZW50IG9mIHRoZSBtZW5pbmdvY29jY2FsIHZhY2NpbmUuCiovCmRlZmluZSAiTWVuaW5nb2NvY2NhbCB2YWNjaW5hdGlvbiBjb3VsZCBiZSBjb250cmFpbmRpY2F0ZWQuIENsaW5pY2FsIGp1ZGdlbWVudCBpcyByZXF1aXJlZC4gQ3JlYXRlIGEgY2xpbmljYWwgbm90ZSBHdWlkYW5jZSI6CiAgJ0RvIG5vdCB2YWNjaW5hdGUgY2xpZW50IHdpdGggbWVuaW5nb2NvY2NhbCBpZiBjbGllbnQgaGFzIGhpc3Rvcnkgb2Ygc2V2ZXJlIGFsbGVyZ2ljIHJlYWN0aW9uIHRvIGFueSBjb21wb25lbnQgb2YgdGhlIG1lbmluZ29jb2NjYWwgdmFjY2luZS4nCgoKLyoKQHRlc3Q6IFRlc3QgZXhwZWN0ZWQgcmVzdWx0cyBiYXNlZCBvbiBleGFtcGxlIHBhdGllbnRzCiovCmRlZmluZSAiVGVzdCBWYWxpZGF0aW9uIjoKICBjYXNlCiAgICB3aGVuIFBhdGllbnQuaWQgPSAnNzguMCcgdGhlbiAiTWVuaW5nb2NvY2NhbCB2YWNjaW5hdGlvbiBjb3VsZCBiZSBjb250cmFpbmRpY2F0ZWQuIENsaW5pY2FsIGp1ZGdlbWVudCBpcyByZXF1aXJlZC4gQ3JlYXRlIGEgY2xpbmljYWwgbm90ZSIgYW5kICJHdWlkYW5jZSIgPSAnRG8gbm90IHZhY2NpbmF0ZSBjbGllbnQgd2l0aCBtZW5pbmdvY29jY2FsIGlmIGNsaWVudCBoYXMgaGlzdG9yeSBvZiBzZXZlcmUgYWxsZXJnaWMgcmVhY3Rpb24gdG8gYW55IGNvbXBvbmVudCBvZiB0aGUgbWVuaW5nb2NvY2NhbCB2YWNjaW5lLicKICAgIGVsc2UgJ05vIHRlc3QgY2FzZSBzZXQnCiAgZW5kCg=="
  }]
}

```
