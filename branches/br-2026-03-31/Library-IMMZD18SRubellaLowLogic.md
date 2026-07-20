# IMMZD18SRubellaLowLogic - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD18SRubellaLowLogic**

## Library: IMMZD18SRubellaLowLogic (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Library/IMMZD18SRubellaLowLogic | *Version*:0.2.0 |
| Draft as of 2026-03-31 | *Computable Name*:IMMZD18SRubellaLowLogic |

 
This library defines decision support logic for the IMMZ.D18.S.Rubella.Low incidence schedule table in the Immunization CPG 

* * **Content: **text/cql: ```` /* * Library: IMMZD18SRubellaLowLogic (IMMZ.D18.S.Rubella.Low incidence schedule) * Schedule Table: Schedule for countries with low incidence of rubella */ library IMMZD18SRubellaLowLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTRubellaEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Rubella dose 1 @description: Provision of the rubella dose 1 @trigger: Child's birth @triggerDate: "Date of birth" */ define "Rubella dose 1": Encounter."No rubella primary series dose was administered" and not "One rubella dose from the primary series was administered. The primary series has been completed" /* @output: Rubella dose 1 Create @create: Rubella dose 1 should be provided if the client's age is at least 12 months */ define "Rubella dose 1 Create": if "Rubella dose 1" then 'Rubella dose 1 should be provided if the client\'s age is at least 12 months' + ' Due Date: ' + ToString("Rubella dose 1 Due Date") else '' /* @dynamicValue: Rubella dose 1 Due Date @pseudocode: "Date of birth" + 12 months */ define "Rubella dose 1 Due Date": if "Rubella dose 1" then Patient.birthDate + 12 months else null /* @dynamicValue: Rubella dose 1 Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "Rubella dose 1 Overdue": null /* @dynamicValue: Rubella dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Rubella dose 1 Expiration": null /* @complete: One rubella dose from the primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Rubella-containing vaccines") */ define "One rubella dose from the primary series was administered. The primary series has been completed": Encounter."One rubella primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = '19.2' then "Rubella dose 1" when Patient.id = '20.123' then "Rubella dose 1" when Patient.id = '21.123' then "Rubella dose 1" when Patient.id = '22.1' then "One rubella dose from the primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Id: **
  * ?: IMMZD18SRubellaLowLogic
* * **Content: **text/cql: ```` /* * Library: IMMZD18SRubellaLowLogic (IMMZ.D18.S.Rubella.Low incidence schedule) * Schedule Table: Schedule for countries with low incidence of rubella */ library IMMZD18SRubellaLowLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTRubellaEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Rubella dose 1 @description: Provision of the rubella dose 1 @trigger: Child's birth @triggerDate: "Date of birth" */ define "Rubella dose 1": Encounter."No rubella primary series dose was administered" and not "One rubella dose from the primary series was administered. The primary series has been completed" /* @output: Rubella dose 1 Create @create: Rubella dose 1 should be provided if the client's age is at least 12 months */ define "Rubella dose 1 Create": if "Rubella dose 1" then 'Rubella dose 1 should be provided if the client\'s age is at least 12 months' + ' Due Date: ' + ToString("Rubella dose 1 Due Date") else '' /* @dynamicValue: Rubella dose 1 Due Date @pseudocode: "Date of birth" + 12 months */ define "Rubella dose 1 Due Date": if "Rubella dose 1" then Patient.birthDate + 12 months else null /* @dynamicValue: Rubella dose 1 Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "Rubella dose 1 Overdue": null /* @dynamicValue: Rubella dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Rubella dose 1 Expiration": null /* @complete: One rubella dose from the primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Rubella-containing vaccines") */ define "One rubella dose from the primary series was administered. The primary series has been completed": Encounter."One rubella primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = '19.2' then "Rubella dose 1" when Patient.id = '20.123' then "Rubella dose 1" when Patient.id = '21.123' then "Rubella dose 1" when Patient.id = '22.1' then "One rubella dose from the primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Version: **
  * ?: 0.2.0
