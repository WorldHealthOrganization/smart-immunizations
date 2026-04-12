# IMMZD18SVaricella1DoseLogic - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD18SVaricella1DoseLogic**

## Library: IMMZD18SVaricella1DoseLogic 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Library/IMMZD18SVaricella1DoseLogic | *Version*:0.2.0 |
| Draft as of 2026-03-31 | *Computable Name*:IMMZD18SVaricella1DoseLogic |

 
This library defines decision support logic for the IMMZ.D18.S.Varicella.1-dose schedule table in the Immunization CPG 

* * **Content: **text/cql: ````/* * Library: IMMZD18SVaricella1DoseLogic (IMMZ.D18.S.Varicella.1-dose schedule) * Schedule Table: 1-dose schedule */ library IMMZD18SVaricella1DoseLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTVaricellaEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Varicella dose 1 @description: Provision of the varicella dose 1 @trigger: Child's birth @pseudo: @triggerDate: "Date of birth" */ define "Varicella dose 1": Encounter."No varicella primary series dose was administered" and not "One varicella dose from primary series was administered. The primary series has been completed" /* @output: Varicella dose 1 Create @create: Depending on the goal of the vaccination programme, 1–2 doses should be given with the first dose administered at 12–18 months of age. */ define "Varicella dose 1 Create": if "Varicella dose 1" then 'Depending on the goal of the vaccination programme, 1–2 doses should be given with the first dose administered at 12–18 months of age.' + ' Due Date: ' + ToString("Varicella dose 1 Due Date") + ' Overdue: ' + ToString("Varicella dose 1 Overdue") else '' /* @dynamicValue: Varicella dose 1 Due Date @pseudocode: "Date of birth" + 12 months */ define "Varicella dose 1 Due Date": if "Varicella dose 1" then Patient.birthDate + 12 months else null /* @dynamicValue: Varicella dose 1 Overdue @pseudocode: "Date of birth" + 18 months */ define "Varicella dose 1 Overdue": if "Varicella dose 1" then Patient.birthDate + 18 months else null /* @dynamicValue: Varicella dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Varicella dose 1 Expiration": null /* @complete: One varicella dose from primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Varicella-containing vaccines") */ define "One varicella dose from primary series was administered. The primary series has been completed": Encounter."One varicella primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'Varicella09.1' then "Varicella dose 1" when Patient.id = 'Varicella10.3' then "Varicella dose 1" when Patient.id = 'Varicella11.3' then "Varicella dose 1" when Patient.id = 'Varicella12.1' then "One varicella dose from primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Id: **
  * ?: IMMZD18SVaricella1DoseLogic
* * **Content: **text/cql: ````/* * Library: IMMZD18SVaricella1DoseLogic (IMMZ.D18.S.Varicella.1-dose schedule) * Schedule Table: 1-dose schedule */ library IMMZD18SVaricella1DoseLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTVaricellaEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Varicella dose 1 @description: Provision of the varicella dose 1 @trigger: Child's birth @pseudo: @triggerDate: "Date of birth" */ define "Varicella dose 1": Encounter."No varicella primary series dose was administered" and not "One varicella dose from primary series was administered. The primary series has been completed" /* @output: Varicella dose 1 Create @create: Depending on the goal of the vaccination programme, 1–2 doses should be given with the first dose administered at 12–18 months of age. */ define "Varicella dose 1 Create": if "Varicella dose 1" then 'Depending on the goal of the vaccination programme, 1–2 doses should be given with the first dose administered at 12–18 months of age.' + ' Due Date: ' + ToString("Varicella dose 1 Due Date") + ' Overdue: ' + ToString("Varicella dose 1 Overdue") else '' /* @dynamicValue: Varicella dose 1 Due Date @pseudocode: "Date of birth" + 12 months */ define "Varicella dose 1 Due Date": if "Varicella dose 1" then Patient.birthDate + 12 months else null /* @dynamicValue: Varicella dose 1 Overdue @pseudocode: "Date of birth" + 18 months */ define "Varicella dose 1 Overdue": if "Varicella dose 1" then Patient.birthDate + 18 months else null /* @dynamicValue: Varicella dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Varicella dose 1 Expiration": null /* @complete: One varicella dose from primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Varicella-containing vaccines") */ define "One varicella dose from primary series was administered. The primary series has been completed": Encounter."One varicella primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'Varicella09.1' then "Varicella dose 1" when Patient.id = 'Varicella10.3' then "Varicella dose 1" when Patient.id = 'Varicella11.3' then "Varicella dose 1" when Patient.id = 'Varicella12.1' then "One varicella dose from primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Version: **
  * ?: 0.2.0
