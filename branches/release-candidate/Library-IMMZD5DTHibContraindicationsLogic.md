# IMMZD5DTHibContraindicationsLogic - WHO Immunization Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD5DTHibContraindicationsLogic**

## Library: IMMZD5DTHibContraindicationsLogic 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Library/IMMZD5DTHibContraindicationsLogic | *Version*:1.0.0 |
| Draft as of 2026-04-09 | *Computable Name*:IMMZD5DTHibContraindicationsLogic |

 
This library defines decision support logic for the IMMZ.D5.DT.Hib contraindications decision table in the Immunization CPG 

* * **Content: **text/cql: ````/* * Library: IMMZD5DTHibContraindicationsLogic (IMMZ.D5.DT.Hib contraindications) * Rule: Check for contraindications before administering the vaccine(s) due * Decision Table: IMMZ.D5.DT.Hib contraindications * Trigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications (9) */ library IMMZD5DTHibContraindicationsLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include IMMZD5DTHibEncounterElements called Encounter parameter Today Date default Today() context Patient /* @dynamicValue: Draft Medication Request ID for Hib dose */ define "Draft Medication Request ID for Hib dose": First(Encounter."Draft Medication Request for Hib dose").id /* @dynamicValue: Guidance */ define "Guidance": case when "Hib vaccination could be contraindicated. Clinical judgement is required. Create a clinical note." then "Hib vaccination could be contraindicated. Clinical judgement is required. Create a clinical note. Guidance" else '' end define "Has Guidance": "Guidance" is not null and "Guidance" != '' /* @output: Hib vaccination could be contraindicated. Clinical judgement is required. Create a clinical note. @pseudocode: "Immunization recommendation status" = "Further evaluation needed" */ define "Hib vaccination could be contraindicated. Clinical judgement is required. Create a clinical note.": Encounter."The client has a history of severe allergic reactions" /* @output: Hib vaccination could be contraindicated. Clinical judgement is required. Create a clinical note. Guidance @guidance: Do not vaccinate client with Hib conjugate vaccine if client has had allergic reaction or known allergies to any component of the vaccine. */ define "Hib vaccination could be contraindicated. Clinical judgement is required. Create a clinical note. Guidance": 'Do not vaccinate client with Hib conjugate vaccine if client has had allergic reaction or known allergies to any component of the vaccine.' /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'Hib56.1' then "Hib vaccination could be contraindicated. Clinical judgement is required. Create a clinical note." and "Guidance" = 'Do not vaccinate client with Hib conjugate vaccine if client has had allergic reaction or known allergies to any component of the vaccine.' else 'No test case set' end ````: **Id: **
  * ?: IMMZD5DTHibContraindicationsLogic
* * **Content: **text/cql: ````/* * Library: IMMZD5DTHibContraindicationsLogic (IMMZ.D5.DT.Hib contraindications) * Rule: Check for contraindications before administering the vaccine(s) due * Decision Table: IMMZ.D5.DT.Hib contraindications * Trigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications (9) */ library IMMZD5DTHibContraindicationsLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include IMMZD5DTHibEncounterElements called Encounter parameter Today Date default Today() context Patient /* @dynamicValue: Draft Medication Request ID for Hib dose */ define "Draft Medication Request ID for Hib dose": First(Encounter."Draft Medication Request for Hib dose").id /* @dynamicValue: Guidance */ define "Guidance": case when "Hib vaccination could be contraindicated. Clinical judgement is required. Create a clinical note." then "Hib vaccination could be contraindicated. Clinical judgement is required. Create a clinical note. Guidance" else '' end define "Has Guidance": "Guidance" is not null and "Guidance" != '' /* @output: Hib vaccination could be contraindicated. Clinical judgement is required. Create a clinical note. @pseudocode: "Immunization recommendation status" = "Further evaluation needed" */ define "Hib vaccination could be contraindicated. Clinical judgement is required. Create a clinical note.": Encounter."The client has a history of severe allergic reactions" /* @output: Hib vaccination could be contraindicated. Clinical judgement is required. Create a clinical note. Guidance @guidance: Do not vaccinate client with Hib conjugate vaccine if client has had allergic reaction or known allergies to any component of the vaccine. */ define "Hib vaccination could be contraindicated. Clinical judgement is required. Create a clinical note. Guidance": 'Do not vaccinate client with Hib conjugate vaccine if client has had allergic reaction or known allergies to any component of the vaccine.' /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'Hib56.1' then "Hib vaccination could be contraindicated. Clinical judgement is required. Create a clinical note." and "Guidance" = 'Do not vaccinate client with Hib conjugate vaccine if client has had allergic reaction or known allergies to any component of the vaccine.' else 'No test case set' end ````: **Version: **
  * ?: 1.0.0
