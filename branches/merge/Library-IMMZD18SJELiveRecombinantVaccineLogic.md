# IMMZD18SJELiveRecombinantVaccineLogic - WHO Immunization Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD18SJELiveRecombinantVaccineLogic**

## Library: IMMZD18SJELiveRecombinantVaccineLogic 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Library/IMMZD18SJELiveRecombinantVaccineLogic | *Version*:1.0.0 |
| Draft as of 2026-03-31 | *Computable Name*:IMMZD18SJELiveRecombinantVaccineLogic |

 
This library defines decision support logic for the IMMZ.D18.S.JE.Live recombinant vaccination schedule table in the Immunization CPG 

* * **Content: **text/cql: ````/* * Library: IMMZD18SJELiveRecombinantVaccineLogic (IMMZ.D18.S.JE.Live recombinant vaccination schedule) * Schedule Table: Live recombinant vaccination schedule (1-dose scheme) */ library IMMZD18SJELiveRecombinantVaccineLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTJEEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Japanese encephalitis (JE) dose 1 @description: Provision of the JE dose 1 @trigger: Child's birth @pseudo: @triggerDate: "Date of birth" */ define "Japanese encephalitis (JE) dose 1": Encounter."No JE primary series doses were administered" and not "One JE dose from primary series was administered. The primary series has been completed" /* @output: Japanese encephalitis (JE) dose 1 Create @create: Live recombinant vaccine: Single dose administered at ≥9 months of age */ define "Japanese encephalitis (JE) dose 1 Create": if "Japanese encephalitis (JE) dose 1" then 'Live recombinant vaccine: Single dose administered at ≥9 months of age' + ' Due Date: ' + ToString("Japanese encephalitis (JE) dose 1 Due Date") else '' /* @dynamicValue: Japanese encephalitis (JE) dose 1 Due Date @pseudocode: "Date of birth" + 9 months */ define "Japanese encephalitis (JE) dose 1 Due Date": if "Japanese encephalitis (JE) dose 1" then Patient.birthDate + 9 months else null /* @dynamicValue: Japanese encephalitis (JE) dose 1 Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "Japanese encephalitis (JE) dose 1 Overdue": null /* @dynamicValue: Japanese encephalitis (JE) dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Japanese encephalitis (JE) dose 1 Expiration": null /* @complete: One JE dose from primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "JE vaccines") */ define "One JE dose from primary series was administered. The primary series has been completed": Encounter."One JE primary series doses were administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'JE31.1' then "Japanese encephalitis (JE) dose 1" when Patient.id = 'JE32.3' then "Japanese encephalitis (JE) dose 1" when Patient.id = 'JE33.3' then "Japanese encephalitis (JE) dose 1" when Patient.id = 'JE34.1' then "One JE dose from primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Id: **
  * ?: IMMZD18SJELiveRecombinantVaccineLogic
* * **Content: **text/cql: ````/* * Library: IMMZD18SJELiveRecombinantVaccineLogic (IMMZ.D18.S.JE.Live recombinant vaccination schedule) * Schedule Table: Live recombinant vaccination schedule (1-dose scheme) */ library IMMZD18SJELiveRecombinantVaccineLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTJEEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Japanese encephalitis (JE) dose 1 @description: Provision of the JE dose 1 @trigger: Child's birth @pseudo: @triggerDate: "Date of birth" */ define "Japanese encephalitis (JE) dose 1": Encounter."No JE primary series doses were administered" and not "One JE dose from primary series was administered. The primary series has been completed" /* @output: Japanese encephalitis (JE) dose 1 Create @create: Live recombinant vaccine: Single dose administered at ≥9 months of age */ define "Japanese encephalitis (JE) dose 1 Create": if "Japanese encephalitis (JE) dose 1" then 'Live recombinant vaccine: Single dose administered at ≥9 months of age' + ' Due Date: ' + ToString("Japanese encephalitis (JE) dose 1 Due Date") else '' /* @dynamicValue: Japanese encephalitis (JE) dose 1 Due Date @pseudocode: "Date of birth" + 9 months */ define "Japanese encephalitis (JE) dose 1 Due Date": if "Japanese encephalitis (JE) dose 1" then Patient.birthDate + 9 months else null /* @dynamicValue: Japanese encephalitis (JE) dose 1 Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "Japanese encephalitis (JE) dose 1 Overdue": null /* @dynamicValue: Japanese encephalitis (JE) dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Japanese encephalitis (JE) dose 1 Expiration": null /* @complete: One JE dose from primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "JE vaccines") */ define "One JE dose from primary series was administered. The primary series has been completed": Encounter."One JE primary series doses were administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'JE31.1' then "Japanese encephalitis (JE) dose 1" when Patient.id = 'JE32.3' then "Japanese encephalitis (JE) dose 1" when Patient.id = 'JE33.3' then "Japanese encephalitis (JE) dose 1" when Patient.id = 'JE34.1' then "One JE dose from primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Version: **
  * ?: 1.0.0
