# IMMZD5DTMeningococcalContraindicationsLogic - WHO Immunization Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD5DTMeningococcalContraindicationsLogic**

## Library: IMMZD5DTMeningococcalContraindicationsLogic 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Library/IMMZD5DTMeningococcalContraindicationsLogic | *Version*:1.0.0 |
| Draft as of 2026-04-09 | *Computable Name*:IMMZD5DTMeningococcalContraindicationsLogic |

 
This library defines decision support logic for the IMMZ.D5.DT.Meningococcal contraindications decision table in the Immunization CPG 

* * **Content: **text/cql: ````/* * Library: IMMZD5DTMeningococcalContraindicationsLogic (IMMZ.D5.DT.Meningococcal contraindications) * Rule: Check for contraindications before administering the vaccine(s) due * Decision Table: IMMZ.D5.DT.Meningococcal contraindications * Trigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications */ library IMMZD5DTMeningococcalContraindicationsLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include IMMZD5DTMeningococcalEncounterElements called Encounter parameter Today Date default Today() context Patient /* @dynamicValue: Draft Medication Request ID for Meningococcal dose */ define "Draft Medication Request ID for Meningococcal dose": First(Encounter."Draft Medication Request for Meningococcal dose").id /* @dynamicValue: Guidance */ define "Guidance": case when "Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note" then "Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note Guidance" else '' end define "Has Guidance": "Guidance" is not null and "Guidance" != '' /* @output: Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note @pseudocode: "Immunization recommendation status" (where "Type of meningococcal dose" = "Polysaccharide vaccine") = "Further evaluation needed" */ define "Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note": Encounter."The client has history of severe allergic reactions" /* @output: Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note Guidance @guidance: Do not vaccinate client with meningococcal if client has history of severe allergic reaction to any component of the meningococcal vaccine. */ define "Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note Guidance": 'Do not vaccinate client with meningococcal if client has history of severe allergic reaction to any component of the meningococcal vaccine.' /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'Meningococcal78.1' then "Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note" and "Guidance" = 'Do not vaccinate client with meningococcal if client has history of severe allergic reaction to any component of the meningococcal vaccine.' else 'No test case set' end ````: **Id: **
  * ?: IMMZD5DTMeningococcalContraindicationsLogic
* * **Content: **text/cql: ````/* * Library: IMMZD5DTMeningococcalContraindicationsLogic (IMMZ.D5.DT.Meningococcal contraindications) * Rule: Check for contraindications before administering the vaccine(s) due * Decision Table: IMMZ.D5.DT.Meningococcal contraindications * Trigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications */ library IMMZD5DTMeningococcalContraindicationsLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include IMMZD5DTMeningococcalEncounterElements called Encounter parameter Today Date default Today() context Patient /* @dynamicValue: Draft Medication Request ID for Meningococcal dose */ define "Draft Medication Request ID for Meningococcal dose": First(Encounter."Draft Medication Request for Meningococcal dose").id /* @dynamicValue: Guidance */ define "Guidance": case when "Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note" then "Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note Guidance" else '' end define "Has Guidance": "Guidance" is not null and "Guidance" != '' /* @output: Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note @pseudocode: "Immunization recommendation status" (where "Type of meningococcal dose" = "Polysaccharide vaccine") = "Further evaluation needed" */ define "Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note": Encounter."The client has history of severe allergic reactions" /* @output: Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note Guidance @guidance: Do not vaccinate client with meningococcal if client has history of severe allergic reaction to any component of the meningococcal vaccine. */ define "Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note Guidance": 'Do not vaccinate client with meningococcal if client has history of severe allergic reaction to any component of the meningococcal vaccine.' /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'Meningococcal78.1' then "Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note" and "Guidance" = 'Do not vaccinate client with meningococcal if client has history of severe allergic reaction to any component of the meningococcal vaccine.' else 'No test case set' end ````: **Version: **
  * ?: 1.0.0
