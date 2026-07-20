# IMMZD5DTHepatitisBContraindicationsLogic - WHO Immunization Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD5DTHepatitisBContraindicationsLogic**

## Library: IMMZD5DTHepatitisBContraindicationsLogic 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Library/IMMZD5DTHepatitisBContraindicationsLogic | *Version*:1.0.0 |
| Draft as of 2026-04-09 | *Computable Name*:IMMZD5DTHepatitisBContraindicationsLogic |

 
This library defines decision support logic for the IMMZ.D5.DT.Hepatitis B contraindications decision table in the Immunization CPG 

* * **Content: **text/cql: ````/* * Library: IMMZD5DTHepatitisBContraindicationsLogic (IMMZ.D5.DT.Hepatitis B contraindications) * Rule: Check for contraindications before administering the vaccine(s) due * Decision Table: IMMZ.D5.DT.Hepatitis B contraindications * Trigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications */ library IMMZD5DTHepatitisBContraindicationsLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include IMMZD5DTHepatitisBEncounterElements called Encounter parameter Today Date default Today() context Patient /* @dynamicValue: Draft Medication Request ID for Hepatitis B dose */ define "Draft Medication Request ID for Hepatitis B dose": First(Encounter."Draft Medication Request for Hepatitis B dose").id /* @dynamicValue: Guidance */ define "Guidance": case when "Hepatitis B vaccination could be contraindicated. Clinical judgement is required. Create a clinical note." then "Hepatitis B vaccination could be contraindicated. Clinical judgement is required. Create a clinical note. Guidance" else '' end define "Has Guidance": "Guidance" is not null and "Guidance" != '' /* @output: Hepatitis B vaccination could be contraindicated. Clinical judgement is required. Create a clinical note. @pseudocode: '"Immunization recommendation status" = "Further evaluation needed" */ define "Hepatitis B vaccination could be contraindicated. Clinical judgement is required. Create a clinical note.": Encounter."The client has history of severe allergic reactions" /* @output: Hepatitis B vaccination could be contraindicated. Clinical judgement is required. Create a clinical note. Guidance @guidance: Do not vaccinate client with hepatitis B if the client had a history of serious allergic reactions to any of the vaccine components. Allergy to yeast is considered a contraindication to immunization with yeast-produced hepatitis B-containing vaccine. */ define "Hepatitis B vaccination could be contraindicated. Clinical judgement is required. Create a clinical note. Guidance": 'Do not vaccinate client with hepatitis B if the client had a history of serious allergic reactions to any of the vaccine components. Allergy to yeast is considered a contraindication to immunization with yeast-produced hepatitis B-containing vaccine.' /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'HepatitisB62.1' then "Hepatitis B vaccination could be contraindicated. Clinical judgement is required. Create a clinical note." and "Guidance" = 'Do not vaccinate client with hepatitis B if the client had a history of serious allergic reactions to any of the vaccine components. Allergy to yeast is considered a contraindication to immunization with yeast-produced hepatitis B-containing vaccine.' else 'No test case set' end ````: **Id: **
  * ?: IMMZD5DTHepatitisBContraindicationsLogic
