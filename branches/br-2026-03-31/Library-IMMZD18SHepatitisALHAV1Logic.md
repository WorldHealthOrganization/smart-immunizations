# IMMZD18SHepatitisALHAV1Logic - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD18SHepatitisALHAV1Logic**

## Library: IMMZD18SHepatitisALHAV1Logic (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Library/IMMZD18SHepatitisALHAV1Logic | *Version*:0.2.0 |
| Draft as of 2026-03-31 | *Computable Name*:IMMZD18SHepatitisALHAV1Logic |

 
This library defines decision support logic for the IMMZ.D18.S.Hepatitis A.Live attenuated HAV 1-dose schedule table in the Immunization CPG 

* * **Content: **text/cql: ```` /* * Library: IMMZD18SHepatitisALHAV1Logic (IMMZ.D18.S.Hepatitis A.Live attenuated HAV 1-dose schedule) * Schedule Table: Live attenuated hepatitis A virus (HAV), 1 dose schedule */ library IMMZD18SHepatitisALHAV1Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTHepatitisAEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Hepatitis A dose 1 @description: Provision of the hepatitis A dose 1 @trigger: Child's birth @triggerDate: "Date of birth" */ define "Hepatitis A dose 1": Encounter."No hepatitis A primary series dose was administered" and not "First hepatitis A dose from the primary series was administered. The primary series has been completed" /* @output: Hepatitis A dose 1 Create @create: Live vaccines are licensed for individuals aged ≥ 18 months and are administered as a single subcutaneous dose. */ define "Hepatitis A dose 1 Create": if "Hepatitis A dose 1" then 'Live vaccines are licensed for individuals aged ≥ 18 months and are administered as a single subcutaneous dose.' + ' Due Date: ' + ToString("Hepatitis A dose 1 Due Date") else '' /* @dynamicValue: Hepatitis A dose 1 Due Date @pseudocode: "Date of birth" + 18 months */ define "Hepatitis A dose 1 Due Date": if "Hepatitis A dose 1" then Patient.birthDate + 18 months else null /* @dynamicValue: Hepatitis A dose 1 Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "Hepatitis A dose 1 Overdue": null /* @dynamicValue: Hepatitis A dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Hepatitis A dose 1 Expiration": null /* @complete: First hepatitis A dose from the primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Hepatitis A-containing vaccines") */ define "First hepatitis A dose from the primary series was administered. The primary series has been completed": Encounter."One hepatitis A primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = '30.1' then "Hepatitis A dose 1" when Patient.id = '31.012' then "Hepatitis A dose 1" when Patient.id = '32.012' then "Hepatitis A dose 1" when Patient.id = '33.0' then "First hepatitis A dose from the primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Id: **
  * ?: IMMZD18SHepatitisALHAV1Logic
* * **Content: **text/cql: ```` /* * Library: IMMZD18SHepatitisALHAV1Logic (IMMZ.D18.S.Hepatitis A.Live attenuated HAV 1-dose schedule) * Schedule Table: Live attenuated hepatitis A virus (HAV), 1 dose schedule */ library IMMZD18SHepatitisALHAV1Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTHepatitisAEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Hepatitis A dose 1 @description: Provision of the hepatitis A dose 1 @trigger: Child's birth @triggerDate: "Date of birth" */ define "Hepatitis A dose 1": Encounter."No hepatitis A primary series dose was administered" and not "First hepatitis A dose from the primary series was administered. The primary series has been completed" /* @output: Hepatitis A dose 1 Create @create: Live vaccines are licensed for individuals aged ≥ 18 months and are administered as a single subcutaneous dose. */ define "Hepatitis A dose 1 Create": if "Hepatitis A dose 1" then 'Live vaccines are licensed for individuals aged ≥ 18 months and are administered as a single subcutaneous dose.' + ' Due Date: ' + ToString("Hepatitis A dose 1 Due Date") else '' /* @dynamicValue: Hepatitis A dose 1 Due Date @pseudocode: "Date of birth" + 18 months */ define "Hepatitis A dose 1 Due Date": if "Hepatitis A dose 1" then Patient.birthDate + 18 months else null /* @dynamicValue: Hepatitis A dose 1 Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "Hepatitis A dose 1 Overdue": null /* @dynamicValue: Hepatitis A dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Hepatitis A dose 1 Expiration": null /* @complete: First hepatitis A dose from the primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Hepatitis A-containing vaccines") */ define "First hepatitis A dose from the primary series was administered. The primary series has been completed": Encounter."One hepatitis A primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = '30.1' then "Hepatitis A dose 1" when Patient.id = '31.012' then "Hepatitis A dose 1" when Patient.id = '32.012' then "Hepatitis A dose 1" when Patient.id = '33.0' then "First hepatitis A dose from the primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Version: **
  * ?: 0.2.0
