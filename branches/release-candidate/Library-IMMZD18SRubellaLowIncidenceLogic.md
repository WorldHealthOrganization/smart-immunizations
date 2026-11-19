# IMMZD18SRubellaLowIncidenceLogic - WHO Immunization Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD18SRubellaLowIncidenceLogic**

## Library: IMMZD18SRubellaLowIncidenceLogic 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Library/IMMZD18SRubellaLowIncidenceLogic | *Version*:1.0.0 |
| Draft as of 2026-04-09 | *Computable Name*:IMMZD18SRubellaLowIncidenceLogic |

 
This library defines decision support logic for the IMMZ.D18.S.Rubella.Low incidence schedule table in the Immunization CPG 

* * **Content: **text/cql: ````/* * Library: IMMZD18SRubellaLowIncidenceLogic (IMMZ.D18.S.Rubella.Low incidence schedule) * Schedule Table: Schedule for countries with low incidence of rubella */ library IMMZD18SRubellaLowIncidenceLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTRubellaEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Rubella dose 1 @description: Provision of the rubella dose 1 @trigger: Child's birth @pseudo: @triggerDate: "Date of birth" */ define "Rubella dose 1": Encounter."No rubella primary series dose was administered" and not "One rubella dose from the primary series was administered. The primary series has been completed" /* @output: Rubella dose 1 Create @create: Rubella dose 1 should be provided if the client's age is at least 12 months */ define "Rubella dose 1 Create": if "Rubella dose 1" then 'Rubella dose 1 should be provided if the client\'s age is at least 12 months' + ' Due Date: ' + ToString("Rubella dose 1 Due Date") else '' /* @dynamicValue: Rubella dose 1 Due Date @pseudocode: "Date of birth" + 12 months */ define "Rubella dose 1 Due Date": if "Rubella dose 1" then Patient.birthDate + 12 months else null /* @dynamicValue: Rubella dose 1 Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "Rubella dose 1 Overdue": null /* @dynamicValue: Rubella dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Rubella dose 1 Expiration": null /* @complete: One rubella dose from the primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Rubella-containing vaccines") */ define "One rubella dose from the primary series was administered. The primary series has been completed": Encounter."One rubella primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'Rubella19.1' then "Rubella dose 1" when Patient.id = 'Rubella20.3' then "Rubella dose 1" when Patient.id = 'Rubella21.3' then "Rubella dose 1" when Patient.id = 'Rubella22.1' then "One rubella dose from the primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Id: **
  * ?: IMMZD18SRubellaLowIncidenceLogic
* * **Content: **text/cql: ````/* * Library: IMMZD18SRubellaLowIncidenceLogic (IMMZ.D18.S.Rubella.Low incidence schedule) * Schedule Table: Schedule for countries with low incidence of rubella */ library IMMZD18SRubellaLowIncidenceLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTRubellaEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Rubella dose 1 @description: Provision of the rubella dose 1 @trigger: Child's birth @pseudo: @triggerDate: "Date of birth" */ define "Rubella dose 1": Encounter."No rubella primary series dose was administered" and not "One rubella dose from the primary series was administered. The primary series has been completed" /* @output: Rubella dose 1 Create @create: Rubella dose 1 should be provided if the client's age is at least 12 months */ define "Rubella dose 1 Create": if "Rubella dose 1" then 'Rubella dose 1 should be provided if the client\'s age is at least 12 months' + ' Due Date: ' + ToString("Rubella dose 1 Due Date") else '' /* @dynamicValue: Rubella dose 1 Due Date @pseudocode: "Date of birth" + 12 months */ define "Rubella dose 1 Due Date": if "Rubella dose 1" then Patient.birthDate + 12 months else null /* @dynamicValue: Rubella dose 1 Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "Rubella dose 1 Overdue": null /* @dynamicValue: Rubella dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Rubella dose 1 Expiration": null /* @complete: One rubella dose from the primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Rubella-containing vaccines") */ define "One rubella dose from the primary series was administered. The primary series has been completed": Encounter."One rubella primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'Rubella19.1' then "Rubella dose 1" when Patient.id = 'Rubella20.3' then "Rubella dose 1" when Patient.id = 'Rubella21.3' then "Rubella dose 1" when Patient.id = 'Rubella22.1' then "One rubella dose from the primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Version: **
  * ?: 1.0.0
