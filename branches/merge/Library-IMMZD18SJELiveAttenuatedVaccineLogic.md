# IMMZD18SJELiveAttenuatedVaccineLogic - WHO Immunization Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD18SJELiveAttenuatedVaccineLogic**

## Library: IMMZD18SJELiveAttenuatedVaccineLogic 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Library/IMMZD18SJELiveAttenuatedVaccineLogic | *Version*:1.0.0 |
| Draft as of 2026-03-31 | *Computable Name*:IMMZD18SJELiveAttenuatedVaccineLogic |

 
This library defines decision support logic for the IMMZ.D18.S.JE.Live attenuated vaccination schedule table in the Immunization CPG 

* * **Content: **text/cql: ````/* * Library: IMMZD18SJELiveAttenuatedVaccineLogic (IMMZ.D18.S.JE.Live attenuated vaccination schedule) * Schedule Table: Live attenuated vaccination schedule (1-dose scheme) */ library IMMZD18SJELiveAttenuatedVaccineLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTJEEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Japanese encephalitis (JE) dose 1 @description: Provision of the JE dose 1 @trigger: Child's birth @pseudo: @triggerDate: "Date of birth" */ define "Japanese encephalitis (JE) dose 1": Encounter."No JE primary series doses were administered" and not "One JE dose from primary series was administered. The primary series has been completed" /* @output: Japanese encephalitis (JE) dose 1 Create @create: Live attenuated vaccine: Single dose administered at ≥ 8 months of age */ define "Japanese encephalitis (JE) dose 1 Create": if "Japanese encephalitis (JE) dose 1" then 'Live attenuated vaccine: Single dose administered at ≥ 8 months of age' + ' Due Date: ' + ToString("Japanese encephalitis (JE) dose 1 Due Date") else '' /* @dynamicValue: Japanese encephalitis (JE) dose 1 Due Date @pseudocode: "Date of birth" + 8 months */ define "Japanese encephalitis (JE) dose 1 Due Date": if "Japanese encephalitis (JE) dose 1" then Patient.birthDate + 8 months else null /* @dynamicValue: Japanese encephalitis (JE) dose 1 Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "Japanese encephalitis (JE) dose 1 Overdue": null /* @dynamicValue: Japanese encephalitis (JE) dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Japanese encephalitis (JE) dose 1 Expiration": null /* @complete: One JE dose from primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "JE vaccines") */ define "One JE dose from primary series was administered. The primary series has been completed": Encounter."One JE primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'JE20.1' then "Japanese encephalitis (JE) dose 1" when Patient.id = 'JE21.3' then "Japanese encephalitis (JE) dose 1" when Patient.id = 'JE22.3' then "Japanese encephalitis (JE) dose 1" when Patient.id = 'JE23.1' then "One JE dose from primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Id: **
  * ?: IMMZD18SJELiveAttenuatedVaccineLogic
* * **Content: **text/cql: ````/* * Library: IMMZD18SJELiveAttenuatedVaccineLogic (IMMZ.D18.S.JE.Live attenuated vaccination schedule) * Schedule Table: Live attenuated vaccination schedule (1-dose scheme) */ library IMMZD18SJELiveAttenuatedVaccineLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTJEEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Japanese encephalitis (JE) dose 1 @description: Provision of the JE dose 1 @trigger: Child's birth @pseudo: @triggerDate: "Date of birth" */ define "Japanese encephalitis (JE) dose 1": Encounter."No JE primary series doses were administered" and not "One JE dose from primary series was administered. The primary series has been completed" /* @output: Japanese encephalitis (JE) dose 1 Create @create: Live attenuated vaccine: Single dose administered at ≥ 8 months of age */ define "Japanese encephalitis (JE) dose 1 Create": if "Japanese encephalitis (JE) dose 1" then 'Live attenuated vaccine: Single dose administered at ≥ 8 months of age' + ' Due Date: ' + ToString("Japanese encephalitis (JE) dose 1 Due Date") else '' /* @dynamicValue: Japanese encephalitis (JE) dose 1 Due Date @pseudocode: "Date of birth" + 8 months */ define "Japanese encephalitis (JE) dose 1 Due Date": if "Japanese encephalitis (JE) dose 1" then Patient.birthDate + 8 months else null /* @dynamicValue: Japanese encephalitis (JE) dose 1 Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "Japanese encephalitis (JE) dose 1 Overdue": null /* @dynamicValue: Japanese encephalitis (JE) dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Japanese encephalitis (JE) dose 1 Expiration": null /* @complete: One JE dose from primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "JE vaccines") */ define "One JE dose from primary series was administered. The primary series has been completed": Encounter."One JE primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'JE20.1' then "Japanese encephalitis (JE) dose 1" when Patient.id = 'JE21.3' then "Japanese encephalitis (JE) dose 1" when Patient.id = 'JE22.3' then "Japanese encephalitis (JE) dose 1" when Patient.id = 'JE23.1' then "One JE dose from primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Version: **
  * ?: 1.0.0