* * **Content: **text/cql: ```` /* * Library: IMMZD18SHepatitisALHAV1Logic (IMMZ.D18.S.Hepatitis A.Live attenuated HAV 1-dose schedule) * Schedule Table: Live attenuated hepatitis A virus (HAV), 1 dose schedule */ library IMMZD18SHepatitisALHAV1Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTHepatitisAEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Hepatitis A dose 1 @description: Provision of the hepatitis A dose 1 @trigger: Child's birth @triggerDate: "Date of birth" */ define "Hepatitis A dose 1": Encounter."No hepatitis A primary series dose was administered" and not "First hepatitis A dose from the primary series was administered. The primary series has been completed" /* @output: Hepatitis A dose 1 Create @create: Live vaccines are licensed for individuals aged ≥ 18 months and are administered as a single subcutaneous dose. */ define "Hepatitis A dose 1 Create": if "Hepatitis A dose 1" then 'Live vaccines are licensed for individuals aged ≥ 18 months and are administered as a single subcutaneous dose.' + ' Due Date: ' + ToString("Hepatitis A dose 1 Due Date") else '' /* @dynamicValue: Hepatitis A dose 1 Due Date @pseudocode: "Date of birth" + 18 months */ define "Hepatitis A dose 1 Due Date": if "Hepatitis A dose 1" then Patient.birthDate + 18 months else null /* @dynamicValue: Hepatitis A dose 1 Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "Hepatitis A dose 1 Overdue": null /* @dynamicValue: Hepatitis A dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Hepatitis A dose 1 Expiration": null /* @complete: First hepatitis A dose from the primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Hepatitis A-containing vaccines") */ define "First hepatitis A dose from the primary series was administered. The primary series has been completed": Encounter."One hepatitis A primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = '30.1' then "Hepatitis A dose 1" when Patient.id = '31.012' then "Hepatitis A dose 1" when Patient.id = '32.012' then "Hepatitis A dose 1" when Patient.id = '33.0' then "First hepatitis A dose from the primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Url: **
  * ?: [IMMZD18SHepatitisALHAV1Logic](Library-IMMZD18SHepatitisALHAV1Logic.md)
* * **Content: **text/cql: ```` /* * Library: IMMZD18SHepatitisALHAV1Logic (IMMZ.D18.S.Hepatitis A.Live attenuated HAV 1-dose schedule) * Schedule Table: Live attenuated hepatitis A virus (HAV), 1 dose schedule */ library IMMZD18SHepatitisALHAV1Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTHepatitisAEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Hepatitis A dose 1 @description: Provision of the hepatitis A dose 1 @trigger: Child's birth @triggerDate: "Date of birth" */ define "Hepatitis A dose 1": Encounter."No hepatitis A primary series dose was administered" and not "First hepatitis A dose from the primary series was administered. The primary series has been completed" /* @output: Hepatitis A dose 1 Create @create: Live vaccines are licensed for individuals aged ≥ 18 months and are administered as a single subcutaneous dose. */ define "Hepatitis A dose 1 Create": if "Hepatitis A dose 1" then 'Live vaccines are licensed for individuals aged ≥ 18 months and are administered as a single subcutaneous dose.' + ' Due Date: ' + ToString("Hepatitis A dose 1 Due Date") else '' /* @dynamicValue: Hepatitis A dose 1 Due Date @pseudocode: "Date of birth" + 18 months */ define "Hepatitis A dose 1 Due Date": if "Hepatitis A dose 1" then Patient.birthDate + 18 months else null /* @dynamicValue: Hepatitis A dose 1 Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "Hepatitis A dose 1 Overdue": null /* @dynamicValue: Hepatitis A dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Hepatitis A dose 1 Expiration": null /* @complete: First hepatitis A dose from the primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Hepatitis A-containing vaccines") */ define "First hepatitis A dose from the primary series was administered. The primary series has been completed": Encounter."One hepatitis A primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = '30.1' then "Hepatitis A dose 1" when Patient.id = '31.012' then "Hepatitis A dose 1" when Patient.id = '32.012' then "Hepatitis A dose 1" when Patient.id = '33.0' then "First hepatitis A dose from the primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Status: **
  * ?: draft