* * **Content: **text/cql: ````/* * Library: IMMZD18SRubellaLowIncidenceLogic (IMMZ.D18.S.Rubella.Low incidence schedule) * Schedule Table: Schedule for countries with low incidence of rubella */ library IMMZD18SRubellaLowIncidenceLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTRubellaEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Rubella dose 1 @description: Provision of the rubella dose 1 @trigger: Child's birth @pseudo: @triggerDate: "Date of birth" */ define "Rubella dose 1": Encounter."No rubella primary series dose was administered" and not "One rubella dose from the primary series was administered. The primary series has been completed" /* @output: Rubella dose 1 Create @create: Rubella dose 1 should be provided if the client's age is at least 12 months */ define "Rubella dose 1 Create": if "Rubella dose 1" then 'Rubella dose 1 should be provided if the client\'s age is at least 12 months' + ' Due Date: ' + ToString("Rubella dose 1 Due Date") else '' /* @dynamicValue: Rubella dose 1 Due Date @pseudocode: "Date of birth" + 12 months */ define "Rubella dose 1 Due Date": if "Rubella dose 1" then Patient.birthDate + 12 months else null /* @dynamicValue: Rubella dose 1 Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "Rubella dose 1 Overdue": null /* @dynamicValue: Rubella dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Rubella dose 1 Expiration": null /* @complete: One rubella dose from the primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Rubella-containing vaccines") */ define "One rubella dose from the primary series was administered. The primary series has been completed": Encounter."One rubella primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'Rubella19.1' then "Rubella dose 1" when Patient.id = 'Rubella20.3' then "Rubella dose 1" when Patient.id = 'Rubella21.3' then "Rubella dose 1" when Patient.id = 'Rubella22.1' then "One rubella dose from the primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Url: **
  * ?: [IMMZD18SRubellaLowIncidenceLogic](Library-IMMZD18SRubellaLowIncidenceLogic.md)
* * **Content: **text/cql: ````/* * Library: IMMZD18SRubellaLowIncidenceLogic (IMMZ.D18.S.Rubella.Low incidence schedule) * Schedule Table: Schedule for countries with low incidence of rubella */ library IMMZD18SRubellaLowIncidenceLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTRubellaEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Rubella dose 1 @description: Provision of the rubella dose 1 @trigger: Child's birth @pseudo: @triggerDate: "Date of birth" */ define "Rubella dose 1": Encounter."No rubella primary series dose was administered" and not "One rubella dose from the primary series was administered. The primary series has been completed" /* @output: Rubella dose 1 Create @create: Rubella dose 1 should be provided if the client's age is at least 12 months */ define "Rubella dose 1 Create": if "Rubella dose 1" then 'Rubella dose 1 should be provided if the client\'s age is at least 12 months' + ' Due Date: ' + ToString("Rubella dose 1 Due Date") else '' /* @dynamicValue: Rubella dose 1 Due Date @pseudocode: "Date of birth" + 12 months */ define "Rubella dose 1 Due Date": if "Rubella dose 1" then Patient.birthDate + 12 months else null /* @dynamicValue: Rubella dose 1 Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "Rubella dose 1 Overdue": null /* @dynamicValue: Rubella dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Rubella dose 1 Expiration": null /* @complete: One rubella dose from the primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Rubella-containing vaccines") */ define "One rubella dose from the primary series was administered. The primary series has been completed": Encounter."One rubella primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'Rubella19.1' then "Rubella dose 1" when Patient.id = 'Rubella20.3' then "Rubella dose 1" when Patient.id = 'Rubella21.3' then "Rubella dose 1" when Patient.id = 'Rubella22.1' then "One rubella dose from the primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Status: **
  * ?: draft
