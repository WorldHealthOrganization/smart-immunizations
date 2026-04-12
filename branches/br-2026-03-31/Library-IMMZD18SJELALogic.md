# IMMZD18SJELALogic - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD18SJELALogic**

## Library: IMMZD18SJELALogic (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Library/IMMZD18SJELALogic | *Version*:0.2.0 |
| Draft as of 2026-03-31 | *Computable Name*:IMMZD18SJELALogic |

 
This library defines decision support logic for the IMMZ.D18.S.JE.Live attenuated vaccination schedule table in the Immunization CPG 

* * **Content: **text/cql: ```` /* * Library: IMMZD18SJELALogic (IMMZ.D18.S.JE.Live attenuated vaccination schedule) * Schedule Table: Live attenuated vaccination schedule (1-dose scheme) */ library IMMZD18SJELALogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTJEEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Japanese encephalitis (JE) dose 1 @description: Provision of the JE dose 1 @trigger: Child's birth @triggerDate: "Date of birth" */ define "Japanese encephalitis (JE) dose 1": Encounter."No JE primary series doses were administered" and not "One JE dose from primary series was administered. The primary series has been completed" /* @output: Japanese encephalitis (JE) dose 1 Create @create: Live attenuated vaccine: Single dose administered at ≥ 8 months of age */ define "Japanese encephalitis (JE) dose 1 Create": if "Japanese encephalitis (JE) dose 1" then 'Live attenuated vaccine: Single dose administered at ≥ 8 months of age' + ' Due Date: ' + ToString("Japanese encephalitis (JE) dose 1 Due Date") else '' /* @dynamicValue: Japanese encephalitis (JE) dose 1 Due Date @pseudocode: "Date of birth" + 8 months */ define "Japanese encephalitis (JE) dose 1 Due Date": if "Japanese encephalitis (JE) dose 1" then Patient.birthDate + 8 months else null /* @dynamicValue: Japanese encephalitis (JE) dose 1 Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "Japanese encephalitis (JE) dose 1 Overdue": null /* @dynamicValue: Japanese encephalitis (JE) dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Japanese encephalitis (JE) dose 1 Expiration": null /* @complete: One JE dose from primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "JE vaccines") */ define "One JE dose from primary series was administered. The primary series has been completed": Encounter."One JE primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = '20.1' then "Japanese encephalitis (JE) dose 1" when Patient.id = '21.012' then "Japanese encephalitis (JE) dose 1" when Patient.id = '22.012' then "Japanese encephalitis (JE) dose 1" when Patient.id = '23.0' then "One JE dose from primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Id: **
  * ?: IMMZD18SJELALogic
* * **Content: **text/cql: ```` /* * Library: IMMZD18SJELALogic (IMMZ.D18.S.JE.Live attenuated vaccination schedule) * Schedule Table: Live attenuated vaccination schedule (1-dose scheme) */ library IMMZD18SJELALogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTJEEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Japanese encephalitis (JE) dose 1 @description: Provision of the JE dose 1 @trigger: Child's birth @triggerDate: "Date of birth" */ define "Japanese encephalitis (JE) dose 1": Encounter."No JE primary series doses were administered" and not "One JE dose from primary series was administered. The primary series has been completed" /* @output: Japanese encephalitis (JE) dose 1 Create @create: Live attenuated vaccine: Single dose administered at ≥ 8 months of age */ define "Japanese encephalitis (JE) dose 1 Create": if "Japanese encephalitis (JE) dose 1" then 'Live attenuated vaccine: Single dose administered at ≥ 8 months of age' + ' Due Date: ' + ToString("Japanese encephalitis (JE) dose 1 Due Date") else '' /* @dynamicValue: Japanese encephalitis (JE) dose 1 Due Date @pseudocode: "Date of birth" + 8 months */ define "Japanese encephalitis (JE) dose 1 Due Date": if "Japanese encephalitis (JE) dose 1" then Patient.birthDate + 8 months else null /* @dynamicValue: Japanese encephalitis (JE) dose 1 Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "Japanese encephalitis (JE) dose 1 Overdue": null /* @dynamicValue: Japanese encephalitis (JE) dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Japanese encephalitis (JE) dose 1 Expiration": null /* @complete: One JE dose from primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "JE vaccines") */ define "One JE dose from primary series was administered. The primary series has been completed": Encounter."One JE primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = '20.1' then "Japanese encephalitis (JE) dose 1" when Patient.id = '21.012' then "Japanese encephalitis (JE) dose 1" when Patient.id = '22.012' then "Japanese encephalitis (JE) dose 1" when Patient.id = '23.0' then "One JE dose from primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Version: **
  * ?: 0.2.0