* * **Content: **text/cql: ````/* * Library: IMMZD18SJELiveRecombinantVaccineLogic (IMMZ.D18.S.JE.Live recombinant vaccination schedule) * Schedule Table: Live recombinant vaccination schedule (1-dose scheme) */ library IMMZD18SJELiveRecombinantVaccineLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTJEEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Japanese encephalitis (JE) dose 1 @description: Provision of the JE dose 1 @trigger: Child's birth @pseudo: @triggerDate: "Date of birth" */ define "Japanese encephalitis (JE) dose 1": Encounter."No JE primary series doses were administered" and not "One JE dose from primary series was administered. The primary series has been completed" /* @output: Japanese encephalitis (JE) dose 1 Create @create: Live recombinant vaccine: Single dose administered at ≥9 months of age */ define "Japanese encephalitis (JE) dose 1 Create": if "Japanese encephalitis (JE) dose 1" then 'Live recombinant vaccine: Single dose administered at ≥9 months of age' + ' Due Date: ' + ToString("Japanese encephalitis (JE) dose 1 Due Date") else '' /* @dynamicValue: Japanese encephalitis (JE) dose 1 Due Date @pseudocode: "Date of birth" + 9 months */ define "Japanese encephalitis (JE) dose 1 Due Date": if "Japanese encephalitis (JE) dose 1" then Patient.birthDate + 9 months else null /* @dynamicValue: Japanese encephalitis (JE) dose 1 Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "Japanese encephalitis (JE) dose 1 Overdue": null /* @dynamicValue: Japanese encephalitis (JE) dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Japanese encephalitis (JE) dose 1 Expiration": null /* @complete: One JE dose from primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "JE vaccines") */ define "One JE dose from primary series was administered. The primary series has been completed": Encounter."One JE primary series doses were administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'JE31.1' then "Japanese encephalitis (JE) dose 1" when Patient.id = 'JE32.3' then "Japanese encephalitis (JE) dose 1" when Patient.id = 'JE33.3' then "Japanese encephalitis (JE) dose 1" when Patient.id = 'JE34.1' then "One JE dose from primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Url: **
  * ?: [IMMZD18SJELiveRecombinantVaccineLogic](Library-IMMZD18SJELiveRecombinantVaccineLogic.md)
* * **Content: **text/cql: ````/* * Library: IMMZD18SJELiveRecombinantVaccineLogic (IMMZ.D18.S.JE.Live recombinant vaccination schedule) * Schedule Table: Live recombinant vaccination schedule (1-dose scheme) */ library IMMZD18SJELiveRecombinantVaccineLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTJEEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Japanese encephalitis (JE) dose 1 @description: Provision of the JE dose 1 @trigger: Child's birth @pseudo: @triggerDate: "Date of birth" */ define "Japanese encephalitis (JE) dose 1": Encounter."No JE primary series doses were administered" and not "One JE dose from primary series was administered. The primary series has been completed" /* @output: Japanese encephalitis (JE) dose 1 Create @create: Live recombinant vaccine: Single dose administered at ≥9 months of age */ define "Japanese encephalitis (JE) dose 1 Create": if "Japanese encephalitis (JE) dose 1" then 'Live recombinant vaccine: Single dose administered at ≥9 months of age' + ' Due Date: ' + ToString("Japanese encephalitis (JE) dose 1 Due Date") else '' /* @dynamicValue: Japanese encephalitis (JE) dose 1 Due Date @pseudocode: "Date of birth" + 9 months */ define "Japanese encephalitis (JE) dose 1 Due Date": if "Japanese encephalitis (JE) dose 1" then Patient.birthDate + 9 months else null /* @dynamicValue: Japanese encephalitis (JE) dose 1 Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "Japanese encephalitis (JE) dose 1 Overdue": null /* @dynamicValue: Japanese encephalitis (JE) dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Japanese encephalitis (JE) dose 1 Expiration": null /* @complete: One JE dose from primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "JE vaccines") */ define "One JE dose from primary series was administered. The primary series has been completed": Encounter."One JE primary series doses were administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'JE31.1' then "Japanese encephalitis (JE) dose 1" when Patient.id = 'JE32.3' then "Japanese encephalitis (JE) dose 1" when Patient.id = 'JE33.3' then "Japanese encephalitis (JE) dose 1" when Patient.id = 'JE34.1' then "One JE dose from primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Status: **
  * ?: draft
