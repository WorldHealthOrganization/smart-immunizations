# IMMZD18SRubellaHighIncidenceLogic - WHO Immunization Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD18SRubellaHighIncidenceLogic**

## Library: IMMZD18SRubellaHighIncidenceLogic 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Library/IMMZD18SRubellaHighIncidenceLogic | *Version*:1.0.0 |
| Draft as of 2026-04-09 | *Computable Name*:IMMZD18SRubellaHighIncidenceLogic |

 
This library defines decision support logic for the IMMZ.D18.S.Rubella.High incidence schedule table in the Immunization CPG 

* * **Content: **text/cql: ````/* * Library: IMMZD18SRubellaHighIncidenceLogic (IMMZ.D18.S.Rubella.High incidence schedule) * Schedule Table: Schedule for countries with high incidence and mortality from rubella */ library IMMZD18SRubellaHighIncidenceLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTRubellaEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Rubella dose 1 @description: Provision of the rubella dose 1 @trigger: Child's birth @pseudo: @triggerDate: "Date of birth" */ define "Rubella dose 1": Encounter."No rubella primary series dose was administered" and not "One rubella dose from the primary series was administered. The primary series has been completed" /* @output: Rubella dose 1 Create @create: Rubella dose 1 should be provided if the client's age is at least 9 months */ define "Rubella dose 1 Create": if "Rubella dose 1" then 'Rubella dose 1 should be provided if the client\'s age is at least 9 months' + ' Due Date: ' + ToString("Rubella dose 1 Due Date") else '' /* @dynamicValue: Rubella dose 1 Due Date @pseudocode: "Date of birth" + 9 months */ define "Rubella dose 1 Due Date": if "Rubella dose 1" then Patient.birthDate + 9 months else null /* @dynamicValue: Rubella dose 1 Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "Rubella dose 1 Overdue": null /* @dynamicValue: Rubella dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Rubella dose 1 Expiration": null /* @complete: One rubella dose from the primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Rubella–containing vaccines") */ define "One rubella dose from the primary series was administered. The primary series has been completed": Encounter."One rubella primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'Rubella08.1' then "Rubella dose 1" when Patient.id = 'Rubella09.3' then "Rubella dose 1" when Patient.id = 'Rubella10.3' then "Rubella dose 1" when Patient.id = 'Rubella11.1' then "One rubella dose from the primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Id: **
  * ?: IMMZD18SRubellaHighIncidenceLogic
* * **Content: **text/cql: ````/* * Library: IMMZD18SRubellaHighIncidenceLogic (IMMZ.D18.S.Rubella.High incidence schedule) * Schedule Table: Schedule for countries with high incidence and mortality from rubella */ library IMMZD18SRubellaHighIncidenceLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTRubellaEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Rubella dose 1 @description: Provision of the rubella dose 1 @trigger: Child's birth @pseudo: @triggerDate: "Date of birth" */ define "Rubella dose 1": Encounter."No rubella primary series dose was administered" and not "One rubella dose from the primary series was administered. The primary series has been completed" /* @output: Rubella dose 1 Create @create: Rubella dose 1 should be provided if the client's age is at least 9 months */ define "Rubella dose 1 Create": if "Rubella dose 1" then 'Rubella dose 1 should be provided if the client\'s age is at least 9 months' + ' Due Date: ' + ToString("Rubella dose 1 Due Date") else '' /* @dynamicValue: Rubella dose 1 Due Date @pseudocode: "Date of birth" + 9 months */ define "Rubella dose 1 Due Date": if "Rubella dose 1" then Patient.birthDate + 9 months else null /* @dynamicValue: Rubella dose 1 Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "Rubella dose 1 Overdue": null /* @dynamicValue: Rubella dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Rubella dose 1 Expiration": null /* @complete: One rubella dose from the primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Rubella–containing vaccines") */ define "One rubella dose from the primary series was administered. The primary series has been completed": Encounter."One rubella primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'Rubella08.1' then "Rubella dose 1" when Patient.id = 'Rubella09.3' then "Rubella dose 1" when Patient.id = 'Rubella10.3' then "Rubella dose 1" when Patient.id = 'Rubella11.1' then "One rubella dose from the primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Version: **
  * ?: 1.0.0