* * **Content: **text/cql: ```` /* * Library: IMMZD18SJELALogic (IMMZ.D18.S.JE.Live attenuated vaccination schedule) * Schedule Table: Live attenuated vaccination schedule (1-dose scheme) */ library IMMZD18SJELALogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTJEEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Japanese encephalitis (JE) dose 1 @description: Provision of the JE dose 1 @trigger: Child's birth @triggerDate: "Date of birth" */ define "Japanese encephalitis (JE) dose 1": Encounter."No JE primary series doses were administered" and not "One JE dose from primary series was administered. The primary series has been completed" /* @output: Japanese encephalitis (JE) dose 1 Create @create: Live attenuated vaccine: Single dose administered at ≥ 8 months of age */ define "Japanese encephalitis (JE) dose 1 Create": if "Japanese encephalitis (JE) dose 1" then 'Live attenuated vaccine: Single dose administered at ≥ 8 months of age' + ' Due Date: ' + ToString("Japanese encephalitis (JE) dose 1 Due Date") else '' /* @dynamicValue: Japanese encephalitis (JE) dose 1 Due Date @pseudocode: "Date of birth" + 8 months */ define "Japanese encephalitis (JE) dose 1 Due Date": if "Japanese encephalitis (JE) dose 1" then Patient.birthDate + 8 months else null /* @dynamicValue: Japanese encephalitis (JE) dose 1 Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "Japanese encephalitis (JE) dose 1 Overdue": null /* @dynamicValue: Japanese encephalitis (JE) dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Japanese encephalitis (JE) dose 1 Expiration": null /* @complete: One JE dose from primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "JE vaccines") */ define "One JE dose from primary series was administered. The primary series has been completed": Encounter."One JE primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = '20.1' then "Japanese encephalitis (JE) dose 1" when Patient.id = '21.012' then "Japanese encephalitis (JE) dose 1" when Patient.id = '22.012' then "Japanese encephalitis (JE) dose 1" when Patient.id = '23.0' then "One JE dose from primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Url: **
  * ?: [IMMZD18SJELALogic](Library-IMMZD18SJELALogic.md)
* * **Content: **text/cql: ```` /* * Library: IMMZD18SJELALogic (IMMZ.D18.S.JE.Live attenuated vaccination schedule) * Schedule Table: Live attenuated vaccination schedule (1-dose scheme) */ library IMMZD18SJELALogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTJEEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Japanese encephalitis (JE) dose 1 @description: Provision of the JE dose 1 @trigger: Child's birth @triggerDate: "Date of birth" */ define "Japanese encephalitis (JE) dose 1": Encounter."No JE primary series doses were administered" and not "One JE dose from primary series was administered. The primary series has been completed" /* @output: Japanese encephalitis (JE) dose 1 Create @create: Live attenuated vaccine: Single dose administered at ≥ 8 months of age */ define "Japanese encephalitis (JE) dose 1 Create": if "Japanese encephalitis (JE) dose 1" then 'Live attenuated vaccine: Single dose administered at ≥ 8 months of age' + ' Due Date: ' + ToString("Japanese encephalitis (JE) dose 1 Due Date") else '' /* @dynamicValue: Japanese encephalitis (JE) dose 1 Due Date @pseudocode: "Date of birth" + 8 months */ define "Japanese encephalitis (JE) dose 1 Due Date": if "Japanese encephalitis (JE) dose 1" then Patient.birthDate + 8 months else null /* @dynamicValue: Japanese encephalitis (JE) dose 1 Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "Japanese encephalitis (JE) dose 1 Overdue": null /* @dynamicValue: Japanese encephalitis (JE) dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Japanese encephalitis (JE) dose 1 Expiration": null /* @complete: One JE dose from primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "JE vaccines") */ define "One JE dose from primary series was administered. The primary series has been completed": Encounter."One JE primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = '20.1' then "Japanese encephalitis (JE) dose 1" when Patient.id = '21.012' then "Japanese encephalitis (JE) dose 1" when Patient.id = '22.012' then "Japanese encephalitis (JE) dose 1" when Patient.id = '23.0' then "One JE dose from primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Status: **
  * ?: draft