* * **Content: **text/cql: ````/* * Library: IMMZD5DTMeningococcalContraindicationsLogic (IMMZ.D5.DT.Meningococcal contraindications) * Rule: Check for contraindications before administering the vaccine(s) due * Decision Table: IMMZ.D5.DT.Meningococcal contraindications * Trigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications */ library IMMZD5DTMeningococcalContraindicationsLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include IMMZD5DTMeningococcalEncounterElements called Encounter parameter Today Date default Today() context Patient /* @dynamicValue: Draft Medication Request ID for Meningococcal dose */ define "Draft Medication Request ID for Meningococcal dose": First(Encounter."Draft Medication Request for Meningococcal dose").id /* @dynamicValue: Guidance */ define "Guidance": case when "Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note" then "Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note Guidance" else '' end define "Has Guidance": "Guidance" is not null and "Guidance" != '' /* @output: Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note @pseudocode: "Immunization recommendation status" (where "Type of meningococcal dose" = "Polysaccharide vaccine") = "Further evaluation needed" */ define "Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note": Encounter."The client has history of severe allergic reactions" /* @output: Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note Guidance @guidance: Do not vaccinate client with meningococcal if client has history of severe allergic reaction to any component of the meningococcal vaccine. */ define "Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note Guidance": 'Do not vaccinate client with meningococcal if client has history of severe allergic reaction to any component of the meningococcal vaccine.' /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'Meningococcal78.1' then "Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note" and "Guidance" = 'Do not vaccinate client with meningococcal if client has history of severe allergic reaction to any component of the meningococcal vaccine.' else 'No test case set' end ````: **Url: **
  * ?: [IMMZD5DTMeningococcalContraindicationsLogic](Library-IMMZD5DTMeningococcalContraindicationsLogic.md)
* * **Content: **text/cql: ````/* * Library: IMMZD5DTMeningococcalContraindicationsLogic (IMMZ.D5.DT.Meningococcal contraindications) * Rule: Check for contraindications before administering the vaccine(s) due * Decision Table: IMMZ.D5.DT.Meningococcal contraindications * Trigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications */ library IMMZD5DTMeningococcalContraindicationsLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include IMMZD5DTMeningococcalEncounterElements called Encounter parameter Today Date default Today() context Patient /* @dynamicValue: Draft Medication Request ID for Meningococcal dose */ define "Draft Medication Request ID for Meningococcal dose": First(Encounter."Draft Medication Request for Meningococcal dose").id /* @dynamicValue: Guidance */ define "Guidance": case when "Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note" then "Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note Guidance" else '' end define "Has Guidance": "Guidance" is not null and "Guidance" != '' /* @output: Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note @pseudocode: "Immunization recommendation status" (where "Type of meningococcal dose" = "Polysaccharide vaccine") = "Further evaluation needed" */ define "Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note": Encounter."The client has history of severe allergic reactions" /* @output: Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note Guidance @guidance: Do not vaccinate client with meningococcal if client has history of severe allergic reaction to any component of the meningococcal vaccine. */ define "Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note Guidance": 'Do not vaccinate client with meningococcal if client has history of severe allergic reaction to any component of the meningococcal vaccine.' /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'Meningococcal78.1' then "Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note" and "Guidance" = 'Do not vaccinate client with meningococcal if client has history of severe allergic reaction to any component of the meningococcal vaccine.' else 'No test case set' end ````: **Status: **
  * ?: draft
* * **Content: **text/cql: ````/* * Library: IMMZD5DTMeningococcalContraindicationsLogic (IMMZ.D5.DT.Meningococcal contraindications) * Rule: Check for contraindications before administering the vaccine(s) due * Decision Table: IMMZ.D5.DT.Meningococcal contraindications * Trigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications */ library IMMZD5DTMeningococcalContraindicationsLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include IMMZD5DTMeningococcalEncounterElements called Encounter parameter Today Date default Today() context Patient /* @dynamicValue: Draft Medication Request ID for Meningococcal dose */ define "Draft Medication Request ID for Meningococcal dose": First(Encounter."Draft Medication Request for Meningococcal dose").id /* @dynamicValue: Guidance */ define "Guidance": case when "Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note" then "Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note Guidance" else '' end define "Has Guidance": "Guidance" is not null and "Guidance" != '' /* @output: Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note @pseudocode: "Immunization recommendation status" (where "Type of meningococcal dose" = "Polysaccharide vaccine") = "Further evaluation needed" */ define "Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note": Encounter."The client has history of severe allergic reactions" /* @output: Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note Guidance @guidance: Do not vaccinate client with meningococcal if client has history of severe allergic reaction to any component of the meningococcal vaccine. */ define "Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note Guidance": 'Do not vaccinate client with meningococcal if client has history of severe allergic reaction to any component of the meningococcal vaccine.' /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'Meningococcal78.1' then "Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note" and "Guidance" = 'Do not vaccinate client with meningococcal if client has history of severe allergic reaction to any component of the meningococcal vaccine.' else 'No test case set' end ````: **Date: **
  * ?: 2026-04-09 14:18:30+0000