* * **Content: **text/cql: ````/* * Library: IMMZD18SJELiveAttenuatedVaccineLogic (IMMZ.D18.S.JE.Live attenuated vaccination schedule) * Schedule Table: Live attenuated vaccination schedule (1-dose scheme) */ library IMMZD18SJELiveAttenuatedVaccineLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTJEEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Japanese encephalitis (JE) dose 1 @description: Provision of the JE dose 1 @trigger: Child's birth @pseudo: @triggerDate: "Date of birth" */ define "Japanese encephalitis (JE) dose 1": Encounter."No JE primary series doses were administered" and not "One JE dose from primary series was administered. The primary series has been completed" /* @output: Japanese encephalitis (JE) dose 1 Create @create: Live attenuated vaccine: Single dose administered at ≥ 8 months of age */ define "Japanese encephalitis (JE) dose 1 Create": if "Japanese encephalitis (JE) dose 1" then 'Live attenuated vaccine: Single dose administered at ≥ 8 months of age' + ' Due Date: ' + ToString("Japanese encephalitis (JE) dose 1 Due Date") else '' /* @dynamicValue: Japanese encephalitis (JE) dose 1 Due Date @pseudocode: "Date of birth" + 8 months */ define "Japanese encephalitis (JE) dose 1 Due Date": if "Japanese encephalitis (JE) dose 1" then Patient.birthDate + 8 months else null /* @dynamicValue: Japanese encephalitis (JE) dose 1 Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "Japanese encephalitis (JE) dose 1 Overdue": null /* @dynamicValue: Japanese encephalitis (JE) dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Japanese encephalitis (JE) dose 1 Expiration": null /* @complete: One JE dose from primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "JE vaccines") */ define "One JE dose from primary series was administered. The primary series has been completed": Encounter."One JE primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'JE20.1' then "Japanese encephalitis (JE) dose 1" when Patient.id = 'JE21.3' then "Japanese encephalitis (JE) dose 1" when Patient.id = 'JE22.3' then "Japanese encephalitis (JE) dose 1" when Patient.id = 'JE23.1' then "One JE dose from primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Url: **
  * ?: [IMMZD18SJELiveAttenuatedVaccineLogic](Library-IMMZD18SJELiveAttenuatedVaccineLogic.md)
* * **Content: **text/cql: ````/* * Library: IMMZD18SJELiveAttenuatedVaccineLogic (IMMZ.D18.S.JE.Live attenuated vaccination schedule) * Schedule Table: Live attenuated vaccination schedule (1-dose scheme) */ library IMMZD18SJELiveAttenuatedVaccineLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTJEEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Japanese encephalitis (JE) dose 1 @description: Provision of the JE dose 1 @trigger: Child's birth @pseudo: @triggerDate: "Date of birth" */ define "Japanese encephalitis (JE) dose 1": Encounter."No JE primary series doses were administered" and not "One JE dose from primary series was administered. The primary series has been completed" /* @output: Japanese encephalitis (JE) dose 1 Create @create: Live attenuated vaccine: Single dose administered at ≥ 8 months of age */ define "Japanese encephalitis (JE) dose 1 Create": if "Japanese encephalitis (JE) dose 1" then 'Live attenuated vaccine: Single dose administered at ≥ 8 months of age' + ' Due Date: ' + ToString("Japanese encephalitis (JE) dose 1 Due Date") else '' /* @dynamicValue: Japanese encephalitis (JE) dose 1 Due Date @pseudocode: "Date of birth" + 8 months */ define "Japanese encephalitis (JE) dose 1 Due Date": if "Japanese encephalitis (JE) dose 1" then Patient.birthDate + 8 months else null /* @dynamicValue: Japanese encephalitis (JE) dose 1 Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "Japanese encephalitis (JE) dose 1 Overdue": null /* @dynamicValue: Japanese encephalitis (JE) dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Japanese encephalitis (JE) dose 1 Expiration": null /* @complete: One JE dose from primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "JE vaccines") */ define "One JE dose from primary series was administered. The primary series has been completed": Encounter."One JE primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'JE20.1' then "Japanese encephalitis (JE) dose 1" when Patient.id = 'JE21.3' then "Japanese encephalitis (JE) dose 1" when Patient.id = 'JE22.3' then "Japanese encephalitis (JE) dose 1" when Patient.id = 'JE23.1' then "One JE dose from primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Status: **
  * ?: draft