* * **Content: **text/cql: ```` /* * Library: IMMZD18SJELALogic (IMMZ.D18.S.JE.Live attenuated vaccination schedule) * Schedule Table: Live attenuated vaccination schedule (1-dose scheme) */ library IMMZD18SJELALogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTJEEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Japanese encephalitis (JE) dose 1 @description: Provision of the JE dose 1 @trigger: Child's birth @triggerDate: "Date of birth" */ define "Japanese encephalitis (JE) dose 1": Encounter."No JE primary series doses were administered" and not "One JE dose from primary series was administered. The primary series has been completed" /* @output: Japanese encephalitis (JE) dose 1 Create @create: Live attenuated vaccine: Single dose administered at ≥ 8 months of age */ define "Japanese encephalitis (JE) dose 1 Create": if "Japanese encephalitis (JE) dose 1" then 'Live attenuated vaccine: Single dose administered at ≥ 8 months of age' + ' Due Date: ' + ToString("Japanese encephalitis (JE) dose 1 Due Date") else '' /* @dynamicValue: Japanese encephalitis (JE) dose 1 Due Date @pseudocode: "Date of birth" + 8 months */ define "Japanese encephalitis (JE) dose 1 Due Date": if "Japanese encephalitis (JE) dose 1" then Patient.birthDate + 8 months else null /* @dynamicValue: Japanese encephalitis (JE) dose 1 Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "Japanese encephalitis (JE) dose 1 Overdue": null /* @dynamicValue: Japanese encephalitis (JE) dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Japanese encephalitis (JE) dose 1 Expiration": null /* @complete: One JE dose from primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "JE vaccines") */ define "One JE dose from primary series was administered. The primary series has been completed": Encounter."One JE primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = '20.1' then "Japanese encephalitis (JE) dose 1" when Patient.id = '21.012' then "Japanese encephalitis (JE) dose 1" when Patient.id = '22.012' then "Japanese encephalitis (JE) dose 1" when Patient.id = '23.0' then "One JE dose from primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Experimental: **
  * ?: true
* * **Content: **text/cql: ```` /* * Library: IMMZD18SJELALogic (IMMZ.D18.S.JE.Live attenuated vaccination schedule) * Schedule Table: Live attenuated vaccination schedule (1-dose scheme) */ library IMMZD18SJELALogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTJEEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Japanese encephalitis (JE) dose 1 @description: Provision of the JE dose 1 @trigger: Child's birth @triggerDate: "Date of birth" */ define "Japanese encephalitis (JE) dose 1": Encounter."No JE primary series doses were administered" and not "One JE dose from primary series was administered. The primary series has been completed" /* @output: Japanese encephalitis (JE) dose 1 Create @create: Live attenuated vaccine: Single dose administered at ≥ 8 months of age */ define "Japanese encephalitis (JE) dose 1 Create": if "Japanese encephalitis (JE) dose 1" then 'Live attenuated vaccine: Single dose administered at ≥ 8 months of age' + ' Due Date: ' + ToString("Japanese encephalitis (JE) dose 1 Due Date") else '' /* @dynamicValue: Japanese encephalitis (JE) dose 1 Due Date @pseudocode: "Date of birth" + 8 months */ define "Japanese encephalitis (JE) dose 1 Due Date": if "Japanese encephalitis (JE) dose 1" then Patient.birthDate + 8 months else null /* @dynamicValue: Japanese encephalitis (JE) dose 1 Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "Japanese encephalitis (JE) dose 1 Overdue": null /* @dynamicValue: Japanese encephalitis (JE) dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Japanese encephalitis (JE) dose 1 Expiration": null /* @complete: One JE dose from primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "JE vaccines") */ define "One JE dose from primary series was administered. The primary series has been completed": Encounter."One JE primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = '20.1' then "Japanese encephalitis (JE) dose 1" when Patient.id = '21.012' then "Japanese encephalitis (JE) dose 1" when Patient.id = '22.012' then "Japanese encephalitis (JE) dose 1" when Patient.id = '23.0' then "One JE dose from primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Date: **
  * ?: 2026-03-31 13:43:43+0000