* * **Content: **text/cql: ````/* * Library: IMMZD5DTMeningococcalContraindicationsLogic (IMMZ.D5.DT.Meningococcal contraindications) * Rule: Check for contraindications before administering the vaccine(s) due * Decision Table: IMMZ.D5.DT.Meningococcal contraindications * Trigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications */ library IMMZD5DTMeningococcalContraindicationsLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include IMMZD5DTMeningococcalEncounterElements called Encounter parameter Today Date default Today() context Patient /* @dynamicValue: Draft Medication Request ID for Meningococcal dose */ define "Draft Medication Request ID for Meningococcal dose": First(Encounter."Draft Medication Request for Meningococcal dose").id /* @dynamicValue: Guidance */ define "Guidance": case when "Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note" then "Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note Guidance" else '' end define "Has Guidance": "Guidance" is not null and "Guidance" != '' /* @output: Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note @pseudocode: "Immunization recommendation status" (where "Type of meningococcal dose" = "Polysaccharide vaccine") = "Further evaluation needed" */ define "Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note": Encounter."The client has history of severe allergic reactions" /* @output: Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note Guidance @guidance: Do not vaccinate client with meningococcal if client has history of severe allergic reaction to any component of the meningococcal vaccine. */ define "Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note Guidance": 'Do not vaccinate client with meningococcal if client has history of severe allergic reaction to any component of the meningococcal vaccine.' /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'Meningococcal78.1' then "Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note" and "Guidance" = 'Do not vaccinate client with meningococcal if client has history of severe allergic reaction to any component of the meningococcal vaccine.' else 'No test case set' end ````: **Publisher: **
  * ?: WHO