* * **Content: **text/cql: ````/* * Library: IMMZD18SJELiveAttenuatedVaccineLogic (IMMZ.D18.S.JE.Live attenuated vaccination schedule) * Schedule Table: Live attenuated vaccination schedule (1-dose scheme) */ library IMMZD18SJELiveAttenuatedVaccineLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTJEEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Japanese encephalitis (JE) dose 1 @description: Provision of the JE dose 1 @trigger: Child's birth @pseudo: @triggerDate: "Date of birth" */ define "Japanese encephalitis (JE) dose 1": Encounter."No JE primary series doses were administered" and not "One JE dose from primary series was administered. The primary series has been completed" /* @output: Japanese encephalitis (JE) dose 1 Create @create: Live attenuated vaccine: Single dose administered at ≥ 8 months of age */ define "Japanese encephalitis (JE) dose 1 Create": if "Japanese encephalitis (JE) dose 1" then 'Live attenuated vaccine: Single dose administered at ≥ 8 months of age' + ' Due Date: ' + ToString("Japanese encephalitis (JE) dose 1 Due Date") else '' /* @dynamicValue: Japanese encephalitis (JE) dose 1 Due Date @pseudocode: "Date of birth" + 8 months */ define "Japanese encephalitis (JE) dose 1 Due Date": if "Japanese encephalitis (JE) dose 1" then Patient.birthDate + 8 months else null /* @dynamicValue: Japanese encephalitis (JE) dose 1 Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "Japanese encephalitis (JE) dose 1 Overdue": null /* @dynamicValue: Japanese encephalitis (JE) dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Japanese encephalitis (JE) dose 1 Expiration": null /* @complete: One JE dose from primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "JE vaccines") */ define "One JE dose from primary series was administered. The primary series has been completed": Encounter."One JE primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'JE20.1' then "Japanese encephalitis (JE) dose 1" when Patient.id = 'JE21.3' then "Japanese encephalitis (JE) dose 1" when Patient.id = 'JE22.3' then "Japanese encephalitis (JE) dose 1" when Patient.id = 'JE23.1' then "One JE dose from primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Date: **
  * ?: 2026-03-31 13:54:17+0000
* * **Content: **text/cql: ````/* * Library: IMMZD18SJELiveAttenuatedVaccineLogic (IMMZ.D18.S.JE.Live attenuated vaccination schedule) * Schedule Table: Live attenuated vaccination schedule (1-dose scheme) */ library IMMZD18SJELiveAttenuatedVaccineLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTJEEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Japanese encephalitis (JE) dose 1 @description: Provision of the JE dose 1 @trigger: Child's birth @pseudo: @triggerDate: "Date of birth" */ define "Japanese encephalitis (JE) dose 1": Encounter."No JE primary series doses were administered" and not "One JE dose from primary series was administered. The primary series has been completed" /* @output: Japanese encephalitis (JE) dose 1 Create @create: Live attenuated vaccine: Single dose administered at ≥ 8 months of age */ define "Japanese encephalitis (JE) dose 1 Create": if "Japanese encephalitis (JE) dose 1" then 'Live attenuated vaccine: Single dose administered at ≥ 8 months of age' + ' Due Date: ' + ToString("Japanese encephalitis (JE) dose 1 Due Date") else '' /* @dynamicValue: Japanese encephalitis (JE) dose 1 Due Date @pseudocode: "Date of birth" + 8 months */ define "Japanese encephalitis (JE) dose 1 Due Date": if "Japanese encephalitis (JE) dose 1" then Patient.birthDate + 8 months else null /* @dynamicValue: Japanese encephalitis (JE) dose 1 Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "Japanese encephalitis (JE) dose 1 Overdue": null /* @dynamicValue: Japanese encephalitis (JE) dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Japanese encephalitis (JE) dose 1 Expiration": null /* @complete: One JE dose from primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "JE vaccines") */ define "One JE dose from primary series was administered. The primary series has been completed": Encounter."One JE primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'JE20.1' then "Japanese encephalitis (JE) dose 1" when Patient.id = 'JE21.3' then "Japanese encephalitis (JE) dose 1" when Patient.id = 'JE22.3' then "Japanese encephalitis (JE) dose 1" when Patient.id = 'JE23.1' then "One JE dose from primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Publisher: **
  * ?: WHO