* * **Content: **text/cql: ````/* * Library: IMMZD18SRubellaLowIncidenceLogic (IMMZ.D18.S.Rubella.Low incidence schedule) * Schedule Table: Schedule for countries with low incidence of rubella */ library IMMZD18SRubellaLowIncidenceLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTRubellaEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Rubella dose 1 @description: Provision of the rubella dose 1 @trigger: Child's birth @pseudo: @triggerDate: "Date of birth" */ define "Rubella dose 1": Encounter."No rubella primary series dose was administered" and not "One rubella dose from the primary series was administered. The primary series has been completed" /* @output: Rubella dose 1 Create @create: Rubella dose 1 should be provided if the client's age is at least 12 months */ define "Rubella dose 1 Create": if "Rubella dose 1" then 'Rubella dose 1 should be provided if the client\'s age is at least 12 months' + ' Due Date: ' + ToString("Rubella dose 1 Due Date") else '' /* @dynamicValue: Rubella dose 1 Due Date @pseudocode: "Date of birth" + 12 months */ define "Rubella dose 1 Due Date": if "Rubella dose 1" then Patient.birthDate + 12 months else null /* @dynamicValue: Rubella dose 1 Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "Rubella dose 1 Overdue": null /* @dynamicValue: Rubella dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Rubella dose 1 Expiration": null /* @complete: One rubella dose from the primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Rubella-containing vaccines") */ define "One rubella dose from the primary series was administered. The primary series has been completed": Encounter."One rubella primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'Rubella19.1' then "Rubella dose 1" when Patient.id = 'Rubella20.3' then "Rubella dose 1" when Patient.id = 'Rubella21.3' then "Rubella dose 1" when Patient.id = 'Rubella22.1' then "One rubella dose from the primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Date: **
  * ?: 2026-04-09 13:50:16+0000
* * **Content: **text/cql: ````/* * Library: IMMZD18SRubellaLowIncidenceLogic (IMMZ.D18.S.Rubella.Low incidence schedule) * Schedule Table: Schedule for countries with low incidence of rubella */ library IMMZD18SRubellaLowIncidenceLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTRubellaEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Rubella dose 1 @description: Provision of the rubella dose 1 @trigger: Child's birth @pseudo: @triggerDate: "Date of birth" */ define "Rubella dose 1": Encounter."No rubella primary series dose was administered" and not "One rubella dose from the primary series was administered. The primary series has been completed" /* @output: Rubella dose 1 Create @create: Rubella dose 1 should be provided if the client's age is at least 12 months */ define "Rubella dose 1 Create": if "Rubella dose 1" then 'Rubella dose 1 should be provided if the client\'s age is at least 12 months' + ' Due Date: ' + ToString("Rubella dose 1 Due Date") else '' /* @dynamicValue: Rubella dose 1 Due Date @pseudocode: "Date of birth" + 12 months */ define "Rubella dose 1 Due Date": if "Rubella dose 1" then Patient.birthDate + 12 months else null /* @dynamicValue: Rubella dose 1 Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "Rubella dose 1 Overdue": null /* @dynamicValue: Rubella dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Rubella dose 1 Expiration": null /* @complete: One rubella dose from the primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Rubella-containing vaccines") */ define "One rubella dose from the primary series was administered. The primary series has been completed": Encounter."One rubella primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'Rubella19.1' then "Rubella dose 1" when Patient.id = 'Rubella20.3' then "Rubella dose 1" when Patient.id = 'Rubella21.3' then "Rubella dose 1" when Patient.id = 'Rubella22.1' then "One rubella dose from the primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Publisher: **
  * ?: WHO