* * **Content: **text/cql: ````/* * Library: IMMZD5DTHepatitisBContraindicationsLogic (IMMZ.D5.DT.Hepatitis B contraindications) * Rule: Check for contraindications before administering the vaccine(s) due * Decision Table: IMMZ.D5.DT.Hepatitis B contraindications * Trigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications */ library IMMZD5DTHepatitisBContraindicationsLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include IMMZD5DTHepatitisBEncounterElements called Encounter parameter Today Date default Today() context Patient /* @dynamicValue: Draft Medication Request ID for Hepatitis B dose */ define "Draft Medication Request ID for Hepatitis B dose": First(Encounter."Draft Medication Request for Hepatitis B dose").id /* @dynamicValue: Guidance */ define "Guidance": case when "Hepatitis B vaccination could be contraindicated. Clinical judgement is required. Create a clinical note." then "Hepatitis B vaccination could be contraindicated. Clinical judgement is required. Create a clinical note. Guidance" else '' end define "Has Guidance": "Guidance" is not null and "Guidance" != '' /* @output: Hepatitis B vaccination could be contraindicated. Clinical judgement is required. Create a clinical note. @pseudocode: '"Immunization recommendation status" = "Further evaluation needed" */ define "Hepatitis B vaccination could be contraindicated. Clinical judgement is required. Create a clinical note.": Encounter."The client has history of severe allergic reactions" /* @output: Hepatitis B vaccination could be contraindicated. Clinical judgement is required. Create a clinical note. Guidance @guidance: Do not vaccinate client with hepatitis B if the client had a history of serious allergic reactions to any of the vaccine components. Allergy to yeast is considered a contraindication to immunization with yeast-produced hepatitis B-containing vaccine. */ define "Hepatitis B vaccination could be contraindicated. Clinical judgement is required. Create a clinical note. Guidance": 'Do not vaccinate client with hepatitis B if the client had a history of serious allergic reactions to any of the vaccine components. Allergy to yeast is considered a contraindication to immunization with yeast-produced hepatitis B-containing vaccine.' /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'HepatitisB62.1' then "Hepatitis B vaccination could be contraindicated. Clinical judgement is required. Create a clinical note." and "Guidance" = 'Do not vaccinate client with hepatitis B if the client had a history of serious allergic reactions to any of the vaccine components. Allergy to yeast is considered a contraindication to immunization with yeast-produced hepatitis B-containing vaccine.' else 'No test case set' end ````: **Version: **
  * ?: 1.0.0
* * **Content: **text/cql: ````/* * Library: IMMZD5DTHepatitisBContraindicationsLogic (IMMZ.D5.DT.Hepatitis B contraindications) * Rule: Check for contraindications before administering the vaccine(s) due * Decision Table: IMMZ.D5.DT.Hepatitis B contraindications * Trigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications */ library IMMZD5DTHepatitisBContraindicationsLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include IMMZD5DTHepatitisBEncounterElements called Encounter parameter Today Date default Today() context Patient /* @dynamicValue: Draft Medication Request ID for Hepatitis B dose */ define "Draft Medication Request ID for Hepatitis B dose": First(Encounter."Draft Medication Request for Hepatitis B dose").id /* @dynamicValue: Guidance */ define "Guidance": case when "Hepatitis B vaccination could be contraindicated. Clinical judgement is required. Create a clinical note." then "Hepatitis B vaccination could be contraindicated. Clinical judgement is required. Create a clinical note. Guidance" else '' end define "Has Guidance": "Guidance" is not null and "Guidance" != '' /* @output: Hepatitis B vaccination could be contraindicated. Clinical judgement is required. Create a clinical note. @pseudocode: '"Immunization recommendation status" = "Further evaluation needed" */ define "Hepatitis B vaccination could be contraindicated. Clinical judgement is required. Create a clinical note.": Encounter."The client has history of severe allergic reactions" /* @output: Hepatitis B vaccination could be contraindicated. Clinical judgement is required. Create a clinical note. Guidance @guidance: Do not vaccinate client with hepatitis B if the client had a history of serious allergic reactions to any of the vaccine components. Allergy to yeast is considered a contraindication to immunization with yeast-produced hepatitis B-containing vaccine. */ define "Hepatitis B vaccination could be contraindicated. Clinical judgement is required. Create a clinical note. Guidance": 'Do not vaccinate client with hepatitis B if the client had a history of serious allergic reactions to any of the vaccine components. Allergy to yeast is considered a contraindication to immunization with yeast-produced hepatitis B-containing vaccine.' /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'HepatitisB62.1' then "Hepatitis B vaccination could be contraindicated. Clinical judgement is required. Create a clinical note." and "Guidance" = 'Do not vaccinate client with hepatitis B if the client had a history of serious allergic reactions to any of the vaccine components. Allergy to yeast is considered a contraindication to immunization with yeast-produced hepatitis B-containing vaccine.' else 'No test case set' end ````: **Url: **
  * ?: [IMMZD5DTHepatitisBContraindicationsLogic](Library-IMMZD5DTHepatitisBContraindicationsLogic.md)
