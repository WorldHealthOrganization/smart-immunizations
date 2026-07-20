# IMMZD18SRubellaHighLogic - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD18SRubellaHighLogic**

## Library: IMMZD18SRubellaHighLogic (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Library/IMMZD18SRubellaHighLogic | *Version*:0.2.0 |
| Draft as of 2026-03-31 | *Computable Name*:IMMZD18SRubellaHighLogic |

 
This library defines decision support logic for the IMMZ.D18.S.Rubella.High incidence schedule table in the Immunization CPG 

* * **Content: **text/cql: ```` /* * Library: IMMZD18SRubellaHighLogic (IMMZ.D18.S.Rubella.High incidence schedule) * Schedule Table: Schedule for countries with high incidence and mortality from rubella */ library IMMZD18SRubellaHighLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTRubellaEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Rubella dose 1 @description: Provision of the rubella dose 1 @trigger: Child's birth @triggerDate: "Date of birth" */ define "Rubella dose 1": Encounter."No rubella primary series dose was administered" and not "One rubella dose from the primary series was administered. The primary series has been completed" /* @output: Rubella dose 1 Create @create: Rubella dose 1 should be provided if the client's age is at least 9 months */ define "Rubella dose 1 Create": if "Rubella dose 1" then 'Rubella dose 1 should be provided if the client\'s age is at least 9 months' + ' Due Date: ' + ToString("Rubella dose 1 Due Date") else '' /* @dynamicValue: Rubella dose 1 Due Date @pseudocode: "Date of birth" + 9 months */ define "Rubella dose 1 Due Date": if "Rubella dose 1" then Patient.birthDate + 9 months else null /* @dynamicValue: Rubella dose 1 Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "Rubella dose 1 Overdue": null /* @dynamicValue: Rubella dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Rubella dose 1 Expiration": null /* @complete: One rubella dose from the primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Rubella–containing vaccines") */ define "One rubella dose from the primary series was administered. The primary series has been completed": Encounter."One rubella primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = '08.2' then "Rubella dose 1" when Patient.id = '09.123' then "Rubella dose 1" when Patient.id = '10.123' then "Rubella dose 1" when Patient.id = '11.1' then "One rubella dose from the primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Id: **
  * ?: IMMZD18SRubellaHighLogic
* * **Content: **text/cql: ```` /* * Library: IMMZD18SRubellaHighLogic (IMMZ.D18.S.Rubella.High incidence schedule) * Schedule Table: Schedule for countries with high incidence and mortality from rubella */ library IMMZD18SRubellaHighLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTRubellaEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Rubella dose 1 @description: Provision of the rubella dose 1 @trigger: Child's birth @triggerDate: "Date of birth" */ define "Rubella dose 1": Encounter."No rubella primary series dose was administered" and not "One rubella dose from the primary series was administered. The primary series has been completed" /* @output: Rubella dose 1 Create @create: Rubella dose 1 should be provided if the client's age is at least 9 months */ define "Rubella dose 1 Create": if "Rubella dose 1" then 'Rubella dose 1 should be provided if the client\'s age is at least 9 months' + ' Due Date: ' + ToString("Rubella dose 1 Due Date") else '' /* @dynamicValue: Rubella dose 1 Due Date @pseudocode: "Date of birth" + 9 months */ define "Rubella dose 1 Due Date": if "Rubella dose 1" then Patient.birthDate + 9 months else null /* @dynamicValue: Rubella dose 1 Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "Rubella dose 1 Overdue": null /* @dynamicValue: Rubella dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Rubella dose 1 Expiration": null /* @complete: One rubella dose from the primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Rubella–containing vaccines") */ define "One rubella dose from the primary series was administered. The primary series has been completed": Encounter."One rubella primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = '08.2' then "Rubella dose 1" when Patient.id = '09.123' then "Rubella dose 1" when Patient.id = '10.123' then "Rubella dose 1" when Patient.id = '11.1' then "One rubella dose from the primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Version: **
  * ?: 0.2.0
