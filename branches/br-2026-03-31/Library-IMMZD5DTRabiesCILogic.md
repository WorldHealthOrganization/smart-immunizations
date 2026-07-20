# IMMZD5DTRabiesCILogic - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD5DTRabiesCILogic**

## Library: IMMZD5DTRabiesCILogic (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Library/IMMZD5DTRabiesCILogic | *Version*:0.2.0 |
| Draft as of 2026-03-31 | *Computable Name*:IMMZD5DTRabiesCILogic |

 
This library defines decision support logic for the IMMZ.D5.DT.Rabies contraindications decision table in the Immunization CPG 

* * **Content: **text/cql: ```` /* * Library: IMMZD5DTRabiesCILogic (IMMZ.D5.DT.Rabies contraindications) * Rule: Check for contraindications before administering the vaccine(s) due * Decision Table: Potential contraindications * Trigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications */ library IMMZD5DTRabiesCILogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include IMMZD5DTRabiesEncounterElements called Encounter parameter Today Date default Today() context Patient /* @dynamicValue: Draft Medication Request ID for Rabies dose */ define "Draft Medication Request ID for Rabies dose": First(Encounter."Draft Medication Request for Rabies dose").id /* @dynamicValue: Guidance */ define "Guidance": case when "Clinical judgement is required. Create a clinical note" then "Clinical judgement is required. Create a clinical note Guidance" else '' end define "Has Guidance": "Guidance" is not null and "Guidance" != '' /* @output: Clinical judgement is required. Create a clinical note @pseudocode: "Immunization recommendation status" = "Further evaluation needed" */ define "Clinical judgement is required. Create a clinical note": Encounter."The client has history of severe allergic reactions" /* @output: Clinical judgement is required. Create a clinical note Guidance @guidance: Check if the client has a history of severe hypersensitivity to any of the components or to excipients listed by the vaccine manufacturer. If so, provide an alternative rabies vaccine product for PreP. */ define "Clinical judgement is required. Create a clinical note Guidance": 'Check if the client has a history of severe hypersensitivity to any of the components or to excipients listed by the vaccine manufacturer. If so, provide an alternative rabies vaccine product for PreP.' /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = '17.1' then "Clinical judgement is required. Create a clinical note" and "Guidance" = 'Check if the client has a history of severe hypersensitivity to any of the components or to excipients listed by the vaccine manufacturer. If so, provide an alternative rabies vaccine product for PreP.' else 'No test case set' end ````: **Id: **
  * ?: IMMZD5DTRabiesCILogic
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTRabiesCILogic (IMMZ.D5.DT.Rabies contraindications) * Rule: Check for contraindications before administering the vaccine(s) due * Decision Table: Potential contraindications * Trigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications */ library IMMZD5DTRabiesCILogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include IMMZD5DTRabiesEncounterElements called Encounter parameter Today Date default Today() context Patient /* @dynamicValue: Draft Medication Request ID for Rabies dose */ define "Draft Medication Request ID for Rabies dose": First(Encounter."Draft Medication Request for Rabies dose").id /* @dynamicValue: Guidance */ define "Guidance": case when "Clinical judgement is required. Create a clinical note" then "Clinical judgement is required. Create a clinical note Guidance" else '' end define "Has Guidance": "Guidance" is not null and "Guidance" != '' /* @output: Clinical judgement is required. Create a clinical note @pseudocode: "Immunization recommendation status" = "Further evaluation needed" */ define "Clinical judgement is required. Create a clinical note": Encounter."The client has history of severe allergic reactions" /* @output: Clinical judgement is required. Create a clinical note Guidance @guidance: Check if the client has a history of severe hypersensitivity to any of the components or to excipients listed by the vaccine manufacturer. If so, provide an alternative rabies vaccine product for PreP. */ define "Clinical judgement is required. Create a clinical note Guidance": 'Check if the client has a history of severe hypersensitivity to any of the components or to excipients listed by the vaccine manufacturer. If so, provide an alternative rabies vaccine product for PreP.' /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = '17.1' then "Clinical judgement is required. Create a clinical note" and "Guidance" = 'Check if the client has a history of severe hypersensitivity to any of the components or to excipients listed by the vaccine manufacturer. If so, provide an alternative rabies vaccine product for PreP.' else 'No test case set' end ````: **Version: **
  * ?: 0.2.0
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTRabiesCILogic (IMMZ.D5.DT.Rabies contraindications) * Rule: Check for contraindications before administering the vaccine(s) due * Decision Table: Potential contraindications * Trigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications */ library IMMZD5DTRabiesCILogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include IMMZD5DTRabiesEncounterElements called Encounter parameter Today Date default Today() context Patient /* @dynamicValue: Draft Medication Request ID for Rabies dose */ define "Draft Medication Request ID for Rabies dose": First(Encounter."Draft Medication Request for Rabies dose").id /* @dynamicValue: Guidance */ define "Guidance": case when "Clinical judgement is required. Create a clinical note" then "Clinical judgement is required. Create a clinical note Guidance" else '' end define "Has Guidance": "Guidance" is not null and "Guidance" != '' /* @output: Clinical judgement is required. Create a clinical note @pseudocode: "Immunization recommendation status" = "Further evaluation needed" */ define "Clinical judgement is required. Create a clinical note": Encounter."The client has history of severe allergic reactions" /* @output: Clinical judgement is required. Create a clinical note Guidance @guidance: Check if the client has a history of severe hypersensitivity to any of the components or to excipients listed by the vaccine manufacturer. If so, provide an alternative rabies vaccine product for PreP. */ define "Clinical judgement is required. Create a clinical note Guidance": 'Check if the client has a history of severe hypersensitivity to any of the components or to excipients listed by the vaccine manufacturer. If so, provide an alternative rabies vaccine product for PreP.' /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = '17.1' then "Clinical judgement is required. Create a clinical note" and "Guidance" = 'Check if the client has a history of severe hypersensitivity to any of the components or to excipients listed by the vaccine manufacturer. If so, provide an alternative rabies vaccine product for PreP.' else 'No test case set' end ````: **Url: **
  * ?: [IMMZD5DTRabiesCILogic](Library-IMMZD5DTRabiesCILogic.md)
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTRabiesCILogic (IMMZ.D5.DT.Rabies contraindications) * Rule: Check for contraindications before administering the vaccine(s) due * Decision Table: Potential contraindications * Trigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications */ library IMMZD5DTRabiesCILogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include IMMZD5DTRabiesEncounterElements called Encounter parameter Today Date default Today() context Patient /* @dynamicValue: Draft Medication Request ID for Rabies dose */ define "Draft Medication Request ID for Rabies dose": First(Encounter."Draft Medication Request for Rabies dose").id /* @dynamicValue: Guidance */ define "Guidance": case when "Clinical judgement is required. Create a clinical note" then "Clinical judgement is required. Create a clinical note Guidance" else '' end define "Has Guidance": "Guidance" is not null and "Guidance" != '' /* @output: Clinical judgement is required. Create a clinical note @pseudocode: "Immunization recommendation status" = "Further evaluation needed" */ define "Clinical judgement is required. Create a clinical note": Encounter."The client has history of severe allergic reactions" /* @output: Clinical judgement is required. Create a clinical note Guidance @guidance: Check if the client has a history of severe hypersensitivity to any of the components or to excipients listed by the vaccine manufacturer. If so, provide an alternative rabies vaccine product for PreP. */ define "Clinical judgement is required. Create a clinical note Guidance": 'Check if the client has a history of severe hypersensitivity to any of the components or to excipients listed by the vaccine manufacturer. If so, provide an alternative rabies vaccine product for PreP.' /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = '17.1' then "Clinical judgement is required. Create a clinical note" and "Guidance" = 'Check if the client has a history of severe hypersensitivity to any of the components or to excipients listed by the vaccine manufacturer. If so, provide an alternative rabies vaccine product for PreP.' else 'No test case set' end ````: **Status: **
  * ?: draft
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTRabiesCILogic (IMMZ.D5.DT.Rabies contraindications) * Rule: Check for contraindications before administering the vaccine(s) due * Decision Table: Potential contraindications * Trigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications */ library IMMZD5DTRabiesCILogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include IMMZD5DTRabiesEncounterElements called Encounter parameter Today Date default Today() context Patient /* @dynamicValue: Draft Medication Request ID for Rabies dose */ define "Draft Medication Request ID for Rabies dose": First(Encounter."Draft Medication Request for Rabies dose").id /* @dynamicValue: Guidance */ define "Guidance": case when "Clinical judgement is required. Create a clinical note" then "Clinical judgement is required. Create a clinical note Guidance" else '' end define "Has Guidance": "Guidance" is not null and "Guidance" != '' /* @output: Clinical judgement is required. Create a clinical note @pseudocode: "Immunization recommendation status" = "Further evaluation needed" */ define "Clinical judgement is required. Create a clinical note": Encounter."The client has history of severe allergic reactions" /* @output: Clinical judgement is required. Create a clinical note Guidance @guidance: Check if the client has a history of severe hypersensitivity to any of the components or to excipients listed by the vaccine manufacturer. If so, provide an alternative rabies vaccine product for PreP. */ define "Clinical judgement is required. Create a clinical note Guidance": 'Check if the client has a history of severe hypersensitivity to any of the components or to excipients listed by the vaccine manufacturer. If so, provide an alternative rabies vaccine product for PreP.' /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = '17.1' then "Clinical judgement is required. Create a clinical note" and "Guidance" = 'Check if the client has a history of severe hypersensitivity to any of the components or to excipients listed by the vaccine manufacturer. If so, provide an alternative rabies vaccine product for PreP.' else 'No test case set' end ````: **Experimental: **
  * ?: true
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTRabiesCILogic (IMMZ.D5.DT.Rabies contraindications) * Rule: Check for contraindications before administering the vaccine(s) due * Decision Table: Potential contraindications * Trigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications */ library IMMZD5DTRabiesCILogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include IMMZD5DTRabiesEncounterElements called Encounter parameter Today Date default Today() context Patient /* @dynamicValue: Draft Medication Request ID for Rabies dose */ define "Draft Medication Request ID for Rabies dose": First(Encounter."Draft Medication Request for Rabies dose").id /* @dynamicValue: Guidance */ define "Guidance": case when "Clinical judgement is required. Create a clinical note" then "Clinical judgement is required. Create a clinical note Guidance" else '' end define "Has Guidance": "Guidance" is not null and "Guidance" != '' /* @output: Clinical judgement is required. Create a clinical note @pseudocode: "Immunization recommendation status" = "Further evaluation needed" */ define "Clinical judgement is required. Create a clinical note": Encounter."The client has history of severe allergic reactions" /* @output: Clinical judgement is required. Create a clinical note Guidance @guidance: Check if the client has a history of severe hypersensitivity to any of the components or to excipients listed by the vaccine manufacturer. If so, provide an alternative rabies vaccine product for PreP. */ define "Clinical judgement is required. Create a clinical note Guidance": 'Check if the client has a history of severe hypersensitivity to any of the components or to excipients listed by the vaccine manufacturer. If so, provide an alternative rabies vaccine product for PreP.' /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = '17.1' then "Clinical judgement is required. Create a clinical note" and "Guidance" = 'Check if the client has a history of severe hypersensitivity to any of the components or to excipients listed by the vaccine manufacturer. If so, provide an alternative rabies vaccine product for PreP.' else 'No test case set' end ````: **Date: **
  * ?: 2026-03-31 13:43:43+0000
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTRabiesCILogic (IMMZ.D5.DT.Rabies contraindications) * Rule: Check for contraindications before administering the vaccine(s) due * Decision Table: Potential contraindications * Trigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications */ library IMMZD5DTRabiesCILogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include IMMZD5DTRabiesEncounterElements called Encounter parameter Today Date default Today() context Patient /* @dynamicValue: Draft Medication Request ID for Rabies dose */ define "Draft Medication Request ID for Rabies dose": First(Encounter."Draft Medication Request for Rabies dose").id /* @dynamicValue: Guidance */ define "Guidance": case when "Clinical judgement is required. Create a clinical note" then "Clinical judgement is required. Create a clinical note Guidance" else '' end define "Has Guidance": "Guidance" is not null and "Guidance" != '' /* @output: Clinical judgement is required. Create a clinical note @pseudocode: "Immunization recommendation status" = "Further evaluation needed" */ define "Clinical judgement is required. Create a clinical note": Encounter."The client has history of severe allergic reactions" /* @output: Clinical judgement is required. Create a clinical note Guidance @guidance: Check if the client has a history of severe hypersensitivity to any of the components or to excipients listed by the vaccine manufacturer. If so, provide an alternative rabies vaccine product for PreP. */ define "Clinical judgement is required. Create a clinical note Guidance": 'Check if the client has a history of severe hypersensitivity to any of the components or to excipients listed by the vaccine manufacturer. If so, provide an alternative rabies vaccine product for PreP.' /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = '17.1' then "Clinical judgement is required. Create a clinical note" and "Guidance" = 'Check if the client has a history of severe hypersensitivity to any of the components or to excipients listed by the vaccine manufacturer. If so, provide an alternative rabies vaccine product for PreP.' else 'No test case set' end ````: **Publisher: **
  * ?: WHO