* * **Content: **text/cql: ```` /* * Library: IMMZD18SJELALogic (IMMZ.D18.S.JE.Live attenuated vaccination schedule) * Schedule Table: Live attenuated vaccination schedule (1-dose scheme) */ library IMMZD18SJELALogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTJEEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Japanese encephalitis (JE) dose 1 @description: Provision of the JE dose 1 @trigger: Child's birth @triggerDate: "Date of birth" */ define "Japanese encephalitis (JE) dose 1": Encounter."No JE primary series doses were administered" and not "One JE dose from primary series was administered. The primary series has been completed" /* @output: Japanese encephalitis (JE) dose 1 Create @create: Live attenuated vaccine: Single dose administered at ≥ 8 months of age */ define "Japanese encephalitis (JE) dose 1 Create": if "Japanese encephalitis (JE) dose 1" then 'Live attenuated vaccine: Single dose administered at ≥ 8 months of age' + ' Due Date: ' + ToString("Japanese encephalitis (JE) dose 1 Due Date") else '' /* @dynamicValue: Japanese encephalitis (JE) dose 1 Due Date @pseudocode: "Date of birth" + 8 months */ define "Japanese encephalitis (JE) dose 1 Due Date": if "Japanese encephalitis (JE) dose 1" then Patient.birthDate + 8 months else null /* @dynamicValue: Japanese encephalitis (JE) dose 1 Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "Japanese encephalitis (JE) dose 1 Overdue": null /* @dynamicValue: Japanese encephalitis (JE) dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Japanese encephalitis (JE) dose 1 Expiration": null /* @complete: One JE dose from primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "JE vaccines") */ define "One JE dose from primary series was administered. The primary series has been completed": Encounter."One JE primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = '20.1' then "Japanese encephalitis (JE) dose 1" when Patient.id = '21.012' then "Japanese encephalitis (JE) dose 1" when Patient.id = '22.012' then "Japanese encephalitis (JE) dose 1" when Patient.id = '23.0' then "One JE dose from primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Publisher: **
  * ?: WHO