* * **Content: **text/cql: ````/* * Library: IMMZD18SVaricella1DoseLogic (IMMZ.D18.S.Varicella.1-dose schedule) * Schedule Table: 1-dose schedule */ library IMMZD18SVaricella1DoseLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTVaricellaEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Varicella dose 1 @description: Provision of the varicella dose 1 @trigger: Child's birth @pseudo: @triggerDate: "Date of birth" */ define "Varicella dose 1": Encounter."No varicella primary series dose was administered" and not "One varicella dose from primary series was administered. The primary series has been completed" /* @output: Varicella dose 1 Create @create: Depending on the goal of the vaccination programme, 1–2 doses should be given with the first dose administered at 12–18 months of age. */ define "Varicella dose 1 Create": if "Varicella dose 1" then 'Depending on the goal of the vaccination programme, 1–2 doses should be given with the first dose administered at 12–18 months of age.' + ' Due Date: ' + ToString("Varicella dose 1 Due Date") + ' Overdue: ' + ToString("Varicella dose 1 Overdue") else '' /* @dynamicValue: Varicella dose 1 Due Date @pseudocode: "Date of birth" + 12 months */ define "Varicella dose 1 Due Date": if "Varicella dose 1" then Patient.birthDate + 12 months else null /* @dynamicValue: Varicella dose 1 Overdue @pseudocode: "Date of birth" + 18 months */ define "Varicella dose 1 Overdue": if "Varicella dose 1" then Patient.birthDate + 18 months else null /* @dynamicValue: Varicella dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Varicella dose 1 Expiration": null /* @complete: One varicella dose from primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Varicella-containing vaccines") */ define "One varicella dose from primary series was administered. The primary series has been completed": Encounter."One varicella primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'Varicella09.1' then "Varicella dose 1" when Patient.id = 'Varicella10.3' then "Varicella dose 1" when Patient.id = 'Varicella11.3' then "Varicella dose 1" when Patient.id = 'Varicella12.1' then "One varicella dose from primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Url: **
  * ?: [IMMZD18SVaricella1DoseLogic](Library-IMMZD18SVaricella1DoseLogic.md)
* * **Content: **text/cql: ````/* * Library: IMMZD18SVaricella1DoseLogic (IMMZ.D18.S.Varicella.1-dose schedule) * Schedule Table: 1-dose schedule */ library IMMZD18SVaricella1DoseLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTVaricellaEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Varicella dose 1 @description: Provision of the varicella dose 1 @trigger: Child's birth @pseudo: @triggerDate: "Date of birth" */ define "Varicella dose 1": Encounter."No varicella primary series dose was administered" and not "One varicella dose from primary series was administered. The primary series has been completed" /* @output: Varicella dose 1 Create @create: Depending on the goal of the vaccination programme, 1–2 doses should be given with the first dose administered at 12–18 months of age. */ define "Varicella dose 1 Create": if "Varicella dose 1" then 'Depending on the goal of the vaccination programme, 1–2 doses should be given with the first dose administered at 12–18 months of age.' + ' Due Date: ' + ToString("Varicella dose 1 Due Date") + ' Overdue: ' + ToString("Varicella dose 1 Overdue") else '' /* @dynamicValue: Varicella dose 1 Due Date @pseudocode: "Date of birth" + 12 months */ define "Varicella dose 1 Due Date": if "Varicella dose 1" then Patient.birthDate + 12 months else null /* @dynamicValue: Varicella dose 1 Overdue @pseudocode: "Date of birth" + 18 months */ define "Varicella dose 1 Overdue": if "Varicella dose 1" then Patient.birthDate + 18 months else null /* @dynamicValue: Varicella dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Varicella dose 1 Expiration": null /* @complete: One varicella dose from primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Varicella-containing vaccines") */ define "One varicella dose from primary series was administered. The primary series has been completed": Encounter."One varicella primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'Varicella09.1' then "Varicella dose 1" when Patient.id = 'Varicella10.3' then "Varicella dose 1" when Patient.id = 'Varicella11.3' then "Varicella dose 1" when Patient.id = 'Varicella12.1' then "One varicella dose from primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Status: **
  * ?: draft