* * **Content: **text/cql: ```` /* * Library: IMMZD18SRubellaLowLogic (IMMZ.D18.S.Rubella.Low incidence schedule) * Schedule Table: Schedule for countries with low incidence of rubella */ library IMMZD18SRubellaLowLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTRubellaEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Rubella dose 1 @description: Provision of the rubella dose 1 @trigger: Child's birth @triggerDate: "Date of birth" */ define "Rubella dose 1": Encounter."No rubella primary series dose was administered" and not "One rubella dose from the primary series was administered. The primary series has been completed" /* @output: Rubella dose 1 Create @create: Rubella dose 1 should be provided if the client's age is at least 12 months */ define "Rubella dose 1 Create": if "Rubella dose 1" then 'Rubella dose 1 should be provided if the client\'s age is at least 12 months' + ' Due Date: ' + ToString("Rubella dose 1 Due Date") else '' /* @dynamicValue: Rubella dose 1 Due Date @pseudocode: "Date of birth" + 12 months */ define "Rubella dose 1 Due Date": if "Rubella dose 1" then Patient.birthDate + 12 months else null /* @dynamicValue: Rubella dose 1 Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "Rubella dose 1 Overdue": null /* @dynamicValue: Rubella dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Rubella dose 1 Expiration": null /* @complete: One rubella dose from the primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Rubella-containing vaccines") */ define "One rubella dose from the primary series was administered. The primary series has been completed": Encounter."One rubella primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = '19.2' then "Rubella dose 1" when Patient.id = '20.123' then "Rubella dose 1" when Patient.id = '21.123' then "Rubella dose 1" when Patient.id = '22.1' then "One rubella dose from the primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Url: **
  * ?: [IMMZD18SRubellaLowLogic](Library-IMMZD18SRubellaLowLogic.md)
* * **Content: **text/cql: ```` /* * Library: IMMZD18SRubellaLowLogic (IMMZ.D18.S.Rubella.Low incidence schedule) * Schedule Table: Schedule for countries with low incidence of rubella */ library IMMZD18SRubellaLowLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTRubellaEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Rubella dose 1 @description: Provision of the rubella dose 1 @trigger: Child's birth @triggerDate: "Date of birth" */ define "Rubella dose 1": Encounter."No rubella primary series dose was administered" and not "One rubella dose from the primary series was administered. The primary series has been completed" /* @output: Rubella dose 1 Create @create: Rubella dose 1 should be provided if the client's age is at least 12 months */ define "Rubella dose 1 Create": if "Rubella dose 1" then 'Rubella dose 1 should be provided if the client\'s age is at least 12 months' + ' Due Date: ' + ToString("Rubella dose 1 Due Date") else '' /* @dynamicValue: Rubella dose 1 Due Date @pseudocode: "Date of birth" + 12 months */ define "Rubella dose 1 Due Date": if "Rubella dose 1" then Patient.birthDate + 12 months else null /* @dynamicValue: Rubella dose 1 Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "Rubella dose 1 Overdue": null /* @dynamicValue: Rubella dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Rubella dose 1 Expiration": null /* @complete: One rubella dose from the primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Rubella-containing vaccines") */ define "One rubella dose from the primary series was administered. The primary series has been completed": Encounter."One rubella primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = '19.2' then "Rubella dose 1" when Patient.id = '20.123' then "Rubella dose 1" when Patient.id = '21.123' then "Rubella dose 1" when Patient.id = '22.1' then "One rubella dose from the primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Status: **
  * ?: draft