* * **Content: **text/cql: ```` /* * Library: IMMZD18SHepatitisALHAV1Logic (IMMZ.D18.S.Hepatitis A.Live attenuated HAV 1-dose schedule) * Schedule Table: Live attenuated hepatitis A virus (HAV), 1 dose schedule */ library IMMZD18SHepatitisALHAV1Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTHepatitisAEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Hepatitis A dose 1 @description: Provision of the hepatitis A dose 1 @trigger: Child's birth @triggerDate: "Date of birth" */ define "Hepatitis A dose 1": Encounter."No hepatitis A primary series dose was administered" and not "First hepatitis A dose from the primary series was administered. The primary series has been completed" /* @output: Hepatitis A dose 1 Create @create: Live vaccines are licensed for individuals aged ≥ 18 months and are administered as a single subcutaneous dose. */ define "Hepatitis A dose 1 Create": if "Hepatitis A dose 1" then 'Live vaccines are licensed for individuals aged ≥ 18 months and are administered as a single subcutaneous dose.' + ' Due Date: ' + ToString("Hepatitis A dose 1 Due Date") else '' /* @dynamicValue: Hepatitis A dose 1 Due Date @pseudocode: "Date of birth" + 18 months */ define "Hepatitis A dose 1 Due Date": if "Hepatitis A dose 1" then Patient.birthDate + 18 months else null /* @dynamicValue: Hepatitis A dose 1 Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "Hepatitis A dose 1 Overdue": null /* @dynamicValue: Hepatitis A dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Hepatitis A dose 1 Expiration": null /* @complete: First hepatitis A dose from the primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Hepatitis A-containing vaccines") */ define "First hepatitis A dose from the primary series was administered. The primary series has been completed": Encounter."One hepatitis A primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = '30.1' then "Hepatitis A dose 1" when Patient.id = '31.012' then "Hepatitis A dose 1" when Patient.id = '32.012' then "Hepatitis A dose 1" when Patient.id = '33.0' then "First hepatitis A dose from the primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Experimental: **
  * ?: true
* * **Content: **text/cql: ```` /* * Library: IMMZD18SHepatitisALHAV1Logic (IMMZ.D18.S.Hepatitis A.Live attenuated HAV 1-dose schedule) * Schedule Table: Live attenuated hepatitis A virus (HAV), 1 dose schedule */ library IMMZD18SHepatitisALHAV1Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTHepatitisAEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Hepatitis A dose 1 @description: Provision of the hepatitis A dose 1 @trigger: Child's birth @triggerDate: "Date of birth" */ define "Hepatitis A dose 1": Encounter."No hepatitis A primary series dose was administered" and not "First hepatitis A dose from the primary series was administered. The primary series has been completed" /* @output: Hepatitis A dose 1 Create @create: Live vaccines are licensed for individuals aged ≥ 18 months and are administered as a single subcutaneous dose. */ define "Hepatitis A dose 1 Create": if "Hepatitis A dose 1" then 'Live vaccines are licensed for individuals aged ≥ 18 months and are administered as a single subcutaneous dose.' + ' Due Date: ' + ToString("Hepatitis A dose 1 Due Date") else '' /* @dynamicValue: Hepatitis A dose 1 Due Date @pseudocode: "Date of birth" + 18 months */ define "Hepatitis A dose 1 Due Date": if "Hepatitis A dose 1" then Patient.birthDate + 18 months else null /* @dynamicValue: Hepatitis A dose 1 Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "Hepatitis A dose 1 Overdue": null /* @dynamicValue: Hepatitis A dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Hepatitis A dose 1 Expiration": null /* @complete: First hepatitis A dose from the primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Hepatitis A-containing vaccines") */ define "First hepatitis A dose from the primary series was administered. The primary series has been completed": Encounter."One hepatitis A primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = '30.1' then "Hepatitis A dose 1" when Patient.id = '31.012' then "Hepatitis A dose 1" when Patient.id = '32.012' then "Hepatitis A dose 1" when Patient.id = '33.0' then "First hepatitis A dose from the primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Date: **
  * ?: 2026-03-31 13:43:43+0000