* * **Content: **text/cql: ```` /* * Library: IMMZD18SRubellaHighLogic (IMMZ.D18.S.Rubella.High incidence schedule) * Schedule Table: Schedule for countries with high incidence and mortality from rubella */ library IMMZD18SRubellaHighLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTRubellaEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Rubella dose 1 @description: Provision of the rubella dose 1 @trigger: Child's birth @triggerDate: "Date of birth" */ define "Rubella dose 1": Encounter."No rubella primary series dose was administered" and not "One rubella dose from the primary series was administered. The primary series has been completed" /* @output: Rubella dose 1 Create @create: Rubella dose 1 should be provided if the client's age is at least 9 months */ define "Rubella dose 1 Create": if "Rubella dose 1" then 'Rubella dose 1 should be provided if the client\'s age is at least 9 months' + ' Due Date: ' + ToString("Rubella dose 1 Due Date") else '' /* @dynamicValue: Rubella dose 1 Due Date @pseudocode: "Date of birth" + 9 months */ define "Rubella dose 1 Due Date": if "Rubella dose 1" then Patient.birthDate + 9 months else null /* @dynamicValue: Rubella dose 1 Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "Rubella dose 1 Overdue": null /* @dynamicValue: Rubella dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Rubella dose 1 Expiration": null /* @complete: One rubella dose from the primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Rubella–containing vaccines") */ define "One rubella dose from the primary series was administered. The primary series has been completed": Encounter."One rubella primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = '08.2' then "Rubella dose 1" when Patient.id = '09.123' then "Rubella dose 1" when Patient.id = '10.123' then "Rubella dose 1" when Patient.id = '11.1' then "One rubella dose from the primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Url: **
  * ?: [IMMZD18SRubellaHighLogic](Library-IMMZD18SRubellaHighLogic.md)
* * **Content: **text/cql: ```` /* * Library: IMMZD18SRubellaHighLogic (IMMZ.D18.S.Rubella.High incidence schedule) * Schedule Table: Schedule for countries with high incidence and mortality from rubella */ library IMMZD18SRubellaHighLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTRubellaEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Rubella dose 1 @description: Provision of the rubella dose 1 @trigger: Child's birth @triggerDate: "Date of birth" */ define "Rubella dose 1": Encounter."No rubella primary series dose was administered" and not "One rubella dose from the primary series was administered. The primary series has been completed" /* @output: Rubella dose 1 Create @create: Rubella dose 1 should be provided if the client's age is at least 9 months */ define "Rubella dose 1 Create": if "Rubella dose 1" then 'Rubella dose 1 should be provided if the client\'s age is at least 9 months' + ' Due Date: ' + ToString("Rubella dose 1 Due Date") else '' /* @dynamicValue: Rubella dose 1 Due Date @pseudocode: "Date of birth" + 9 months */ define "Rubella dose 1 Due Date": if "Rubella dose 1" then Patient.birthDate + 9 months else null /* @dynamicValue: Rubella dose 1 Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "Rubella dose 1 Overdue": null /* @dynamicValue: Rubella dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Rubella dose 1 Expiration": null /* @complete: One rubella dose from the primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Rubella–containing vaccines") */ define "One rubella dose from the primary series was administered. The primary series has been completed": Encounter."One rubella primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = '08.2' then "Rubella dose 1" when Patient.id = '09.123' then "Rubella dose 1" when Patient.id = '10.123' then "Rubella dose 1" when Patient.id = '11.1' then "One rubella dose from the primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Status: **
  * ?: draft