* * **Content: **text/cql: ````/* * Library: IMMZD5DTHibContraindicationsLogic (IMMZ.D5.DT.Hib contraindications) * Rule: Check for contraindications before administering the vaccine(s) due * Decision Table: IMMZ.D5.DT.Hib contraindications * Trigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications (9) */ library IMMZD5DTHibContraindicationsLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include IMMZD5DTHibEncounterElements called Encounter parameter Today Date default Today() context Patient /* @dynamicValue: Draft Medication Request ID for Hib dose */ define "Draft Medication Request ID for Hib dose": First(Encounter."Draft Medication Request for Hib dose").id /* @dynamicValue: Guidance */ define "Guidance": case when "Hib vaccination could be contraindicated. Clinical judgement is required. Create a clinical note." then "Hib vaccination could be contraindicated. Clinical judgement is required. Create a clinical note. Guidance" else '' end define "Has Guidance": "Guidance" is not null and "Guidance" != '' /* @output: Hib vaccination could be contraindicated. Clinical judgement is required. Create a clinical note. @pseudocode: "Immunization recommendation status" = "Further evaluation needed" */ define "Hib vaccination could be contraindicated. Clinical judgement is required. Create a clinical note.": Encounter."The client has a history of severe allergic reactions" /* @output: Hib vaccination could be contraindicated. Clinical judgement is required. Create a clinical note. Guidance @guidance: Do not vaccinate client with Hib conjugate vaccine if client has had allergic reaction or known allergies to any component of the vaccine. */ define "Hib vaccination could be contraindicated. Clinical judgement is required. Create a clinical note. Guidance": 'Do not vaccinate client with Hib conjugate vaccine if client has had allergic reaction or known allergies to any component of the vaccine.' /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'Hib56.1' then "Hib vaccination could be contraindicated. Clinical judgement is required. Create a clinical note." and "Guidance" = 'Do not vaccinate client with Hib conjugate vaccine if client has had allergic reaction or known allergies to any component of the vaccine.' else 'No test case set' end ````: **Url: **
  * ?: [IMMZD5DTHibContraindicationsLogic](Library-IMMZD5DTHibContraindicationsLogic.md)
* * **Content: **text/cql: ````/* * Library: IMMZD5DTHibContraindicationsLogic (IMMZ.D5.DT.Hib contraindications) * Rule: Check for contraindications before administering the vaccine(s) due * Decision Table: IMMZ.D5.DT.Hib contraindications * Trigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications (9) */ library IMMZD5DTHibContraindicationsLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include IMMZD5DTHibEncounterElements called Encounter parameter Today Date default Today() context Patient /* @dynamicValue: Draft Medication Request ID for Hib dose */ define "Draft Medication Request ID for Hib dose": First(Encounter."Draft Medication Request for Hib dose").id /* @dynamicValue: Guidance */ define "Guidance": case when "Hib vaccination could be contraindicated. Clinical judgement is required. Create a clinical note." then "Hib vaccination could be contraindicated. Clinical judgement is required. Create a clinical note. Guidance" else '' end define "Has Guidance": "Guidance" is not null and "Guidance" != '' /* @output: Hib vaccination could be contraindicated. Clinical judgement is required. Create a clinical note. @pseudocode: "Immunization recommendation status" = "Further evaluation needed" */ define "Hib vaccination could be contraindicated. Clinical judgement is required. Create a clinical note.": Encounter."The client has a history of severe allergic reactions" /* @output: Hib vaccination could be contraindicated. Clinical judgement is required. Create a clinical note. Guidance @guidance: Do not vaccinate client with Hib conjugate vaccine if client has had allergic reaction or known allergies to any component of the vaccine. */ define "Hib vaccination could be contraindicated. Clinical judgement is required. Create a clinical note. Guidance": 'Do not vaccinate client with Hib conjugate vaccine if client has had allergic reaction or known allergies to any component of the vaccine.' /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'Hib56.1' then "Hib vaccination could be contraindicated. Clinical judgement is required. Create a clinical note." and "Guidance" = 'Do not vaccinate client with Hib conjugate vaccine if client has had allergic reaction or known allergies to any component of the vaccine.' else 'No test case set' end ````: **Status: **
  * ?: draft