* * **Content: **text/cql: ```` /* * Library: IMMZD5DTRabiesCILogic (IMMZ.D5.DT.Rabies contraindications) * Rule: Check for contraindications before administering the vaccine(s) due * Decision Table: Potential contraindications * Trigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications */ library IMMZD5DTRabiesCILogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include IMMZD5DTRabiesEncounterElements called Encounter parameter Today Date default Today() context Patient /* @dynamicValue: Draft Medication Request ID for Rabies dose */ define "Draft Medication Request ID for Rabies dose": First(Encounter."Draft Medication Request for Rabies dose").id /* @dynamicValue: Guidance */ define "Guidance": case when "Clinical judgement is required. Create a clinical note" then "Clinical judgement is required. Create a clinical note Guidance" else '' end define "Has Guidance": "Guidance" is not null and "Guidance" != '' /* @output: Clinical judgement is required. Create a clinical note @pseudocode: "Immunization recommendation status" = "Further evaluation needed" */ define "Clinical judgement is required. Create a clinical note": Encounter."The client has history of severe allergic reactions" /* @output: Clinical judgement is required. Create a clinical note Guidance @guidance: Check if the client has a history of severe hypersensitivity to any of the components or to excipients listed by the vaccine manufacturer. If so, provide an alternative rabies vaccine product for PreP. */ define "Clinical judgement is required. Create a clinical note Guidance": 'Check if the client has a history of severe hypersensitivity to any of the components or to excipients listed by the vaccine manufacturer. If so, provide an alternative rabies vaccine product for PreP.' /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = '17.1' then "Clinical judgement is required. Create a clinical note" and "Guidance" = 'Check if the client has a history of severe hypersensitivity to any of the components or to excipients listed by the vaccine manufacturer. If so, provide an alternative rabies vaccine product for PreP.' else 'No test case set' end ````: **Description: **
  * ?: This library defines decision support logic for the IMMZ.D5.DT.Rabies contraindications decision table in the Immunization CPG



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "IMMZD5DTRabiesCILogic",
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
  "url" : "http://smart.who.int/immunizations/Library/IMMZD5DTRabiesCILogic",
  "version" : "0.2.0",
  "name" : "IMMZD5DTRabiesCILogic",
  "title" : "IMMZD5DTRabiesCILogic",
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
    "data" : "Ci8qCiAqIExpYnJhcnk6IElNTVpENURUUmFiaWVzQ0lMb2dpYyAoSU1NWi5ENS5EVC5SYWJpZXMgY29udHJhaW5kaWNhdGlvbnMpCiAqIFJ1bGU6IENoZWNrIGZvciBjb250cmFpbmRpY2F0aW9ucyBiZWZvcmUgYWRtaW5pc3RlcmluZyB0aGUgdmFjY2luZShzKSBkdWUJCiAqIERlY2lzaW9uIFRhYmxlOiBQb3RlbnRpYWwgY29udHJhaW5kaWNhdGlvbnMKICogVHJpZ2dlcjogSU1NWi5ENSBEZXRlcm1pbmUgdmFjY2luZShzKSB0byBiZSBhZG1pbmlzdGVyZWQgYmFzZWQgb24gY29udHJhaW5kaWNhdGlvbnMKICovCmxpYnJhcnkgSU1NWkQ1RFRSYWJpZXNDSUxvZ2ljCgp1c2luZyBGSElSIHZlcnNpb24gJzQuMC4xJwppbmNsdWRlIEZISVJIZWxwZXJzIHZlcnNpb24gJzQuMC4xJwoKaW5jbHVkZSBJTU1aRDVEVFJhYmllc0VuY291bnRlckVsZW1lbnRzIGNhbGxlZCBFbmNvdW50ZXIKCnBhcmFtZXRlciBUb2RheSBEYXRlIGRlZmF1bHQgVG9kYXkoKQoKY29udGV4dCBQYXRpZW50CgovKgogIEBkeW5hbWljVmFsdWU6IERyYWZ0IE1lZGljYXRpb24gUmVxdWVzdCBJRCBmb3IgUmFiaWVzIGRvc2UKICAqLwogIGRlZmluZSAiRHJhZnQgTWVkaWNhdGlvbiBSZXF1ZXN0IElEIGZvciBSYWJpZXMgZG9zZSI6CiAgICBGaXJzdChFbmNvdW50ZXIuIkRyYWZ0IE1lZGljYXRpb24gUmVxdWVzdCBmb3IgUmFiaWVzIGRvc2UiKS5pZAoKCi8qCkBkeW5hbWljVmFsdWU6IEd1aWRhbmNlCiovCmRlZmluZSAiR3VpZGFuY2UiOgogIGNhc2UKICAgIHdoZW4gIkNsaW5pY2FsIGp1ZGdlbWVudCBpcyByZXF1aXJlZC4gQ3JlYXRlIGEgY2xpbmljYWwgbm90ZSIgdGhlbiAiQ2xpbmljYWwganVkZ2VtZW50IGlzIHJlcXVpcmVkLiBDcmVhdGUgYSBjbGluaWNhbCBub3RlIEd1aWRhbmNlIgogICAgZWxzZSAnJwogIGVuZAoKZGVmaW5lICJIYXMgR3VpZGFuY2UiOgogICJHdWlkYW5jZSIgaXMgbm90IG51bGwgYW5kICJHdWlkYW5jZSIgIT0gJycKCi8qCkBvdXRwdXQ6IENsaW5pY2FsIGp1ZGdlbWVudCBpcyByZXF1aXJlZC4gQ3JlYXRlIGEgY2xpbmljYWwgbm90ZQpAcHNldWRvY29kZTogIkltbXVuaXphdGlvbiByZWNvbW1lbmRhdGlvbiBzdGF0dXMiID0gIkZ1cnRoZXIgZXZhbHVhdGlvbiBuZWVkZWQiCiovCmRlZmluZSAiQ2xpbmljYWwganVkZ2VtZW50IGlzIHJlcXVpcmVkLiBDcmVhdGUgYSBjbGluaWNhbCBub3RlIjoKICBFbmNvdW50ZXIuIlRoZSBjbGllbnQgaGFzIGhpc3Rvcnkgb2Ygc2V2ZXJlIGFsbGVyZ2ljIHJlYWN0aW9ucyIKCi8qCkBvdXRwdXQ6IENsaW5pY2FsIGp1ZGdlbWVudCBpcyByZXF1aXJlZC4gQ3JlYXRlIGEgY2xpbmljYWwgbm90ZSBHdWlkYW5jZQpAZ3VpZGFuY2U6IENoZWNrIGlmIHRoZSBjbGllbnQgaGFzIGEgaGlzdG9yeSBvZiBzZXZlcmUgaHlwZXJzZW5zaXRpdml0eSB0byBhbnkgb2YgdGhlIGNvbXBvbmVudHMgb3IgdG8gZXhjaXBpZW50cyBsaXN0ZWQgYnkgdGhlIHZhY2NpbmUgbWFudWZhY3R1cmVyLiBJZiBzbywgcHJvdmlkZSBhbiBhbHRlcm5hdGl2ZSByYWJpZXMgdmFjY2luZSBwcm9kdWN0IGZvciBQcmVQLgoqLwpkZWZpbmUgIkNsaW5pY2FsIGp1ZGdlbWVudCBpcyByZXF1aXJlZC4gQ3JlYXRlIGEgY2xpbmljYWwgbm90ZSBHdWlkYW5jZSI6CiAgJ0NoZWNrIGlmIHRoZSBjbGllbnQgaGFzIGEgaGlzdG9yeSBvZiBzZXZlcmUgaHlwZXJzZW5zaXRpdml0eSB0byBhbnkgb2YgdGhlIGNvbXBvbmVudHMgb3IgdG8gZXhjaXBpZW50cyBsaXN0ZWQgYnkgdGhlIHZhY2NpbmUgbWFudWZhY3R1cmVyLiBJZiBzbywgcHJvdmlkZSBhbiBhbHRlcm5hdGl2ZSByYWJpZXMgdmFjY2luZSBwcm9kdWN0IGZvciBQcmVQLicKCgovKgpAdGVzdDogVGVzdCBleHBlY3RlZCByZXN1bHRzIGJhc2VkIG9uIGV4YW1wbGUgcGF0aWVudHMKKi8KZGVmaW5lICJUZXN0IFZhbGlkYXRpb24iOgogIGNhc2UKICAgIHdoZW4gUGF0aWVudC5pZCA9ICcxNy4xJyB0aGVuICJDbGluaWNhbCBqdWRnZW1lbnQgaXMgcmVxdWlyZWQuIENyZWF0ZSBhIGNsaW5pY2FsIG5vdGUiIGFuZCAiR3VpZGFuY2UiID0gJ0NoZWNrIGlmIHRoZSBjbGllbnQgaGFzIGEgaGlzdG9yeSBvZiBzZXZlcmUgaHlwZXJzZW5zaXRpdml0eSB0byBhbnkgb2YgdGhlIGNvbXBvbmVudHMgb3IgdG8gZXhjaXBpZW50cyBsaXN0ZWQgYnkgdGhlIHZhY2NpbmUgbWFudWZhY3R1cmVyLiBJZiBzbywgcHJvdmlkZSBhbiBhbHRlcm5hdGl2ZSByYWJpZXMgdmFjY2luZSBwcm9kdWN0IGZvciBQcmVQLicKICAgIGVsc2UgJ05vIHRlc3QgY2FzZSBzZXQnCiAgZW5kCg=="
  }]
}

```