* * **Content: **text/cql: ```` /* * Library: IMMZD18SRubellaLowLogic (IMMZ.D18.S.Rubella.Low incidence schedule) * Schedule Table: Schedule for countries with low incidence of rubella */ library IMMZD18SRubellaLowLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTRubellaEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Rubella dose 1 @description: Provision of the rubella dose 1 @trigger: Child's birth @triggerDate: "Date of birth" */ define "Rubella dose 1": Encounter."No rubella primary series dose was administered" and not "One rubella dose from the primary series was administered. The primary series has been completed" /* @output: Rubella dose 1 Create @create: Rubella dose 1 should be provided if the client's age is at least 12 months */ define "Rubella dose 1 Create": if "Rubella dose 1" then 'Rubella dose 1 should be provided if the client\'s age is at least 12 months' + ' Due Date: ' + ToString("Rubella dose 1 Due Date") else '' /* @dynamicValue: Rubella dose 1 Due Date @pseudocode: "Date of birth" + 12 months */ define "Rubella dose 1 Due Date": if "Rubella dose 1" then Patient.birthDate + 12 months else null /* @dynamicValue: Rubella dose 1 Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "Rubella dose 1 Overdue": null /* @dynamicValue: Rubella dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Rubella dose 1 Expiration": null /* @complete: One rubella dose from the primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Rubella-containing vaccines") */ define "One rubella dose from the primary series was administered. The primary series has been completed": Encounter."One rubella primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = '19.2' then "Rubella dose 1" when Patient.id = '20.123' then "Rubella dose 1" when Patient.id = '21.123' then "Rubella dose 1" when Patient.id = '22.1' then "One rubella dose from the primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Experimental: **
  * ?: true
* * **Content: **text/cql: ```` /* * Library: IMMZD18SRubellaLowLogic (IMMZ.D18.S.Rubella.Low incidence schedule) * Schedule Table: Schedule for countries with low incidence of rubella */ library IMMZD18SRubellaLowLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTRubellaEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Rubella dose 1 @description: Provision of the rubella dose 1 @trigger: Child's birth @triggerDate: "Date of birth" */ define "Rubella dose 1": Encounter."No rubella primary series dose was administered" and not "One rubella dose from the primary series was administered. The primary series has been completed" /* @output: Rubella dose 1 Create @create: Rubella dose 1 should be provided if the client's age is at least 12 months */ define "Rubella dose 1 Create": if "Rubella dose 1" then 'Rubella dose 1 should be provided if the client\'s age is at least 12 months' + ' Due Date: ' + ToString("Rubella dose 1 Due Date") else '' /* @dynamicValue: Rubella dose 1 Due Date @pseudocode: "Date of birth" + 12 months */ define "Rubella dose 1 Due Date": if "Rubella dose 1" then Patient.birthDate + 12 months else null /* @dynamicValue: Rubella dose 1 Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "Rubella dose 1 Overdue": null /* @dynamicValue: Rubella dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Rubella dose 1 Expiration": null /* @complete: One rubella dose from the primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Rubella-containing vaccines") */ define "One rubella dose from the primary series was administered. The primary series has been completed": Encounter."One rubella primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = '19.2' then "Rubella dose 1" when Patient.id = '20.123' then "Rubella dose 1" when Patient.id = '21.123' then "Rubella dose 1" when Patient.id = '22.1' then "One rubella dose from the primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Date: **
  * ?: 2026-03-31 13:43:43+0000