* * **Content: **text/cql: ````/* * Library: IMMZD18SJELiveRecombinantVaccineLogic (IMMZ.D18.S.JE.Live recombinant vaccination schedule) * Schedule Table: Live recombinant vaccination schedule (1-dose scheme) */ library IMMZD18SJELiveRecombinantVaccineLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTJEEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Japanese encephalitis (JE) dose 1 @description: Provision of the JE dose 1 @trigger: Child's birth @pseudo: @triggerDate: "Date of birth" */ define "Japanese encephalitis (JE) dose 1": Encounter."No JE primary series doses were administered" and not "One JE dose from primary series was administered. The primary series has been completed" /* @output: Japanese encephalitis (JE) dose 1 Create @create: Live recombinant vaccine: Single dose administered at ≥9 months of age */ define "Japanese encephalitis (JE) dose 1 Create": if "Japanese encephalitis (JE) dose 1" then 'Live recombinant vaccine: Single dose administered at ≥9 months of age' + ' Due Date: ' + ToString("Japanese encephalitis (JE) dose 1 Due Date") else '' /* @dynamicValue: Japanese encephalitis (JE) dose 1 Due Date @pseudocode: "Date of birth" + 9 months */ define "Japanese encephalitis (JE) dose 1 Due Date": if "Japanese encephalitis (JE) dose 1" then Patient.birthDate + 9 months else null /* @dynamicValue: Japanese encephalitis (JE) dose 1 Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "Japanese encephalitis (JE) dose 1 Overdue": null /* @dynamicValue: Japanese encephalitis (JE) dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Japanese encephalitis (JE) dose 1 Expiration": null /* @complete: One JE dose from primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "JE vaccines") */ define "One JE dose from primary series was administered. The primary series has been completed": Encounter."One JE primary series doses were administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'JE31.1' then "Japanese encephalitis (JE) dose 1" when Patient.id = 'JE32.3' then "Japanese encephalitis (JE) dose 1" when Patient.id = 'JE33.3' then "Japanese encephalitis (JE) dose 1" when Patient.id = 'JE34.1' then "One JE dose from primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Date: **
  * ?: 2026-03-31 13:54:17+0000
* * **Content: **text/cql: ````/* * Library: IMMZD18SJELiveRecombinantVaccineLogic (IMMZ.D18.S.JE.Live recombinant vaccination schedule) * Schedule Table: Live recombinant vaccination schedule (1-dose scheme) */ library IMMZD18SJELiveRecombinantVaccineLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTJEEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Japanese encephalitis (JE) dose 1 @description: Provision of the JE dose 1 @trigger: Child's birth @pseudo: @triggerDate: "Date of birth" */ define "Japanese encephalitis (JE) dose 1": Encounter."No JE primary series doses were administered" and not "One JE dose from primary series was administered. The primary series has been completed" /* @output: Japanese encephalitis (JE) dose 1 Create @create: Live recombinant vaccine: Single dose administered at ≥9 months of age */ define "Japanese encephalitis (JE) dose 1 Create": if "Japanese encephalitis (JE) dose 1" then 'Live recombinant vaccine: Single dose administered at ≥9 months of age' + ' Due Date: ' + ToString("Japanese encephalitis (JE) dose 1 Due Date") else '' /* @dynamicValue: Japanese encephalitis (JE) dose 1 Due Date @pseudocode: "Date of birth" + 9 months */ define "Japanese encephalitis (JE) dose 1 Due Date": if "Japanese encephalitis (JE) dose 1" then Patient.birthDate + 9 months else null /* @dynamicValue: Japanese encephalitis (JE) dose 1 Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "Japanese encephalitis (JE) dose 1 Overdue": null /* @dynamicValue: Japanese encephalitis (JE) dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Japanese encephalitis (JE) dose 1 Expiration": null /* @complete: One JE dose from primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "JE vaccines") */ define "One JE dose from primary series was administered. The primary series has been completed": Encounter."One JE primary series doses were administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'JE31.1' then "Japanese encephalitis (JE) dose 1" when Patient.id = 'JE32.3' then "Japanese encephalitis (JE) dose 1" when Patient.id = 'JE33.3' then "Japanese encephalitis (JE) dose 1" when Patient.id = 'JE34.1' then "One JE dose from primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Publisher: **
  * ?: WHO