* * **Content: **text/cql: ```` /* * Library: IMMZD18SRubellaHighLogic (IMMZ.D18.S.Rubella.High incidence schedule) * Schedule Table: Schedule for countries with high incidence and mortality from rubella */ library IMMZD18SRubellaHighLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTRubellaEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Rubella dose 1 @description: Provision of the rubella dose 1 @trigger: Child's birth @triggerDate: "Date of birth" */ define "Rubella dose 1": Encounter."No rubella primary series dose was administered" and not "One rubella dose from the primary series was administered. The primary series has been completed" /* @output: Rubella dose 1 Create @create: Rubella dose 1 should be provided if the client's age is at least 9 months */ define "Rubella dose 1 Create": if "Rubella dose 1" then 'Rubella dose 1 should be provided if the client\'s age is at least 9 months' + ' Due Date: ' + ToString("Rubella dose 1 Due Date") else '' /* @dynamicValue: Rubella dose 1 Due Date @pseudocode: "Date of birth" + 9 months */ define "Rubella dose 1 Due Date": if "Rubella dose 1" then Patient.birthDate + 9 months else null /* @dynamicValue: Rubella dose 1 Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "Rubella dose 1 Overdue": null /* @dynamicValue: Rubella dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Rubella dose 1 Expiration": null /* @complete: One rubella dose from the primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Rubella–containing vaccines") */ define "One rubella dose from the primary series was administered. The primary series has been completed": Encounter."One rubella primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = '08.2' then "Rubella dose 1" when Patient.id = '09.123' then "Rubella dose 1" when Patient.id = '10.123' then "Rubella dose 1" when Patient.id = '11.1' then "One rubella dose from the primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Experimental: **
  * ?: true
* * **Content: **text/cql: ```` /* * Library: IMMZD18SRubellaHighLogic (IMMZ.D18.S.Rubella.High incidence schedule) * Schedule Table: Schedule for countries with high incidence and mortality from rubella */ library IMMZD18SRubellaHighLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTRubellaEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Rubella dose 1 @description: Provision of the rubella dose 1 @trigger: Child's birth @triggerDate: "Date of birth" */ define "Rubella dose 1": Encounter."No rubella primary series dose was administered" and not "One rubella dose from the primary series was administered. The primary series has been completed" /* @output: Rubella dose 1 Create @create: Rubella dose 1 should be provided if the client's age is at least 9 months */ define "Rubella dose 1 Create": if "Rubella dose 1" then 'Rubella dose 1 should be provided if the client\'s age is at least 9 months' + ' Due Date: ' + ToString("Rubella dose 1 Due Date") else '' /* @dynamicValue: Rubella dose 1 Due Date @pseudocode: "Date of birth" + 9 months */ define "Rubella dose 1 Due Date": if "Rubella dose 1" then Patient.birthDate + 9 months else null /* @dynamicValue: Rubella dose 1 Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "Rubella dose 1 Overdue": null /* @dynamicValue: Rubella dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Rubella dose 1 Expiration": null /* @complete: One rubella dose from the primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Rubella–containing vaccines") */ define "One rubella dose from the primary series was administered. The primary series has been completed": Encounter."One rubella primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = '08.2' then "Rubella dose 1" when Patient.id = '09.123' then "Rubella dose 1" when Patient.id = '10.123' then "Rubella dose 1" when Patient.id = '11.1' then "One rubella dose from the primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Date: **
  * ?: 2026-03-31 13:43:43+0000