* * **Content: **text/cql: ````/* * Library: IMMZD18SJELiveAttenuatedVaccineLogic (IMMZ.D18.S.JE.Live attenuated vaccination schedule) * Schedule Table: Live attenuated vaccination schedule (1-dose scheme) */ library IMMZD18SJELiveAttenuatedVaccineLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTJEEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Japanese encephalitis (JE) dose 1 @description: Provision of the JE dose 1 @trigger: Child's birth @pseudo: @triggerDate: "Date of birth" */ define "Japanese encephalitis (JE) dose 1": Encounter."No JE primary series doses were administered" and not "One JE dose from primary series was administered. The primary series has been completed" /* @output: Japanese encephalitis (JE) dose 1 Create @create: Live attenuated vaccine: Single dose administered at ≥ 8 months of age */ define "Japanese encephalitis (JE) dose 1 Create": if "Japanese encephalitis (JE) dose 1" then 'Live attenuated vaccine: Single dose administered at ≥ 8 months of age' + ' Due Date: ' + ToString("Japanese encephalitis (JE) dose 1 Due Date") else '' /* @dynamicValue: Japanese encephalitis (JE) dose 1 Due Date @pseudocode: "Date of birth" + 8 months */ define "Japanese encephalitis (JE) dose 1 Due Date": if "Japanese encephalitis (JE) dose 1" then Patient.birthDate + 8 months else null /* @dynamicValue: Japanese encephalitis (JE) dose 1 Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "Japanese encephalitis (JE) dose 1 Overdue": null /* @dynamicValue: Japanese encephalitis (JE) dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Japanese encephalitis (JE) dose 1 Expiration": null /* @complete: One JE dose from primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "JE vaccines") */ define "One JE dose from primary series was administered. The primary series has been completed": Encounter."One JE primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'JE20.1' then "Japanese encephalitis (JE) dose 1" when Patient.id = 'JE21.3' then "Japanese encephalitis (JE) dose 1" when Patient.id = 'JE22.3' then "Japanese encephalitis (JE) dose 1" when Patient.id = 'JE23.1' then "One JE dose from primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Description: **
  * ?: This library defines decision support logic for the IMMZ.D18.S.JE.Live attenuated vaccination schedule table in the Immunization CPG



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "IMMZD18SJELiveAttenuatedVaccineLogic",
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
  "url" : "http://smart.who.int/immunizations/Library/IMMZD18SJELiveAttenuatedVaccineLogic",
  "version" : "1.0.0",
  "name" : "IMMZD18SJELiveAttenuatedVaccineLogic",
  "title" : "IMMZD18SJELiveAttenuatedVaccineLogic",
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
  "description" : "This library defines decision support logic for the IMMZ.D18.S.JE.Live attenuated vaccination schedule table in the Immunization CPG",
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
    "resource" : "http://smart.who.int/immunizations/Library/IMMZD2DTJEEncounterElements"
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
    "name" : "One JE dose from primary series was administered. The primary series has been completed",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "Japanese encephalitis (JE) dose 1",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "Japanese encephalitis (JE) dose 1 Due Date",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "date"
  },
  {
    "name" : "Japanese encephalitis (JE) dose 1 Create",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "string"
  },
  {
    "name" : "Japanese encephalitis (JE) dose 1 Overdue",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "Resource"
  },
  {
    "name" : "Japanese encephalitis (JE) dose 1 Expiration",
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
    "data" : "LyoKICogTGlicmFyeTogSU1NWkQxOFNKRUxpdmVBdHRlbnVhdGVkVmFjY2luZUxvZ2ljIChJTU1aLkQxOC5TLkpFLkxpdmUgYXR0ZW51YXRlZCB2YWNjaW5hdGlvbiBzY2hlZHVsZSkKICogU2NoZWR1bGUgVGFibGU6IExpdmUgYXR0ZW51YXRlZCB2YWNjaW5hdGlvbiBzY2hlZHVsZSAoMS1kb3NlIHNjaGVtZSkKICovCmxpYnJhcnkgSU1NWkQxOFNKRUxpdmVBdHRlbnVhdGVkVmFjY2luZUxvZ2ljCgp1c2luZyBGSElSIHZlcnNpb24gJzQuMC4xJwppbmNsdWRlIEZISVJIZWxwZXJzIHZlcnNpb24gJzQuMC4xJwoKaW5jbHVkZSBXSE9Db21tb24gY2FsbGVkIFdDCgppbmNsdWRlIElNTVpDb21tb24gY2FsbGVkIENvbW1vbgppbmNsdWRlIElNTVpDb25jZXB0cyBjYWxsZWQgQ29uY2VwdHMKCmluY2x1ZGUgSU1NWkVuY291bnRlckVsZW1lbnRzIGNhbGxlZCBJRQppbmNsdWRlIElNTVpEMkRUSkVFbmNvdW50ZXJFbGVtZW50cyBjYWxsZWQgRW5jb3VudGVyCgpwYXJhbWV0ZXIgVG9kYXkgRGF0ZSBkZWZhdWx0IFRvZGF5KCkKCgpjb250ZXh0IFBhdGllbnQKCgovKgpAb3V0cHV0OiBKYXBhbmVzZSBlbmNlcGhhbGl0aXMgKEpFKSBkb3NlIDEKQGRlc2NyaXB0aW9uOiBQcm92aXNpb24gb2YgdGhlIEpFIGRvc2UgMQpAdHJpZ2dlcjogQ2hpbGQncyBiaXJ0aApAcHNldWRvOiAKQHRyaWdnZXJEYXRlOiAiRGF0ZSBvZiBiaXJ0aCIKKi8KZGVmaW5lICJKYXBhbmVzZSBlbmNlcGhhbGl0aXMgKEpFKSBkb3NlIDEiOgogIEVuY291bnRlci4iTm8gSkUgcHJpbWFyeSBzZXJpZXMgZG9zZXMgd2VyZSBhZG1pbmlzdGVyZWQiCiAgYW5kIG5vdCAiT25lIEpFIGRvc2UgZnJvbSBwcmltYXJ5IHNlcmllcyB3YXMgYWRtaW5pc3RlcmVkLiBUaGUgcHJpbWFyeSBzZXJpZXMgaGFzIGJlZW4gY29tcGxldGVkIgoKCi8qCkBvdXRwdXQ6IEphcGFuZXNlIGVuY2VwaGFsaXRpcyAoSkUpIGRvc2UgMSBDcmVhdGUKQGNyZWF0ZTogTGl2ZSBhdHRlbnVhdGVkIHZhY2NpbmU6IFNpbmdsZSBkb3NlIGFkbWluaXN0ZXJlZCBhdCDiiaUgOCBtb250aHMgb2YgYWdlCiovCmRlZmluZSAiSmFwYW5lc2UgZW5jZXBoYWxpdGlzIChKRSkgZG9zZSAxIENyZWF0ZSI6CiAgaWYgIkphcGFuZXNlIGVuY2VwaGFsaXRpcyAoSkUpIGRvc2UgMSIKICB0aGVuICdMaXZlIGF0dGVudWF0ZWQgdmFjY2luZTogU2luZ2xlIGRvc2UgYWRtaW5pc3RlcmVkIGF0IOKJpSA4IG1vbnRocyBvZiBhZ2UnICsgJwpEdWUgRGF0ZTogJyArIFRvU3RyaW5nKCJKYXBhbmVzZSBlbmNlcGhhbGl0aXMgKEpFKSBkb3NlIDEgRHVlIERhdGUiKQogIGVsc2UgJycKCgovKgpAZHluYW1pY1ZhbHVlOiBKYXBhbmVzZSBlbmNlcGhhbGl0aXMgKEpFKSBkb3NlIDEgRHVlIERhdGUKQHBzZXVkb2NvZGU6ICJEYXRlIG9mIGJpcnRoIiArIDggbW9udGhzCiovCmRlZmluZSAiSmFwYW5lc2UgZW5jZXBoYWxpdGlzIChKRSkgZG9zZSAxIER1ZSBEYXRlIjoKICBpZiAiSmFwYW5lc2UgZW5jZXBoYWxpdGlzIChKRSkgZG9zZSAxIiB0aGVuIFBhdGllbnQuYmlydGhEYXRlICsgOCBtb250aHMKICBlbHNlIG51bGwKCgovKgpAZHluYW1pY1ZhbHVlOiBKYXBhbmVzZSBlbmNlcGhhbGl0aXMgKEpFKSBkb3NlIDEgT3ZlcmR1ZQpAcHNldWRvY29kZTogVG8gYmUgZGV0ZXJtaW5lZCBieSBNZW1iZXIgU3RhdGVzOyBob3dldmVyLCB0aGVyZSBpcyBubyByZWNvbW1lbmRlZCBvdmVyZHVlIGRhdGUgYW5kIGluZGl2aWR1YWxzIGFyZSBhbHdheXMgZWxpZ2libGUgdG8gYmUgdmFjY2luYXRlZC4KKi8KZGVmaW5lICJKYXBhbmVzZSBlbmNlcGhhbGl0aXMgKEpFKSBkb3NlIDEgT3ZlcmR1ZSI6CiAgbnVsbAoKCi8qCkBkeW5hbWljVmFsdWU6IEphcGFuZXNlIGVuY2VwaGFsaXRpcyAoSkUpIGRvc2UgMSBFeHBpcmF0aW9uCkBwc2V1ZG9jb2RlOiBUbyBiZSBkZXRlcm1pbmVkIGJ5IE1lbWJlciBTdGF0ZXM7IGhvd2V2ZXIsIHRoZXJlIGlzIG5vIHJlY29tbWVuZGVkIGV4cGlyYXRpb24gZGF0ZSBhbmQgaW5kaXZpZHVhbHMgYXJlIGFsd2F5cyBlbGlnaWJsZSB0byBiZSB2YWNjaW5hdGVkLgoqLwpkZWZpbmUgIkphcGFuZXNlIGVuY2VwaGFsaXRpcyAoSkUpIGRvc2UgMSBFeHBpcmF0aW9uIjoKICBudWxsCgogIAovKgpAY29tcGxldGU6IE9uZSBKRSBkb3NlIGZyb20gcHJpbWFyeSBzZXJpZXMgd2FzIGFkbWluaXN0ZXJlZC4gVGhlIHByaW1hcnkgc2VyaWVzIGhhcyBiZWVuIGNvbXBsZXRlZApAcHNldWRvY29kZTogIkNvbXBsZXRlZCB0aGUgcHJpbWFyeSB2YWNjaW5hdGlvbiBzZXJpZXMiID0gVFJVRSAod2hlcmUgIlZhY2NpbmUgdHlwZSIgPSAiSkUgdmFjY2luZXMiKQoqLwpkZWZpbmUgIk9uZSBKRSBkb3NlIGZyb20gcHJpbWFyeSBzZXJpZXMgd2FzIGFkbWluaXN0ZXJlZC4gVGhlIHByaW1hcnkgc2VyaWVzIGhhcyBiZWVuIGNvbXBsZXRlZCI6CiAgRW5jb3VudGVyLiJPbmUgSkUgcHJpbWFyeSBzZXJpZXMgZG9zZSB3YXMgYWRtaW5pc3RlcmVkIgoKCgovKgpAdGVzdDogVGVzdCBleHBlY3RlZCByZXN1bHRzIGJhc2VkIG9uIGV4YW1wbGUgcGF0aWVudHMKKi8KZGVmaW5lICJUZXN0IFZhbGlkYXRpb24iOgogIGNhc2UKICAgIHdoZW4gUGF0aWVudC5pZCA9ICdKRTIwLjEnIHRoZW4gIkphcGFuZXNlIGVuY2VwaGFsaXRpcyAoSkUpIGRvc2UgMSIKICAgIHdoZW4gUGF0aWVudC5pZCA9ICdKRTIxLjMnIHRoZW4gIkphcGFuZXNlIGVuY2VwaGFsaXRpcyAoSkUpIGRvc2UgMSIKICAgIHdoZW4gUGF0aWVudC5pZCA9ICdKRTIyLjMnIHRoZW4gIkphcGFuZXNlIGVuY2VwaGFsaXRpcyAoSkUpIGRvc2UgMSIKICAgIHdoZW4gUGF0aWVudC5pZCA9ICdKRTIzLjEnIHRoZW4gIk9uZSBKRSBkb3NlIGZyb20gcHJpbWFyeSBzZXJpZXMgd2FzIGFkbWluaXN0ZXJlZC4gVGhlIHByaW1hcnkgc2VyaWVzIGhhcyBiZWVuIGNvbXBsZXRlZCIKICAgIGVsc2UgJ05vIHRlc3QgY2FzZSBzZXQnCiAgZW5kCg=="
  }]
}

```
