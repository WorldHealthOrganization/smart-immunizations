# IMMZD18SHepatitisALiveAttenuatedHAV1DoseLogic - WHO Immunization Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD18SHepatitisALiveAttenuatedHAV1DoseLogic**

## Library: IMMZD18SHepatitisALiveAttenuatedHAV1DoseLogic 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Library/IMMZD18SHepatitisALiveAttenuatedHAV1DoseLogic | *Version*:1.0.0 |
| Draft as of 2026-04-09 | *Computable Name*:IMMZD18SHepatitisALiveAttenuatedHAV1DoseLogic |

 
This library defines decision support logic for the IMMZ.D18.S.Hepatitis A.Live attenuated HAV 1-dose schedule table in the Immunization CPG 

* * **Content: **text/cql: ````/* * Library: IMMZD18SHepatitisALiveAttenuatedHAV1DoseLogic (IMMZ.D18.S.Hepatitis A.Live attenuated HAV 1-dose schedule) * Schedule Table: Live attenuated hepatitis A virus (HAV), 1 dose schedule */ library IMMZD18SHepatitisALiveAttenuatedHAV1DoseLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTHepatitisAEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Hepatitis A dose 1 @description: Provision of the hepatitis A dose 1 @trigger: Child's birth @pseudo: @triggerDate: "Date of birth" */ define "Hepatitis A dose 1": Encounter."No hepatitis A primary series dose was administered" and not "First hepatitis A dose from the primary series was administered. The primary series has been completed" /* @output: Hepatitis A dose 1 Create @create: Live vaccines are licensed for individuals aged ≥ 18 months and are administered as a single subcutaneous dose. */ define "Hepatitis A dose 1 Create": if "Hepatitis A dose 1" then 'Live vaccines are licensed for individuals aged ≥ 18 months and are administered as a single subcutaneous dose.' + ' Due Date: ' + ToString("Hepatitis A dose 1 Due Date") else '' /* @dynamicValue: Hepatitis A dose 1 Due Date @pseudocode: "Date of birth" + 18 months */ define "Hepatitis A dose 1 Due Date": if "Hepatitis A dose 1" then Patient.birthDate + 18 months else null /* @dynamicValue: Hepatitis A dose 1 Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "Hepatitis A dose 1 Overdue": null /* @dynamicValue: Hepatitis A dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Hepatitis A dose 1 Expiration": null /* @complete: First hepatitis A dose from the primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Hepatitis A-containing vaccines") */ define "First hepatitis A dose from the primary series was administered. The primary series has been completed": Encounter."One hepatitis A primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'HepatitisA30.1' then "Hepatitis A dose 1" when Patient.id = 'HepatitisA31.3' then "Hepatitis A dose 1" when Patient.id = 'HepatitisA32.3' then "Hepatitis A dose 1" when Patient.id = 'HepatitisA33.1' then "First hepatitis A dose from the primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Id: **
  * ?: IMMZD18SHepatitisALiveAttenuatedHAV1DoseLogic
* * **Content: **text/cql: ````/* * Library: IMMZD18SHepatitisALiveAttenuatedHAV1DoseLogic (IMMZ.D18.S.Hepatitis A.Live attenuated HAV 1-dose schedule) * Schedule Table: Live attenuated hepatitis A virus (HAV), 1 dose schedule */ library IMMZD18SHepatitisALiveAttenuatedHAV1DoseLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTHepatitisAEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Hepatitis A dose 1 @description: Provision of the hepatitis A dose 1 @trigger: Child's birth @pseudo: @triggerDate: "Date of birth" */ define "Hepatitis A dose 1": Encounter."No hepatitis A primary series dose was administered" and not "First hepatitis A dose from the primary series was administered. The primary series has been completed" /* @output: Hepatitis A dose 1 Create @create: Live vaccines are licensed for individuals aged ≥ 18 months and are administered as a single subcutaneous dose. */ define "Hepatitis A dose 1 Create": if "Hepatitis A dose 1" then 'Live vaccines are licensed for individuals aged ≥ 18 months and are administered as a single subcutaneous dose.' + ' Due Date: ' + ToString("Hepatitis A dose 1 Due Date") else '' /* @dynamicValue: Hepatitis A dose 1 Due Date @pseudocode: "Date of birth" + 18 months */ define "Hepatitis A dose 1 Due Date": if "Hepatitis A dose 1" then Patient.birthDate + 18 months else null /* @dynamicValue: Hepatitis A dose 1 Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "Hepatitis A dose 1 Overdue": null /* @dynamicValue: Hepatitis A dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Hepatitis A dose 1 Expiration": null /* @complete: First hepatitis A dose from the primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Hepatitis A-containing vaccines") */ define "First hepatitis A dose from the primary series was administered. The primary series has been completed": Encounter."One hepatitis A primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'HepatitisA30.1' then "Hepatitis A dose 1" when Patient.id = 'HepatitisA31.3' then "Hepatitis A dose 1" when Patient.id = 'HepatitisA32.3' then "Hepatitis A dose 1" when Patient.id = 'HepatitisA33.1' then "First hepatitis A dose from the primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Version: **
  * ?: 1.0.0