* * **Content: **text/cql: ````/* * Library: IMMZD18SVaricella1DoseLogic (IMMZ.D18.S.Varicella.1-dose schedule) * Schedule Table: 1-dose schedule */ library IMMZD18SVaricella1DoseLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTVaricellaEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Varicella dose 1 @description: Provision of the varicella dose 1 @trigger: Child's birth @pseudo: @triggerDate: "Date of birth" */ define "Varicella dose 1": Encounter."No varicella primary series dose was administered" and not "One varicella dose from primary series was administered. The primary series has been completed" /* @output: Varicella dose 1 Create @create: Depending on the goal of the vaccination programme, 1–2 doses should be given with the first dose administered at 12–18 months of age. */ define "Varicella dose 1 Create": if "Varicella dose 1" then 'Depending on the goal of the vaccination programme, 1–2 doses should be given with the first dose administered at 12–18 months of age.' + ' Due Date: ' + ToString("Varicella dose 1 Due Date") + ' Overdue: ' + ToString("Varicella dose 1 Overdue") else '' /* @dynamicValue: Varicella dose 1 Due Date @pseudocode: "Date of birth" + 12 months */ define "Varicella dose 1 Due Date": if "Varicella dose 1" then Patient.birthDate + 12 months else null /* @dynamicValue: Varicella dose 1 Overdue @pseudocode: "Date of birth" + 18 months */ define "Varicella dose 1 Overdue": if "Varicella dose 1" then Patient.birthDate + 18 months else null /* @dynamicValue: Varicella dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Varicella dose 1 Expiration": null /* @complete: One varicella dose from primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Varicella-containing vaccines") */ define "One varicella dose from primary series was administered. The primary series has been completed": Encounter."One varicella primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'Varicella09.1' then "Varicella dose 1" when Patient.id = 'Varicella10.3' then "Varicella dose 1" when Patient.id = 'Varicella11.3' then "Varicella dose 1" when Patient.id = 'Varicella12.1' then "One varicella dose from primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Date: **
  * ?: 2026-03-31 13:43:57+0000
* * **Content: **text/cql: ````/* * Library: IMMZD18SVaricella1DoseLogic (IMMZ.D18.S.Varicella.1-dose schedule) * Schedule Table: 1-dose schedule */ library IMMZD18SVaricella1DoseLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTVaricellaEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Varicella dose 1 @description: Provision of the varicella dose 1 @trigger: Child's birth @pseudo: @triggerDate: "Date of birth" */ define "Varicella dose 1": Encounter."No varicella primary series dose was administered" and not "One varicella dose from primary series was administered. The primary series has been completed" /* @output: Varicella dose 1 Create @create: Depending on the goal of the vaccination programme, 1–2 doses should be given with the first dose administered at 12–18 months of age. */ define "Varicella dose 1 Create": if "Varicella dose 1" then 'Depending on the goal of the vaccination programme, 1–2 doses should be given with the first dose administered at 12–18 months of age.' + ' Due Date: ' + ToString("Varicella dose 1 Due Date") + ' Overdue: ' + ToString("Varicella dose 1 Overdue") else '' /* @dynamicValue: Varicella dose 1 Due Date @pseudocode: "Date of birth" + 12 months */ define "Varicella dose 1 Due Date": if "Varicella dose 1" then Patient.birthDate + 12 months else null /* @dynamicValue: Varicella dose 1 Overdue @pseudocode: "Date of birth" + 18 months */ define "Varicella dose 1 Overdue": if "Varicella dose 1" then Patient.birthDate + 18 months else null /* @dynamicValue: Varicella dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Varicella dose 1 Expiration": null /* @complete: One varicella dose from primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Varicella-containing vaccines") */ define "One varicella dose from primary series was administered. The primary series has been completed": Encounter."One varicella primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'Varicella09.1' then "Varicella dose 1" when Patient.id = 'Varicella10.3' then "Varicella dose 1" when Patient.id = 'Varicella11.3' then "Varicella dose 1" when Patient.id = 'Varicella12.1' then "One varicella dose from primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Publisher: **
  * ?: WHO