* * **Content: **text/cql: ````/* * Library: IMMZD5DTHepatitisBContraindicationsLogic (IMMZ.D5.DT.Hepatitis B contraindications) * Rule: Check for contraindications before administering the vaccine(s) due * Decision Table: IMMZ.D5.DT.Hepatitis B contraindications * Trigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications */ library IMMZD5DTHepatitisBContraindicationsLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include IMMZD5DTHepatitisBEncounterElements called Encounter parameter Today Date default Today() context Patient /* @dynamicValue: Draft Medication Request ID for Hepatitis B dose */ define "Draft Medication Request ID for Hepatitis B dose": First(Encounter."Draft Medication Request for Hepatitis B dose").id /* @dynamicValue: Guidance */ define "Guidance": case when "Hepatitis B vaccination could be contraindicated. Clinical judgement is required. Create a clinical note." then "Hepatitis B vaccination could be contraindicated. Clinical judgement is required. Create a clinical note. Guidance" else '' end define "Has Guidance": "Guidance" is not null and "Guidance" != '' /* @output: Hepatitis B vaccination could be contraindicated. Clinical judgement is required. Create a clinical note. @pseudocode: '"Immunization recommendation status" = "Further evaluation needed" */ define "Hepatitis B vaccination could be contraindicated. Clinical judgement is required. Create a clinical note.": Encounter."The client has history of severe allergic reactions" /* @output: Hepatitis B vaccination could be contraindicated. Clinical judgement is required. Create a clinical note. Guidance @guidance: Do not vaccinate client with hepatitis B if the client had a history of serious allergic reactions to any of the vaccine components. Allergy to yeast is considered a contraindication to immunization with yeast-produced hepatitis B-containing vaccine. */ define "Hepatitis B vaccination could be contraindicated. Clinical judgement is required. Create a clinical note. Guidance": 'Do not vaccinate client with hepatitis B if the client had a history of serious allergic reactions to any of the vaccine components. Allergy to yeast is considered a contraindication to immunization with yeast-produced hepatitis B-containing vaccine.' /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'HepatitisB62.1' then "Hepatitis B vaccination could be contraindicated. Clinical judgement is required. Create a clinical note." and "Guidance" = 'Do not vaccinate client with hepatitis B if the client had a history of serious allergic reactions to any of the vaccine components. Allergy to yeast is considered a contraindication to immunization with yeast-produced hepatitis B-containing vaccine.' else 'No test case set' end ````: **Status: **
  * ?: draft
* * **Content: **text/cql: ````/* * Library: IMMZD5DTHepatitisBContraindicationsLogic (IMMZ.D5.DT.Hepatitis B contraindications) * Rule: Check for contraindications before administering the vaccine(s) due * Decision Table: IMMZ.D5.DT.Hepatitis B contraindications * Trigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications */ library IMMZD5DTHepatitisBContraindicationsLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include IMMZD5DTHepatitisBEncounterElements called Encounter parameter Today Date default Today() context Patient /* @dynamicValue: Draft Medication Request ID for Hepatitis B dose */ define "Draft Medication Request ID for Hepatitis B dose": First(Encounter."Draft Medication Request for Hepatitis B dose").id /* @dynamicValue: Guidance */ define "Guidance": case when "Hepatitis B vaccination could be contraindicated. Clinical judgement is required. Create a clinical note." then "Hepatitis B vaccination could be contraindicated. Clinical judgement is required. Create a clinical note. Guidance" else '' end define "Has Guidance": "Guidance" is not null and "Guidance" != '' /* @output: Hepatitis B vaccination could be contraindicated. Clinical judgement is required. Create a clinical note. @pseudocode: '"Immunization recommendation status" = "Further evaluation needed" */ define "Hepatitis B vaccination could be contraindicated. Clinical judgement is required. Create a clinical note.": Encounter."The client has history of severe allergic reactions" /* @output: Hepatitis B vaccination could be contraindicated. Clinical judgement is required. Create a clinical note. Guidance @guidance: Do not vaccinate client with hepatitis B if the client had a history of serious allergic reactions to any of the vaccine components. Allergy to yeast is considered a contraindication to immunization with yeast-produced hepatitis B-containing vaccine. */ define "Hepatitis B vaccination could be contraindicated. Clinical judgement is required. Create a clinical note. Guidance": 'Do not vaccinate client with hepatitis B if the client had a history of serious allergic reactions to any of the vaccine components. Allergy to yeast is considered a contraindication to immunization with yeast-produced hepatitis B-containing vaccine.' /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'HepatitisB62.1' then "Hepatitis B vaccination could be contraindicated. Clinical judgement is required. Create a clinical note." and "Guidance" = 'Do not vaccinate client with hepatitis B if the client had a history of serious allergic reactions to any of the vaccine components. Allergy to yeast is considered a contraindication to immunization with yeast-produced hepatitis B-containing vaccine.' else 'No test case set' end ````: **Date: **
  * ?: 2026-04-09 14:34:42+0000