* * **Content: **text/cql: ````/* * Library: IMMZD5DTHibContraindicationsLogic (IMMZ.D5.DT.Hib contraindications) * Rule: Check for contraindications before administering the vaccine(s) due * Decision Table: IMMZ.D5.DT.Hib contraindications * Trigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications (9) */ library IMMZD5DTHibContraindicationsLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include IMMZD5DTHibEncounterElements called Encounter parameter Today Date default Today() context Patient /* @dynamicValue: Draft Medication Request ID for Hib dose */ define "Draft Medication Request ID for Hib dose": First(Encounter."Draft Medication Request for Hib dose").id /* @dynamicValue: Guidance */ define "Guidance": case when "Hib vaccination could be contraindicated. Clinical judgement is required. Create a clinical note." then "Hib vaccination could be contraindicated. Clinical judgement is required. Create a clinical note. Guidance" else '' end define "Has Guidance": "Guidance" is not null and "Guidance" != '' /* @output: Hib vaccination could be contraindicated. Clinical judgement is required. Create a clinical note. @pseudocode: "Immunization recommendation status" = "Further evaluation needed" */ define "Hib vaccination could be contraindicated. Clinical judgement is required. Create a clinical note.": Encounter."The client has a history of severe allergic reactions" /* @output: Hib vaccination could be contraindicated. Clinical judgement is required. Create a clinical note. Guidance @guidance: Do not vaccinate client with Hib conjugate vaccine if client has had allergic reaction or known allergies to any component of the vaccine. */ define "Hib vaccination could be contraindicated. Clinical judgement is required. Create a clinical note. Guidance": 'Do not vaccinate client with Hib conjugate vaccine if client has had allergic reaction or known allergies to any component of the vaccine.' /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'Hib56.1' then "Hib vaccination could be contraindicated. Clinical judgement is required. Create a clinical note." and "Guidance" = 'Do not vaccinate client with Hib conjugate vaccine if client has had allergic reaction or known allergies to any component of the vaccine.' else 'No test case set' end ````: **Date: **
  * ?: 2026-04-09 13:50:16+0000