* * **Content: **text/cql: ````/* * Library: IMMZD18SVaricella1DoseLogic (IMMZ.D18.S.Varicella.1-dose schedule) * Schedule Table: 1-dose schedule */ library IMMZD18SVaricella1DoseLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTVaricellaEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Varicella dose 1 @description: Provision of the varicella dose 1 @trigger: Child's birth @pseudo: @triggerDate: "Date of birth" */ define "Varicella dose 1": Encounter."No varicella primary series dose was administered" and not "One varicella dose from primary series was administered. The primary series has been completed" /* @output: Varicella dose 1 Create @create: Depending on the goal of the vaccination programme, 1–2 doses should be given with the first dose administered at 12–18 months of age. */ define "Varicella dose 1 Create": if "Varicella dose 1" then 'Depending on the goal of the vaccination programme, 1–2 doses should be given with the first dose administered at 12–18 months of age.' + ' Due Date: ' + ToString("Varicella dose 1 Due Date") + ' Overdue: ' + ToString("Varicella dose 1 Overdue") else '' /* @dynamicValue: Varicella dose 1 Due Date @pseudocode: "Date of birth" + 12 months */ define "Varicella dose 1 Due Date": if "Varicella dose 1" then Patient.birthDate + 12 months else null /* @dynamicValue: Varicella dose 1 Overdue @pseudocode: "Date of birth" + 18 months */ define "Varicella dose 1 Overdue": if "Varicella dose 1" then Patient.birthDate + 18 months else null /* @dynamicValue: Varicella dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Varicella dose 1 Expiration": null /* @complete: One varicella dose from primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Varicella-containing vaccines") */ define "One varicella dose from primary series was administered. The primary series has been completed": Encounter."One varicella primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'Varicella09.1' then "Varicella dose 1" when Patient.id = 'Varicella10.3' then "Varicella dose 1" when Patient.id = 'Varicella11.3' then "Varicella dose 1" when Patient.id = 'Varicella12.1' then "One varicella dose from primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Description: **
  * ?: This library defines decision support logic for the IMMZ.D18.S.Varicella.1-dose schedule table in the Immunization CPG



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "IMMZD18SVaricella1DoseLogic",
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
  "url" : "http://smart.who.int/immunizations/Library/IMMZD18SVaricella1DoseLogic",
  "version" : "0.2.0",
  "name" : "IMMZD18SVaricella1DoseLogic",
  "title" : "IMMZD18SVaricella1DoseLogic",
  "status" : "draft",
  "experimental" : false,
  "type" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/library-type",
      "code" : "logic-library"
    }]
  },
  "date" : "2026-03-31T13:43:57+00:00",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "This library defines decision support logic for the IMMZ.D18.S.Varicella.1-dose schedule table in the Immunization CPG",
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
    "resource" : "http://smart.who.int/immunizations/Library/IMMZD2DTVaricellaEncounterElements"
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
    "name" : "One varicella dose from primary series was administered. The primary series has been completed",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "Varicella dose 1",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "Varicella dose 1 Due Date",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "date"
  },
  {
    "name" : "Varicella dose 1 Overdue",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "date"
  },
  {
    "name" : "Varicella dose 1 Create",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "string"
  },
  {
    "name" : "Varicella dose 1 Expiration",
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
    "data" : "LyoKICogTGlicmFyeTogSU1NWkQxOFNWYXJpY2VsbGExRG9zZUxvZ2ljIChJTU1aLkQxOC5TLlZhcmljZWxsYS4xLWRvc2Ugc2NoZWR1bGUpCiAqIFNjaGVkdWxlIFRhYmxlOiAxLWRvc2Ugc2NoZWR1bGUKICovCmxpYnJhcnkgSU1NWkQxOFNWYXJpY2VsbGExRG9zZUxvZ2ljCgp1c2luZyBGSElSIHZlcnNpb24gJzQuMC4xJwppbmNsdWRlIEZISVJIZWxwZXJzIHZlcnNpb24gJzQuMC4xJwoKaW5jbHVkZSBXSE9Db21tb24gY2FsbGVkIFdDCgppbmNsdWRlIElNTVpDb21tb24gY2FsbGVkIENvbW1vbgppbmNsdWRlIElNTVpDb25jZXB0cyBjYWxsZWQgQ29uY2VwdHMKCmluY2x1ZGUgSU1NWkVuY291bnRlckVsZW1lbnRzIGNhbGxlZCBJRQppbmNsdWRlIElNTVpEMkRUVmFyaWNlbGxhRW5jb3VudGVyRWxlbWVudHMgY2FsbGVkIEVuY291bnRlcgoKcGFyYW1ldGVyIFRvZGF5IERhdGUgZGVmYXVsdCBUb2RheSgpCgoKY29udGV4dCBQYXRpZW50CgoKLyoKQG91dHB1dDogVmFyaWNlbGxhIGRvc2UgMQpAZGVzY3JpcHRpb246IFByb3Zpc2lvbiBvZiB0aGUgdmFyaWNlbGxhIGRvc2UgMQpAdHJpZ2dlcjogQ2hpbGQncyBiaXJ0aApAcHNldWRvOiAKQHRyaWdnZXJEYXRlOiAiRGF0ZSBvZiBiaXJ0aCIKKi8KZGVmaW5lICJWYXJpY2VsbGEgZG9zZSAxIjoKICBFbmNvdW50ZXIuIk5vIHZhcmljZWxsYSBwcmltYXJ5IHNlcmllcyBkb3NlIHdhcyBhZG1pbmlzdGVyZWQiCiAgYW5kIG5vdCAiT25lIHZhcmljZWxsYSBkb3NlIGZyb20gcHJpbWFyeSBzZXJpZXMgd2FzIGFkbWluaXN0ZXJlZC4gVGhlIHByaW1hcnkgc2VyaWVzIGhhcyBiZWVuIGNvbXBsZXRlZCIKCgovKgpAb3V0cHV0OiBWYXJpY2VsbGEgZG9zZSAxIENyZWF0ZQpAY3JlYXRlOiBEZXBlbmRpbmcgb24gdGhlIGdvYWwgb2YgdGhlIHZhY2NpbmF0aW9uIHByb2dyYW1tZSwgMeKAkzIgZG9zZXMgc2hvdWxkIGJlIGdpdmVuIHdpdGggdGhlIGZpcnN0IGRvc2UgYWRtaW5pc3RlcmVkIGF0IDEy4oCTMTggbW9udGhzIG9mIGFnZS4KKi8KZGVmaW5lICJWYXJpY2VsbGEgZG9zZSAxIENyZWF0ZSI6CiAgaWYgIlZhcmljZWxsYSBkb3NlIDEiCiAgdGhlbiAnRGVwZW5kaW5nIG9uIHRoZSBnb2FsIG9mIHRoZSB2YWNjaW5hdGlvbiBwcm9ncmFtbWUsIDHigJMyIGRvc2VzIHNob3VsZCBiZSBnaXZlbiB3aXRoIHRoZSBmaXJzdCBkb3NlIGFkbWluaXN0ZXJlZCBhdCAxMuKAkzE4IG1vbnRocyBvZiBhZ2UuJyArICcKRHVlIERhdGU6ICcgKyBUb1N0cmluZygiVmFyaWNlbGxhIGRvc2UgMSBEdWUgRGF0ZSIpICsgJwpPdmVyZHVlOiAnICsgVG9TdHJpbmcoIlZhcmljZWxsYSBkb3NlIDEgT3ZlcmR1ZSIpCiAgZWxzZSAnJwoKCi8qCkBkeW5hbWljVmFsdWU6IFZhcmljZWxsYSBkb3NlIDEgRHVlIERhdGUKQHBzZXVkb2NvZGU6ICJEYXRlIG9mIGJpcnRoIiArIDEyIG1vbnRocwoqLwpkZWZpbmUgIlZhcmljZWxsYSBkb3NlIDEgRHVlIERhdGUiOgogIGlmICJWYXJpY2VsbGEgZG9zZSAxIiB0aGVuIFBhdGllbnQuYmlydGhEYXRlICsgMTIgbW9udGhzCiAgZWxzZSBudWxsCgoKLyoKQGR5bmFtaWNWYWx1ZTogVmFyaWNlbGxhIGRvc2UgMSBPdmVyZHVlCkBwc2V1ZG9jb2RlOiAiRGF0ZSBvZiBiaXJ0aCIgKyAxOCBtb250aHMKKi8KZGVmaW5lICJWYXJpY2VsbGEgZG9zZSAxIE92ZXJkdWUiOgogIGlmICJWYXJpY2VsbGEgZG9zZSAxIiB0aGVuIFBhdGllbnQuYmlydGhEYXRlICsgMTggbW9udGhzCiAgZWxzZSBudWxsCgoKLyoKQGR5bmFtaWNWYWx1ZTogVmFyaWNlbGxhIGRvc2UgMSBFeHBpcmF0aW9uCkBwc2V1ZG9jb2RlOiBUbyBiZSBkZXRlcm1pbmVkIGJ5IE1lbWJlciBTdGF0ZXM7IGhvd2V2ZXIsIHRoZXJlIGlzIG5vIHJlY29tbWVuZGVkIGV4cGlyYXRpb24gZGF0ZSBhbmQgaW5kaXZpZHVhbHMgYXJlIGFsd2F5cyBlbGlnaWJsZSB0byBiZSB2YWNjaW5hdGVkLgoqLwpkZWZpbmUgIlZhcmljZWxsYSBkb3NlIDEgRXhwaXJhdGlvbiI6CiAgbnVsbAoKICAKLyoKQGNvbXBsZXRlOiBPbmUgdmFyaWNlbGxhIGRvc2UgZnJvbSBwcmltYXJ5IHNlcmllcyB3YXMgYWRtaW5pc3RlcmVkLiBUaGUgcHJpbWFyeSBzZXJpZXMgaGFzIGJlZW4gY29tcGxldGVkCkBwc2V1ZG9jb2RlOiAiQ29tcGxldGVkIHRoZSBwcmltYXJ5IHZhY2NpbmF0aW9uIHNlcmllcyIgPSBUUlVFICh3aGVyZSAiVmFjY2luZSB0eXBlIiA9ICJWYXJpY2VsbGEtY29udGFpbmluZyB2YWNjaW5lcyIpCiovCmRlZmluZSAiT25lIHZhcmljZWxsYSBkb3NlIGZyb20gcHJpbWFyeSBzZXJpZXMgd2FzIGFkbWluaXN0ZXJlZC4gVGhlIHByaW1hcnkgc2VyaWVzIGhhcyBiZWVuIGNvbXBsZXRlZCI6CiAgRW5jb3VudGVyLiJPbmUgdmFyaWNlbGxhIHByaW1hcnkgc2VyaWVzIGRvc2Ugd2FzIGFkbWluaXN0ZXJlZCIKCgoKLyoKQHRlc3Q6IFRlc3QgZXhwZWN0ZWQgcmVzdWx0cyBiYXNlZCBvbiBleGFtcGxlIHBhdGllbnRzCiovCmRlZmluZSAiVGVzdCBWYWxpZGF0aW9uIjoKICBjYXNlCiAgICB3aGVuIFBhdGllbnQuaWQgPSAnVmFyaWNlbGxhMDkuMScgdGhlbiAiVmFyaWNlbGxhIGRvc2UgMSIKICAgIHdoZW4gUGF0aWVudC5pZCA9ICdWYXJpY2VsbGExMC4zJyB0aGVuICJWYXJpY2VsbGEgZG9zZSAxIgogICAgd2hlbiBQYXRpZW50LmlkID0gJ1ZhcmljZWxsYTExLjMnIHRoZW4gIlZhcmljZWxsYSBkb3NlIDEiCiAgICB3aGVuIFBhdGllbnQuaWQgPSAnVmFyaWNlbGxhMTIuMScgdGhlbiAiT25lIHZhcmljZWxsYSBkb3NlIGZyb20gcHJpbWFyeSBzZXJpZXMgd2FzIGFkbWluaXN0ZXJlZC4gVGhlIHByaW1hcnkgc2VyaWVzIGhhcyBiZWVuIGNvbXBsZXRlZCIKICAgIGVsc2UgJ05vIHRlc3QgY2FzZSBzZXQnCiAgZW5kCg=="
  }]
}

```