* * **Content: **text/cql: ````/* * Library: IMMZD18SHepatitisALiveAttenuatedHAV1DoseLogic (IMMZ.D18.S.Hepatitis A.Live attenuated HAV 1-dose schedule) * Schedule Table: Live attenuated hepatitis A virus (HAV), 1 dose schedule */ library IMMZD18SHepatitisALiveAttenuatedHAV1DoseLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTHepatitisAEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Hepatitis A dose 1 @description: Provision of the hepatitis A dose 1 @trigger: Child's birth @pseudo: @triggerDate: "Date of birth" */ define "Hepatitis A dose 1": Encounter."No hepatitis A primary series dose was administered" and not "First hepatitis A dose from the primary series was administered. The primary series has been completed" /* @output: Hepatitis A dose 1 Create @create: Live vaccines are licensed for individuals aged ≥ 18 months and are administered as a single subcutaneous dose. */ define "Hepatitis A dose 1 Create": if "Hepatitis A dose 1" then 'Live vaccines are licensed for individuals aged ≥ 18 months and are administered as a single subcutaneous dose.' + ' Due Date: ' + ToString("Hepatitis A dose 1 Due Date") else '' /* @dynamicValue: Hepatitis A dose 1 Due Date @pseudocode: "Date of birth" + 18 months */ define "Hepatitis A dose 1 Due Date": if "Hepatitis A dose 1" then Patient.birthDate + 18 months else null /* @dynamicValue: Hepatitis A dose 1 Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "Hepatitis A dose 1 Overdue": null /* @dynamicValue: Hepatitis A dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Hepatitis A dose 1 Expiration": null /* @complete: First hepatitis A dose from the primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Hepatitis A-containing vaccines") */ define "First hepatitis A dose from the primary series was administered. The primary series has been completed": Encounter."One hepatitis A primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'HepatitisA30.1' then "Hepatitis A dose 1" when Patient.id = 'HepatitisA31.3' then "Hepatitis A dose 1" when Patient.id = 'HepatitisA32.3' then "Hepatitis A dose 1" when Patient.id = 'HepatitisA33.1' then "First hepatitis A dose from the primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Url: **
  * ?: [IMMZD18SHepatitisALiveAttenuatedHAV1DoseLogic](Library-IMMZD18SHepatitisALiveAttenuatedHAV1DoseLogic.md)
* * **Content: **text/cql: ````/* * Library: IMMZD18SHepatitisALiveAttenuatedHAV1DoseLogic (IMMZ.D18.S.Hepatitis A.Live attenuated HAV 1-dose schedule) * Schedule Table: Live attenuated hepatitis A virus (HAV), 1 dose schedule */ library IMMZD18SHepatitisALiveAttenuatedHAV1DoseLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTHepatitisAEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Hepatitis A dose 1 @description: Provision of the hepatitis A dose 1 @trigger: Child's birth @pseudo: @triggerDate: "Date of birth" */ define "Hepatitis A dose 1": Encounter."No hepatitis A primary series dose was administered" and not "First hepatitis A dose from the primary series was administered. The primary series has been completed" /* @output: Hepatitis A dose 1 Create @create: Live vaccines are licensed for individuals aged ≥ 18 months and are administered as a single subcutaneous dose. */ define "Hepatitis A dose 1 Create": if "Hepatitis A dose 1" then 'Live vaccines are licensed for individuals aged ≥ 18 months and are administered as a single subcutaneous dose.' + ' Due Date: ' + ToString("Hepatitis A dose 1 Due Date") else '' /* @dynamicValue: Hepatitis A dose 1 Due Date @pseudocode: "Date of birth" + 18 months */ define "Hepatitis A dose 1 Due Date": if "Hepatitis A dose 1" then Patient.birthDate + 18 months else null /* @dynamicValue: Hepatitis A dose 1 Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "Hepatitis A dose 1 Overdue": null /* @dynamicValue: Hepatitis A dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Hepatitis A dose 1 Expiration": null /* @complete: First hepatitis A dose from the primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Hepatitis A-containing vaccines") */ define "First hepatitis A dose from the primary series was administered. The primary series has been completed": Encounter."One hepatitis A primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'HepatitisA30.1' then "Hepatitis A dose 1" when Patient.id = 'HepatitisA31.3' then "Hepatitis A dose 1" when Patient.id = 'HepatitisA32.3' then "Hepatitis A dose 1" when Patient.id = 'HepatitisA33.1' then "First hepatitis A dose from the primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Status: **
  * ?: draft
