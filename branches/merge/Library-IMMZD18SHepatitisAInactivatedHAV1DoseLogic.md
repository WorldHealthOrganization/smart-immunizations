# IMMZD18SHepatitisAInactivatedHAV1DoseLogic - WHO Immunization Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD18SHepatitisAInactivatedHAV1DoseLogic**

## Library: IMMZD18SHepatitisAInactivatedHAV1DoseLogic 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Library/IMMZD18SHepatitisAInactivatedHAV1DoseLogic | *Version*:1.0.0 |
| Draft as of 2026-03-31 | *Computable Name*:IMMZD18SHepatitisAInactivatedHAV1DoseLogic |

 
This library defines decision support logic for the IMMZ.D18.S.Hepatitis A.Inactivated HAV 1-dose schedule table in the Immunization CPG 

* * **Content: **text/cql: ````/* * Library: IMMZD18SHepatitisAInactivatedHAV1DoseLogic (IMMZ.D18.S.Hepatitis A.Inactivated HAV 1-dose schedule) * Schedule Table: Inactivated hepatitis A virus (HAV), 1-dose schedule */ library IMMZD18SHepatitisAInactivatedHAV1DoseLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTHepatitisAEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Hepatitis A dose 1 @description: Provision of the hepatitis A dose 1 @trigger: Child's birth @pseudo: @triggerDate: "Date of birth" */ define "Hepatitis A dose 1": Encounter."No hepatitis A primary series dose was administered" and not "First hepatitis A dose from the primary series was administered. The primary series has been completed" /* @output: Hepatitis A dose 1 Create @create: WHO recommends that vaccination against HAV be introduced into national immunization schedules for individuals aged ≥ 12 months. */ define "Hepatitis A dose 1 Create": if "Hepatitis A dose 1" then 'WHO recommends that vaccination against HAV be introduced into national immunization schedules for individuals aged ≥ 12 months.' + ' Due Date: ' + ToString("Hepatitis A dose 1 Due Date") else '' /* @dynamicValue: Hepatitis A dose 1 Due Date @pseudocode: "Date of birth" + 12 months */ define "Hepatitis A dose 1 Due Date": if "Hepatitis A dose 1" then Patient.birthDate + 12 months else null /* @dynamicValue: Hepatitis A dose 1 Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "Hepatitis A dose 1 Overdue": null /* @dynamicValue: Hepatitis A dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Hepatitis A dose 1 Expiration": null /* @complete: First hepatitis A dose from the primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Hepatitis A-containing vaccines") */ define "First hepatitis A dose from the primary series was administered. The primary series has been completed": Encounter."One hepatitis A primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'HepatitisA20.1' then "Hepatitis A dose 1" when Patient.id = 'HepatitisA21.2' then "Hepatitis A dose 1" when Patient.id = 'HepatitisA22.1' then "First hepatitis A dose from the primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Id: **
  * ?: IMMZD18SHepatitisAInactivatedHAV1DoseLogic
* * **Content: **text/cql: ````/* * Library: IMMZD18SHepatitisAInactivatedHAV1DoseLogic (IMMZ.D18.S.Hepatitis A.Inactivated HAV 1-dose schedule) * Schedule Table: Inactivated hepatitis A virus (HAV), 1-dose schedule */ library IMMZD18SHepatitisAInactivatedHAV1DoseLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTHepatitisAEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Hepatitis A dose 1 @description: Provision of the hepatitis A dose 1 @trigger: Child's birth @pseudo: @triggerDate: "Date of birth" */ define "Hepatitis A dose 1": Encounter."No hepatitis A primary series dose was administered" and not "First hepatitis A dose from the primary series was administered. The primary series has been completed" /* @output: Hepatitis A dose 1 Create @create: WHO recommends that vaccination against HAV be introduced into national immunization schedules for individuals aged ≥ 12 months. */ define "Hepatitis A dose 1 Create": if "Hepatitis A dose 1" then 'WHO recommends that vaccination against HAV be introduced into national immunization schedules for individuals aged ≥ 12 months.' + ' Due Date: ' + ToString("Hepatitis A dose 1 Due Date") else '' /* @dynamicValue: Hepatitis A dose 1 Due Date @pseudocode: "Date of birth" + 12 months */ define "Hepatitis A dose 1 Due Date": if "Hepatitis A dose 1" then Patient.birthDate + 12 months else null /* @dynamicValue: Hepatitis A dose 1 Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "Hepatitis A dose 1 Overdue": null /* @dynamicValue: Hepatitis A dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Hepatitis A dose 1 Expiration": null /* @complete: First hepatitis A dose from the primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Hepatitis A-containing vaccines") */ define "First hepatitis A dose from the primary series was administered. The primary series has been completed": Encounter."One hepatitis A primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'HepatitisA20.1' then "Hepatitis A dose 1" when Patient.id = 'HepatitisA21.2' then "Hepatitis A dose 1" when Patient.id = 'HepatitisA22.1' then "First hepatitis A dose from the primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Version: **
  * ?: 1.0.0