* * **Content: **text/cql: ````/* * Library: IMMZD18SRubellaHighIncidenceLogic (IMMZ.D18.S.Rubella.High incidence schedule) * Schedule Table: Schedule for countries with high incidence and mortality from rubella */ library IMMZD18SRubellaHighIncidenceLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTRubellaEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Rubella dose 1 @description: Provision of the rubella dose 1 @trigger: Child's birth @pseudo: @triggerDate: "Date of birth" */ define "Rubella dose 1": Encounter."No rubella primary series dose was administered" and not "One rubella dose from the primary series was administered. The primary series has been completed" /* @output: Rubella dose 1 Create @create: Rubella dose 1 should be provided if the client's age is at least 9 months */ define "Rubella dose 1 Create": if "Rubella dose 1" then 'Rubella dose 1 should be provided if the client\'s age is at least 9 months' + ' Due Date: ' + ToString("Rubella dose 1 Due Date") else '' /* @dynamicValue: Rubella dose 1 Due Date @pseudocode: "Date of birth" + 9 months */ define "Rubella dose 1 Due Date": if "Rubella dose 1" then Patient.birthDate + 9 months else null /* @dynamicValue: Rubella dose 1 Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "Rubella dose 1 Overdue": null /* @dynamicValue: Rubella dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Rubella dose 1 Expiration": null /* @complete: One rubella dose from the primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Rubella–containing vaccines") */ define "One rubella dose from the primary series was administered. The primary series has been completed": Encounter."One rubella primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'Rubella08.1' then "Rubella dose 1" when Patient.id = 'Rubella09.3' then "Rubella dose 1" when Patient.id = 'Rubella10.3' then "Rubella dose 1" when Patient.id = 'Rubella11.1' then "One rubella dose from the primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Url: **
  * ?: [IMMZD18SRubellaHighIncidenceLogic](Library-IMMZD18SRubellaHighIncidenceLogic.md)
* * **Content: **text/cql: ````/* * Library: IMMZD18SRubellaHighIncidenceLogic (IMMZ.D18.S.Rubella.High incidence schedule) * Schedule Table: Schedule for countries with high incidence and mortality from rubella */ library IMMZD18SRubellaHighIncidenceLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTRubellaEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Rubella dose 1 @description: Provision of the rubella dose 1 @trigger: Child's birth @pseudo: @triggerDate: "Date of birth" */ define "Rubella dose 1": Encounter."No rubella primary series dose was administered" and not "One rubella dose from the primary series was administered. The primary series has been completed" /* @output: Rubella dose 1 Create @create: Rubella dose 1 should be provided if the client's age is at least 9 months */ define "Rubella dose 1 Create": if "Rubella dose 1" then 'Rubella dose 1 should be provided if the client\'s age is at least 9 months' + ' Due Date: ' + ToString("Rubella dose 1 Due Date") else '' /* @dynamicValue: Rubella dose 1 Due Date @pseudocode: "Date of birth" + 9 months */ define "Rubella dose 1 Due Date": if "Rubella dose 1" then Patient.birthDate + 9 months else null /* @dynamicValue: Rubella dose 1 Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "Rubella dose 1 Overdue": null /* @dynamicValue: Rubella dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Rubella dose 1 Expiration": null /* @complete: One rubella dose from the primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Rubella–containing vaccines") */ define "One rubella dose from the primary series was administered. The primary series has been completed": Encounter."One rubella primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'Rubella08.1' then "Rubella dose 1" when Patient.id = 'Rubella09.3' then "Rubella dose 1" when Patient.id = 'Rubella10.3' then "Rubella dose 1" when Patient.id = 'Rubella11.1' then "One rubella dose from the primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Status: **
  * ?: draft
* * **Content: **text/cql: ````/* * Library: IMMZD18SRubellaHighIncidenceLogic (IMMZ.D18.S.Rubella.High incidence schedule) * Schedule Table: Schedule for countries with high incidence and mortality from rubella */ library IMMZD18SRubellaHighIncidenceLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTRubellaEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Rubella dose 1 @description: Provision of the rubella dose 1 @trigger: Child's birth @pseudo: @triggerDate: "Date of birth" */ define "Rubella dose 1": Encounter."No rubella primary series dose was administered" and not "One rubella dose from the primary series was administered. The primary series has been completed" /* @output: Rubella dose 1 Create @create: Rubella dose 1 should be provided if the client's age is at least 9 months */ define "Rubella dose 1 Create": if "Rubella dose 1" then 'Rubella dose 1 should be provided if the client\'s age is at least 9 months' + ' Due Date: ' + ToString("Rubella dose 1 Due Date") else '' /* @dynamicValue: Rubella dose 1 Due Date @pseudocode: "Date of birth" + 9 months */ define "Rubella dose 1 Due Date": if "Rubella dose 1" then Patient.birthDate + 9 months else null /* @dynamicValue: Rubella dose 1 Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "Rubella dose 1 Overdue": null /* @dynamicValue: Rubella dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Rubella dose 1 Expiration": null /* @complete: One rubella dose from the primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Rubella–containing vaccines") */ define "One rubella dose from the primary series was administered. The primary series has been completed": Encounter."One rubella primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'Rubella08.1' then "Rubella dose 1" when Patient.id = 'Rubella09.3' then "Rubella dose 1" when Patient.id = 'Rubella10.3' then "Rubella dose 1" when Patient.id = 'Rubella11.1' then "One rubella dose from the primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Date: **
  * ?: 2026-04-09 14:34:42+0000