* * **Content: **text/cql: ```` /* * Library: IMMZD18SRubellaHighLogic (IMMZ.D18.S.Rubella.High incidence schedule) * Schedule Table: Schedule for countries with high incidence and mortality from rubella */ library IMMZD18SRubellaHighLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTRubellaEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Rubella dose 1 @description: Provision of the rubella dose 1 @trigger: Child's birth @triggerDate: "Date of birth" */ define "Rubella dose 1": Encounter."No rubella primary series dose was administered" and not "One rubella dose from the primary series was administered. The primary series has been completed" /* @output: Rubella dose 1 Create @create: Rubella dose 1 should be provided if the client's age is at least 9 months */ define "Rubella dose 1 Create": if "Rubella dose 1" then 'Rubella dose 1 should be provided if the client\'s age is at least 9 months' + ' Due Date: ' + ToString("Rubella dose 1 Due Date") else '' /* @dynamicValue: Rubella dose 1 Due Date @pseudocode: "Date of birth" + 9 months */ define "Rubella dose 1 Due Date": if "Rubella dose 1" then Patient.birthDate + 9 months else null /* @dynamicValue: Rubella dose 1 Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "Rubella dose 1 Overdue": null /* @dynamicValue: Rubella dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Rubella dose 1 Expiration": null /* @complete: One rubella dose from the primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Rubella–containing vaccines") */ define "One rubella dose from the primary series was administered. The primary series has been completed": Encounter."One rubella primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = '08.2' then "Rubella dose 1" when Patient.id = '09.123' then "Rubella dose 1" when Patient.id = '10.123' then "Rubella dose 1" when Patient.id = '11.1' then "One rubella dose from the primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Publisher: **
  * ?: WHO