* * **Content: **text/cql: ````/* * Library: IMMZD18SJELiveRecombinantVaccineLogic (IMMZ.D18.S.JE.Live recombinant vaccination schedule) * Schedule Table: Live recombinant vaccination schedule (1-dose scheme) */ library IMMZD18SJELiveRecombinantVaccineLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTJEEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Japanese encephalitis (JE) dose 1 @description: Provision of the JE dose 1 @trigger: Child's birth @pseudo: @triggerDate: "Date of birth" */ define "Japanese encephalitis (JE) dose 1": Encounter."No JE primary series doses were administered" and not "One JE dose from primary series was administered. The primary series has been completed" /* @output: Japanese encephalitis (JE) dose 1 Create @create: Live recombinant vaccine: Single dose administered at ≥9 months of age */ define "Japanese encephalitis (JE) dose 1 Create": if "Japanese encephalitis (JE) dose 1" then 'Live recombinant vaccine: Single dose administered at ≥9 months of age' + ' Due Date: ' + ToString("Japanese encephalitis (JE) dose 1 Due Date") else '' /* @dynamicValue: Japanese encephalitis (JE) dose 1 Due Date @pseudocode: "Date of birth" + 9 months */ define "Japanese encephalitis (JE) dose 1 Due Date": if "Japanese encephalitis (JE) dose 1" then Patient.birthDate + 9 months else null /* @dynamicValue: Japanese encephalitis (JE) dose 1 Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "Japanese encephalitis (JE) dose 1 Overdue": null /* @dynamicValue: Japanese encephalitis (JE) dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Japanese encephalitis (JE) dose 1 Expiration": null /* @complete: One JE dose from primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "JE vaccines") */ define "One JE dose from primary series was administered. The primary series has been completed": Encounter."One JE primary series doses were administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'JE31.1' then "Japanese encephalitis (JE) dose 1" when Patient.id = 'JE32.3' then "Japanese encephalitis (JE) dose 1" when Patient.id = 'JE33.3' then "Japanese encephalitis (JE) dose 1" when Patient.id = 'JE34.1' then "One JE dose from primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Description: **
  * ?: This library defines decision support logic for the IMMZ.D18.S.JE.Live recombinant vaccination schedule table in the Immunization CPG



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "IMMZD18SJELiveRecombinantVaccineLogic",
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
  "url" : "http://smart.who.int/immunizations/Library/IMMZD18SJELiveRecombinantVaccineLogic",
  "version" : "1.0.0",
  "name" : "IMMZD18SJELiveRecombinantVaccineLogic",
  "title" : "IMMZD18SJELiveRecombinantVaccineLogic",
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
  "description" : "This library defines decision support logic for the IMMZ.D18.S.JE.Live recombinant vaccination schedule table in the Immunization CPG",
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
    "data" : "LyoKICogTGlicmFyeTogSU1NWkQxOFNKRUxpdmVSZWNvbWJpbmFudFZhY2NpbmVMb2dpYyAoSU1NWi5EMTguUy5KRS5MaXZlIHJlY29tYmluYW50IHZhY2NpbmF0aW9uIHNjaGVkdWxlKQogKiBTY2hlZHVsZSBUYWJsZTogTGl2ZSByZWNvbWJpbmFudCB2YWNjaW5hdGlvbiBzY2hlZHVsZSAoMS1kb3NlIHNjaGVtZSkKICovCmxpYnJhcnkgSU1NWkQxOFNKRUxpdmVSZWNvbWJpbmFudFZhY2NpbmVMb2dpYwoKdXNpbmcgRkhJUiB2ZXJzaW9uICc0LjAuMScKaW5jbHVkZSBGSElSSGVscGVycyB2ZXJzaW9uICc0LjAuMScKCmluY2x1ZGUgV0hPQ29tbW9uIGNhbGxlZCBXQwoKaW5jbHVkZSBJTU1aQ29tbW9uIGNhbGxlZCBDb21tb24KaW5jbHVkZSBJTU1aQ29uY2VwdHMgY2FsbGVkIENvbmNlcHRzCgppbmNsdWRlIElNTVpFbmNvdW50ZXJFbGVtZW50cyBjYWxsZWQgSUUKaW5jbHVkZSBJTU1aRDJEVEpFRW5jb3VudGVyRWxlbWVudHMgY2FsbGVkIEVuY291bnRlcgoKcGFyYW1ldGVyIFRvZGF5IERhdGUgZGVmYXVsdCBUb2RheSgpCgoKY29udGV4dCBQYXRpZW50CgoKLyoKQG91dHB1dDogSmFwYW5lc2UgZW5jZXBoYWxpdGlzIChKRSkgZG9zZSAxCkBkZXNjcmlwdGlvbjogUHJvdmlzaW9uIG9mIHRoZSBKRSBkb3NlIDEKQHRyaWdnZXI6IENoaWxkJ3MgYmlydGgKQHBzZXVkbzogCkB0cmlnZ2VyRGF0ZTogIkRhdGUgb2YgYmlydGgiCiovCmRlZmluZSAiSmFwYW5lc2UgZW5jZXBoYWxpdGlzIChKRSkgZG9zZSAxIjoKICBFbmNvdW50ZXIuIk5vIEpFIHByaW1hcnkgc2VyaWVzIGRvc2VzIHdlcmUgYWRtaW5pc3RlcmVkIgogIGFuZCBub3QgIk9uZSBKRSBkb3NlIGZyb20gcHJpbWFyeSBzZXJpZXMgd2FzIGFkbWluaXN0ZXJlZC4gVGhlIHByaW1hcnkgc2VyaWVzIGhhcyBiZWVuIGNvbXBsZXRlZCIKCgovKgpAb3V0cHV0OiBKYXBhbmVzZSBlbmNlcGhhbGl0aXMgKEpFKSBkb3NlIDEgQ3JlYXRlCkBjcmVhdGU6IExpdmUgcmVjb21iaW5hbnQgdmFjY2luZTogU2luZ2xlIGRvc2UgYWRtaW5pc3RlcmVkIGF0IOKJpTkgbW9udGhzIG9mIGFnZQoqLwpkZWZpbmUgIkphcGFuZXNlIGVuY2VwaGFsaXRpcyAoSkUpIGRvc2UgMSBDcmVhdGUiOgogIGlmICJKYXBhbmVzZSBlbmNlcGhhbGl0aXMgKEpFKSBkb3NlIDEiCiAgdGhlbiAnTGl2ZSByZWNvbWJpbmFudCB2YWNjaW5lOiBTaW5nbGUgZG9zZSBhZG1pbmlzdGVyZWQgYXQg4omlOSBtb250aHMgb2YgYWdlJyArICcKRHVlIERhdGU6ICcgKyBUb1N0cmluZygiSmFwYW5lc2UgZW5jZXBoYWxpdGlzIChKRSkgZG9zZSAxIER1ZSBEYXRlIikKICBlbHNlICcnCgoKLyoKQGR5bmFtaWNWYWx1ZTogSmFwYW5lc2UgZW5jZXBoYWxpdGlzIChKRSkgZG9zZSAxIER1ZSBEYXRlCkBwc2V1ZG9jb2RlOiAiRGF0ZSBvZiBiaXJ0aCIgKyA5IG1vbnRocwoqLwpkZWZpbmUgIkphcGFuZXNlIGVuY2VwaGFsaXRpcyAoSkUpIGRvc2UgMSBEdWUgRGF0ZSI6CiAgaWYgIkphcGFuZXNlIGVuY2VwaGFsaXRpcyAoSkUpIGRvc2UgMSIgdGhlbiBQYXRpZW50LmJpcnRoRGF0ZSArIDkgbW9udGhzCiAgZWxzZSBudWxsCgoKLyoKQGR5bmFtaWNWYWx1ZTogSmFwYW5lc2UgZW5jZXBoYWxpdGlzIChKRSkgZG9zZSAxIE92ZXJkdWUKQHBzZXVkb2NvZGU6IFRvIGJlIGRldGVybWluZWQgYnkgTWVtYmVyIFN0YXRlczsgaG93ZXZlciwgdGhlcmUgaXMgbm8gcmVjb21tZW5kZWQgb3ZlcmR1ZSBkYXRlIGFuZCBpbmRpdmlkdWFscyBhcmUgYWx3YXlzIGVsaWdpYmxlIHRvIGJlIHZhY2NpbmF0ZWQuCiovCmRlZmluZSAiSmFwYW5lc2UgZW5jZXBoYWxpdGlzIChKRSkgZG9zZSAxIE92ZXJkdWUiOgogIG51bGwKCgovKgpAZHluYW1pY1ZhbHVlOiBKYXBhbmVzZSBlbmNlcGhhbGl0aXMgKEpFKSBkb3NlIDEgRXhwaXJhdGlvbgpAcHNldWRvY29kZTogVG8gYmUgZGV0ZXJtaW5lZCBieSBNZW1iZXIgU3RhdGVzOyBob3dldmVyLCB0aGVyZSBpcyBubyByZWNvbW1lbmRlZCBleHBpcmF0aW9uIGRhdGUgYW5kIGluZGl2aWR1YWxzIGFyZSBhbHdheXMgZWxpZ2libGUgdG8gYmUgdmFjY2luYXRlZC4KKi8KZGVmaW5lICJKYXBhbmVzZSBlbmNlcGhhbGl0aXMgKEpFKSBkb3NlIDEgRXhwaXJhdGlvbiI6CiAgbnVsbAoKICAKLyoKQGNvbXBsZXRlOiBPbmUgSkUgZG9zZSBmcm9tIHByaW1hcnkgc2VyaWVzIHdhcyBhZG1pbmlzdGVyZWQuIFRoZSBwcmltYXJ5IHNlcmllcyBoYXMgYmVlbiBjb21wbGV0ZWQKQHBzZXVkb2NvZGU6ICJDb21wbGV0ZWQgdGhlIHByaW1hcnkgdmFjY2luYXRpb24gc2VyaWVzIiA9IFRSVUUgKHdoZXJlICJWYWNjaW5lIHR5cGUiID0gIkpFIHZhY2NpbmVzIikKKi8KZGVmaW5lICJPbmUgSkUgZG9zZSBmcm9tIHByaW1hcnkgc2VyaWVzIHdhcyBhZG1pbmlzdGVyZWQuIFRoZSBwcmltYXJ5IHNlcmllcyBoYXMgYmVlbiBjb21wbGV0ZWQiOgogIEVuY291bnRlci4iT25lIEpFIHByaW1hcnkgc2VyaWVzIGRvc2VzIHdlcmUgYWRtaW5pc3RlcmVkIgoKCgovKgpAdGVzdDogVGVzdCBleHBlY3RlZCByZXN1bHRzIGJhc2VkIG9uIGV4YW1wbGUgcGF0aWVudHMKKi8KZGVmaW5lICJUZXN0IFZhbGlkYXRpb24iOgogIGNhc2UKICAgIHdoZW4gUGF0aWVudC5pZCA9ICdKRTMxLjEnIHRoZW4gIkphcGFuZXNlIGVuY2VwaGFsaXRpcyAoSkUpIGRvc2UgMSIKICAgIHdoZW4gUGF0aWVudC5pZCA9ICdKRTMyLjMnIHRoZW4gIkphcGFuZXNlIGVuY2VwaGFsaXRpcyAoSkUpIGRvc2UgMSIKICAgIHdoZW4gUGF0aWVudC5pZCA9ICdKRTMzLjMnIHRoZW4gIkphcGFuZXNlIGVuY2VwaGFsaXRpcyAoSkUpIGRvc2UgMSIKICAgIHdoZW4gUGF0aWVudC5pZCA9ICdKRTM0LjEnIHRoZW4gIk9uZSBKRSBkb3NlIGZyb20gcHJpbWFyeSBzZXJpZXMgd2FzIGFkbWluaXN0ZXJlZC4gVGhlIHByaW1hcnkgc2VyaWVzIGhhcyBiZWVuIGNvbXBsZXRlZCIKICAgIGVsc2UgJ05vIHRlc3QgY2FzZSBzZXQnCiAgZW5kCg=="
  }]
}

```