* * **Content: **text/cql: ````/* * Library: IMMZD18SRubellaHighIncidenceLogic (IMMZ.D18.S.Rubella.High incidence schedule) * Schedule Table: Schedule for countries with high incidence and mortality from rubella */ library IMMZD18SRubellaHighIncidenceLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTRubellaEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Rubella dose 1 @description: Provision of the rubella dose 1 @trigger: Child's birth @pseudo: @triggerDate: "Date of birth" */ define "Rubella dose 1": Encounter."No rubella primary series dose was administered" and not "One rubella dose from the primary series was administered. The primary series has been completed" /* @output: Rubella dose 1 Create @create: Rubella dose 1 should be provided if the client's age is at least 9 months */ define "Rubella dose 1 Create": if "Rubella dose 1" then 'Rubella dose 1 should be provided if the client\'s age is at least 9 months' + ' Due Date: ' + ToString("Rubella dose 1 Due Date") else '' /* @dynamicValue: Rubella dose 1 Due Date @pseudocode: "Date of birth" + 9 months */ define "Rubella dose 1 Due Date": if "Rubella dose 1" then Patient.birthDate + 9 months else null /* @dynamicValue: Rubella dose 1 Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "Rubella dose 1 Overdue": null /* @dynamicValue: Rubella dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Rubella dose 1 Expiration": null /* @complete: One rubella dose from the primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Rubella–containing vaccines") */ define "One rubella dose from the primary series was administered. The primary series has been completed": Encounter."One rubella primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'Rubella08.1' then "Rubella dose 1" when Patient.id = 'Rubella09.3' then "Rubella dose 1" when Patient.id = 'Rubella10.3' then "Rubella dose 1" when Patient.id = 'Rubella11.1' then "One rubella dose from the primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Publisher: **
  * ?: WHO