* * **Content: **text/cql: ````/* * Library: IMMZD18SHepatitisAInactivatedHAV1DoseLogic (IMMZ.D18.S.Hepatitis A.Inactivated HAV 1-dose schedule) * Schedule Table: Inactivated hepatitis A virus (HAV), 1-dose schedule */ library IMMZD18SHepatitisAInactivatedHAV1DoseLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTHepatitisAEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Hepatitis A dose 1 @description: Provision of the hepatitis A dose 1 @trigger: Child's birth @pseudo: @triggerDate: "Date of birth" */ define "Hepatitis A dose 1": Encounter."No hepatitis A primary series dose was administered" and not "First hepatitis A dose from the primary series was administered. The primary series has been completed" /* @output: Hepatitis A dose 1 Create @create: WHO recommends that vaccination against HAV be introduced into national immunization schedules for individuals aged ≥ 12 months. */ define "Hepatitis A dose 1 Create": if "Hepatitis A dose 1" then 'WHO recommends that vaccination against HAV be introduced into national immunization schedules for individuals aged ≥ 12 months.' + ' Due Date: ' + ToString("Hepatitis A dose 1 Due Date") else '' /* @dynamicValue: Hepatitis A dose 1 Due Date @pseudocode: "Date of birth" + 12 months */ define "Hepatitis A dose 1 Due Date": if "Hepatitis A dose 1" then Patient.birthDate + 12 months else null /* @dynamicValue: Hepatitis A dose 1 Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "Hepatitis A dose 1 Overdue": null /* @dynamicValue: Hepatitis A dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Hepatitis A dose 1 Expiration": null /* @complete: First hepatitis A dose from the primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Hepatitis A-containing vaccines") */ define "First hepatitis A dose from the primary series was administered. The primary series has been completed": Encounter."One hepatitis A primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'HepatitisA20.1' then "Hepatitis A dose 1" when Patient.id = 'HepatitisA21.2' then "Hepatitis A dose 1" when Patient.id = 'HepatitisA22.1' then "First hepatitis A dose from the primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Url: **
  * ?: [IMMZD18SHepatitisAInactivatedHAV1DoseLogic](Library-IMMZD18SHepatitisAInactivatedHAV1DoseLogic.md)
* * **Content: **text/cql: ````/* * Library: IMMZD18SHepatitisAInactivatedHAV1DoseLogic (IMMZ.D18.S.Hepatitis A.Inactivated HAV 1-dose schedule) * Schedule Table: Inactivated hepatitis A virus (HAV), 1-dose schedule */ library IMMZD18SHepatitisAInactivatedHAV1DoseLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTHepatitisAEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Hepatitis A dose 1 @description: Provision of the hepatitis A dose 1 @trigger: Child's birth @pseudo: @triggerDate: "Date of birth" */ define "Hepatitis A dose 1": Encounter."No hepatitis A primary series dose was administered" and not "First hepatitis A dose from the primary series was administered. The primary series has been completed" /* @output: Hepatitis A dose 1 Create @create: WHO recommends that vaccination against HAV be introduced into national immunization schedules for individuals aged ≥ 12 months. */ define "Hepatitis A dose 1 Create": if "Hepatitis A dose 1" then 'WHO recommends that vaccination against HAV be introduced into national immunization schedules for individuals aged ≥ 12 months.' + ' Due Date: ' + ToString("Hepatitis A dose 1 Due Date") else '' /* @dynamicValue: Hepatitis A dose 1 Due Date @pseudocode: "Date of birth" + 12 months */ define "Hepatitis A dose 1 Due Date": if "Hepatitis A dose 1" then Patient.birthDate + 12 months else null /* @dynamicValue: Hepatitis A dose 1 Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "Hepatitis A dose 1 Overdue": null /* @dynamicValue: Hepatitis A dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Hepatitis A dose 1 Expiration": null /* @complete: First hepatitis A dose from the primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Hepatitis A-containing vaccines") */ define "First hepatitis A dose from the primary series was administered. The primary series has been completed": Encounter."One hepatitis A primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'HepatitisA20.1' then "Hepatitis A dose 1" when Patient.id = 'HepatitisA21.2' then "Hepatitis A dose 1" when Patient.id = 'HepatitisA22.1' then "First hepatitis A dose from the primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Status: **
  * ?: draft