* * **Content: **text/cql: ```` /* * Library: IMMZD18SHepatitisALHAV1Logic (IMMZ.D18.S.Hepatitis A.Live attenuated HAV 1-dose schedule) * Schedule Table: Live attenuated hepatitis A virus (HAV), 1 dose schedule */ library IMMZD18SHepatitisALHAV1Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTHepatitisAEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Hepatitis A dose 1 @description: Provision of the hepatitis A dose 1 @trigger: Child's birth @triggerDate: "Date of birth" */ define "Hepatitis A dose 1": Encounter."No hepatitis A primary series dose was administered" and not "First hepatitis A dose from the primary series was administered. The primary series has been completed" /* @output: Hepatitis A dose 1 Create @create: Live vaccines are licensed for individuals aged ≥ 18 months and are administered as a single subcutaneous dose. */ define "Hepatitis A dose 1 Create": if "Hepatitis A dose 1" then 'Live vaccines are licensed for individuals aged ≥ 18 months and are administered as a single subcutaneous dose.' + ' Due Date: ' + ToString("Hepatitis A dose 1 Due Date") else '' /* @dynamicValue: Hepatitis A dose 1 Due Date @pseudocode: "Date of birth" + 18 months */ define "Hepatitis A dose 1 Due Date": if "Hepatitis A dose 1" then Patient.birthDate + 18 months else null /* @dynamicValue: Hepatitis A dose 1 Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "Hepatitis A dose 1 Overdue": null /* @dynamicValue: Hepatitis A dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Hepatitis A dose 1 Expiration": null /* @complete: First hepatitis A dose from the primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Hepatitis A-containing vaccines") */ define "First hepatitis A dose from the primary series was administered. The primary series has been completed": Encounter."One hepatitis A primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = '30.1' then "Hepatitis A dose 1" when Patient.id = '31.012' then "Hepatitis A dose 1" when Patient.id = '32.012' then "Hepatitis A dose 1" when Patient.id = '33.0' then "First hepatitis A dose from the primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Publisher: **
  * ?: WHO