* * **Content: **text/cql: ```` /* * Library: IMMZD18SJELALogic (IMMZ.D18.S.JE.Live attenuated vaccination schedule) * Schedule Table: Live attenuated vaccination schedule (1-dose scheme) */ library IMMZD18SJELALogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTJEEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Japanese encephalitis (JE) dose 1 @description: Provision of the JE dose 1 @trigger: Child's birth @triggerDate: "Date of birth" */ define "Japanese encephalitis (JE) dose 1": Encounter."No JE primary series doses were administered" and not "One JE dose from primary series was administered. The primary series has been completed" /* @output: Japanese encephalitis (JE) dose 1 Create @create: Live attenuated vaccine: Single dose administered at ≥ 8 months of age */ define "Japanese encephalitis (JE) dose 1 Create": if "Japanese encephalitis (JE) dose 1" then 'Live attenuated vaccine: Single dose administered at ≥ 8 months of age' + ' Due Date: ' + ToString("Japanese encephalitis (JE) dose 1 Due Date") else '' /* @dynamicValue: Japanese encephalitis (JE) dose 1 Due Date @pseudocode: "Date of birth" + 8 months */ define "Japanese encephalitis (JE) dose 1 Due Date": if "Japanese encephalitis (JE) dose 1" then Patient.birthDate + 8 months else null /* @dynamicValue: Japanese encephalitis (JE) dose 1 Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "Japanese encephalitis (JE) dose 1 Overdue": null /* @dynamicValue: Japanese encephalitis (JE) dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Japanese encephalitis (JE) dose 1 Expiration": null /* @complete: One JE dose from primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "JE vaccines") */ define "One JE dose from primary series was administered. The primary series has been completed": Encounter."One JE primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = '20.1' then "Japanese encephalitis (JE) dose 1" when Patient.id = '21.012' then "Japanese encephalitis (JE) dose 1" when Patient.id = '22.012' then "Japanese encephalitis (JE) dose 1" when Patient.id = '23.0' then "One JE dose from primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Description: **
  * ?: This library defines decision support logic for the IMMZ.D18.S.JE.Live attenuated vaccination schedule table in the Immunization CPG



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "IMMZD18SJELALogic",
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
  "url" : "http://smart.who.int/immunizations/Library/IMMZD18SJELALogic",
  "version" : "0.2.0",
  "name" : "IMMZD18SJELALogic",
  "title" : "IMMZD18SJELALogic",
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
    "data" : "Ci8qCiAqIExpYnJhcnk6IElNTVpEMThTSkVMQUxvZ2ljIChJTU1aLkQxOC5TLkpFLkxpdmUgYXR0ZW51YXRlZCB2YWNjaW5hdGlvbiBzY2hlZHVsZSkKICogU2NoZWR1bGUgVGFibGU6IExpdmUgYXR0ZW51YXRlZCB2YWNjaW5hdGlvbiBzY2hlZHVsZSAoMS1kb3NlIHNjaGVtZSkKICovCmxpYnJhcnkgSU1NWkQxOFNKRUxBTG9naWMKCnVzaW5nIEZISVIgdmVyc2lvbiAnNC4wLjEnCmluY2x1ZGUgRkhJUkhlbHBlcnMgdmVyc2lvbiAnNC4wLjEnCgppbmNsdWRlIFdIT0NvbW1vbiBjYWxsZWQgV0MKCmluY2x1ZGUgSU1NWkNvbW1vbiBjYWxsZWQgQ29tbW9uCmluY2x1ZGUgSU1NWkNvbmNlcHRzIGNhbGxlZCBDb25jZXB0cwoKaW5jbHVkZSBJTU1aRW5jb3VudGVyRWxlbWVudHMgY2FsbGVkIElFCmluY2x1ZGUgSU1NWkQyRFRKRUVuY291bnRlckVsZW1lbnRzIGNhbGxlZCBFbmNvdW50ZXIKCnBhcmFtZXRlciBUb2RheSBEYXRlIGRlZmF1bHQgVG9kYXkoKQoKY29udGV4dCBQYXRpZW50CgoKLyoKQG91dHB1dDogSmFwYW5lc2UgZW5jZXBoYWxpdGlzIChKRSkgZG9zZSAxCkBkZXNjcmlwdGlvbjogUHJvdmlzaW9uIG9mIHRoZSBKRSBkb3NlIDEKQHRyaWdnZXI6IENoaWxkJ3MgYmlydGgKQHRyaWdnZXJEYXRlOiAiRGF0ZSBvZiBiaXJ0aCIKKi8KZGVmaW5lICJKYXBhbmVzZSBlbmNlcGhhbGl0aXMgKEpFKSBkb3NlIDEiOgogIEVuY291bnRlci4iTm8gSkUgcHJpbWFyeSBzZXJpZXMgZG9zZXMgd2VyZSBhZG1pbmlzdGVyZWQiCiAgYW5kIG5vdCAiT25lIEpFIGRvc2UgZnJvbSBwcmltYXJ5IHNlcmllcyB3YXMgYWRtaW5pc3RlcmVkLiBUaGUgcHJpbWFyeSBzZXJpZXMgaGFzIGJlZW4gY29tcGxldGVkIgoKLyoKQG91dHB1dDogSmFwYW5lc2UgZW5jZXBoYWxpdGlzIChKRSkgZG9zZSAxIENyZWF0ZQpAY3JlYXRlOiBMaXZlIGF0dGVudWF0ZWQgdmFjY2luZTogU2luZ2xlIGRvc2UgYWRtaW5pc3RlcmVkIGF0IOKJpSA4IG1vbnRocyBvZiBhZ2UKKi8KZGVmaW5lICJKYXBhbmVzZSBlbmNlcGhhbGl0aXMgKEpFKSBkb3NlIDEgQ3JlYXRlIjoKICBpZiAiSmFwYW5lc2UgZW5jZXBoYWxpdGlzIChKRSkgZG9zZSAxIiAKICB0aGVuICdMaXZlIGF0dGVudWF0ZWQgdmFjY2luZTogU2luZ2xlIGRvc2UgYWRtaW5pc3RlcmVkIGF0IOKJpSA4IG1vbnRocyBvZiBhZ2UnICsgJwpEdWUgRGF0ZTogJyArIFRvU3RyaW5nKCJKYXBhbmVzZSBlbmNlcGhhbGl0aXMgKEpFKSBkb3NlIDEgRHVlIERhdGUiKQogIGVsc2UgJycKCi8qCkBkeW5hbWljVmFsdWU6IEphcGFuZXNlIGVuY2VwaGFsaXRpcyAoSkUpIGRvc2UgMSBEdWUgRGF0ZQpAcHNldWRvY29kZTogIkRhdGUgb2YgYmlydGgiICsgOCBtb250aHMKKi8KZGVmaW5lICJKYXBhbmVzZSBlbmNlcGhhbGl0aXMgKEpFKSBkb3NlIDEgRHVlIERhdGUiOgogIGlmICJKYXBhbmVzZSBlbmNlcGhhbGl0aXMgKEpFKSBkb3NlIDEiIHRoZW4gUGF0aWVudC5iaXJ0aERhdGUgKyA4IG1vbnRocwogIGVsc2UgbnVsbAoKLyoKQGR5bmFtaWNWYWx1ZTogSmFwYW5lc2UgZW5jZXBoYWxpdGlzIChKRSkgZG9zZSAxIE92ZXJkdWUKQHBzZXVkb2NvZGU6IFRvIGJlIGRldGVybWluZWQgYnkgTWVtYmVyIFN0YXRlczsgaG93ZXZlciwgdGhlcmUgaXMgbm8gcmVjb21tZW5kZWQgb3ZlcmR1ZSBkYXRlIGFuZCBpbmRpdmlkdWFscyBhcmUgYWx3YXlzIGVsaWdpYmxlIHRvIGJlIHZhY2NpbmF0ZWQuCiovCmRlZmluZSAiSmFwYW5lc2UgZW5jZXBoYWxpdGlzIChKRSkgZG9zZSAxIE92ZXJkdWUiOgogIG51bGwKCi8qCkBkeW5hbWljVmFsdWU6IEphcGFuZXNlIGVuY2VwaGFsaXRpcyAoSkUpIGRvc2UgMSBFeHBpcmF0aW9uCkBwc2V1ZG9jb2RlOiBUbyBiZSBkZXRlcm1pbmVkIGJ5IE1lbWJlciBTdGF0ZXM7IGhvd2V2ZXIsIHRoZXJlIGlzIG5vIHJlY29tbWVuZGVkIGV4cGlyYXRpb24gZGF0ZSBhbmQgaW5kaXZpZHVhbHMgYXJlIGFsd2F5cyBlbGlnaWJsZSB0byBiZSB2YWNjaW5hdGVkLgoqLwpkZWZpbmUgIkphcGFuZXNlIGVuY2VwaGFsaXRpcyAoSkUpIGRvc2UgMSBFeHBpcmF0aW9uIjoKICBudWxsCiAgCi8qCkBjb21wbGV0ZTogT25lIEpFIGRvc2UgZnJvbSBwcmltYXJ5IHNlcmllcyB3YXMgYWRtaW5pc3RlcmVkLiBUaGUgcHJpbWFyeSBzZXJpZXMgaGFzIGJlZW4gY29tcGxldGVkCkBwc2V1ZG9jb2RlOiAiQ29tcGxldGVkIHRoZSBwcmltYXJ5IHZhY2NpbmF0aW9uIHNlcmllcyIgPSBUUlVFICh3aGVyZSAiVmFjY2luZSB0eXBlIiA9ICJKRSB2YWNjaW5lcyIpCiovCmRlZmluZSAiT25lIEpFIGRvc2UgZnJvbSBwcmltYXJ5IHNlcmllcyB3YXMgYWRtaW5pc3RlcmVkLiBUaGUgcHJpbWFyeSBzZXJpZXMgaGFzIGJlZW4gY29tcGxldGVkIjoKICBFbmNvdW50ZXIuIk9uZSBKRSBwcmltYXJ5IHNlcmllcyBkb3NlIHdhcyBhZG1pbmlzdGVyZWQiCgovKgpAdGVzdDogVGVzdCBleHBlY3RlZCByZXN1bHRzIGJhc2VkIG9uIGV4YW1wbGUgcGF0aWVudHMKKi8KZGVmaW5lICJUZXN0IFZhbGlkYXRpb24iOgogIGNhc2UKICAgIHdoZW4gUGF0aWVudC5pZCA9ICcyMC4xJyB0aGVuICJKYXBhbmVzZSBlbmNlcGhhbGl0aXMgKEpFKSBkb3NlIDEiCiAgICB3aGVuIFBhdGllbnQuaWQgPSAnMjEuMDEyJyB0aGVuICJKYXBhbmVzZSBlbmNlcGhhbGl0aXMgKEpFKSBkb3NlIDEiCiAgICB3aGVuIFBhdGllbnQuaWQgPSAnMjIuMDEyJyB0aGVuICJKYXBhbmVzZSBlbmNlcGhhbGl0aXMgKEpFKSBkb3NlIDEiCiAgICB3aGVuIFBhdGllbnQuaWQgPSAnMjMuMCcgdGhlbiAiT25lIEpFIGRvc2UgZnJvbSBwcmltYXJ5IHNlcmllcyB3YXMgYWRtaW5pc3RlcmVkLiBUaGUgcHJpbWFyeSBzZXJpZXMgaGFzIGJlZW4gY29tcGxldGVkIgogICAgZWxzZSAnTm8gdGVzdCBjYXNlIHNldCcKICBlbmQK"
  }]
}

```