* * **Content: **text/cql: ````/* * Library: IMMZD18SRubellaLowIncidenceLogic (IMMZ.D18.S.Rubella.Low incidence schedule) * Schedule Table: Schedule for countries with low incidence of rubella */ library IMMZD18SRubellaLowIncidenceLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTRubellaEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Rubella dose 1 @description: Provision of the rubella dose 1 @trigger: Child's birth @pseudo: @triggerDate: "Date of birth" */ define "Rubella dose 1": Encounter."No rubella primary series dose was administered" and not "One rubella dose from the primary series was administered. The primary series has been completed" /* @output: Rubella dose 1 Create @create: Rubella dose 1 should be provided if the client's age is at least 12 months */ define "Rubella dose 1 Create": if "Rubella dose 1" then 'Rubella dose 1 should be provided if the client\'s age is at least 12 months' + ' Due Date: ' + ToString("Rubella dose 1 Due Date") else '' /* @dynamicValue: Rubella dose 1 Due Date @pseudocode: "Date of birth" + 12 months */ define "Rubella dose 1 Due Date": if "Rubella dose 1" then Patient.birthDate + 12 months else null /* @dynamicValue: Rubella dose 1 Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "Rubella dose 1 Overdue": null /* @dynamicValue: Rubella dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Rubella dose 1 Expiration": null /* @complete: One rubella dose from the primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Rubella-containing vaccines") */ define "One rubella dose from the primary series was administered. The primary series has been completed": Encounter."One rubella primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'Rubella19.1' then "Rubella dose 1" when Patient.id = 'Rubella20.3' then "Rubella dose 1" when Patient.id = 'Rubella21.3' then "Rubella dose 1" when Patient.id = 'Rubella22.1' then "One rubella dose from the primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Description: **
  * ?: This library defines decision support logic for the IMMZ.D18.S.Rubella.Low incidence schedule table in the Immunization CPG



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "IMMZD18SRubellaLowIncidenceLogic",
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
  "url" : "http://smart.who.int/immunizations/Library/IMMZD18SRubellaLowIncidenceLogic",
  "version" : "1.0.0",
  "name" : "IMMZD18SRubellaLowIncidenceLogic",
  "title" : "IMMZD18SRubellaLowIncidenceLogic",
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
  "description" : "This library defines decision support logic for the IMMZ.D18.S.Rubella.Low incidence schedule table in the Immunization CPG",
  "relatedArtifact" : [{
    "type" : "depends-on",
    "display" : "Library WC",
    "resource" : "http://smart.who.int/immunizations/Library/WHOCommon"
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
    "display" : "Library IE",
    "resource" : "http://smart.who.int/immunizations/Library/IMMZEncounterElements"
  },
  {
    "type" : "depends-on",
    "display" : "Library Encounter",
    "resource" : "http://smart.who.int/immunizations/Library/IMMZD2DTRubellaEncounterElements"
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
    "name" : "One rubella dose from the primary series was administered. The primary series has been completed",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "Rubella dose 1",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "Rubella dose 1 Due Date",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "date"
  },
  {
    "name" : "Rubella dose 1 Create",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "string"
  },
  {
    "name" : "Rubella dose 1 Overdue",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "Resource"
  },
  {
    "name" : "Rubella dose 1 Expiration",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "Resource"
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
    "data" : "LyoKICogTGlicmFyeTogSU1NWkQxOFNSdWJlbGxhTG93SW5jaWRlbmNlTG9naWMgKElNTVouRDE4LlMuUnViZWxsYS5Mb3cgaW5jaWRlbmNlIHNjaGVkdWxlKQogKiBTY2hlZHVsZSBUYWJsZTogU2NoZWR1bGUgZm9yIGNvdW50cmllcyB3aXRoIGxvdyBpbmNpZGVuY2Ugb2YgcnViZWxsYQogKi8KbGlicmFyeSBJTU1aRDE4U1J1YmVsbGFMb3dJbmNpZGVuY2VMb2dpYwoKdXNpbmcgRkhJUiB2ZXJzaW9uICc0LjAuMScKaW5jbHVkZSBGSElSSGVscGVycyB2ZXJzaW9uICc0LjAuMScKCmluY2x1ZGUgV0hPQ29tbW9uIGNhbGxlZCBXQwoKaW5jbHVkZSBJTU1aQ29tbW9uIGNhbGxlZCBDb21tb24KaW5jbHVkZSBJTU1aQ29uY2VwdHMgY2FsbGVkIENvbmNlcHRzCgppbmNsdWRlIElNTVpFbmNvdW50ZXJFbGVtZW50cyBjYWxsZWQgSUUKaW5jbHVkZSBJTU1aRDJEVFJ1YmVsbGFFbmNvdW50ZXJFbGVtZW50cyBjYWxsZWQgRW5jb3VudGVyCgpwYXJhbWV0ZXIgVG9kYXkgRGF0ZSBkZWZhdWx0IFRvZGF5KCkKCgpjb250ZXh0IFBhdGllbnQKCgovKgpAb3V0cHV0OiBSdWJlbGxhIGRvc2UgMQpAZGVzY3JpcHRpb246IFByb3Zpc2lvbiBvZiB0aGUgcnViZWxsYSBkb3NlIDEKQHRyaWdnZXI6IENoaWxkJ3MgYmlydGgKQHBzZXVkbzogCkB0cmlnZ2VyRGF0ZTogIkRhdGUgb2YgYmlydGgiCiovCmRlZmluZSAiUnViZWxsYSBkb3NlIDEiOgogIEVuY291bnRlci4iTm8gcnViZWxsYSBwcmltYXJ5IHNlcmllcyBkb3NlIHdhcyBhZG1pbmlzdGVyZWQiCiAgYW5kIG5vdCAiT25lIHJ1YmVsbGEgZG9zZSBmcm9tIHRoZSBwcmltYXJ5IHNlcmllcyB3YXMgYWRtaW5pc3RlcmVkLiBUaGUgcHJpbWFyeSBzZXJpZXMgaGFzIGJlZW4gY29tcGxldGVkIgoKCi8qCkBvdXRwdXQ6IFJ1YmVsbGEgZG9zZSAxIENyZWF0ZQpAY3JlYXRlOiBSdWJlbGxhIGRvc2UgMSBzaG91bGQgYmUgcHJvdmlkZWQgaWYgdGhlIGNsaWVudCdzIGFnZSBpcyBhdCBsZWFzdCAxMiBtb250aHMKKi8KZGVmaW5lICJSdWJlbGxhIGRvc2UgMSBDcmVhdGUiOgogIGlmICJSdWJlbGxhIGRvc2UgMSIKICB0aGVuICdSdWJlbGxhIGRvc2UgMSBzaG91bGQgYmUgcHJvdmlkZWQgaWYgdGhlIGNsaWVudFwncyBhZ2UgaXMgYXQgbGVhc3QgMTIgbW9udGhzJyArICcKRHVlIERhdGU6ICcgKyBUb1N0cmluZygiUnViZWxsYSBkb3NlIDEgRHVlIERhdGUiKQogIGVsc2UgJycKCgovKgpAZHluYW1pY1ZhbHVlOiBSdWJlbGxhIGRvc2UgMSBEdWUgRGF0ZQpAcHNldWRvY29kZTogIkRhdGUgb2YgYmlydGgiICsgMTIgbW9udGhzCiovCmRlZmluZSAiUnViZWxsYSBkb3NlIDEgRHVlIERhdGUiOgogIGlmICJSdWJlbGxhIGRvc2UgMSIgdGhlbiBQYXRpZW50LmJpcnRoRGF0ZSArIDEyIG1vbnRocwogIGVsc2UgbnVsbAoKCi8qCkBkeW5hbWljVmFsdWU6IFJ1YmVsbGEgZG9zZSAxIE92ZXJkdWUKQHBzZXVkb2NvZGU6IFRvIGJlIGRldGVybWluZWQgYnkgTWVtYmVyIFN0YXRlczsgaG93ZXZlciwgdGhlcmUgaXMgbm8gcmVjb21tZW5kZWQgb3ZlcmR1ZSBkYXRlIGFuZCBpbmRpdmlkdWFscyBhcmUgYWx3YXlzIGVsaWdpYmxlIHRvIGJlIHZhY2NpbmF0ZWQuCiovCmRlZmluZSAiUnViZWxsYSBkb3NlIDEgT3ZlcmR1ZSI6CiAgbnVsbAoKCi8qCkBkeW5hbWljVmFsdWU6IFJ1YmVsbGEgZG9zZSAxIEV4cGlyYXRpb24KQHBzZXVkb2NvZGU6IFRvIGJlIGRldGVybWluZWQgYnkgTWVtYmVyIFN0YXRlczsgaG93ZXZlciwgdGhlcmUgaXMgbm8gcmVjb21tZW5kZWQgZXhwaXJhdGlvbiBkYXRlIGFuZCBpbmRpdmlkdWFscyBhcmUgYWx3YXlzIGVsaWdpYmxlIHRvIGJlIHZhY2NpbmF0ZWQuCiovCmRlZmluZSAiUnViZWxsYSBkb3NlIDEgRXhwaXJhdGlvbiI6CiAgbnVsbAoKICAKLyoKQGNvbXBsZXRlOiBPbmUgcnViZWxsYSBkb3NlIGZyb20gdGhlIHByaW1hcnkgc2VyaWVzIHdhcyBhZG1pbmlzdGVyZWQuIFRoZSBwcmltYXJ5IHNlcmllcyBoYXMgYmVlbiBjb21wbGV0ZWQKQHBzZXVkb2NvZGU6ICJDb21wbGV0ZWQgdGhlIHByaW1hcnkgdmFjY2luYXRpb24gc2VyaWVzIiA9IFRSVUUgKHdoZXJlICJWYWNjaW5lIHR5cGUiID0gIlJ1YmVsbGEtY29udGFpbmluZyB2YWNjaW5lcyIpCiovCmRlZmluZSAiT25lIHJ1YmVsbGEgZG9zZSBmcm9tIHRoZSBwcmltYXJ5IHNlcmllcyB3YXMgYWRtaW5pc3RlcmVkLiBUaGUgcHJpbWFyeSBzZXJpZXMgaGFzIGJlZW4gY29tcGxldGVkIjoKICBFbmNvdW50ZXIuIk9uZSBydWJlbGxhIHByaW1hcnkgc2VyaWVzIGRvc2Ugd2FzIGFkbWluaXN0ZXJlZCIKCgoKLyoKQHRlc3Q6IFRlc3QgZXhwZWN0ZWQgcmVzdWx0cyBiYXNlZCBvbiBleGFtcGxlIHBhdGllbnRzCiovCmRlZmluZSAiVGVzdCBWYWxpZGF0aW9uIjoKICBjYXNlCiAgICB3aGVuIFBhdGllbnQuaWQgPSAnUnViZWxsYTE5LjEnIHRoZW4gIlJ1YmVsbGEgZG9zZSAxIgogICAgd2hlbiBQYXRpZW50LmlkID0gJ1J1YmVsbGEyMC4zJyB0aGVuICJSdWJlbGxhIGRvc2UgMSIKICAgIHdoZW4gUGF0aWVudC5pZCA9ICdSdWJlbGxhMjEuMycgdGhlbiAiUnViZWxsYSBkb3NlIDEiCiAgICB3aGVuIFBhdGllbnQuaWQgPSAnUnViZWxsYTIyLjEnIHRoZW4gIk9uZSBydWJlbGxhIGRvc2UgZnJvbSB0aGUgcHJpbWFyeSBzZXJpZXMgd2FzIGFkbWluaXN0ZXJlZC4gVGhlIHByaW1hcnkgc2VyaWVzIGhhcyBiZWVuIGNvbXBsZXRlZCIKICAgIGVsc2UgJ05vIHRlc3QgY2FzZSBzZXQnCiAgZW5kCg=="
  }]
}

```