* * **Content: **text/cql: ```` /* * Library: IMMZD18SRubellaHighLogic (IMMZ.D18.S.Rubella.High incidence schedule) * Schedule Table: Schedule for countries with high incidence and mortality from rubella */ library IMMZD18SRubellaHighLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTRubellaEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Rubella dose 1 @description: Provision of the rubella dose 1 @trigger: Child's birth @triggerDate: "Date of birth" */ define "Rubella dose 1": Encounter."No rubella primary series dose was administered" and not "One rubella dose from the primary series was administered. The primary series has been completed" /* @output: Rubella dose 1 Create @create: Rubella dose 1 should be provided if the client's age is at least 9 months */ define "Rubella dose 1 Create": if "Rubella dose 1" then 'Rubella dose 1 should be provided if the client\'s age is at least 9 months' + ' Due Date: ' + ToString("Rubella dose 1 Due Date") else '' /* @dynamicValue: Rubella dose 1 Due Date @pseudocode: "Date of birth" + 9 months */ define "Rubella dose 1 Due Date": if "Rubella dose 1" then Patient.birthDate + 9 months else null /* @dynamicValue: Rubella dose 1 Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "Rubella dose 1 Overdue": null /* @dynamicValue: Rubella dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Rubella dose 1 Expiration": null /* @complete: One rubella dose from the primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Rubella–containing vaccines") */ define "One rubella dose from the primary series was administered. The primary series has been completed": Encounter."One rubella primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = '08.2' then "Rubella dose 1" when Patient.id = '09.123' then "Rubella dose 1" when Patient.id = '10.123' then "Rubella dose 1" when Patient.id = '11.1' then "One rubella dose from the primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Description: **
  * ?: This library defines decision support logic for the IMMZ.D18.S.Rubella.High incidence schedule table in the Immunization CPG



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "IMMZD18SRubellaHighLogic",
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
  "url" : "http://smart.who.int/immunizations/Library/IMMZD18SRubellaHighLogic",
  "version" : "0.2.0",
  "name" : "IMMZD18SRubellaHighLogic",
  "title" : "IMMZD18SRubellaHighLogic",
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
    "data" : "Ci8qCiAqIExpYnJhcnk6IElNTVpEMThTUnViZWxsYUhpZ2hMb2dpYyAoSU1NWi5EMTguUy5SdWJlbGxhLkhpZ2ggaW5jaWRlbmNlIHNjaGVkdWxlKQogKiBTY2hlZHVsZSBUYWJsZTogU2NoZWR1bGUgZm9yIGNvdW50cmllcyB3aXRoIGhpZ2ggaW5jaWRlbmNlIGFuZCBtb3J0YWxpdHkgZnJvbSBydWJlbGxhCiAqLwpsaWJyYXJ5IElNTVpEMThTUnViZWxsYUhpZ2hMb2dpYwoKdXNpbmcgRkhJUiB2ZXJzaW9uICc0LjAuMScKaW5jbHVkZSBGSElSSGVscGVycyB2ZXJzaW9uICc0LjAuMScKCmluY2x1ZGUgV0hPQ29tbW9uIGNhbGxlZCBXQwoKaW5jbHVkZSBJTU1aQ29tbW9uIGNhbGxlZCBDb21tb24KaW5jbHVkZSBJTU1aQ29uY2VwdHMgY2FsbGVkIENvbmNlcHRzCgppbmNsdWRlIElNTVpFbmNvdW50ZXJFbGVtZW50cyBjYWxsZWQgSUUKaW5jbHVkZSBJTU1aRDJEVFJ1YmVsbGFFbmNvdW50ZXJFbGVtZW50cyBjYWxsZWQgRW5jb3VudGVyCgpwYXJhbWV0ZXIgVG9kYXkgRGF0ZSBkZWZhdWx0IFRvZGF5KCkKCmNvbnRleHQgUGF0aWVudAoKCi8qCkBvdXRwdXQ6IFJ1YmVsbGEgZG9zZSAxCkBkZXNjcmlwdGlvbjogUHJvdmlzaW9uIG9mIHRoZSBydWJlbGxhIGRvc2UgMQpAdHJpZ2dlcjogQ2hpbGQncyBiaXJ0aApAdHJpZ2dlckRhdGU6ICJEYXRlIG9mIGJpcnRoIgoqLwpkZWZpbmUgIlJ1YmVsbGEgZG9zZSAxIjoKICBFbmNvdW50ZXIuIk5vIHJ1YmVsbGEgcHJpbWFyeSBzZXJpZXMgZG9zZSB3YXMgYWRtaW5pc3RlcmVkIgogIGFuZCBub3QgIk9uZSBydWJlbGxhIGRvc2UgZnJvbSB0aGUgcHJpbWFyeSBzZXJpZXMgd2FzIGFkbWluaXN0ZXJlZC4gVGhlIHByaW1hcnkgc2VyaWVzIGhhcyBiZWVuIGNvbXBsZXRlZCIKCi8qCkBvdXRwdXQ6IFJ1YmVsbGEgZG9zZSAxIENyZWF0ZQpAY3JlYXRlOiBSdWJlbGxhIGRvc2UgMSBzaG91bGQgYmUgcHJvdmlkZWQgaWYgdGhlIGNsaWVudCdzIGFnZSBpcyBhdCBsZWFzdCA5IG1vbnRocwoqLwpkZWZpbmUgIlJ1YmVsbGEgZG9zZSAxIENyZWF0ZSI6CiAgaWYgIlJ1YmVsbGEgZG9zZSAxIiAKICB0aGVuICdSdWJlbGxhIGRvc2UgMSBzaG91bGQgYmUgcHJvdmlkZWQgaWYgdGhlIGNsaWVudFwncyBhZ2UgaXMgYXQgbGVhc3QgOSBtb250aHMnICsgJwpEdWUgRGF0ZTogJyArIFRvU3RyaW5nKCJSdWJlbGxhIGRvc2UgMSBEdWUgRGF0ZSIpCiAgZWxzZSAnJwoKLyoKQGR5bmFtaWNWYWx1ZTogUnViZWxsYSBkb3NlIDEgRHVlIERhdGUKQHBzZXVkb2NvZGU6ICJEYXRlIG9mIGJpcnRoIiArIDkgbW9udGhzCiovCmRlZmluZSAiUnViZWxsYSBkb3NlIDEgRHVlIERhdGUiOgogIGlmICJSdWJlbGxhIGRvc2UgMSIgdGhlbiBQYXRpZW50LmJpcnRoRGF0ZSArIDkgbW9udGhzCiAgZWxzZSBudWxsCgovKgpAZHluYW1pY1ZhbHVlOiBSdWJlbGxhIGRvc2UgMSBPdmVyZHVlCkBwc2V1ZG9jb2RlOiBUbyBiZSBkZXRlcm1pbmVkIGJ5IE1lbWJlciBTdGF0ZXM7IGhvd2V2ZXIsIHRoZXJlIGlzIG5vIHJlY29tbWVuZGVkIG92ZXJkdWUgZGF0ZSBhbmQgaW5kaXZpZHVhbHMgYXJlIGFsd2F5cyBlbGlnaWJsZSB0byBiZSB2YWNjaW5hdGVkLgoqLwpkZWZpbmUgIlJ1YmVsbGEgZG9zZSAxIE92ZXJkdWUiOgogIG51bGwKCi8qCkBkeW5hbWljVmFsdWU6IFJ1YmVsbGEgZG9zZSAxIEV4cGlyYXRpb24KQHBzZXVkb2NvZGU6IFRvIGJlIGRldGVybWluZWQgYnkgTWVtYmVyIFN0YXRlczsgaG93ZXZlciwgdGhlcmUgaXMgbm8gcmVjb21tZW5kZWQgZXhwaXJhdGlvbiBkYXRlIGFuZCBpbmRpdmlkdWFscyBhcmUgYWx3YXlzIGVsaWdpYmxlIHRvIGJlIHZhY2NpbmF0ZWQuCiovCmRlZmluZSAiUnViZWxsYSBkb3NlIDEgRXhwaXJhdGlvbiI6CiAgbnVsbAogIAovKgpAY29tcGxldGU6IE9uZSBydWJlbGxhIGRvc2UgZnJvbSB0aGUgcHJpbWFyeSBzZXJpZXMgd2FzIGFkbWluaXN0ZXJlZC4gVGhlIHByaW1hcnkgc2VyaWVzIGhhcyBiZWVuIGNvbXBsZXRlZApAcHNldWRvY29kZTogIkNvbXBsZXRlZCB0aGUgcHJpbWFyeSB2YWNjaW5hdGlvbiBzZXJpZXMiID0gVFJVRSAod2hlcmUgIlZhY2NpbmUgdHlwZSIgPSAiUnViZWxsYeKAk2NvbnRhaW5pbmcgdmFjY2luZXMiKQoqLwpkZWZpbmUgIk9uZSBydWJlbGxhIGRvc2UgZnJvbSB0aGUgcHJpbWFyeSBzZXJpZXMgd2FzIGFkbWluaXN0ZXJlZC4gVGhlIHByaW1hcnkgc2VyaWVzIGhhcyBiZWVuIGNvbXBsZXRlZCI6CiAgRW5jb3VudGVyLiJPbmUgcnViZWxsYSBwcmltYXJ5IHNlcmllcyBkb3NlIHdhcyBhZG1pbmlzdGVyZWQiCgovKgpAdGVzdDogVGVzdCBleHBlY3RlZCByZXN1bHRzIGJhc2VkIG9uIGV4YW1wbGUgcGF0aWVudHMKKi8KZGVmaW5lICJUZXN0IFZhbGlkYXRpb24iOgogIGNhc2UKICAgIHdoZW4gUGF0aWVudC5pZCA9ICcwOC4yJyB0aGVuICJSdWJlbGxhIGRvc2UgMSIKICAgIHdoZW4gUGF0aWVudC5pZCA9ICcwOS4xMjMnIHRoZW4gIlJ1YmVsbGEgZG9zZSAxIgogICAgd2hlbiBQYXRpZW50LmlkID0gJzEwLjEyMycgdGhlbiAiUnViZWxsYSBkb3NlIDEiCiAgICB3aGVuIFBhdGllbnQuaWQgPSAnMTEuMScgdGhlbiAiT25lIHJ1YmVsbGEgZG9zZSBmcm9tIHRoZSBwcmltYXJ5IHNlcmllcyB3YXMgYWRtaW5pc3RlcmVkLiBUaGUgcHJpbWFyeSBzZXJpZXMgaGFzIGJlZW4gY29tcGxldGVkIgogICAgZWxzZSAnTm8gdGVzdCBjYXNlIHNldCcKICBlbmQK"
  }]
}

```