* * **Content: **text/cql: ```` /* * Library: IMMZD18SRubellaLowLogic (IMMZ.D18.S.Rubella.Low incidence schedule) * Schedule Table: Schedule for countries with low incidence of rubella */ library IMMZD18SRubellaLowLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTRubellaEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Rubella dose 1 @description: Provision of the rubella dose 1 @trigger: Child's birth @triggerDate: "Date of birth" */ define "Rubella dose 1": Encounter."No rubella primary series dose was administered" and not "One rubella dose from the primary series was administered. The primary series has been completed" /* @output: Rubella dose 1 Create @create: Rubella dose 1 should be provided if the client's age is at least 12 months */ define "Rubella dose 1 Create": if "Rubella dose 1" then 'Rubella dose 1 should be provided if the client\'s age is at least 12 months' + ' Due Date: ' + ToString("Rubella dose 1 Due Date") else '' /* @dynamicValue: Rubella dose 1 Due Date @pseudocode: "Date of birth" + 12 months */ define "Rubella dose 1 Due Date": if "Rubella dose 1" then Patient.birthDate + 12 months else null /* @dynamicValue: Rubella dose 1 Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "Rubella dose 1 Overdue": null /* @dynamicValue: Rubella dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Rubella dose 1 Expiration": null /* @complete: One rubella dose from the primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Rubella-containing vaccines") */ define "One rubella dose from the primary series was administered. The primary series has been completed": Encounter."One rubella primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = '19.2' then "Rubella dose 1" when Patient.id = '20.123' then "Rubella dose 1" when Patient.id = '21.123' then "Rubella dose 1" when Patient.id = '22.1' then "One rubella dose from the primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Publisher: **
  * ?: WHO