* * **Content: **text/cql: ````/* * Library: IMMZD5DTMeningococcalContraindicationsLogic (IMMZ.D5.DT.Meningococcal contraindications) * Rule: Check for contraindications before administering the vaccine(s) due * Decision Table: IMMZ.D5.DT.Meningococcal contraindications * Trigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications */ library IMMZD5DTMeningococcalContraindicationsLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include IMMZD5DTMeningococcalEncounterElements called Encounter parameter Today Date default Today() context Patient /* @dynamicValue: Draft Medication Request ID for Meningococcal dose */ define "Draft Medication Request ID for Meningococcal dose": First(Encounter."Draft Medication Request for Meningococcal dose").id /* @dynamicValue: Guidance */ define "Guidance": case when "Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note" then "Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note Guidance" else '' end define "Has Guidance": "Guidance" is not null and "Guidance" != '' /* @output: Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note @pseudocode: "Immunization recommendation status" (where "Type of meningococcal dose" = "Polysaccharide vaccine") = "Further evaluation needed" */ define "Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note": Encounter."The client has history of severe allergic reactions" /* @output: Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note Guidance @guidance: Do not vaccinate client with meningococcal if client has history of severe allergic reaction to any component of the meningococcal vaccine. */ define "Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note Guidance": 'Do not vaccinate client with meningococcal if client has history of severe allergic reaction to any component of the meningococcal vaccine.' /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'Meningococcal78.1' then "Meningococcal vaccination could be contraindicated. Clinical judgement is required. Create a clinical note" and "Guidance" = 'Do not vaccinate client with meningococcal if client has history of severe allergic reaction to any component of the meningococcal vaccine.' else 'No test case set' end ````: **Description: **
  * ?: This library defines decision support logic for the IMMZ.D5.DT.Meningococcal contraindications decision table in the Immunization CPG



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "IMMZD5DTMeningococcalContraindicationsLogic",
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
  "url" : "http://smart.who.int/immunizations/Library/IMMZD5DTMeningococcalContraindicationsLogic",
  "version" : "1.0.0",
  "name" : "IMMZD5DTMeningococcalContraindicationsLogic",
  "title" : "IMMZD5DTMeningococcalContraindicationsLogic",
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
    "data" : "LyoKICogTGlicmFyeTogSU1NWkQ1RFRNZW5pbmdvY29jY2FsQ29udHJhaW5kaWNhdGlvbnNMb2dpYyAoSU1NWi5ENS5EVC5NZW5pbmdvY29jY2FsIGNvbnRyYWluZGljYXRpb25zKQogKiBSdWxlOiBDaGVjayBmb3IgY29udHJhaW5kaWNhdGlvbnMgYmVmb3JlIGFkbWluaXN0ZXJpbmcgdGhlIHZhY2NpbmUocykgZHVlCiAqIERlY2lzaW9uIFRhYmxlOiBJTU1aLkQ1LkRULk1lbmluZ29jb2NjYWwgY29udHJhaW5kaWNhdGlvbnMKICogVHJpZ2dlcjogSU1NWi5ENSBEZXRlcm1pbmUgdmFjY2luZShzKSB0byBiZSBhZG1pbmlzdGVyZWQgYmFzZWQgb24gY29udHJhaW5kaWNhdGlvbnMKICovCmxpYnJhcnkgSU1NWkQ1RFRNZW5pbmdvY29jY2FsQ29udHJhaW5kaWNhdGlvbnNMb2dpYwoKdXNpbmcgRkhJUiB2ZXJzaW9uICc0LjAuMScKaW5jbHVkZSBGSElSSGVscGVycyB2ZXJzaW9uICc0LjAuMScKCmluY2x1ZGUgSU1NWkQ1RFRNZW5pbmdvY29jY2FsRW5jb3VudGVyRWxlbWVudHMgY2FsbGVkIEVuY291bnRlcgoKcGFyYW1ldGVyIFRvZGF5IERhdGUgZGVmYXVsdCBUb2RheSgpCgpjb250ZXh0IFBhdGllbnQKCi8qCiAgQGR5bmFtaWNWYWx1ZTogRHJhZnQgTWVkaWNhdGlvbiBSZXF1ZXN0IElEIGZvciBNZW5pbmdvY29jY2FsIGRvc2UKICAqLwogIGRlZmluZSAiRHJhZnQgTWVkaWNhdGlvbiBSZXF1ZXN0IElEIGZvciBNZW5pbmdvY29jY2FsIGRvc2UiOgogICAgRmlyc3QoRW5jb3VudGVyLiJEcmFmdCBNZWRpY2F0aW9uIFJlcXVlc3QgZm9yIE1lbmluZ29jb2NjYWwgZG9zZSIpLmlkCgoKLyoKQGR5bmFtaWNWYWx1ZTogR3VpZGFuY2UKKi8KZGVmaW5lICJHdWlkYW5jZSI6CiAgY2FzZSAKICAgIHdoZW4gIk1lbmluZ29jb2NjYWwgdmFjY2luYXRpb24gY291bGQgYmUgY29udHJhaW5kaWNhdGVkLiBDbGluaWNhbCBqdWRnZW1lbnQgaXMgcmVxdWlyZWQuIENyZWF0ZSBhIGNsaW5pY2FsIG5vdGUiIHRoZW4gIk1lbmluZ29jb2NjYWwgdmFjY2luYXRpb24gY291bGQgYmUgY29udHJhaW5kaWNhdGVkLiBDbGluaWNhbCBqdWRnZW1lbnQgaXMgcmVxdWlyZWQuIENyZWF0ZSBhIGNsaW5pY2FsIG5vdGUgR3VpZGFuY2UiIAogICAgZWxzZSAnJwogIGVuZAogIApkZWZpbmUgIkhhcyBHdWlkYW5jZSI6CiAgIkd1aWRhbmNlIiBpcyBub3QgbnVsbCBhbmQgIkd1aWRhbmNlIiAhPSAnJwoKLyoKQG91dHB1dDogTWVuaW5nb2NvY2NhbCB2YWNjaW5hdGlvbiBjb3VsZCBiZSBjb250cmFpbmRpY2F0ZWQuIENsaW5pY2FsIGp1ZGdlbWVudCBpcyByZXF1aXJlZC4gQ3JlYXRlIGEgY2xpbmljYWwgbm90ZQpAcHNldWRvY29kZTogIkltbXVuaXphdGlvbiByZWNvbW1lbmRhdGlvbiBzdGF0dXMiICh3aGVyZSAiVHlwZSBvZiBtZW5pbmdvY29jY2FsIGRvc2UiID0gIlBvbHlzYWNjaGFyaWRlIHZhY2NpbmUiKSA9ICJGdXJ0aGVyIGV2YWx1YXRpb24gbmVlZGVkIgoqLwpkZWZpbmUgIk1lbmluZ29jb2NjYWwgdmFjY2luYXRpb24gY291bGQgYmUgY29udHJhaW5kaWNhdGVkLiBDbGluaWNhbCBqdWRnZW1lbnQgaXMgcmVxdWlyZWQuIENyZWF0ZSBhIGNsaW5pY2FsIG5vdGUiOgogIEVuY291bnRlci4iVGhlIGNsaWVudCBoYXMgaGlzdG9yeSBvZiBzZXZlcmUgYWxsZXJnaWMgcmVhY3Rpb25zIgoKLyoKQG91dHB1dDogTWVuaW5nb2NvY2NhbCB2YWNjaW5hdGlvbiBjb3VsZCBiZSBjb250cmFpbmRpY2F0ZWQuIENsaW5pY2FsIGp1ZGdlbWVudCBpcyByZXF1aXJlZC4gQ3JlYXRlIGEgY2xpbmljYWwgbm90ZSBHdWlkYW5jZQpAZ3VpZGFuY2U6IERvIG5vdCB2YWNjaW5hdGUgY2xpZW50IHdpdGggbWVuaW5nb2NvY2NhbCBpZiBjbGllbnQgaGFzIGhpc3Rvcnkgb2Ygc2V2ZXJlIGFsbGVyZ2ljIHJlYWN0aW9uIHRvIGFueSBjb21wb25lbnQgb2YgdGhlIG1lbmluZ29jb2NjYWwgdmFjY2luZS4KKi8KZGVmaW5lICJNZW5pbmdvY29jY2FsIHZhY2NpbmF0aW9uIGNvdWxkIGJlIGNvbnRyYWluZGljYXRlZC4gQ2xpbmljYWwganVkZ2VtZW50IGlzIHJlcXVpcmVkLiBDcmVhdGUgYSBjbGluaWNhbCBub3RlIEd1aWRhbmNlIjoKICAnRG8gbm90IHZhY2NpbmF0ZSBjbGllbnQgd2l0aCBtZW5pbmdvY29jY2FsIGlmIGNsaWVudCBoYXMgaGlzdG9yeSBvZiBzZXZlcmUgYWxsZXJnaWMgcmVhY3Rpb24gdG8gYW55IGNvbXBvbmVudCBvZiB0aGUgbWVuaW5nb2NvY2NhbCB2YWNjaW5lLicKCgovKgpAdGVzdDogVGVzdCBleHBlY3RlZCByZXN1bHRzIGJhc2VkIG9uIGV4YW1wbGUgcGF0aWVudHMKKi8KZGVmaW5lICJUZXN0IFZhbGlkYXRpb24iOgogIGNhc2UKICAgIHdoZW4gUGF0aWVudC5pZCA9ICdNZW5pbmdvY29jY2FsNzguMScgdGhlbiAiTWVuaW5nb2NvY2NhbCB2YWNjaW5hdGlvbiBjb3VsZCBiZSBjb250cmFpbmRpY2F0ZWQuIENsaW5pY2FsIGp1ZGdlbWVudCBpcyByZXF1aXJlZC4gQ3JlYXRlIGEgY2xpbmljYWwgbm90ZSIgYW5kICJHdWlkYW5jZSIgPSAnRG8gbm90IHZhY2NpbmF0ZSBjbGllbnQgd2l0aCBtZW5pbmdvY29jY2FsIGlmIGNsaWVudCBoYXMgaGlzdG9yeSBvZiBzZXZlcmUgYWxsZXJnaWMgcmVhY3Rpb24gdG8gYW55IGNvbXBvbmVudCBvZiB0aGUgbWVuaW5nb2NvY2NhbCB2YWNjaW5lLicKICAgIGVsc2UgJ05vIHRlc3QgY2FzZSBzZXQnCiAgZW5kCg=="
  }]
}

```