* * **Content: **text/cql: ````/* * Library: IMMZD18SHepatitisAInactivatedHAV1DoseLogic (IMMZ.D18.S.Hepatitis A.Inactivated HAV 1-dose schedule) * Schedule Table: Inactivated hepatitis A virus (HAV), 1-dose schedule */ library IMMZD18SHepatitisAInactivatedHAV1DoseLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTHepatitisAEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Hepatitis A dose 1 @description: Provision of the hepatitis A dose 1 @trigger: Child's birth @pseudo: @triggerDate: "Date of birth" */ define "Hepatitis A dose 1": Encounter."No hepatitis A primary series dose was administered" and not "First hepatitis A dose from the primary series was administered. The primary series has been completed" /* @output: Hepatitis A dose 1 Create @create: WHO recommends that vaccination against HAV be introduced into national immunization schedules for individuals aged ≥ 12 months. */ define "Hepatitis A dose 1 Create": if "Hepatitis A dose 1" then 'WHO recommends that vaccination against HAV be introduced into national immunization schedules for individuals aged ≥ 12 months.' + ' Due Date: ' + ToString("Hepatitis A dose 1 Due Date") else '' /* @dynamicValue: Hepatitis A dose 1 Due Date @pseudocode: "Date of birth" + 12 months */ define "Hepatitis A dose 1 Due Date": if "Hepatitis A dose 1" then Patient.birthDate + 12 months else null /* @dynamicValue: Hepatitis A dose 1 Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "Hepatitis A dose 1 Overdue": null /* @dynamicValue: Hepatitis A dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Hepatitis A dose 1 Expiration": null /* @complete: First hepatitis A dose from the primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Hepatitis A-containing vaccines") */ define "First hepatitis A dose from the primary series was administered. The primary series has been completed": Encounter."One hepatitis A primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'HepatitisA20.1' then "Hepatitis A dose 1" when Patient.id = 'HepatitisA21.2' then "Hepatitis A dose 1" when Patient.id = 'HepatitisA22.1' then "First hepatitis A dose from the primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Date: **
  * ?: 2026-03-31 13:54:17+0000
* * **Content: **text/cql: ````/* * Library: IMMZD18SHepatitisAInactivatedHAV1DoseLogic (IMMZ.D18.S.Hepatitis A.Inactivated HAV 1-dose schedule) * Schedule Table: Inactivated hepatitis A virus (HAV), 1-dose schedule */ library IMMZD18SHepatitisAInactivatedHAV1DoseLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTHepatitisAEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Hepatitis A dose 1 @description: Provision of the hepatitis A dose 1 @trigger: Child's birth @pseudo: @triggerDate: "Date of birth" */ define "Hepatitis A dose 1": Encounter."No hepatitis A primary series dose was administered" and not "First hepatitis A dose from the primary series was administered. The primary series has been completed" /* @output: Hepatitis A dose 1 Create @create: WHO recommends that vaccination against HAV be introduced into national immunization schedules for individuals aged ≥ 12 months. */ define "Hepatitis A dose 1 Create": if "Hepatitis A dose 1" then 'WHO recommends that vaccination against HAV be introduced into national immunization schedules for individuals aged ≥ 12 months.' + ' Due Date: ' + ToString("Hepatitis A dose 1 Due Date") else '' /* @dynamicValue: Hepatitis A dose 1 Due Date @pseudocode: "Date of birth" + 12 months */ define "Hepatitis A dose 1 Due Date": if "Hepatitis A dose 1" then Patient.birthDate + 12 months else null /* @dynamicValue: Hepatitis A dose 1 Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "Hepatitis A dose 1 Overdue": null /* @dynamicValue: Hepatitis A dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Hepatitis A dose 1 Expiration": null /* @complete: First hepatitis A dose from the primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Hepatitis A-containing vaccines") */ define "First hepatitis A dose from the primary series was administered. The primary series has been completed": Encounter."One hepatitis A primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'HepatitisA20.1' then "Hepatitis A dose 1" when Patient.id = 'HepatitisA21.2' then "Hepatitis A dose 1" when Patient.id = 'HepatitisA22.1' then "First hepatitis A dose from the primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Publisher: **
  * ?: WHO