* * **Content: **text/cql: ````/* * Library: IMMZD18SRubellaHighIncidenceLogic (IMMZ.D18.S.Rubella.High incidence schedule) * Schedule Table: Schedule for countries with high incidence and mortality from rubella */ library IMMZD18SRubellaHighIncidenceLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTRubellaEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Rubella dose 1 @description: Provision of the rubella dose 1 @trigger: Child's birth @pseudo: @triggerDate: "Date of birth" */ define "Rubella dose 1": Encounter."No rubella primary series dose was administered" and not "One rubella dose from the primary series was administered. The primary series has been completed" /* @output: Rubella dose 1 Create @create: Rubella dose 1 should be provided if the client's age is at least 9 months */ define "Rubella dose 1 Create": if "Rubella dose 1" then 'Rubella dose 1 should be provided if the client\'s age is at least 9 months' + ' Due Date: ' + ToString("Rubella dose 1 Due Date") else '' /* @dynamicValue: Rubella dose 1 Due Date @pseudocode: "Date of birth" + 9 months */ define "Rubella dose 1 Due Date": if "Rubella dose 1" then Patient.birthDate + 9 months else null /* @dynamicValue: Rubella dose 1 Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "Rubella dose 1 Overdue": null /* @dynamicValue: Rubella dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Rubella dose 1 Expiration": null /* @complete: One rubella dose from the primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Rubella–containing vaccines") */ define "One rubella dose from the primary series was administered. The primary series has been completed": Encounter."One rubella primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'Rubella08.1' then "Rubella dose 1" when Patient.id = 'Rubella09.3' then "Rubella dose 1" when Patient.id = 'Rubella10.3' then "Rubella dose 1" when Patient.id = 'Rubella11.1' then "One rubella dose from the primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Description: **
  * ?: This library defines decision support logic for the IMMZ.D18.S.Rubella.High incidence schedule table in the Immunization CPG



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "IMMZD18SRubellaHighIncidenceLogic",
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
  "url" : "http://smart.who.int/immunizations/Library/IMMZD18SRubellaHighIncidenceLogic",
  "version" : "1.0.0",
  "name" : "IMMZD18SRubellaHighIncidenceLogic",
  "title" : "IMMZD18SRubellaHighIncidenceLogic",
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
  "description" : "This library defines decision support logic for the IMMZ.D18.S.Rubella.High incidence schedule table in the Immunization CPG",
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
    "data" : "LyoKICogTGlicmFyeTogSU1NWkQxOFNSdWJlbGxhSGlnaEluY2lkZW5jZUxvZ2ljIChJTU1aLkQxOC5TLlJ1YmVsbGEuSGlnaCBpbmNpZGVuY2Ugc2NoZWR1bGUpCiAqIFNjaGVkdWxlIFRhYmxlOiBTY2hlZHVsZSBmb3IgY291bnRyaWVzIHdpdGggaGlnaCBpbmNpZGVuY2UgYW5kIG1vcnRhbGl0eSBmcm9tIHJ1YmVsbGEKICovCmxpYnJhcnkgSU1NWkQxOFNSdWJlbGxhSGlnaEluY2lkZW5jZUxvZ2ljCgp1c2luZyBGSElSIHZlcnNpb24gJzQuMC4xJwppbmNsdWRlIEZISVJIZWxwZXJzIHZlcnNpb24gJzQuMC4xJwoKaW5jbHVkZSBXSE9Db21tb24gY2FsbGVkIFdDCgppbmNsdWRlIElNTVpDb21tb24gY2FsbGVkIENvbW1vbgppbmNsdWRlIElNTVpDb25jZXB0cyBjYWxsZWQgQ29uY2VwdHMKCmluY2x1ZGUgSU1NWkVuY291bnRlckVsZW1lbnRzIGNhbGxlZCBJRQppbmNsdWRlIElNTVpEMkRUUnViZWxsYUVuY291bnRlckVsZW1lbnRzIGNhbGxlZCBFbmNvdW50ZXIKCnBhcmFtZXRlciBUb2RheSBEYXRlIGRlZmF1bHQgVG9kYXkoKQoKCmNvbnRleHQgUGF0aWVudAoKCi8qCkBvdXRwdXQ6IFJ1YmVsbGEgZG9zZSAxCkBkZXNjcmlwdGlvbjogUHJvdmlzaW9uIG9mIHRoZSBydWJlbGxhIGRvc2UgMQpAdHJpZ2dlcjogQ2hpbGQncyBiaXJ0aApAcHNldWRvOiAKQHRyaWdnZXJEYXRlOiAiRGF0ZSBvZiBiaXJ0aCIKKi8KZGVmaW5lICJSdWJlbGxhIGRvc2UgMSI6CiAgRW5jb3VudGVyLiJObyBydWJlbGxhIHByaW1hcnkgc2VyaWVzIGRvc2Ugd2FzIGFkbWluaXN0ZXJlZCIKICBhbmQgbm90ICJPbmUgcnViZWxsYSBkb3NlIGZyb20gdGhlIHByaW1hcnkgc2VyaWVzIHdhcyBhZG1pbmlzdGVyZWQuIFRoZSBwcmltYXJ5IHNlcmllcyBoYXMgYmVlbiBjb21wbGV0ZWQiCgoKLyoKQG91dHB1dDogUnViZWxsYSBkb3NlIDEgQ3JlYXRlCkBjcmVhdGU6IFJ1YmVsbGEgZG9zZSAxIHNob3VsZCBiZSBwcm92aWRlZCBpZiB0aGUgY2xpZW50J3MgYWdlIGlzIGF0IGxlYXN0IDkgbW9udGhzCiovCmRlZmluZSAiUnViZWxsYSBkb3NlIDEgQ3JlYXRlIjoKICBpZiAiUnViZWxsYSBkb3NlIDEiCiAgdGhlbiAnUnViZWxsYSBkb3NlIDEgc2hvdWxkIGJlIHByb3ZpZGVkIGlmIHRoZSBjbGllbnRcJ3MgYWdlIGlzIGF0IGxlYXN0IDkgbW9udGhzJyArICcKRHVlIERhdGU6ICcgKyBUb1N0cmluZygiUnViZWxsYSBkb3NlIDEgRHVlIERhdGUiKQogIGVsc2UgJycKCgovKgpAZHluYW1pY1ZhbHVlOiBSdWJlbGxhIGRvc2UgMSBEdWUgRGF0ZQpAcHNldWRvY29kZTogIkRhdGUgb2YgYmlydGgiICsgOSBtb250aHMKKi8KZGVmaW5lICJSdWJlbGxhIGRvc2UgMSBEdWUgRGF0ZSI6CiAgaWYgIlJ1YmVsbGEgZG9zZSAxIiB0aGVuIFBhdGllbnQuYmlydGhEYXRlICsgOSBtb250aHMKICBlbHNlIG51bGwKCgovKgpAZHluYW1pY1ZhbHVlOiBSdWJlbGxhIGRvc2UgMSBPdmVyZHVlCkBwc2V1ZG9jb2RlOiBUbyBiZSBkZXRlcm1pbmVkIGJ5IE1lbWJlciBTdGF0ZXM7IGhvd2V2ZXIsIHRoZXJlIGlzIG5vIHJlY29tbWVuZGVkIG92ZXJkdWUgZGF0ZSBhbmQgaW5kaXZpZHVhbHMgYXJlIGFsd2F5cyBlbGlnaWJsZSB0byBiZSB2YWNjaW5hdGVkLgoqLwpkZWZpbmUgIlJ1YmVsbGEgZG9zZSAxIE92ZXJkdWUiOgogIG51bGwKCgovKgpAZHluYW1pY1ZhbHVlOiBSdWJlbGxhIGRvc2UgMSBFeHBpcmF0aW9uCkBwc2V1ZG9jb2RlOiBUbyBiZSBkZXRlcm1pbmVkIGJ5IE1lbWJlciBTdGF0ZXM7IGhvd2V2ZXIsIHRoZXJlIGlzIG5vIHJlY29tbWVuZGVkIGV4cGlyYXRpb24gZGF0ZSBhbmQgaW5kaXZpZHVhbHMgYXJlIGFsd2F5cyBlbGlnaWJsZSB0byBiZSB2YWNjaW5hdGVkLgoqLwpkZWZpbmUgIlJ1YmVsbGEgZG9zZSAxIEV4cGlyYXRpb24iOgogIG51bGwKCiAgCi8qCkBjb21wbGV0ZTogT25lIHJ1YmVsbGEgZG9zZSBmcm9tIHRoZSBwcmltYXJ5IHNlcmllcyB3YXMgYWRtaW5pc3RlcmVkLiBUaGUgcHJpbWFyeSBzZXJpZXMgaGFzIGJlZW4gY29tcGxldGVkCkBwc2V1ZG9jb2RlOiAiQ29tcGxldGVkIHRoZSBwcmltYXJ5IHZhY2NpbmF0aW9uIHNlcmllcyIgPSBUUlVFICh3aGVyZSAiVmFjY2luZSB0eXBlIiA9ICJSdWJlbGxh4oCTY29udGFpbmluZyB2YWNjaW5lcyIpCiovCmRlZmluZSAiT25lIHJ1YmVsbGEgZG9zZSBmcm9tIHRoZSBwcmltYXJ5IHNlcmllcyB3YXMgYWRtaW5pc3RlcmVkLiBUaGUgcHJpbWFyeSBzZXJpZXMgaGFzIGJlZW4gY29tcGxldGVkIjoKICBFbmNvdW50ZXIuIk9uZSBydWJlbGxhIHByaW1hcnkgc2VyaWVzIGRvc2Ugd2FzIGFkbWluaXN0ZXJlZCIKCgoKLyoKQHRlc3Q6IFRlc3QgZXhwZWN0ZWQgcmVzdWx0cyBiYXNlZCBvbiBleGFtcGxlIHBhdGllbnRzCiovCmRlZmluZSAiVGVzdCBWYWxpZGF0aW9uIjoKICBjYXNlCiAgICB3aGVuIFBhdGllbnQuaWQgPSAnUnViZWxsYTA4LjEnIHRoZW4gIlJ1YmVsbGEgZG9zZSAxIgogICAgd2hlbiBQYXRpZW50LmlkID0gJ1J1YmVsbGEwOS4zJyB0aGVuICJSdWJlbGxhIGRvc2UgMSIKICAgIHdoZW4gUGF0aWVudC5pZCA9ICdSdWJlbGxhMTAuMycgdGhlbiAiUnViZWxsYSBkb3NlIDEiCiAgICB3aGVuIFBhdGllbnQuaWQgPSAnUnViZWxsYTExLjEnIHRoZW4gIk9uZSBydWJlbGxhIGRvc2UgZnJvbSB0aGUgcHJpbWFyeSBzZXJpZXMgd2FzIGFkbWluaXN0ZXJlZC4gVGhlIHByaW1hcnkgc2VyaWVzIGhhcyBiZWVuIGNvbXBsZXRlZCIKICAgIGVsc2UgJ05vIHRlc3QgY2FzZSBzZXQnCiAgZW5kCg=="
  }]
}

```