* * **Content: **text/cql: ````/* * Library: IMMZD5DTHibContraindicationsLogic (IMMZ.D5.DT.Hib contraindications) * Rule: Check for contraindications before administering the vaccine(s) due * Decision Table: IMMZ.D5.DT.Hib contraindications * Trigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications (9) */ library IMMZD5DTHibContraindicationsLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include IMMZD5DTHibEncounterElements called Encounter parameter Today Date default Today() context Patient /* @dynamicValue: Draft Medication Request ID for Hib dose */ define "Draft Medication Request ID for Hib dose": First(Encounter."Draft Medication Request for Hib dose").id /* @dynamicValue: Guidance */ define "Guidance": case when "Hib vaccination could be contraindicated. Clinical judgement is required. Create a clinical note." then "Hib vaccination could be contraindicated. Clinical judgement is required. Create a clinical note. Guidance" else '' end define "Has Guidance": "Guidance" is not null and "Guidance" != '' /* @output: Hib vaccination could be contraindicated. Clinical judgement is required. Create a clinical note. @pseudocode: "Immunization recommendation status" = "Further evaluation needed" */ define "Hib vaccination could be contraindicated. Clinical judgement is required. Create a clinical note.": Encounter."The client has a history of severe allergic reactions" /* @output: Hib vaccination could be contraindicated. Clinical judgement is required. Create a clinical note. Guidance @guidance: Do not vaccinate client with Hib conjugate vaccine if client has had allergic reaction or known allergies to any component of the vaccine. */ define "Hib vaccination could be contraindicated. Clinical judgement is required. Create a clinical note. Guidance": 'Do not vaccinate client with Hib conjugate vaccine if client has had allergic reaction or known allergies to any component of the vaccine.' /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'Hib56.1' then "Hib vaccination could be contraindicated. Clinical judgement is required. Create a clinical note." and "Guidance" = 'Do not vaccinate client with Hib conjugate vaccine if client has had allergic reaction or known allergies to any component of the vaccine.' else 'No test case set' end ````: **Publisher: **
  * ?: WHO