* * **Content: **text/cql: ````/* * Library: IMMZD18SHepatitisALiveAttenuatedHAV1DoseLogic (IMMZ.D18.S.Hepatitis A.Live attenuated HAV 1-dose schedule) * Schedule Table: Live attenuated hepatitis A virus (HAV), 1 dose schedule */ library IMMZD18SHepatitisALiveAttenuatedHAV1DoseLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTHepatitisAEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Hepatitis A dose 1 @description: Provision of the hepatitis A dose 1 @trigger: Child's birth @pseudo: @triggerDate: "Date of birth" */ define "Hepatitis A dose 1": Encounter."No hepatitis A primary series dose was administered" and not "First hepatitis A dose from the primary series was administered. The primary series has been completed" /* @output: Hepatitis A dose 1 Create @create: Live vaccines are licensed for individuals aged ≥ 18 months and are administered as a single subcutaneous dose. */ define "Hepatitis A dose 1 Create": if "Hepatitis A dose 1" then 'Live vaccines are licensed for individuals aged ≥ 18 months and are administered as a single subcutaneous dose.' + ' Due Date: ' + ToString("Hepatitis A dose 1 Due Date") else '' /* @dynamicValue: Hepatitis A dose 1 Due Date @pseudocode: "Date of birth" + 18 months */ define "Hepatitis A dose 1 Due Date": if "Hepatitis A dose 1" then Patient.birthDate + 18 months else null /* @dynamicValue: Hepatitis A dose 1 Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "Hepatitis A dose 1 Overdue": null /* @dynamicValue: Hepatitis A dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Hepatitis A dose 1 Expiration": null /* @complete: First hepatitis A dose from the primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Hepatitis A-containing vaccines") */ define "First hepatitis A dose from the primary series was administered. The primary series has been completed": Encounter."One hepatitis A primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'HepatitisA30.1' then "Hepatitis A dose 1" when Patient.id = 'HepatitisA31.3' then "Hepatitis A dose 1" when Patient.id = 'HepatitisA32.3' then "Hepatitis A dose 1" when Patient.id = 'HepatitisA33.1' then "First hepatitis A dose from the primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Date: **
  * ?: 2026-04-09 13:50:16+0000
* * **Content: **text/cql: ````/* * Library: IMMZD18SHepatitisALiveAttenuatedHAV1DoseLogic (IMMZ.D18.S.Hepatitis A.Live attenuated HAV 1-dose schedule) * Schedule Table: Live attenuated hepatitis A virus (HAV), 1 dose schedule */ library IMMZD18SHepatitisALiveAttenuatedHAV1DoseLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTHepatitisAEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Hepatitis A dose 1 @description: Provision of the hepatitis A dose 1 @trigger: Child's birth @pseudo: @triggerDate: "Date of birth" */ define "Hepatitis A dose 1": Encounter."No hepatitis A primary series dose was administered" and not "First hepatitis A dose from the primary series was administered. The primary series has been completed" /* @output: Hepatitis A dose 1 Create @create: Live vaccines are licensed for individuals aged ≥ 18 months and are administered as a single subcutaneous dose. */ define "Hepatitis A dose 1 Create": if "Hepatitis A dose 1" then 'Live vaccines are licensed for individuals aged ≥ 18 months and are administered as a single subcutaneous dose.' + ' Due Date: ' + ToString("Hepatitis A dose 1 Due Date") else '' /* @dynamicValue: Hepatitis A dose 1 Due Date @pseudocode: "Date of birth" + 18 months */ define "Hepatitis A dose 1 Due Date": if "Hepatitis A dose 1" then Patient.birthDate + 18 months else null /* @dynamicValue: Hepatitis A dose 1 Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "Hepatitis A dose 1 Overdue": null /* @dynamicValue: Hepatitis A dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Hepatitis A dose 1 Expiration": null /* @complete: First hepatitis A dose from the primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Hepatitis A-containing vaccines") */ define "First hepatitis A dose from the primary series was administered. The primary series has been completed": Encounter."One hepatitis A primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'HepatitisA30.1' then "Hepatitis A dose 1" when Patient.id = 'HepatitisA31.3' then "Hepatitis A dose 1" when Patient.id = 'HepatitisA32.3' then "Hepatitis A dose 1" when Patient.id = 'HepatitisA33.1' then "First hepatitis A dose from the primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Publisher: **
  * ?: WHO