* * **Content: **text/cql: ````/* * Library: IMMZD5DTHepatitisBContraindicationsLogic (IMMZ.D5.DT.Hepatitis B contraindications) * Rule: Check for contraindications before administering the vaccine(s) due * Decision Table: IMMZ.D5.DT.Hepatitis B contraindications * Trigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications */ library IMMZD5DTHepatitisBContraindicationsLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include IMMZD5DTHepatitisBEncounterElements called Encounter parameter Today Date default Today() context Patient /* @dynamicValue: Draft Medication Request ID for Hepatitis B dose */ define "Draft Medication Request ID for Hepatitis B dose": First(Encounter."Draft Medication Request for Hepatitis B dose").id /* @dynamicValue: Guidance */ define "Guidance": case when "Hepatitis B vaccination could be contraindicated. Clinical judgement is required. Create a clinical note." then "Hepatitis B vaccination could be contraindicated. Clinical judgement is required. Create a clinical note. Guidance" else '' end define "Has Guidance": "Guidance" is not null and "Guidance" != '' /* @output: Hepatitis B vaccination could be contraindicated. Clinical judgement is required. Create a clinical note. @pseudocode: '"Immunization recommendation status" = "Further evaluation needed" */ define "Hepatitis B vaccination could be contraindicated. Clinical judgement is required. Create a clinical note.": Encounter."The client has history of severe allergic reactions" /* @output: Hepatitis B vaccination could be contraindicated. Clinical judgement is required. Create a clinical note. Guidance @guidance: Do not vaccinate client with hepatitis B if the client had a history of serious allergic reactions to any of the vaccine components. Allergy to yeast is considered a contraindication to immunization with yeast-produced hepatitis B-containing vaccine. */ define "Hepatitis B vaccination could be contraindicated. Clinical judgement is required. Create a clinical note. Guidance": 'Do not vaccinate client with hepatitis B if the client had a history of serious allergic reactions to any of the vaccine components. Allergy to yeast is considered a contraindication to immunization with yeast-produced hepatitis B-containing vaccine.' /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'HepatitisB62.1' then "Hepatitis B vaccination could be contraindicated. Clinical judgement is required. Create a clinical note." and "Guidance" = 'Do not vaccinate client with hepatitis B if the client had a history of serious allergic reactions to any of the vaccine components. Allergy to yeast is considered a contraindication to immunization with yeast-produced hepatitis B-containing vaccine.' else 'No test case set' end ````: **Publisher: **
  * ?: WHO