* * **Content: **text/cql: ````/* * Library: IMMZD18SHepatitisAInactivatedHAV1DoseLogic (IMMZ.D18.S.Hepatitis A.Inactivated HAV 1-dose schedule) * Schedule Table: Inactivated hepatitis A virus (HAV), 1-dose schedule */ library IMMZD18SHepatitisAInactivatedHAV1DoseLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTHepatitisAEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Hepatitis A dose 1 @description: Provision of the hepatitis A dose 1 @trigger: Child's birth @pseudo: @triggerDate: "Date of birth" */ define "Hepatitis A dose 1": Encounter."No hepatitis A primary series dose was administered" and not "First hepatitis A dose from the primary series was administered. The primary series has been completed" /* @output: Hepatitis A dose 1 Create @create: WHO recommends that vaccination against HAV be introduced into national immunization schedules for individuals aged ≥ 12 months. */ define "Hepatitis A dose 1 Create": if "Hepatitis A dose 1" then 'WHO recommends that vaccination against HAV be introduced into national immunization schedules for individuals aged ≥ 12 months.' + ' Due Date: ' + ToString("Hepatitis A dose 1 Due Date") else '' /* @dynamicValue: Hepatitis A dose 1 Due Date @pseudocode: "Date of birth" + 12 months */ define "Hepatitis A dose 1 Due Date": if "Hepatitis A dose 1" then Patient.birthDate + 12 months else null /* @dynamicValue: Hepatitis A dose 1 Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "Hepatitis A dose 1 Overdue": null /* @dynamicValue: Hepatitis A dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Hepatitis A dose 1 Expiration": null /* @complete: First hepatitis A dose from the primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Hepatitis A-containing vaccines") */ define "First hepatitis A dose from the primary series was administered. The primary series has been completed": Encounter."One hepatitis A primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'HepatitisA20.1' then "Hepatitis A dose 1" when Patient.id = 'HepatitisA21.2' then "Hepatitis A dose 1" when Patient.id = 'HepatitisA22.1' then "First hepatitis A dose from the primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Description: **
  * ?: This library defines decision support logic for the IMMZ.D18.S.Hepatitis A.Inactivated HAV 1-dose schedule table in the Immunization CPG



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "IMMZD18SHepatitisAInactivatedHAV1DoseLogic",
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
  "url" : "http://smart.who.int/immunizations/Library/IMMZD18SHepatitisAInactivatedHAV1DoseLogic",
  "version" : "1.0.0",
  "name" : "IMMZD18SHepatitisAInactivatedHAV1DoseLogic",
  "title" : "IMMZD18SHepatitisAInactivatedHAV1DoseLogic",
  "status" : "draft",
  "experimental" : false,
  "type" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/library-type",
      "code" : "logic-library"
    }]
  },
  "date" : "2026-03-31T13:54:17+00:00",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "This library defines decision support logic for the IMMZ.D18.S.Hepatitis A.Inactivated HAV 1-dose schedule table in the Immunization CPG",
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
    "resource" : "http://smart.who.int/immunizations/Library/IMMZD2DTHepatitisAEncounterElements"
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
    "name" : "First hepatitis A dose from the primary series was administered. The primary series has been completed",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "Hepatitis A dose 1",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "Hepatitis A dose 1 Due Date",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "date"
  },
  {
    "name" : "Hepatitis A dose 1 Create",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "string"
  },
  {
    "name" : "Hepatitis A dose 1 Overdue",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "Resource"
  },
  {
    "name" : "Hepatitis A dose 1 Expiration",
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
    "data" : "LyoKICogTGlicmFyeTogSU1NWkQxOFNIZXBhdGl0aXNBSW5hY3RpdmF0ZWRIQVYxRG9zZUxvZ2ljIChJTU1aLkQxOC5TLkhlcGF0aXRpcyBBLkluYWN0aXZhdGVkIEhBViAxLWRvc2Ugc2NoZWR1bGUpCiAqIFNjaGVkdWxlIFRhYmxlOiBJbmFjdGl2YXRlZCBoZXBhdGl0aXMgQSB2aXJ1cyAoSEFWKSwgMS1kb3NlIHNjaGVkdWxlCiAqLwpsaWJyYXJ5IElNTVpEMThTSGVwYXRpdGlzQUluYWN0aXZhdGVkSEFWMURvc2VMb2dpYwoKdXNpbmcgRkhJUiB2ZXJzaW9uICc0LjAuMScKaW5jbHVkZSBGSElSSGVscGVycyB2ZXJzaW9uICc0LjAuMScKCmluY2x1ZGUgV0hPQ29tbW9uIGNhbGxlZCBXQwoKaW5jbHVkZSBJTU1aQ29tbW9uIGNhbGxlZCBDb21tb24KaW5jbHVkZSBJTU1aQ29uY2VwdHMgY2FsbGVkIENvbmNlcHRzCgppbmNsdWRlIElNTVpFbmNvdW50ZXJFbGVtZW50cyBjYWxsZWQgSUUKaW5jbHVkZSBJTU1aRDJEVEhlcGF0aXRpc0FFbmNvdW50ZXJFbGVtZW50cyBjYWxsZWQgRW5jb3VudGVyCgpwYXJhbWV0ZXIgVG9kYXkgRGF0ZSBkZWZhdWx0IFRvZGF5KCkKCgpjb250ZXh0IFBhdGllbnQKCgovKgpAb3V0cHV0OiBIZXBhdGl0aXMgQSBkb3NlIDEKQGRlc2NyaXB0aW9uOiBQcm92aXNpb24gb2YgdGhlIGhlcGF0aXRpcyBBIGRvc2UgMQpAdHJpZ2dlcjogQ2hpbGQncyBiaXJ0aApAcHNldWRvOiAKQHRyaWdnZXJEYXRlOiAiRGF0ZSBvZiBiaXJ0aCIKKi8KZGVmaW5lICJIZXBhdGl0aXMgQSBkb3NlIDEiOgogIEVuY291bnRlci4iTm8gaGVwYXRpdGlzIEEgcHJpbWFyeSBzZXJpZXMgZG9zZSB3YXMgYWRtaW5pc3RlcmVkIgogIGFuZCBub3QgIkZpcnN0IGhlcGF0aXRpcyBBIGRvc2UgZnJvbSB0aGUgcHJpbWFyeSBzZXJpZXMgd2FzIGFkbWluaXN0ZXJlZC4gVGhlIHByaW1hcnkgc2VyaWVzIGhhcyBiZWVuIGNvbXBsZXRlZCIKCgovKgpAb3V0cHV0OiBIZXBhdGl0aXMgQSBkb3NlIDEgQ3JlYXRlCkBjcmVhdGU6IFdITyByZWNvbW1lbmRzIHRoYXQgdmFjY2luYXRpb24gYWdhaW5zdCBIQVYgYmUgaW50cm9kdWNlZCBpbnRvIG5hdGlvbmFsIGltbXVuaXphdGlvbiBzY2hlZHVsZXMgZm9yIGluZGl2aWR1YWxzIGFnZWQg4omlIDEyIG1vbnRocy4KKi8KZGVmaW5lICJIZXBhdGl0aXMgQSBkb3NlIDEgQ3JlYXRlIjoKICBpZiAiSGVwYXRpdGlzIEEgZG9zZSAxIgogIHRoZW4gJ1dITyByZWNvbW1lbmRzIHRoYXQgdmFjY2luYXRpb24gYWdhaW5zdCBIQVYgYmUgaW50cm9kdWNlZCBpbnRvIG5hdGlvbmFsIGltbXVuaXphdGlvbiBzY2hlZHVsZXMgZm9yIGluZGl2aWR1YWxzIGFnZWQg4omlIDEyIG1vbnRocy4nICsgJwpEdWUgRGF0ZTogJyArIFRvU3RyaW5nKCJIZXBhdGl0aXMgQSBkb3NlIDEgRHVlIERhdGUiKQogIGVsc2UgJycKCgovKgpAZHluYW1pY1ZhbHVlOiBIZXBhdGl0aXMgQSBkb3NlIDEgRHVlIERhdGUKQHBzZXVkb2NvZGU6ICJEYXRlIG9mIGJpcnRoIiArIDEyIG1vbnRocwoqLwpkZWZpbmUgIkhlcGF0aXRpcyBBIGRvc2UgMSBEdWUgRGF0ZSI6CiAgaWYgIkhlcGF0aXRpcyBBIGRvc2UgMSIgdGhlbiBQYXRpZW50LmJpcnRoRGF0ZSArIDEyIG1vbnRocwogIGVsc2UgbnVsbAoKCi8qCkBkeW5hbWljVmFsdWU6IEhlcGF0aXRpcyBBIGRvc2UgMSBPdmVyZHVlCkBwc2V1ZG9jb2RlOiBUbyBiZSBkZXRlcm1pbmVkIGJ5IE1lbWJlciBTdGF0ZXM7IGhvd2V2ZXIsIHRoZXJlIGlzIG5vIHJlY29tbWVuZGVkIG92ZXJkdWUgZGF0ZSBhbmQgaW5kaXZpZHVhbHMgYXJlIGFsd2F5cyBlbGlnaWJsZSB0byBiZSB2YWNjaW5hdGVkLgoqLwpkZWZpbmUgIkhlcGF0aXRpcyBBIGRvc2UgMSBPdmVyZHVlIjoKICBudWxsCgoKLyoKQGR5bmFtaWNWYWx1ZTogSGVwYXRpdGlzIEEgZG9zZSAxIEV4cGlyYXRpb24KQHBzZXVkb2NvZGU6IFRvIGJlIGRldGVybWluZWQgYnkgTWVtYmVyIFN0YXRlczsgaG93ZXZlciwgdGhlcmUgaXMgbm8gcmVjb21tZW5kZWQgZXhwaXJhdGlvbiBkYXRlIGFuZCBpbmRpdmlkdWFscyBhcmUgYWx3YXlzIGVsaWdpYmxlIHRvIGJlIHZhY2NpbmF0ZWQuCiovCmRlZmluZSAiSGVwYXRpdGlzIEEgZG9zZSAxIEV4cGlyYXRpb24iOgogIG51bGwKCiAgCi8qCkBjb21wbGV0ZTogRmlyc3QgaGVwYXRpdGlzIEEgZG9zZSBmcm9tIHRoZSBwcmltYXJ5IHNlcmllcyB3YXMgYWRtaW5pc3RlcmVkLiBUaGUgcHJpbWFyeSBzZXJpZXMgaGFzIGJlZW4gY29tcGxldGVkCkBwc2V1ZG9jb2RlOiAiQ29tcGxldGVkIHRoZSBwcmltYXJ5IHZhY2NpbmF0aW9uIHNlcmllcyIgPSBUUlVFICh3aGVyZSAiVmFjY2luZSB0eXBlIiA9ICJIZXBhdGl0aXMgQS1jb250YWluaW5nIHZhY2NpbmVzIikKKi8KZGVmaW5lICJGaXJzdCBoZXBhdGl0aXMgQSBkb3NlIGZyb20gdGhlIHByaW1hcnkgc2VyaWVzIHdhcyBhZG1pbmlzdGVyZWQuIFRoZSBwcmltYXJ5IHNlcmllcyBoYXMgYmVlbiBjb21wbGV0ZWQiOgogIEVuY291bnRlci4iT25lIGhlcGF0aXRpcyBBIHByaW1hcnkgc2VyaWVzIGRvc2Ugd2FzIGFkbWluaXN0ZXJlZCIKCgoKLyoKQHRlc3Q6IFRlc3QgZXhwZWN0ZWQgcmVzdWx0cyBiYXNlZCBvbiBleGFtcGxlIHBhdGllbnRzCiovCmRlZmluZSAiVGVzdCBWYWxpZGF0aW9uIjoKICBjYXNlCiAgICB3aGVuIFBhdGllbnQuaWQgPSAnSGVwYXRpdGlzQTIwLjEnIHRoZW4gIkhlcGF0aXRpcyBBIGRvc2UgMSIKICAgIHdoZW4gUGF0aWVudC5pZCA9ICdIZXBhdGl0aXNBMjEuMicgdGhlbiAiSGVwYXRpdGlzIEEgZG9zZSAxIgogICAgd2hlbiBQYXRpZW50LmlkID0gJ0hlcGF0aXRpc0EyMi4xJyB0aGVuICJGaXJzdCBoZXBhdGl0aXMgQSBkb3NlIGZyb20gdGhlIHByaW1hcnkgc2VyaWVzIHdhcyBhZG1pbmlzdGVyZWQuIFRoZSBwcmltYXJ5IHNlcmllcyBoYXMgYmVlbiBjb21wbGV0ZWQiCiAgICBlbHNlICdObyB0ZXN0IGNhc2Ugc2V0JwogIGVuZAo="
  }]
}

```
