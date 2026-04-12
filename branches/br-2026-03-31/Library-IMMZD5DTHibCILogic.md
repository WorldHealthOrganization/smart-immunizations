# IMMZD5DTHibCILogic - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD5DTHibCILogic**

## Library: IMMZD5DTHibCILogic (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Library/IMMZD5DTHibCILogic | *Version*:0.2.0 |
| Draft as of 2026-03-31 | *Computable Name*:IMMZD5DTHibCILogic |

 
This library defines decision support logic for the IMMZ.D5.DT.Hib contraindications decision table in the Immunization CPG 

* * **Content: **text/cql: ```` /* * Library: IMMZD5DTHibCILogic (IMMZ.D5.DT.Hib contraindications) * Rule: Check for contraindications before administering the vaccine(s) due * Decision Table: Potential contraindications * Trigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications (9) */ library IMMZD5DTHibCILogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include IMMZD5DTHibEncounterElements called Encounter parameter Today Date default Today() context Patient /* @dynamicValue: Guidance */ define "Guidance": case when "Hib vaccination could be contraindicated. Clinical judgement is required. Create a clinical note." then "Hib vaccination could be contraindicated. Clinical judgement is required. Create a clinical note. Guidance" else '' end define "Has Guidance": "Guidance" is not null and "Guidance" != '' /* @output: Hib vaccination could be contraindicated. Clinical judgement is required. Create a clinical note. @pseudocode: "Immunization recommendation status" = "Further evaluation needed" */ define "Hib vaccination could be contraindicated. Clinical judgement is required. Create a clinical note.": Encounter."The client has a history of severe allergic reactions" /* @output: Hib vaccination could be contraindicated. Clinical judgement is required. Create a clinical note. Guidance @guidance: Do not vaccinate client with Hib conjugate vaccine if client has had allergic reaction or known allergies to any component of the vaccine. */ define "Hib vaccination could be contraindicated. Clinical judgement is required. Create a clinical note. Guidance": 'Do not vaccinate client with Hib conjugate vaccine if client has had allergic reaction or known allergies to any component of the vaccine.' /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = '56.CI167' then "Hib vaccination could be contraindicated. Clinical judgement is required. Create a clinical note." and "Guidance" = 'Do not vaccinate client with Hib conjugate vaccine if client has had allergic reaction or known allergies to any component of the vaccine.' else 'No test case set' end ````: **Id: **
  * ?: IMMZD5DTHibCILogic
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTHibCILogic (IMMZ.D5.DT.Hib contraindications) * Rule: Check for contraindications before administering the vaccine(s) due * Decision Table: Potential contraindications * Trigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications (9) */ library IMMZD5DTHibCILogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include IMMZD5DTHibEncounterElements called Encounter parameter Today Date default Today() context Patient /* @dynamicValue: Guidance */ define "Guidance": case when "Hib vaccination could be contraindicated. Clinical judgement is required. Create a clinical note." then "Hib vaccination could be contraindicated. Clinical judgement is required. Create a clinical note. Guidance" else '' end define "Has Guidance": "Guidance" is not null and "Guidance" != '' /* @output: Hib vaccination could be contraindicated. Clinical judgement is required. Create a clinical note. @pseudocode: "Immunization recommendation status" = "Further evaluation needed" */ define "Hib vaccination could be contraindicated. Clinical judgement is required. Create a clinical note.": Encounter."The client has a history of severe allergic reactions" /* @output: Hib vaccination could be contraindicated. Clinical judgement is required. Create a clinical note. Guidance @guidance: Do not vaccinate client with Hib conjugate vaccine if client has had allergic reaction or known allergies to any component of the vaccine. */ define "Hib vaccination could be contraindicated. Clinical judgement is required. Create a clinical note. Guidance": 'Do not vaccinate client with Hib conjugate vaccine if client has had allergic reaction or known allergies to any component of the vaccine.' /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = '56.CI167' then "Hib vaccination could be contraindicated. Clinical judgement is required. Create a clinical note." and "Guidance" = 'Do not vaccinate client with Hib conjugate vaccine if client has had allergic reaction or known allergies to any component of the vaccine.' else 'No test case set' end ````: **Version: **
  * ?: 0.2.0
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTHibCILogic (IMMZ.D5.DT.Hib contraindications) * Rule: Check for contraindications before administering the vaccine(s) due * Decision Table: Potential contraindications * Trigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications (9) */ library IMMZD5DTHibCILogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include IMMZD5DTHibEncounterElements called Encounter parameter Today Date default Today() context Patient /* @dynamicValue: Guidance */ define "Guidance": case when "Hib vaccination could be contraindicated. Clinical judgement is required. Create a clinical note." then "Hib vaccination could be contraindicated. Clinical judgement is required. Create a clinical note. Guidance" else '' end define "Has Guidance": "Guidance" is not null and "Guidance" != '' /* @output: Hib vaccination could be contraindicated. Clinical judgement is required. Create a clinical note. @pseudocode: "Immunization recommendation status" = "Further evaluation needed" */ define "Hib vaccination could be contraindicated. Clinical judgement is required. Create a clinical note.": Encounter."The client has a history of severe allergic reactions" /* @output: Hib vaccination could be contraindicated. Clinical judgement is required. Create a clinical note. Guidance @guidance: Do not vaccinate client with Hib conjugate vaccine if client has had allergic reaction or known allergies to any component of the vaccine. */ define "Hib vaccination could be contraindicated. Clinical judgement is required. Create a clinical note. Guidance": 'Do not vaccinate client with Hib conjugate vaccine if client has had allergic reaction or known allergies to any component of the vaccine.' /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = '56.CI167' then "Hib vaccination could be contraindicated. Clinical judgement is required. Create a clinical note." and "Guidance" = 'Do not vaccinate client with Hib conjugate vaccine if client has had allergic reaction or known allergies to any component of the vaccine.' else 'No test case set' end ````: **Url: **
  * ?: [IMMZD5DTHibCILogic](Library-IMMZD5DTHibCILogic.md)
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTHibCILogic (IMMZ.D5.DT.Hib contraindications) * Rule: Check for contraindications before administering the vaccine(s) due * Decision Table: Potential contraindications * Trigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications (9) */ library IMMZD5DTHibCILogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include IMMZD5DTHibEncounterElements called Encounter parameter Today Date default Today() context Patient /* @dynamicValue: Guidance */ define "Guidance": case when "Hib vaccination could be contraindicated. Clinical judgement is required. Create a clinical note." then "Hib vaccination could be contraindicated. Clinical judgement is required. Create a clinical note. Guidance" else '' end define "Has Guidance": "Guidance" is not null and "Guidance" != '' /* @output: Hib vaccination could be contraindicated. Clinical judgement is required. Create a clinical note. @pseudocode: "Immunization recommendation status" = "Further evaluation needed" */ define "Hib vaccination could be contraindicated. Clinical judgement is required. Create a clinical note.": Encounter."The client has a history of severe allergic reactions" /* @output: Hib vaccination could be contraindicated. Clinical judgement is required. Create a clinical note. Guidance @guidance: Do not vaccinate client with Hib conjugate vaccine if client has had allergic reaction or known allergies to any component of the vaccine. */ define "Hib vaccination could be contraindicated. Clinical judgement is required. Create a clinical note. Guidance": 'Do not vaccinate client with Hib conjugate vaccine if client has had allergic reaction or known allergies to any component of the vaccine.' /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = '56.CI167' then "Hib vaccination could be contraindicated. Clinical judgement is required. Create a clinical note." and "Guidance" = 'Do not vaccinate client with Hib conjugate vaccine if client has had allergic reaction or known allergies to any component of the vaccine.' else 'No test case set' end ````: **Status: **
  * ?: draft
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTHibCILogic (IMMZ.D5.DT.Hib contraindications) * Rule: Check for contraindications before administering the vaccine(s) due * Decision Table: Potential contraindications * Trigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications (9) */ library IMMZD5DTHibCILogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include IMMZD5DTHibEncounterElements called Encounter parameter Today Date default Today() context Patient /* @dynamicValue: Guidance */ define "Guidance": case when "Hib vaccination could be contraindicated. Clinical judgement is required. Create a clinical note." then "Hib vaccination could be contraindicated. Clinical judgement is required. Create a clinical note. Guidance" else '' end define "Has Guidance": "Guidance" is not null and "Guidance" != '' /* @output: Hib vaccination could be contraindicated. Clinical judgement is required. Create a clinical note. @pseudocode: "Immunization recommendation status" = "Further evaluation needed" */ define "Hib vaccination could be contraindicated. Clinical judgement is required. Create a clinical note.": Encounter."The client has a history of severe allergic reactions" /* @output: Hib vaccination could be contraindicated. Clinical judgement is required. Create a clinical note. Guidance @guidance: Do not vaccinate client with Hib conjugate vaccine if client has had allergic reaction or known allergies to any component of the vaccine. */ define "Hib vaccination could be contraindicated. Clinical judgement is required. Create a clinical note. Guidance": 'Do not vaccinate client with Hib conjugate vaccine if client has had allergic reaction or known allergies to any component of the vaccine.' /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = '56.CI167' then "Hib vaccination could be contraindicated. Clinical judgement is required. Create a clinical note." and "Guidance" = 'Do not vaccinate client with Hib conjugate vaccine if client has had allergic reaction or known allergies to any component of the vaccine.' else 'No test case set' end ````: **Experimental: **
  * ?: true
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTHibCILogic (IMMZ.D5.DT.Hib contraindications) * Rule: Check for contraindications before administering the vaccine(s) due * Decision Table: Potential contraindications * Trigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications (9) */ library IMMZD5DTHibCILogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include IMMZD5DTHibEncounterElements called Encounter parameter Today Date default Today() context Patient /* @dynamicValue: Guidance */ define "Guidance": case when "Hib vaccination could be contraindicated. Clinical judgement is required. Create a clinical note." then "Hib vaccination could be contraindicated. Clinical judgement is required. Create a clinical note. Guidance" else '' end define "Has Guidance": "Guidance" is not null and "Guidance" != '' /* @output: Hib vaccination could be contraindicated. Clinical judgement is required. Create a clinical note. @pseudocode: "Immunization recommendation status" = "Further evaluation needed" */ define "Hib vaccination could be contraindicated. Clinical judgement is required. Create a clinical note.": Encounter."The client has a history of severe allergic reactions" /* @output: Hib vaccination could be contraindicated. Clinical judgement is required. Create a clinical note. Guidance @guidance: Do not vaccinate client with Hib conjugate vaccine if client has had allergic reaction or known allergies to any component of the vaccine. */ define "Hib vaccination could be contraindicated. Clinical judgement is required. Create a clinical note. Guidance": 'Do not vaccinate client with Hib conjugate vaccine if client has had allergic reaction or known allergies to any component of the vaccine.' /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = '56.CI167' then "Hib vaccination could be contraindicated. Clinical judgement is required. Create a clinical note." and "Guidance" = 'Do not vaccinate client with Hib conjugate vaccine if client has had allergic reaction or known allergies to any component of the vaccine.' else 'No test case set' end ````: **Date: **
  * ?: 2026-03-31 13:43:43+0000
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTHibCILogic (IMMZ.D5.DT.Hib contraindications) * Rule: Check for contraindications before administering the vaccine(s) due * Decision Table: Potential contraindications * Trigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications (9) */ library IMMZD5DTHibCILogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include IMMZD5DTHibEncounterElements called Encounter parameter Today Date default Today() context Patient /* @dynamicValue: Guidance */ define "Guidance": case when "Hib vaccination could be contraindicated. Clinical judgement is required. Create a clinical note." then "Hib vaccination could be contraindicated. Clinical judgement is required. Create a clinical note. Guidance" else '' end define "Has Guidance": "Guidance" is not null and "Guidance" != '' /* @output: Hib vaccination could be contraindicated. Clinical judgement is required. Create a clinical note. @pseudocode: "Immunization recommendation status" = "Further evaluation needed" */ define "Hib vaccination could be contraindicated. Clinical judgement is required. Create a clinical note.": Encounter."The client has a history of severe allergic reactions" /* @output: Hib vaccination could be contraindicated. Clinical judgement is required. Create a clinical note. Guidance @guidance: Do not vaccinate client with Hib conjugate vaccine if client has had allergic reaction or known allergies to any component of the vaccine. */ define "Hib vaccination could be contraindicated. Clinical judgement is required. Create a clinical note. Guidance": 'Do not vaccinate client with Hib conjugate vaccine if client has had allergic reaction or known allergies to any component of the vaccine.' /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = '56.CI167' then "Hib vaccination could be contraindicated. Clinical judgement is required. Create a clinical note." and "Guidance" = 'Do not vaccinate client with Hib conjugate vaccine if client has had allergic reaction or known allergies to any component of the vaccine.' else 'No test case set' end ````: **Publisher: **
  * ?: WHO
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTHibCILogic (IMMZ.D5.DT.Hib contraindications) * Rule: Check for contraindications before administering the vaccine(s) due * Decision Table: Potential contraindications * Trigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications (9) */ library IMMZD5DTHibCILogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include IMMZD5DTHibEncounterElements called Encounter parameter Today Date default Today() context Patient /* @dynamicValue: Guidance */ define "Guidance": case when "Hib vaccination could be contraindicated. Clinical judgement is required. Create a clinical note." then "Hib vaccination could be contraindicated. Clinical judgement is required. Create a clinical note. Guidance" else '' end define "Has Guidance": "Guidance" is not null and "Guidance" != '' /* @output: Hib vaccination could be contraindicated. Clinical judgement is required. Create a clinical note. @pseudocode: "Immunization recommendation status" = "Further evaluation needed" */ define "Hib vaccination could be contraindicated. Clinical judgement is required. Create a clinical note.": Encounter."The client has a history of severe allergic reactions" /* @output: Hib vaccination could be contraindicated. Clinical judgement is required. Create a clinical note. Guidance @guidance: Do not vaccinate client with Hib conjugate vaccine if client has had allergic reaction or known allergies to any component of the vaccine. */ define "Hib vaccination could be contraindicated. Clinical judgement is required. Create a clinical note. Guidance": 'Do not vaccinate client with Hib conjugate vaccine if client has had allergic reaction or known allergies to any component of the vaccine.' /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = '56.CI167' then "Hib vaccination could be contraindicated. Clinical judgement is required. Create a clinical note." and "Guidance" = 'Do not vaccinate client with Hib conjugate vaccine if client has had allergic reaction or known allergies to any component of the vaccine.' else 'No test case set' end ````: **Description: **
  * ?: This library defines decision support logic for the IMMZ.D5.DT.Hib contraindications decision table in the Immunization CPG



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "IMMZD5DTHibCILogic",
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
  "url" : "http://smart.who.int/immunizations/Library/IMMZD5DTHibCILogic",
  "version" : "0.2.0",
  "name" : "IMMZD5DTHibCILogic",
  "title" : "IMMZD5DTHibCILogic",
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
    "data" : "Ci8qCiAqIExpYnJhcnk6IElNTVpENURUSGliQ0lMb2dpYyAoSU1NWi5ENS5EVC5IaWIgY29udHJhaW5kaWNhdGlvbnMpCiAqIFJ1bGU6IENoZWNrIGZvciBjb250cmFpbmRpY2F0aW9ucyBiZWZvcmUgYWRtaW5pc3RlcmluZyB0aGUgdmFjY2luZShzKSBkdWUJCiAqIERlY2lzaW9uIFRhYmxlOiBQb3RlbnRpYWwgY29udHJhaW5kaWNhdGlvbnMKICogVHJpZ2dlcjogSU1NWi5ENSBEZXRlcm1pbmUgdmFjY2luZShzKSB0byBiZSBhZG1pbmlzdGVyZWQgYmFzZWQgb24gY29udHJhaW5kaWNhdGlvbnMgKDkpCiAqLwpsaWJyYXJ5IElNTVpENURUSGliQ0lMb2dpYwoKdXNpbmcgRkhJUiB2ZXJzaW9uICc0LjAuMScKaW5jbHVkZSBGSElSSGVscGVycyB2ZXJzaW9uICc0LjAuMScKCmluY2x1ZGUgSU1NWkQ1RFRIaWJFbmNvdW50ZXJFbGVtZW50cyBjYWxsZWQgRW5jb3VudGVyCgpwYXJhbWV0ZXIgVG9kYXkgRGF0ZSBkZWZhdWx0IFRvZGF5KCkKCmNvbnRleHQgUGF0aWVudAoKCi8qCkBkeW5hbWljVmFsdWU6IEd1aWRhbmNlCiovCmRlZmluZSAiR3VpZGFuY2UiOgogIGNhc2UKICAgIHdoZW4gIkhpYiB2YWNjaW5hdGlvbiBjb3VsZCBiZSBjb250cmFpbmRpY2F0ZWQuIENsaW5pY2FsIGp1ZGdlbWVudCBpcyByZXF1aXJlZC4gQ3JlYXRlIGEgY2xpbmljYWwgbm90ZS4iIHRoZW4gIkhpYiB2YWNjaW5hdGlvbiBjb3VsZCBiZSBjb250cmFpbmRpY2F0ZWQuIENsaW5pY2FsIGp1ZGdlbWVudCBpcyByZXF1aXJlZC4gQ3JlYXRlIGEgY2xpbmljYWwgbm90ZS4gR3VpZGFuY2UiCiAgICBlbHNlICcnCiAgZW5kCgpkZWZpbmUgIkhhcyBHdWlkYW5jZSI6CiAgIkd1aWRhbmNlIiBpcyBub3QgbnVsbCBhbmQgIkd1aWRhbmNlIiAhPSAnJwoKLyoKQG91dHB1dDogSGliIHZhY2NpbmF0aW9uIGNvdWxkIGJlIGNvbnRyYWluZGljYXRlZC4gQ2xpbmljYWwganVkZ2VtZW50IGlzIHJlcXVpcmVkLiBDcmVhdGUgYSBjbGluaWNhbCBub3RlLgpAcHNldWRvY29kZTogIkltbXVuaXphdGlvbiByZWNvbW1lbmRhdGlvbiBzdGF0dXMiID0gIkZ1cnRoZXIgZXZhbHVhdGlvbiBuZWVkZWQiCiovCmRlZmluZSAiSGliIHZhY2NpbmF0aW9uIGNvdWxkIGJlIGNvbnRyYWluZGljYXRlZC4gQ2xpbmljYWwganVkZ2VtZW50IGlzIHJlcXVpcmVkLiBDcmVhdGUgYSBjbGluaWNhbCBub3RlLiI6CiAgRW5jb3VudGVyLiJUaGUgY2xpZW50IGhhcyBhIGhpc3Rvcnkgb2Ygc2V2ZXJlIGFsbGVyZ2ljIHJlYWN0aW9ucyIKCi8qCkBvdXRwdXQ6IEhpYiB2YWNjaW5hdGlvbiBjb3VsZCBiZSBjb250cmFpbmRpY2F0ZWQuIENsaW5pY2FsIGp1ZGdlbWVudCBpcyByZXF1aXJlZC4gQ3JlYXRlIGEgY2xpbmljYWwgbm90ZS4gR3VpZGFuY2UKQGd1aWRhbmNlOiBEbyBub3QgdmFjY2luYXRlIGNsaWVudCB3aXRoIEhpYiBjb25qdWdhdGUgdmFjY2luZSBpZiBjbGllbnQgaGFzIGhhZCBhbGxlcmdpYyByZWFjdGlvbiBvciBrbm93biBhbGxlcmdpZXMgdG8gYW55IGNvbXBvbmVudCBvZiB0aGUgdmFjY2luZS4KKi8KZGVmaW5lICJIaWIgdmFjY2luYXRpb24gY291bGQgYmUgY29udHJhaW5kaWNhdGVkLiBDbGluaWNhbCBqdWRnZW1lbnQgaXMgcmVxdWlyZWQuIENyZWF0ZSBhIGNsaW5pY2FsIG5vdGUuIEd1aWRhbmNlIjoKICAnRG8gbm90IHZhY2NpbmF0ZSBjbGllbnQgd2l0aCBIaWIgY29uanVnYXRlIHZhY2NpbmUgaWYgY2xpZW50IGhhcyBoYWQgYWxsZXJnaWMgcmVhY3Rpb24gb3Iga25vd24gYWxsZXJnaWVzIHRvIGFueSBjb21wb25lbnQgb2YgdGhlIHZhY2NpbmUuJwoKCi8qCkB0ZXN0OiBUZXN0IGV4cGVjdGVkIHJlc3VsdHMgYmFzZWQgb24gZXhhbXBsZSBwYXRpZW50cwoqLwpkZWZpbmUgIlRlc3QgVmFsaWRhdGlvbiI6CiAgY2FzZQogICAgd2hlbiBQYXRpZW50LmlkID0gJzU2LkNJMTY3JyB0aGVuICJIaWIgdmFjY2luYXRpb24gY291bGQgYmUgY29udHJhaW5kaWNhdGVkLiBDbGluaWNhbCBqdWRnZW1lbnQgaXMgcmVxdWlyZWQuIENyZWF0ZSBhIGNsaW5pY2FsIG5vdGUuIiBhbmQgIkd1aWRhbmNlIiA9ICdEbyBub3QgdmFjY2luYXRlIGNsaWVudCB3aXRoIEhpYiBjb25qdWdhdGUgdmFjY2luZSBpZiBjbGllbnQgaGFzIGhhZCBhbGxlcmdpYyByZWFjdGlvbiBvciBrbm93biBhbGxlcmdpZXMgdG8gYW55IGNvbXBvbmVudCBvZiB0aGUgdmFjY2luZS4nCiAgICBlbHNlICdObyB0ZXN0IGNhc2Ugc2V0JwogIGVuZAo="
  }]
}

```