* * **Content: **text/cql: ````/* * Library: IMMZD18SHepatitisALiveAttenuatedHAV1DoseLogic (IMMZ.D18.S.Hepatitis A.Live attenuated HAV 1-dose schedule) * Schedule Table: Live attenuated hepatitis A virus (HAV), 1 dose schedule */ library IMMZD18SHepatitisALiveAttenuatedHAV1DoseLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTHepatitisAEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Hepatitis A dose 1 @description: Provision of the hepatitis A dose 1 @trigger: Child's birth @pseudo: @triggerDate: "Date of birth" */ define "Hepatitis A dose 1": Encounter."No hepatitis A primary series dose was administered" and not "First hepatitis A dose from the primary series was administered. The primary series has been completed" /* @output: Hepatitis A dose 1 Create @create: Live vaccines are licensed for individuals aged ≥ 18 months and are administered as a single subcutaneous dose. */ define "Hepatitis A dose 1 Create": if "Hepatitis A dose 1" then 'Live vaccines are licensed for individuals aged ≥ 18 months and are administered as a single subcutaneous dose.' + ' Due Date: ' + ToString("Hepatitis A dose 1 Due Date") else '' /* @dynamicValue: Hepatitis A dose 1 Due Date @pseudocode: "Date of birth" + 18 months */ define "Hepatitis A dose 1 Due Date": if "Hepatitis A dose 1" then Patient.birthDate + 18 months else null /* @dynamicValue: Hepatitis A dose 1 Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "Hepatitis A dose 1 Overdue": null /* @dynamicValue: Hepatitis A dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Hepatitis A dose 1 Expiration": null /* @complete: First hepatitis A dose from the primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Hepatitis A-containing vaccines") */ define "First hepatitis A dose from the primary series was administered. The primary series has been completed": Encounter."One hepatitis A primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'HepatitisA30.1' then "Hepatitis A dose 1" when Patient.id = 'HepatitisA31.3' then "Hepatitis A dose 1" when Patient.id = 'HepatitisA32.3' then "Hepatitis A dose 1" when Patient.id = 'HepatitisA33.1' then "First hepatitis A dose from the primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Description: **
  * ?: This library defines decision support logic for the IMMZ.D18.S.Hepatitis A.Live attenuated HAV 1-dose schedule table in the Immunization CPG



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "IMMZD18SHepatitisALiveAttenuatedHAV1DoseLogic",
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
  "url" : "http://smart.who.int/immunizations/Library/IMMZD18SHepatitisALiveAttenuatedHAV1DoseLogic",
  "version" : "1.0.0",
  "name" : "IMMZD18SHepatitisALiveAttenuatedHAV1DoseLogic",
  "title" : "IMMZD18SHepatitisALiveAttenuatedHAV1DoseLogic",
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
  "description" : "This library defines decision support logic for the IMMZ.D18.S.Hepatitis A.Live attenuated HAV 1-dose schedule table in the Immunization CPG",
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
    "data" : "LyoKICogTGlicmFyeTogSU1NWkQxOFNIZXBhdGl0aXNBTGl2ZUF0dGVudWF0ZWRIQVYxRG9zZUxvZ2ljIChJTU1aLkQxOC5TLkhlcGF0aXRpcyBBLkxpdmUgYXR0ZW51YXRlZCBIQVYgMS1kb3NlIHNjaGVkdWxlKQogKiBTY2hlZHVsZSBUYWJsZTogTGl2ZSBhdHRlbnVhdGVkIGhlcGF0aXRpcyBBIHZpcnVzIChIQVYpLCAxIGRvc2Ugc2NoZWR1bGUKICovCmxpYnJhcnkgSU1NWkQxOFNIZXBhdGl0aXNBTGl2ZUF0dGVudWF0ZWRIQVYxRG9zZUxvZ2ljCgp1c2luZyBGSElSIHZlcnNpb24gJzQuMC4xJwppbmNsdWRlIEZISVJIZWxwZXJzIHZlcnNpb24gJzQuMC4xJwoKaW5jbHVkZSBXSE9Db21tb24gY2FsbGVkIFdDCgppbmNsdWRlIElNTVpDb21tb24gY2FsbGVkIENvbW1vbgppbmNsdWRlIElNTVpDb25jZXB0cyBjYWxsZWQgQ29uY2VwdHMKCmluY2x1ZGUgSU1NWkVuY291bnRlckVsZW1lbnRzIGNhbGxlZCBJRQppbmNsdWRlIElNTVpEMkRUSGVwYXRpdGlzQUVuY291bnRlckVsZW1lbnRzIGNhbGxlZCBFbmNvdW50ZXIKCnBhcmFtZXRlciBUb2RheSBEYXRlIGRlZmF1bHQgVG9kYXkoKQoKCmNvbnRleHQgUGF0aWVudAoKCi8qCkBvdXRwdXQ6IEhlcGF0aXRpcyBBIGRvc2UgMQpAZGVzY3JpcHRpb246IFByb3Zpc2lvbiBvZiB0aGUgaGVwYXRpdGlzIEEgZG9zZSAxCkB0cmlnZ2VyOiBDaGlsZCdzIGJpcnRoCkBwc2V1ZG86IApAdHJpZ2dlckRhdGU6ICJEYXRlIG9mIGJpcnRoIgoqLwpkZWZpbmUgIkhlcGF0aXRpcyBBIGRvc2UgMSI6CiAgRW5jb3VudGVyLiJObyBoZXBhdGl0aXMgQSBwcmltYXJ5IHNlcmllcyBkb3NlIHdhcyBhZG1pbmlzdGVyZWQiCiAgYW5kIG5vdCAiRmlyc3QgaGVwYXRpdGlzIEEgZG9zZSBmcm9tIHRoZSBwcmltYXJ5IHNlcmllcyB3YXMgYWRtaW5pc3RlcmVkLiBUaGUgcHJpbWFyeSBzZXJpZXMgaGFzIGJlZW4gY29tcGxldGVkIgoKCi8qCkBvdXRwdXQ6IEhlcGF0aXRpcyBBIGRvc2UgMSBDcmVhdGUKQGNyZWF0ZTogTGl2ZSB2YWNjaW5lcyBhcmUgbGljZW5zZWQgZm9yIGluZGl2aWR1YWxzIGFnZWQg4omlIDE4IG1vbnRocyBhbmQgYXJlIGFkbWluaXN0ZXJlZCBhcyBhIHNpbmdsZSBzdWJjdXRhbmVvdXMgZG9zZS4KKi8KZGVmaW5lICJIZXBhdGl0aXMgQSBkb3NlIDEgQ3JlYXRlIjoKICBpZiAiSGVwYXRpdGlzIEEgZG9zZSAxIgogIHRoZW4gJ0xpdmUgdmFjY2luZXMgYXJlIGxpY2Vuc2VkIGZvciBpbmRpdmlkdWFscyBhZ2VkIOKJpSAxOCBtb250aHMgYW5kIGFyZSBhZG1pbmlzdGVyZWQgYXMgYSBzaW5nbGUgc3ViY3V0YW5lb3VzIGRvc2UuJyArICcKRHVlIERhdGU6ICcgKyBUb1N0cmluZygiSGVwYXRpdGlzIEEgZG9zZSAxIER1ZSBEYXRlIikKICBlbHNlICcnCgoKLyoKQGR5bmFtaWNWYWx1ZTogSGVwYXRpdGlzIEEgZG9zZSAxIER1ZSBEYXRlCkBwc2V1ZG9jb2RlOiAiRGF0ZSBvZiBiaXJ0aCIgKyAxOCBtb250aHMKKi8KZGVmaW5lICJIZXBhdGl0aXMgQSBkb3NlIDEgRHVlIERhdGUiOgogIGlmICJIZXBhdGl0aXMgQSBkb3NlIDEiIHRoZW4gUGF0aWVudC5iaXJ0aERhdGUgKyAxOCBtb250aHMKICBlbHNlIG51bGwKCgovKgpAZHluYW1pY1ZhbHVlOiBIZXBhdGl0aXMgQSBkb3NlIDEgT3ZlcmR1ZQpAcHNldWRvY29kZTogVG8gYmUgZGV0ZXJtaW5lZCBieSBNZW1iZXIgU3RhdGVzOyBob3dldmVyLCB0aGVyZSBpcyBubyByZWNvbW1lbmRlZCBvdmVyZHVlIGRhdGUgYW5kIGluZGl2aWR1YWxzIGFyZSBhbHdheXMgZWxpZ2libGUgdG8gYmUgdmFjY2luYXRlZC4KKi8KZGVmaW5lICJIZXBhdGl0aXMgQSBkb3NlIDEgT3ZlcmR1ZSI6CiAgbnVsbAoKCi8qCkBkeW5hbWljVmFsdWU6IEhlcGF0aXRpcyBBIGRvc2UgMSBFeHBpcmF0aW9uCkBwc2V1ZG9jb2RlOiBUbyBiZSBkZXRlcm1pbmVkIGJ5IE1lbWJlciBTdGF0ZXM7IGhvd2V2ZXIsIHRoZXJlIGlzIG5vIHJlY29tbWVuZGVkIGV4cGlyYXRpb24gZGF0ZSBhbmQgaW5kaXZpZHVhbHMgYXJlIGFsd2F5cyBlbGlnaWJsZSB0byBiZSB2YWNjaW5hdGVkLgoqLwpkZWZpbmUgIkhlcGF0aXRpcyBBIGRvc2UgMSBFeHBpcmF0aW9uIjoKICBudWxsCgogIAovKgpAY29tcGxldGU6IEZpcnN0IGhlcGF0aXRpcyBBIGRvc2UgZnJvbSB0aGUgcHJpbWFyeSBzZXJpZXMgd2FzIGFkbWluaXN0ZXJlZC4gVGhlIHByaW1hcnkgc2VyaWVzIGhhcyBiZWVuIGNvbXBsZXRlZApAcHNldWRvY29kZTogIkNvbXBsZXRlZCB0aGUgcHJpbWFyeSB2YWNjaW5hdGlvbiBzZXJpZXMiID0gVFJVRSAod2hlcmUgIlZhY2NpbmUgdHlwZSIgPSAiSGVwYXRpdGlzIEEtY29udGFpbmluZyB2YWNjaW5lcyIpCiovCmRlZmluZSAiRmlyc3QgaGVwYXRpdGlzIEEgZG9zZSBmcm9tIHRoZSBwcmltYXJ5IHNlcmllcyB3YXMgYWRtaW5pc3RlcmVkLiBUaGUgcHJpbWFyeSBzZXJpZXMgaGFzIGJlZW4gY29tcGxldGVkIjoKICBFbmNvdW50ZXIuIk9uZSBoZXBhdGl0aXMgQSBwcmltYXJ5IHNlcmllcyBkb3NlIHdhcyBhZG1pbmlzdGVyZWQiCgoKCi8qCkB0ZXN0OiBUZXN0IGV4cGVjdGVkIHJlc3VsdHMgYmFzZWQgb24gZXhhbXBsZSBwYXRpZW50cwoqLwpkZWZpbmUgIlRlc3QgVmFsaWRhdGlvbiI6CiAgY2FzZQogICAgd2hlbiBQYXRpZW50LmlkID0gJ0hlcGF0aXRpc0EzMC4xJyB0aGVuICJIZXBhdGl0aXMgQSBkb3NlIDEiCiAgICB3aGVuIFBhdGllbnQuaWQgPSAnSGVwYXRpdGlzQTMxLjMnIHRoZW4gIkhlcGF0aXRpcyBBIGRvc2UgMSIKICAgIHdoZW4gUGF0aWVudC5pZCA9ICdIZXBhdGl0aXNBMzIuMycgdGhlbiAiSGVwYXRpdGlzIEEgZG9zZSAxIgogICAgd2hlbiBQYXRpZW50LmlkID0gJ0hlcGF0aXRpc0EzMy4xJyB0aGVuICJGaXJzdCBoZXBhdGl0aXMgQSBkb3NlIGZyb20gdGhlIHByaW1hcnkgc2VyaWVzIHdhcyBhZG1pbmlzdGVyZWQuIFRoZSBwcmltYXJ5IHNlcmllcyBoYXMgYmVlbiBjb21wbGV0ZWQiCiAgICBlbHNlICdObyB0ZXN0IGNhc2Ugc2V0JwogIGVuZAo="
  }]
}

```