* * **Content: **text/cql: ````/* * Library: IMMZD5DTHibContraindicationsLogic (IMMZ.D5.DT.Hib contraindications) * Rule: Check for contraindications before administering the vaccine(s) due * Decision Table: IMMZ.D5.DT.Hib contraindications * Trigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications (9) */ library IMMZD5DTHibContraindicationsLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include IMMZD5DTHibEncounterElements called Encounter parameter Today Date default Today() context Patient /* @dynamicValue: Draft Medication Request ID for Hib dose */ define "Draft Medication Request ID for Hib dose": First(Encounter."Draft Medication Request for Hib dose").id /* @dynamicValue: Guidance */ define "Guidance": case when "Hib vaccination could be contraindicated. Clinical judgement is required. Create a clinical note." then "Hib vaccination could be contraindicated. Clinical judgement is required. Create a clinical note. Guidance" else '' end define "Has Guidance": "Guidance" is not null and "Guidance" != '' /* @output: Hib vaccination could be contraindicated. Clinical judgement is required. Create a clinical note. @pseudocode: "Immunization recommendation status" = "Further evaluation needed" */ define "Hib vaccination could be contraindicated. Clinical judgement is required. Create a clinical note.": Encounter."The client has a history of severe allergic reactions" /* @output: Hib vaccination could be contraindicated. Clinical judgement is required. Create a clinical note. Guidance @guidance: Do not vaccinate client with Hib conjugate vaccine if client has had allergic reaction or known allergies to any component of the vaccine. */ define "Hib vaccination could be contraindicated. Clinical judgement is required. Create a clinical note. Guidance": 'Do not vaccinate client with Hib conjugate vaccine if client has had allergic reaction or known allergies to any component of the vaccine.' /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'Hib56.1' then "Hib vaccination could be contraindicated. Clinical judgement is required. Create a clinical note." and "Guidance" = 'Do not vaccinate client with Hib conjugate vaccine if client has had allergic reaction or known allergies to any component of the vaccine.' else 'No test case set' end ````: **Description: **
  * ?: This library defines decision support logic for the IMMZ.D5.DT.Hib contraindications decision table in the Immunization CPG



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "IMMZD5DTHibContraindicationsLogic",
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
  "url" : "http://smart.who.int/immunizations/Library/IMMZD5DTHibContraindicationsLogic",
  "version" : "1.0.0",
  "name" : "IMMZD5DTHibContraindicationsLogic",
  "title" : "IMMZD5DTHibContraindicationsLogic",
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
  "description" : "This library defines decision support logic for the IMMZ.D5.DT.Hib contraindications decision table in the Immunization CPG",
  "relatedArtifact" : [{
    "type" : "depends-on",
    "display" : "Library Encounter",
    "resource" : "http://smart.who.int/immunizations/Library/IMMZD5DTHibEncounterElements"
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
    "name" : "Draft Medication Request ID for Hib dose",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "id"
  },
  {
    "name" : "Hib vaccination could be contraindicated. Clinical judgement is required. Create a clinical note.",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "Hib vaccination could be contraindicated. Clinical judgement is required. Create a clinical note. Guidance",
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
    "data" : "LyoKICogTGlicmFyeTogSU1NWkQ1RFRIaWJDb250cmFpbmRpY2F0aW9uc0xvZ2ljIChJTU1aLkQ1LkRULkhpYiBjb250cmFpbmRpY2F0aW9ucykKICogUnVsZTogQ2hlY2sgZm9yIGNvbnRyYWluZGljYXRpb25zIGJlZm9yZSBhZG1pbmlzdGVyaW5nIHRoZSB2YWNjaW5lKHMpIGR1ZQogKiBEZWNpc2lvbiBUYWJsZTogSU1NWi5ENS5EVC5IaWIgY29udHJhaW5kaWNhdGlvbnMKICogVHJpZ2dlcjogSU1NWi5ENSBEZXRlcm1pbmUgdmFjY2luZShzKSB0byBiZSBhZG1pbmlzdGVyZWQgYmFzZWQgb24gY29udHJhaW5kaWNhdGlvbnMgKDkpCiAqLwpsaWJyYXJ5IElNTVpENURUSGliQ29udHJhaW5kaWNhdGlvbnNMb2dpYwoKdXNpbmcgRkhJUiB2ZXJzaW9uICc0LjAuMScKaW5jbHVkZSBGSElSSGVscGVycyB2ZXJzaW9uICc0LjAuMScKCmluY2x1ZGUgSU1NWkQ1RFRIaWJFbmNvdW50ZXJFbGVtZW50cyBjYWxsZWQgRW5jb3VudGVyCgpwYXJhbWV0ZXIgVG9kYXkgRGF0ZSBkZWZhdWx0IFRvZGF5KCkKCmNvbnRleHQgUGF0aWVudAoKLyoKICBAZHluYW1pY1ZhbHVlOiBEcmFmdCBNZWRpY2F0aW9uIFJlcXVlc3QgSUQgZm9yIEhpYiBkb3NlCiAgKi8KICBkZWZpbmUgIkRyYWZ0IE1lZGljYXRpb24gUmVxdWVzdCBJRCBmb3IgSGliIGRvc2UiOgogICAgRmlyc3QoRW5jb3VudGVyLiJEcmFmdCBNZWRpY2F0aW9uIFJlcXVlc3QgZm9yIEhpYiBkb3NlIikuaWQKCgovKgpAZHluYW1pY1ZhbHVlOiBHdWlkYW5jZQoqLwpkZWZpbmUgIkd1aWRhbmNlIjoKICBjYXNlIAogICAgd2hlbiAiSGliIHZhY2NpbmF0aW9uIGNvdWxkIGJlIGNvbnRyYWluZGljYXRlZC4gQ2xpbmljYWwganVkZ2VtZW50IGlzIHJlcXVpcmVkLiBDcmVhdGUgYSBjbGluaWNhbCBub3RlLiIgdGhlbiAiSGliIHZhY2NpbmF0aW9uIGNvdWxkIGJlIGNvbnRyYWluZGljYXRlZC4gQ2xpbmljYWwganVkZ2VtZW50IGlzIHJlcXVpcmVkLiBDcmVhdGUgYSBjbGluaWNhbCBub3RlLiBHdWlkYW5jZSIgCiAgICBlbHNlICcnCiAgZW5kCiAgCmRlZmluZSAiSGFzIEd1aWRhbmNlIjoKICAiR3VpZGFuY2UiIGlzIG5vdCBudWxsIGFuZCAiR3VpZGFuY2UiICE9ICcnCgovKgpAb3V0cHV0OiBIaWIgdmFjY2luYXRpb24gY291bGQgYmUgY29udHJhaW5kaWNhdGVkLiBDbGluaWNhbCBqdWRnZW1lbnQgaXMgcmVxdWlyZWQuIENyZWF0ZSBhIGNsaW5pY2FsIG5vdGUuCkBwc2V1ZG9jb2RlOiAiSW1tdW5pemF0aW9uIHJlY29tbWVuZGF0aW9uIHN0YXR1cyIgPSAiRnVydGhlciBldmFsdWF0aW9uIG5lZWRlZCIKKi8KZGVmaW5lICJIaWIgdmFjY2luYXRpb24gY291bGQgYmUgY29udHJhaW5kaWNhdGVkLiBDbGluaWNhbCBqdWRnZW1lbnQgaXMgcmVxdWlyZWQuIENyZWF0ZSBhIGNsaW5pY2FsIG5vdGUuIjoKICBFbmNvdW50ZXIuIlRoZSBjbGllbnQgaGFzIGEgaGlzdG9yeSBvZiBzZXZlcmUgYWxsZXJnaWMgcmVhY3Rpb25zIgoKLyoKQG91dHB1dDogSGliIHZhY2NpbmF0aW9uIGNvdWxkIGJlIGNvbnRyYWluZGljYXRlZC4gQ2xpbmljYWwganVkZ2VtZW50IGlzIHJlcXVpcmVkLiBDcmVhdGUgYSBjbGluaWNhbCBub3RlLiBHdWlkYW5jZQpAZ3VpZGFuY2U6IERvIG5vdCB2YWNjaW5hdGUgY2xpZW50IHdpdGggSGliIGNvbmp1Z2F0ZSB2YWNjaW5lIGlmIGNsaWVudCBoYXMgaGFkIGFsbGVyZ2ljIHJlYWN0aW9uIG9yIGtub3duIGFsbGVyZ2llcyB0byBhbnkgY29tcG9uZW50IG9mIHRoZSB2YWNjaW5lLgoqLwpkZWZpbmUgIkhpYiB2YWNjaW5hdGlvbiBjb3VsZCBiZSBjb250cmFpbmRpY2F0ZWQuIENsaW5pY2FsIGp1ZGdlbWVudCBpcyByZXF1aXJlZC4gQ3JlYXRlIGEgY2xpbmljYWwgbm90ZS4gR3VpZGFuY2UiOgogICdEbyBub3QgdmFjY2luYXRlIGNsaWVudCB3aXRoIEhpYiBjb25qdWdhdGUgdmFjY2luZSBpZiBjbGllbnQgaGFzIGhhZCBhbGxlcmdpYyByZWFjdGlvbiBvciBrbm93biBhbGxlcmdpZXMgdG8gYW55IGNvbXBvbmVudCBvZiB0aGUgdmFjY2luZS4nCgoKLyoKQHRlc3Q6IFRlc3QgZXhwZWN0ZWQgcmVzdWx0cyBiYXNlZCBvbiBleGFtcGxlIHBhdGllbnRzCiovCmRlZmluZSAiVGVzdCBWYWxpZGF0aW9uIjoKICBjYXNlCiAgICB3aGVuIFBhdGllbnQuaWQgPSAnSGliNTYuMScgdGhlbiAiSGliIHZhY2NpbmF0aW9uIGNvdWxkIGJlIGNvbnRyYWluZGljYXRlZC4gQ2xpbmljYWwganVkZ2VtZW50IGlzIHJlcXVpcmVkLiBDcmVhdGUgYSBjbGluaWNhbCBub3RlLiIgYW5kICJHdWlkYW5jZSIgPSAnRG8gbm90IHZhY2NpbmF0ZSBjbGllbnQgd2l0aCBIaWIgY29uanVnYXRlIHZhY2NpbmUgaWYgY2xpZW50IGhhcyBoYWQgYWxsZXJnaWMgcmVhY3Rpb24gb3Iga25vd24gYWxsZXJnaWVzIHRvIGFueSBjb21wb25lbnQgb2YgdGhlIHZhY2NpbmUuJwogICAgZWxzZSAnTm8gdGVzdCBjYXNlIHNldCcKICBlbmQK"
  }]
}

```