* * **Content: **text/cql: ````/* * Library: IMMZD5DTHepatitisBContraindicationsLogic (IMMZ.D5.DT.Hepatitis B contraindications) * Rule: Check for contraindications before administering the vaccine(s) due * Decision Table: IMMZ.D5.DT.Hepatitis B contraindications * Trigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications */ library IMMZD5DTHepatitisBContraindicationsLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include IMMZD5DTHepatitisBEncounterElements called Encounter parameter Today Date default Today() context Patient /* @dynamicValue: Draft Medication Request ID for Hepatitis B dose */ define "Draft Medication Request ID for Hepatitis B dose": First(Encounter."Draft Medication Request for Hepatitis B dose").id /* @dynamicValue: Guidance */ define "Guidance": case when "Hepatitis B vaccination could be contraindicated. Clinical judgement is required. Create a clinical note." then "Hepatitis B vaccination could be contraindicated. Clinical judgement is required. Create a clinical note. Guidance" else '' end define "Has Guidance": "Guidance" is not null and "Guidance" != '' /* @output: Hepatitis B vaccination could be contraindicated. Clinical judgement is required. Create a clinical note. @pseudocode: '"Immunization recommendation status" = "Further evaluation needed" */ define "Hepatitis B vaccination could be contraindicated. Clinical judgement is required. Create a clinical note.": Encounter."The client has history of severe allergic reactions" /* @output: Hepatitis B vaccination could be contraindicated. Clinical judgement is required. Create a clinical note. Guidance @guidance: Do not vaccinate client with hepatitis B if the client had a history of serious allergic reactions to any of the vaccine components. Allergy to yeast is considered a contraindication to immunization with yeast-produced hepatitis B-containing vaccine. */ define "Hepatitis B vaccination could be contraindicated. Clinical judgement is required. Create a clinical note. Guidance": 'Do not vaccinate client with hepatitis B if the client had a history of serious allergic reactions to any of the vaccine components. Allergy to yeast is considered a contraindication to immunization with yeast-produced hepatitis B-containing vaccine.' /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'HepatitisB62.1' then "Hepatitis B vaccination could be contraindicated. Clinical judgement is required. Create a clinical note." and "Guidance" = 'Do not vaccinate client with hepatitis B if the client had a history of serious allergic reactions to any of the vaccine components. Allergy to yeast is considered a contraindication to immunization with yeast-produced hepatitis B-containing vaccine.' else 'No test case set' end ````: **Description: **
  * ?: This library defines decision support logic for the IMMZ.D5.DT.Hepatitis B contraindications decision table in the Immunization CPG



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "IMMZD5DTHepatitisBContraindicationsLogic",
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
  "url" : "http://smart.who.int/immunizations/Library/IMMZD5DTHepatitisBContraindicationsLogic",
  "version" : "1.0.0",
  "name" : "IMMZD5DTHepatitisBContraindicationsLogic",
  "title" : "IMMZD5DTHepatitisBContraindicationsLogic",
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
  "description" : "This library defines decision support logic for the IMMZ.D5.DT.Hepatitis B contraindications decision table in the Immunization CPG",
  "relatedArtifact" : [{
    "type" : "depends-on",
    "display" : "Library Encounter",
    "resource" : "http://smart.who.int/immunizations/Library/IMMZD5DTHepatitisBEncounterElements"
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
    "name" : "Draft Medication Request ID for Hepatitis B dose",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "id"
  },
  {
    "name" : "Hepatitis B vaccination could be contraindicated. Clinical judgement is required. Create a clinical note.",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "Hepatitis B vaccination could be contraindicated. Clinical judgement is required. Create a clinical note. Guidance",
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
    "data" : "LyoKICogTGlicmFyeTogSU1NWkQ1RFRIZXBhdGl0aXNCQ29udHJhaW5kaWNhdGlvbnNMb2dpYyAoSU1NWi5ENS5EVC5IZXBhdGl0aXMgQiBjb250cmFpbmRpY2F0aW9ucykKICogUnVsZTogQ2hlY2sgZm9yIGNvbnRyYWluZGljYXRpb25zIGJlZm9yZSBhZG1pbmlzdGVyaW5nIHRoZSB2YWNjaW5lKHMpIGR1ZQogKiBEZWNpc2lvbiBUYWJsZTogSU1NWi5ENS5EVC5IZXBhdGl0aXMgQiBjb250cmFpbmRpY2F0aW9ucwogKiBUcmlnZ2VyOiBJTU1aLkQ1IERldGVybWluZSB2YWNjaW5lKHMpIHRvIGJlIGFkbWluaXN0ZXJlZCBiYXNlZCBvbiBjb250cmFpbmRpY2F0aW9ucwogKi8KbGlicmFyeSBJTU1aRDVEVEhlcGF0aXRpc0JDb250cmFpbmRpY2F0aW9uc0xvZ2ljCgp1c2luZyBGSElSIHZlcnNpb24gJzQuMC4xJwppbmNsdWRlIEZISVJIZWxwZXJzIHZlcnNpb24gJzQuMC4xJwoKaW5jbHVkZSBJTU1aRDVEVEhlcGF0aXRpc0JFbmNvdW50ZXJFbGVtZW50cyBjYWxsZWQgRW5jb3VudGVyCgpwYXJhbWV0ZXIgVG9kYXkgRGF0ZSBkZWZhdWx0IFRvZGF5KCkKCmNvbnRleHQgUGF0aWVudAoKLyoKICBAZHluYW1pY1ZhbHVlOiBEcmFmdCBNZWRpY2F0aW9uIFJlcXVlc3QgSUQgZm9yIEhlcGF0aXRpcyBCIGRvc2UKICAqLwogIGRlZmluZSAiRHJhZnQgTWVkaWNhdGlvbiBSZXF1ZXN0IElEIGZvciBIZXBhdGl0aXMgQiBkb3NlIjoKICAgIEZpcnN0KEVuY291bnRlci4iRHJhZnQgTWVkaWNhdGlvbiBSZXF1ZXN0IGZvciBIZXBhdGl0aXMgQiBkb3NlIikuaWQKCgovKgpAZHluYW1pY1ZhbHVlOiBHdWlkYW5jZQoqLwpkZWZpbmUgIkd1aWRhbmNlIjoKICBjYXNlIAogICAgd2hlbiAiSGVwYXRpdGlzIEIgdmFjY2luYXRpb24gY291bGQgYmUgY29udHJhaW5kaWNhdGVkLiBDbGluaWNhbCBqdWRnZW1lbnQgaXMgcmVxdWlyZWQuIENyZWF0ZSBhIGNsaW5pY2FsIG5vdGUuIiB0aGVuICJIZXBhdGl0aXMgQiB2YWNjaW5hdGlvbiBjb3VsZCBiZSBjb250cmFpbmRpY2F0ZWQuIENsaW5pY2FsIGp1ZGdlbWVudCBpcyByZXF1aXJlZC4gQ3JlYXRlIGEgY2xpbmljYWwgbm90ZS4gR3VpZGFuY2UiIAogICAgZWxzZSAnJwogIGVuZAogIApkZWZpbmUgIkhhcyBHdWlkYW5jZSI6CiAgIkd1aWRhbmNlIiBpcyBub3QgbnVsbCBhbmQgIkd1aWRhbmNlIiAhPSAnJwoKLyoKQG91dHB1dDogSGVwYXRpdGlzIEIgdmFjY2luYXRpb24gY291bGQgYmUgY29udHJhaW5kaWNhdGVkLiBDbGluaWNhbCBqdWRnZW1lbnQgaXMgcmVxdWlyZWQuIENyZWF0ZSBhIGNsaW5pY2FsIG5vdGUuCkBwc2V1ZG9jb2RlOiAnIkltbXVuaXphdGlvbiByZWNvbW1lbmRhdGlvbiBzdGF0dXMiID0gIkZ1cnRoZXIgZXZhbHVhdGlvbiBuZWVkZWQiCiovCmRlZmluZSAiSGVwYXRpdGlzIEIgdmFjY2luYXRpb24gY291bGQgYmUgY29udHJhaW5kaWNhdGVkLiBDbGluaWNhbCBqdWRnZW1lbnQgaXMgcmVxdWlyZWQuIENyZWF0ZSBhIGNsaW5pY2FsIG5vdGUuIjoKICBFbmNvdW50ZXIuIlRoZSBjbGllbnQgaGFzIGhpc3Rvcnkgb2Ygc2V2ZXJlIGFsbGVyZ2ljIHJlYWN0aW9ucyIKCi8qCkBvdXRwdXQ6IEhlcGF0aXRpcyBCIHZhY2NpbmF0aW9uIGNvdWxkIGJlIGNvbnRyYWluZGljYXRlZC4gQ2xpbmljYWwganVkZ2VtZW50IGlzIHJlcXVpcmVkLiBDcmVhdGUgYSBjbGluaWNhbCBub3RlLiBHdWlkYW5jZQpAZ3VpZGFuY2U6IERvIG5vdCB2YWNjaW5hdGUgY2xpZW50IHdpdGggaGVwYXRpdGlzIEIgaWYgdGhlIGNsaWVudCBoYWQgYSBoaXN0b3J5IG9mIHNlcmlvdXMgYWxsZXJnaWMgcmVhY3Rpb25zIHRvIGFueSBvZiB0aGUgdmFjY2luZSBjb21wb25lbnRzLiBBbGxlcmd5IHRvIHllYXN0IGlzIGNvbnNpZGVyZWQgYSBjb250cmFpbmRpY2F0aW9uIHRvIGltbXVuaXphdGlvbiB3aXRoIHllYXN0LXByb2R1Y2VkIGhlcGF0aXRpcyBCLWNvbnRhaW5pbmcgdmFjY2luZS4KKi8KZGVmaW5lICJIZXBhdGl0aXMgQiB2YWNjaW5hdGlvbiBjb3VsZCBiZSBjb250cmFpbmRpY2F0ZWQuIENsaW5pY2FsIGp1ZGdlbWVudCBpcyByZXF1aXJlZC4gQ3JlYXRlIGEgY2xpbmljYWwgbm90ZS4gR3VpZGFuY2UiOgogICdEbyBub3QgdmFjY2luYXRlIGNsaWVudCB3aXRoIGhlcGF0aXRpcyBCIGlmIHRoZSBjbGllbnQgaGFkIGEgaGlzdG9yeSBvZiBzZXJpb3VzIGFsbGVyZ2ljIHJlYWN0aW9ucyB0byBhbnkgb2YgdGhlIHZhY2NpbmUgY29tcG9uZW50cy4gQWxsZXJneSB0byB5ZWFzdCBpcyBjb25zaWRlcmVkIGEgY29udHJhaW5kaWNhdGlvbiB0byBpbW11bml6YXRpb24gd2l0aCB5ZWFzdC1wcm9kdWNlZCBoZXBhdGl0aXMgQi1jb250YWluaW5nIHZhY2NpbmUuJwoKCi8qCkB0ZXN0OiBUZXN0IGV4cGVjdGVkIHJlc3VsdHMgYmFzZWQgb24gZXhhbXBsZSBwYXRpZW50cwoqLwpkZWZpbmUgIlRlc3QgVmFsaWRhdGlvbiI6CiAgY2FzZQogICAgd2hlbiBQYXRpZW50LmlkID0gJ0hlcGF0aXRpc0I2Mi4xJyB0aGVuICJIZXBhdGl0aXMgQiB2YWNjaW5hdGlvbiBjb3VsZCBiZSBjb250cmFpbmRpY2F0ZWQuIENsaW5pY2FsIGp1ZGdlbWVudCBpcyByZXF1aXJlZC4gQ3JlYXRlIGEgY2xpbmljYWwgbm90ZS4iIGFuZCAiR3VpZGFuY2UiID0gJ0RvIG5vdCB2YWNjaW5hdGUgY2xpZW50IHdpdGggaGVwYXRpdGlzIEIgaWYgdGhlIGNsaWVudCBoYWQgYSBoaXN0b3J5IG9mIHNlcmlvdXMgYWxsZXJnaWMgcmVhY3Rpb25zIHRvIGFueSBvZiB0aGUgdmFjY2luZSBjb21wb25lbnRzLiBBbGxlcmd5IHRvIHllYXN0IGlzIGNvbnNpZGVyZWQgYSBjb250cmFpbmRpY2F0aW9uIHRvIGltbXVuaXphdGlvbiB3aXRoIHllYXN0LXByb2R1Y2VkIGhlcGF0aXRpcyBCLWNvbnRhaW5pbmcgdmFjY2luZS4nCiAgICBlbHNlICdObyB0ZXN0IGNhc2Ugc2V0JwogIGVuZAo="
  }]
}

```