* * **Content: **text/cql: ```` /* * Library: IMMZD18SHepatitisALHAV1Logic (IMMZ.D18.S.Hepatitis A.Live attenuated HAV 1-dose schedule) * Schedule Table: Live attenuated hepatitis A virus (HAV), 1 dose schedule */ library IMMZD18SHepatitisALHAV1Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTHepatitisAEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Hepatitis A dose 1 @description: Provision of the hepatitis A dose 1 @trigger: Child's birth @triggerDate: "Date of birth" */ define "Hepatitis A dose 1": Encounter."No hepatitis A primary series dose was administered" and not "First hepatitis A dose from the primary series was administered. The primary series has been completed" /* @output: Hepatitis A dose 1 Create @create: Live vaccines are licensed for individuals aged ≥ 18 months and are administered as a single subcutaneous dose. */ define "Hepatitis A dose 1 Create": if "Hepatitis A dose 1" then 'Live vaccines are licensed for individuals aged ≥ 18 months and are administered as a single subcutaneous dose.' + ' Due Date: ' + ToString("Hepatitis A dose 1 Due Date") else '' /* @dynamicValue: Hepatitis A dose 1 Due Date @pseudocode: "Date of birth" + 18 months */ define "Hepatitis A dose 1 Due Date": if "Hepatitis A dose 1" then Patient.birthDate + 18 months else null /* @dynamicValue: Hepatitis A dose 1 Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "Hepatitis A dose 1 Overdue": null /* @dynamicValue: Hepatitis A dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Hepatitis A dose 1 Expiration": null /* @complete: First hepatitis A dose from the primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Hepatitis A-containing vaccines") */ define "First hepatitis A dose from the primary series was administered. The primary series has been completed": Encounter."One hepatitis A primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = '30.1' then "Hepatitis A dose 1" when Patient.id = '31.012' then "Hepatitis A dose 1" when Patient.id = '32.012' then "Hepatitis A dose 1" when Patient.id = '33.0' then "First hepatitis A dose from the primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Description: **
  * ?: This library defines decision support logic for the IMMZ.D18.S.Hepatitis A.Live attenuated HAV 1-dose schedule table in the Immunization CPG



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "IMMZD18SHepatitisALHAV1Logic",
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
  "url" : "http://smart.who.int/immunizations/Library/IMMZD18SHepatitisALHAV1Logic",
  "version" : "0.2.0",
  "name" : "IMMZD18SHepatitisALHAV1Logic",
  "title" : "IMMZD18SHepatitisALHAV1Logic",
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
    "data" : "Ci8qCiAqIExpYnJhcnk6IElNTVpEMThTSGVwYXRpdGlzQUxIQVYxTG9naWMgKElNTVouRDE4LlMuSGVwYXRpdGlzIEEuTGl2ZSBhdHRlbnVhdGVkIEhBViAxLWRvc2Ugc2NoZWR1bGUpCiAqIFNjaGVkdWxlIFRhYmxlOiBMaXZlIGF0dGVudWF0ZWQgaGVwYXRpdGlzIEEgdmlydXMgKEhBViksIDEgZG9zZSBzY2hlZHVsZQogKi8KbGlicmFyeSBJTU1aRDE4U0hlcGF0aXRpc0FMSEFWMUxvZ2ljCgp1c2luZyBGSElSIHZlcnNpb24gJzQuMC4xJwppbmNsdWRlIEZISVJIZWxwZXJzIHZlcnNpb24gJzQuMC4xJwoKaW5jbHVkZSBXSE9Db21tb24gY2FsbGVkIFdDCgppbmNsdWRlIElNTVpDb21tb24gY2FsbGVkIENvbW1vbgppbmNsdWRlIElNTVpDb25jZXB0cyBjYWxsZWQgQ29uY2VwdHMKCmluY2x1ZGUgSU1NWkVuY291bnRlckVsZW1lbnRzIGNhbGxlZCBJRQppbmNsdWRlIElNTVpEMkRUSGVwYXRpdGlzQUVuY291bnRlckVsZW1lbnRzIGNhbGxlZCBFbmNvdW50ZXIKCnBhcmFtZXRlciBUb2RheSBEYXRlIGRlZmF1bHQgVG9kYXkoKQoKY29udGV4dCBQYXRpZW50CgoKLyoKQG91dHB1dDogSGVwYXRpdGlzIEEgZG9zZSAxCkBkZXNjcmlwdGlvbjogUHJvdmlzaW9uIG9mIHRoZSBoZXBhdGl0aXMgQSBkb3NlIDEKQHRyaWdnZXI6IENoaWxkJ3MgYmlydGgKQHRyaWdnZXJEYXRlOiAiRGF0ZSBvZiBiaXJ0aCIKKi8KZGVmaW5lICJIZXBhdGl0aXMgQSBkb3NlIDEiOgogIEVuY291bnRlci4iTm8gaGVwYXRpdGlzIEEgcHJpbWFyeSBzZXJpZXMgZG9zZSB3YXMgYWRtaW5pc3RlcmVkIgogIGFuZCBub3QgIkZpcnN0IGhlcGF0aXRpcyBBIGRvc2UgZnJvbSB0aGUgcHJpbWFyeSBzZXJpZXMgd2FzIGFkbWluaXN0ZXJlZC4gVGhlIHByaW1hcnkgc2VyaWVzIGhhcyBiZWVuIGNvbXBsZXRlZCIKCi8qCkBvdXRwdXQ6IEhlcGF0aXRpcyBBIGRvc2UgMSBDcmVhdGUKQGNyZWF0ZTogTGl2ZSB2YWNjaW5lcyBhcmUgbGljZW5zZWQgZm9yIGluZGl2aWR1YWxzIGFnZWQg4omlIDE4IG1vbnRocyBhbmQgYXJlIGFkbWluaXN0ZXJlZCBhcyBhIHNpbmdsZSBzdWJjdXRhbmVvdXMgZG9zZS4KKi8KZGVmaW5lICJIZXBhdGl0aXMgQSBkb3NlIDEgQ3JlYXRlIjoKICBpZiAiSGVwYXRpdGlzIEEgZG9zZSAxIiAKICB0aGVuICdMaXZlIHZhY2NpbmVzIGFyZSBsaWNlbnNlZCBmb3IgaW5kaXZpZHVhbHMgYWdlZCDiiaUgMTggbW9udGhzIGFuZCBhcmUgYWRtaW5pc3RlcmVkIGFzIGEgc2luZ2xlIHN1YmN1dGFuZW91cyBkb3NlLicgKyAnCkR1ZSBEYXRlOiAnICsgVG9TdHJpbmcoIkhlcGF0aXRpcyBBIGRvc2UgMSBEdWUgRGF0ZSIpCiAgZWxzZSAnJwoKLyoKQGR5bmFtaWNWYWx1ZTogSGVwYXRpdGlzIEEgZG9zZSAxIER1ZSBEYXRlCkBwc2V1ZG9jb2RlOiAiRGF0ZSBvZiBiaXJ0aCIgKyAxOCBtb250aHMKKi8KZGVmaW5lICJIZXBhdGl0aXMgQSBkb3NlIDEgRHVlIERhdGUiOgogIGlmICJIZXBhdGl0aXMgQSBkb3NlIDEiIHRoZW4gUGF0aWVudC5iaXJ0aERhdGUgKyAxOCBtb250aHMKICBlbHNlIG51bGwKCi8qCkBkeW5hbWljVmFsdWU6IEhlcGF0aXRpcyBBIGRvc2UgMSBPdmVyZHVlCkBwc2V1ZG9jb2RlOiBUbyBiZSBkZXRlcm1pbmVkIGJ5IE1lbWJlciBTdGF0ZXM7IGhvd2V2ZXIsIHRoZXJlIGlzIG5vIHJlY29tbWVuZGVkIG92ZXJkdWUgZGF0ZSBhbmQgaW5kaXZpZHVhbHMgYXJlIGFsd2F5cyBlbGlnaWJsZSB0byBiZSB2YWNjaW5hdGVkLgoqLwpkZWZpbmUgIkhlcGF0aXRpcyBBIGRvc2UgMSBPdmVyZHVlIjoKICBudWxsCgovKgpAZHluYW1pY1ZhbHVlOiBIZXBhdGl0aXMgQSBkb3NlIDEgRXhwaXJhdGlvbgpAcHNldWRvY29kZTogVG8gYmUgZGV0ZXJtaW5lZCBieSBNZW1iZXIgU3RhdGVzOyBob3dldmVyLCB0aGVyZSBpcyBubyByZWNvbW1lbmRlZCBleHBpcmF0aW9uIGRhdGUgYW5kIGluZGl2aWR1YWxzIGFyZSBhbHdheXMgZWxpZ2libGUgdG8gYmUgdmFjY2luYXRlZC4KKi8KZGVmaW5lICJIZXBhdGl0aXMgQSBkb3NlIDEgRXhwaXJhdGlvbiI6CiAgbnVsbAogIAovKgpAY29tcGxldGU6IEZpcnN0IGhlcGF0aXRpcyBBIGRvc2UgZnJvbSB0aGUgcHJpbWFyeSBzZXJpZXMgd2FzIGFkbWluaXN0ZXJlZC4gVGhlIHByaW1hcnkgc2VyaWVzIGhhcyBiZWVuIGNvbXBsZXRlZApAcHNldWRvY29kZTogIkNvbXBsZXRlZCB0aGUgcHJpbWFyeSB2YWNjaW5hdGlvbiBzZXJpZXMiID0gVFJVRSAod2hlcmUgIlZhY2NpbmUgdHlwZSIgPSAiSGVwYXRpdGlzIEEtY29udGFpbmluZyB2YWNjaW5lcyIpCiovCmRlZmluZSAiRmlyc3QgaGVwYXRpdGlzIEEgZG9zZSBmcm9tIHRoZSBwcmltYXJ5IHNlcmllcyB3YXMgYWRtaW5pc3RlcmVkLiBUaGUgcHJpbWFyeSBzZXJpZXMgaGFzIGJlZW4gY29tcGxldGVkIjoKICBFbmNvdW50ZXIuIk9uZSBoZXBhdGl0aXMgQSBwcmltYXJ5IHNlcmllcyBkb3NlIHdhcyBhZG1pbmlzdGVyZWQiCgovKgpAdGVzdDogVGVzdCBleHBlY3RlZCByZXN1bHRzIGJhc2VkIG9uIGV4YW1wbGUgcGF0aWVudHMKKi8KZGVmaW5lICJUZXN0IFZhbGlkYXRpb24iOgogIGNhc2UKICAgIHdoZW4gUGF0aWVudC5pZCA9ICczMC4xJyB0aGVuICJIZXBhdGl0aXMgQSBkb3NlIDEiCiAgICB3aGVuIFBhdGllbnQuaWQgPSAnMzEuMDEyJyB0aGVuICJIZXBhdGl0aXMgQSBkb3NlIDEiCiAgICB3aGVuIFBhdGllbnQuaWQgPSAnMzIuMDEyJyB0aGVuICJIZXBhdGl0aXMgQSBkb3NlIDEiCiAgICB3aGVuIFBhdGllbnQuaWQgPSAnMzMuMCcgdGhlbiAiRmlyc3QgaGVwYXRpdGlzIEEgZG9zZSBmcm9tIHRoZSBwcmltYXJ5IHNlcmllcyB3YXMgYWRtaW5pc3RlcmVkLiBUaGUgcHJpbWFyeSBzZXJpZXMgaGFzIGJlZW4gY29tcGxldGVkIgogICAgZWxzZSAnTm8gdGVzdCBjYXNlIHNldCcKICBlbmQK"
  }]
}

```