* * **Content: **text/cql: ```` /* * Library: IMMZD18SRubellaLowLogic (IMMZ.D18.S.Rubella.Low incidence schedule) * Schedule Table: Schedule for countries with low incidence of rubella */ library IMMZD18SRubellaLowLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTRubellaEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Rubella dose 1 @description: Provision of the rubella dose 1 @trigger: Child's birth @triggerDate: "Date of birth" */ define "Rubella dose 1": Encounter."No rubella primary series dose was administered" and not "One rubella dose from the primary series was administered. The primary series has been completed" /* @output: Rubella dose 1 Create @create: Rubella dose 1 should be provided if the client's age is at least 12 months */ define "Rubella dose 1 Create": if "Rubella dose 1" then 'Rubella dose 1 should be provided if the client\'s age is at least 12 months' + ' Due Date: ' + ToString("Rubella dose 1 Due Date") else '' /* @dynamicValue: Rubella dose 1 Due Date @pseudocode: "Date of birth" + 12 months */ define "Rubella dose 1 Due Date": if "Rubella dose 1" then Patient.birthDate + 12 months else null /* @dynamicValue: Rubella dose 1 Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "Rubella dose 1 Overdue": null /* @dynamicValue: Rubella dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Rubella dose 1 Expiration": null /* @complete: One rubella dose from the primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Rubella-containing vaccines") */ define "One rubella dose from the primary series was administered. The primary series has been completed": Encounter."One rubella primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = '19.2' then "Rubella dose 1" when Patient.id = '20.123' then "Rubella dose 1" when Patient.id = '21.123' then "Rubella dose 1" when Patient.id = '22.1' then "One rubella dose from the primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Description: **
  * ?: This library defines decision support logic for the IMMZ.D18.S.Rubella.Low incidence schedule table in the Immunization CPG



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "IMMZD18SRubellaLowLogic",
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
  "url" : "http://smart.who.int/immunizations/Library/IMMZD18SRubellaLowLogic",
  "version" : "0.2.0",
  "name" : "IMMZD18SRubellaLowLogic",
  "title" : "IMMZD18SRubellaLowLogic",
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
    "data" : "Ci8qCiAqIExpYnJhcnk6IElNTVpEMThTUnViZWxsYUxvd0xvZ2ljIChJTU1aLkQxOC5TLlJ1YmVsbGEuTG93IGluY2lkZW5jZSBzY2hlZHVsZSkKICogU2NoZWR1bGUgVGFibGU6IFNjaGVkdWxlIGZvciBjb3VudHJpZXMgd2l0aCBsb3cgaW5jaWRlbmNlIG9mIHJ1YmVsbGEJCSAJCQkJCQkJCiAqLwpsaWJyYXJ5IElNTVpEMThTUnViZWxsYUxvd0xvZ2ljCgp1c2luZyBGSElSIHZlcnNpb24gJzQuMC4xJwppbmNsdWRlIEZISVJIZWxwZXJzIHZlcnNpb24gJzQuMC4xJwoKaW5jbHVkZSBXSE9Db21tb24gY2FsbGVkIFdDCgppbmNsdWRlIElNTVpDb21tb24gY2FsbGVkIENvbW1vbgppbmNsdWRlIElNTVpDb25jZXB0cyBjYWxsZWQgQ29uY2VwdHMKCmluY2x1ZGUgSU1NWkVuY291bnRlckVsZW1lbnRzIGNhbGxlZCBJRQppbmNsdWRlIElNTVpEMkRUUnViZWxsYUVuY291bnRlckVsZW1lbnRzIGNhbGxlZCBFbmNvdW50ZXIKCnBhcmFtZXRlciBUb2RheSBEYXRlIGRlZmF1bHQgVG9kYXkoKQoKY29udGV4dCBQYXRpZW50CgoKLyoKQG91dHB1dDogUnViZWxsYSBkb3NlIDEKQGRlc2NyaXB0aW9uOiBQcm92aXNpb24gb2YgdGhlIHJ1YmVsbGEgZG9zZSAxCkB0cmlnZ2VyOiBDaGlsZCdzIGJpcnRoCkB0cmlnZ2VyRGF0ZTogIkRhdGUgb2YgYmlydGgiCiovCmRlZmluZSAiUnViZWxsYSBkb3NlIDEiOgogIEVuY291bnRlci4iTm8gcnViZWxsYSBwcmltYXJ5IHNlcmllcyBkb3NlIHdhcyBhZG1pbmlzdGVyZWQiCiAgYW5kIG5vdCAiT25lIHJ1YmVsbGEgZG9zZSBmcm9tIHRoZSBwcmltYXJ5IHNlcmllcyB3YXMgYWRtaW5pc3RlcmVkLiBUaGUgcHJpbWFyeSBzZXJpZXMgaGFzIGJlZW4gY29tcGxldGVkIgoKLyoKQG91dHB1dDogUnViZWxsYSBkb3NlIDEgQ3JlYXRlCkBjcmVhdGU6IFJ1YmVsbGEgZG9zZSAxIHNob3VsZCBiZSBwcm92aWRlZCBpZiB0aGUgY2xpZW50J3MgYWdlIGlzIGF0IGxlYXN0IDEyIG1vbnRocwoqLwpkZWZpbmUgIlJ1YmVsbGEgZG9zZSAxIENyZWF0ZSI6CiAgaWYgIlJ1YmVsbGEgZG9zZSAxIiAKICB0aGVuICdSdWJlbGxhIGRvc2UgMSBzaG91bGQgYmUgcHJvdmlkZWQgaWYgdGhlIGNsaWVudFwncyBhZ2UgaXMgYXQgbGVhc3QgMTIgbW9udGhzJyArICcKRHVlIERhdGU6ICcgKyBUb1N0cmluZygiUnViZWxsYSBkb3NlIDEgRHVlIERhdGUiKQogIGVsc2UgJycKCi8qCkBkeW5hbWljVmFsdWU6IFJ1YmVsbGEgZG9zZSAxIER1ZSBEYXRlCkBwc2V1ZG9jb2RlOiAiRGF0ZSBvZiBiaXJ0aCIgKyAxMiBtb250aHMKKi8KZGVmaW5lICJSdWJlbGxhIGRvc2UgMSBEdWUgRGF0ZSI6CiAgaWYgIlJ1YmVsbGEgZG9zZSAxIiB0aGVuIFBhdGllbnQuYmlydGhEYXRlICsgMTIgbW9udGhzCiAgZWxzZSBudWxsCgovKgpAZHluYW1pY1ZhbHVlOiBSdWJlbGxhIGRvc2UgMSBPdmVyZHVlCkBwc2V1ZG9jb2RlOiBUbyBiZSBkZXRlcm1pbmVkIGJ5IE1lbWJlciBTdGF0ZXM7IGhvd2V2ZXIsIHRoZXJlIGlzIG5vIHJlY29tbWVuZGVkIG92ZXJkdWUgZGF0ZSBhbmQgaW5kaXZpZHVhbHMgYXJlIGFsd2F5cyBlbGlnaWJsZSB0byBiZSB2YWNjaW5hdGVkLgoqLwpkZWZpbmUgIlJ1YmVsbGEgZG9zZSAxIE92ZXJkdWUiOgogIG51bGwKCi8qCkBkeW5hbWljVmFsdWU6IFJ1YmVsbGEgZG9zZSAxIEV4cGlyYXRpb24KQHBzZXVkb2NvZGU6IFRvIGJlIGRldGVybWluZWQgYnkgTWVtYmVyIFN0YXRlczsgaG93ZXZlciwgdGhlcmUgaXMgbm8gcmVjb21tZW5kZWQgZXhwaXJhdGlvbiBkYXRlIGFuZCBpbmRpdmlkdWFscyBhcmUgYWx3YXlzIGVsaWdpYmxlIHRvIGJlIHZhY2NpbmF0ZWQuCiovCmRlZmluZSAiUnViZWxsYSBkb3NlIDEgRXhwaXJhdGlvbiI6CiAgbnVsbAogIAovKgpAY29tcGxldGU6IE9uZSBydWJlbGxhIGRvc2UgZnJvbSB0aGUgcHJpbWFyeSBzZXJpZXMgd2FzIGFkbWluaXN0ZXJlZC4gVGhlIHByaW1hcnkgc2VyaWVzIGhhcyBiZWVuIGNvbXBsZXRlZApAcHNldWRvY29kZTogIkNvbXBsZXRlZCB0aGUgcHJpbWFyeSB2YWNjaW5hdGlvbiBzZXJpZXMiID0gVFJVRSAod2hlcmUgIlZhY2NpbmUgdHlwZSIgPSAiUnViZWxsYS1jb250YWluaW5nIHZhY2NpbmVzIikKKi8KZGVmaW5lICJPbmUgcnViZWxsYSBkb3NlIGZyb20gdGhlIHByaW1hcnkgc2VyaWVzIHdhcyBhZG1pbmlzdGVyZWQuIFRoZSBwcmltYXJ5IHNlcmllcyBoYXMgYmVlbiBjb21wbGV0ZWQiOgogIEVuY291bnRlci4iT25lIHJ1YmVsbGEgcHJpbWFyeSBzZXJpZXMgZG9zZSB3YXMgYWRtaW5pc3RlcmVkIgoKLyoKQHRlc3Q6IFRlc3QgZXhwZWN0ZWQgcmVzdWx0cyBiYXNlZCBvbiBleGFtcGxlIHBhdGllbnRzCiovCmRlZmluZSAiVGVzdCBWYWxpZGF0aW9uIjoKICBjYXNlCiAgICB3aGVuIFBhdGllbnQuaWQgPSAnMTkuMicgdGhlbiAiUnViZWxsYSBkb3NlIDEiCiAgICB3aGVuIFBhdGllbnQuaWQgPSAnMjAuMTIzJyB0aGVuICJSdWJlbGxhIGRvc2UgMSIKICAgIHdoZW4gUGF0aWVudC5pZCA9ICcyMS4xMjMnIHRoZW4gIlJ1YmVsbGEgZG9zZSAxIgogICAgd2hlbiBQYXRpZW50LmlkID0gJzIyLjEnIHRoZW4gIk9uZSBydWJlbGxhIGRvc2UgZnJvbSB0aGUgcHJpbWFyeSBzZXJpZXMgd2FzIGFkbWluaXN0ZXJlZC4gVGhlIHByaW1hcnkgc2VyaWVzIGhhcyBiZWVuIGNvbXBsZXRlZCIKICAgIGVsc2UgJ05vIHRlc3QgY2FzZSBzZXQnCiAgZW5kCg=="
  }]
}

```
