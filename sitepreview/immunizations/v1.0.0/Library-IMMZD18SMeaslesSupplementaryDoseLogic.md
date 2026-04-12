# IMMZD18SMeaslesSupplementaryDoseLogic - WHO Immunization Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD18SMeaslesSupplementaryDoseLogic**

## Library: IMMZD18SMeaslesSupplementaryDoseLogic 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Library/IMMZD18SMeaslesSupplementaryDoseLogic | *Version*:1.0.0 |
| Draft as of 2026-04-09 | *Computable Name*:IMMZD18SMeaslesSupplementaryDoseLogic |

 
This library defines decision support logic for the IMMZ.D18.S.Measles.Supplementary dose schedule table in the Immunization CPG 

* * **Content: **text/cql: ````/* * Library: IMMZD18SMeaslesSupplementaryDoseLogic (IMMZ.D18.S.Measles.Supplementary dose schedule) * Schedule Table: Measles supplementary dose schedule */ library IMMZD18SMeaslesSupplementaryDoseLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTMeaslesEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Measles-containing vaccine (MCV) supplementary dose @description: Provision of a MCV supplementary dose @trigger: Routine measles immunization schedule is complete @pseudo: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Measles-containing vaccines") AND Member States defined logic for supplementary dose applied @triggerDate: "Date when the primary vaccination series was completed" */ define "Measles-containing vaccine (MCV) supplementary dose": not "MCV supplementary dose was administered" and Encounter."Measles routine immunization schedule is complete" /* @output: Measles-containing vaccine (MCV) supplementary dose Create @create: Child is due for a MCV supplementary dose if child is HIV-positive, on antiretroviral therapy (ART) and immune reconstitution has been achieved. */ define "Measles-containing vaccine (MCV) supplementary dose Create": if "Measles-containing vaccine (MCV) supplementary dose" then 'Child is due for a MCV supplementary dose if child is HIV-positive, on antiretroviral therapy (ART) and immune reconstitution has been achieved.' + ' Due Date: ' + ToString("Measles-containing vaccine (MCV) supplementary dose Due Date") else '' /* @dynamicValue: Measles-containing vaccine (MCV) supplementary dose Due Date @pseudocode: "Date when the primary vaccination series completed" + 4 weeks */ define "Measles-containing vaccine (MCV) supplementary dose Due Date": if "Measles-containing vaccine (MCV) supplementary dose" then Encounter."Date when the primary vaccination series completed" + 4 weeks else null /* @dynamicValue: Measles-containing vaccine (MCV) supplementary dose Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "Measles-containing vaccine (MCV) supplementary dose Overdue": null /* @dynamicValue: Measles-containing vaccine (MCV) supplementary dose Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Measles-containing vaccine (MCV) supplementary dose Expiration": null /* @complete: MCV supplementary dose was administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Measles-containing vaccines" and "Type of dose" = "Supplementary dose") = 1 */ define "MCV supplementary dose was administered": Encounter."Measles supplementary dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'Measles48.3' then "Measles-containing vaccine (MCV) supplementary dose" when Patient.id = 'Measles49.3' then "Measles-containing vaccine (MCV) supplementary dose" when Patient.id = 'Measles50.1' then "MCV supplementary dose was administered" else 'No test case set' end ````: **Id: **
  * ?: IMMZD18SMeaslesSupplementaryDoseLogic
* * **Content: **text/cql: ````/* * Library: IMMZD18SMeaslesSupplementaryDoseLogic (IMMZ.D18.S.Measles.Supplementary dose schedule) * Schedule Table: Measles supplementary dose schedule */ library IMMZD18SMeaslesSupplementaryDoseLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTMeaslesEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Measles-containing vaccine (MCV) supplementary dose @description: Provision of a MCV supplementary dose @trigger: Routine measles immunization schedule is complete @pseudo: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Measles-containing vaccines") AND Member States defined logic for supplementary dose applied @triggerDate: "Date when the primary vaccination series was completed" */ define "Measles-containing vaccine (MCV) supplementary dose": not "MCV supplementary dose was administered" and Encounter."Measles routine immunization schedule is complete" /* @output: Measles-containing vaccine (MCV) supplementary dose Create @create: Child is due for a MCV supplementary dose if child is HIV-positive, on antiretroviral therapy (ART) and immune reconstitution has been achieved. */ define "Measles-containing vaccine (MCV) supplementary dose Create": if "Measles-containing vaccine (MCV) supplementary dose" then 'Child is due for a MCV supplementary dose if child is HIV-positive, on antiretroviral therapy (ART) and immune reconstitution has been achieved.' + ' Due Date: ' + ToString("Measles-containing vaccine (MCV) supplementary dose Due Date") else '' /* @dynamicValue: Measles-containing vaccine (MCV) supplementary dose Due Date @pseudocode: "Date when the primary vaccination series completed" + 4 weeks */ define "Measles-containing vaccine (MCV) supplementary dose Due Date": if "Measles-containing vaccine (MCV) supplementary dose" then Encounter."Date when the primary vaccination series completed" + 4 weeks else null /* @dynamicValue: Measles-containing vaccine (MCV) supplementary dose Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "Measles-containing vaccine (MCV) supplementary dose Overdue": null /* @dynamicValue: Measles-containing vaccine (MCV) supplementary dose Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Measles-containing vaccine (MCV) supplementary dose Expiration": null /* @complete: MCV supplementary dose was administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Measles-containing vaccines" and "Type of dose" = "Supplementary dose") = 1 */ define "MCV supplementary dose was administered": Encounter."Measles supplementary dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'Measles48.3' then "Measles-containing vaccine (MCV) supplementary dose" when Patient.id = 'Measles49.3' then "Measles-containing vaccine (MCV) supplementary dose" when Patient.id = 'Measles50.1' then "MCV supplementary dose was administered" else 'No test case set' end ````: **Version: **
  * ?: 1.0.0
* * **Content: **text/cql: ````/* * Library: IMMZD18SMeaslesSupplementaryDoseLogic (IMMZ.D18.S.Measles.Supplementary dose schedule) * Schedule Table: Measles supplementary dose schedule */ library IMMZD18SMeaslesSupplementaryDoseLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTMeaslesEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Measles-containing vaccine (MCV) supplementary dose @description: Provision of a MCV supplementary dose @trigger: Routine measles immunization schedule is complete @pseudo: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Measles-containing vaccines") AND Member States defined logic for supplementary dose applied @triggerDate: "Date when the primary vaccination series was completed" */ define "Measles-containing vaccine (MCV) supplementary dose": not "MCV supplementary dose was administered" and Encounter."Measles routine immunization schedule is complete" /* @output: Measles-containing vaccine (MCV) supplementary dose Create @create: Child is due for a MCV supplementary dose if child is HIV-positive, on antiretroviral therapy (ART) and immune reconstitution has been achieved. */ define "Measles-containing vaccine (MCV) supplementary dose Create": if "Measles-containing vaccine (MCV) supplementary dose" then 'Child is due for a MCV supplementary dose if child is HIV-positive, on antiretroviral therapy (ART) and immune reconstitution has been achieved.' + ' Due Date: ' + ToString("Measles-containing vaccine (MCV) supplementary dose Due Date") else '' /* @dynamicValue: Measles-containing vaccine (MCV) supplementary dose Due Date @pseudocode: "Date when the primary vaccination series completed" + 4 weeks */ define "Measles-containing vaccine (MCV) supplementary dose Due Date": if "Measles-containing vaccine (MCV) supplementary dose" then Encounter."Date when the primary vaccination series completed" + 4 weeks else null /* @dynamicValue: Measles-containing vaccine (MCV) supplementary dose Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "Measles-containing vaccine (MCV) supplementary dose Overdue": null /* @dynamicValue: Measles-containing vaccine (MCV) supplementary dose Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Measles-containing vaccine (MCV) supplementary dose Expiration": null /* @complete: MCV supplementary dose was administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Measles-containing vaccines" and "Type of dose" = "Supplementary dose") = 1 */ define "MCV supplementary dose was administered": Encounter."Measles supplementary dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'Measles48.3' then "Measles-containing vaccine (MCV) supplementary dose" when Patient.id = 'Measles49.3' then "Measles-containing vaccine (MCV) supplementary dose" when Patient.id = 'Measles50.1' then "MCV supplementary dose was administered" else 'No test case set' end ````: **Url: **
  * ?: [IMMZD18SMeaslesSupplementaryDoseLogic](Library-IMMZD18SMeaslesSupplementaryDoseLogic.md)
* * **Content: **text/cql: ````/* * Library: IMMZD18SMeaslesSupplementaryDoseLogic (IMMZ.D18.S.Measles.Supplementary dose schedule) * Schedule Table: Measles supplementary dose schedule */ library IMMZD18SMeaslesSupplementaryDoseLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTMeaslesEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Measles-containing vaccine (MCV) supplementary dose @description: Provision of a MCV supplementary dose @trigger: Routine measles immunization schedule is complete @pseudo: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Measles-containing vaccines") AND Member States defined logic for supplementary dose applied @triggerDate: "Date when the primary vaccination series was completed" */ define "Measles-containing vaccine (MCV) supplementary dose": not "MCV supplementary dose was administered" and Encounter."Measles routine immunization schedule is complete" /* @output: Measles-containing vaccine (MCV) supplementary dose Create @create: Child is due for a MCV supplementary dose if child is HIV-positive, on antiretroviral therapy (ART) and immune reconstitution has been achieved. */ define "Measles-containing vaccine (MCV) supplementary dose Create": if "Measles-containing vaccine (MCV) supplementary dose" then 'Child is due for a MCV supplementary dose if child is HIV-positive, on antiretroviral therapy (ART) and immune reconstitution has been achieved.' + ' Due Date: ' + ToString("Measles-containing vaccine (MCV) supplementary dose Due Date") else '' /* @dynamicValue: Measles-containing vaccine (MCV) supplementary dose Due Date @pseudocode: "Date when the primary vaccination series completed" + 4 weeks */ define "Measles-containing vaccine (MCV) supplementary dose Due Date": if "Measles-containing vaccine (MCV) supplementary dose" then Encounter."Date when the primary vaccination series completed" + 4 weeks else null /* @dynamicValue: Measles-containing vaccine (MCV) supplementary dose Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "Measles-containing vaccine (MCV) supplementary dose Overdue": null /* @dynamicValue: Measles-containing vaccine (MCV) supplementary dose Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Measles-containing vaccine (MCV) supplementary dose Expiration": null /* @complete: MCV supplementary dose was administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Measles-containing vaccines" and "Type of dose" = "Supplementary dose") = 1 */ define "MCV supplementary dose was administered": Encounter."Measles supplementary dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'Measles48.3' then "Measles-containing vaccine (MCV) supplementary dose" when Patient.id = 'Measles49.3' then "Measles-containing vaccine (MCV) supplementary dose" when Patient.id = 'Measles50.1' then "MCV supplementary dose was administered" else 'No test case set' end ````: **Status: **
  * ?: draft
* * **Content: **text/cql: ````/* * Library: IMMZD18SMeaslesSupplementaryDoseLogic (IMMZ.D18.S.Measles.Supplementary dose schedule) * Schedule Table: Measles supplementary dose schedule */ library IMMZD18SMeaslesSupplementaryDoseLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTMeaslesEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Measles-containing vaccine (MCV) supplementary dose @description: Provision of a MCV supplementary dose @trigger: Routine measles immunization schedule is complete @pseudo: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Measles-containing vaccines") AND Member States defined logic for supplementary dose applied @triggerDate: "Date when the primary vaccination series was completed" */ define "Measles-containing vaccine (MCV) supplementary dose": not "MCV supplementary dose was administered" and Encounter."Measles routine immunization schedule is complete" /* @output: Measles-containing vaccine (MCV) supplementary dose Create @create: Child is due for a MCV supplementary dose if child is HIV-positive, on antiretroviral therapy (ART) and immune reconstitution has been achieved. */ define "Measles-containing vaccine (MCV) supplementary dose Create": if "Measles-containing vaccine (MCV) supplementary dose" then 'Child is due for a MCV supplementary dose if child is HIV-positive, on antiretroviral therapy (ART) and immune reconstitution has been achieved.' + ' Due Date: ' + ToString("Measles-containing vaccine (MCV) supplementary dose Due Date") else '' /* @dynamicValue: Measles-containing vaccine (MCV) supplementary dose Due Date @pseudocode: "Date when the primary vaccination series completed" + 4 weeks */ define "Measles-containing vaccine (MCV) supplementary dose Due Date": if "Measles-containing vaccine (MCV) supplementary dose" then Encounter."Date when the primary vaccination series completed" + 4 weeks else null /* @dynamicValue: Measles-containing vaccine (MCV) supplementary dose Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "Measles-containing vaccine (MCV) supplementary dose Overdue": null /* @dynamicValue: Measles-containing vaccine (MCV) supplementary dose Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Measles-containing vaccine (MCV) supplementary dose Expiration": null /* @complete: MCV supplementary dose was administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Measles-containing vaccines" and "Type of dose" = "Supplementary dose") = 1 */ define "MCV supplementary dose was administered": Encounter."Measles supplementary dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'Measles48.3' then "Measles-containing vaccine (MCV) supplementary dose" when Patient.id = 'Measles49.3' then "Measles-containing vaccine (MCV) supplementary dose" when Patient.id = 'Measles50.1' then "MCV supplementary dose was administered" else 'No test case set' end ````: **Date: **
  * ?: 2026-04-09 14:18:30+0000
* * **Content: **text/cql: ````/* * Library: IMMZD18SMeaslesSupplementaryDoseLogic (IMMZ.D18.S.Measles.Supplementary dose schedule) * Schedule Table: Measles supplementary dose schedule */ library IMMZD18SMeaslesSupplementaryDoseLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTMeaslesEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Measles-containing vaccine (MCV) supplementary dose @description: Provision of a MCV supplementary dose @trigger: Routine measles immunization schedule is complete @pseudo: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Measles-containing vaccines") AND Member States defined logic for supplementary dose applied @triggerDate: "Date when the primary vaccination series was completed" */ define "Measles-containing vaccine (MCV) supplementary dose": not "MCV supplementary dose was administered" and Encounter."Measles routine immunization schedule is complete" /* @output: Measles-containing vaccine (MCV) supplementary dose Create @create: Child is due for a MCV supplementary dose if child is HIV-positive, on antiretroviral therapy (ART) and immune reconstitution has been achieved. */ define "Measles-containing vaccine (MCV) supplementary dose Create": if "Measles-containing vaccine (MCV) supplementary dose" then 'Child is due for a MCV supplementary dose if child is HIV-positive, on antiretroviral therapy (ART) and immune reconstitution has been achieved.' + ' Due Date: ' + ToString("Measles-containing vaccine (MCV) supplementary dose Due Date") else '' /* @dynamicValue: Measles-containing vaccine (MCV) supplementary dose Due Date @pseudocode: "Date when the primary vaccination series completed" + 4 weeks */ define "Measles-containing vaccine (MCV) supplementary dose Due Date": if "Measles-containing vaccine (MCV) supplementary dose" then Encounter."Date when the primary vaccination series completed" + 4 weeks else null /* @dynamicValue: Measles-containing vaccine (MCV) supplementary dose Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "Measles-containing vaccine (MCV) supplementary dose Overdue": null /* @dynamicValue: Measles-containing vaccine (MCV) supplementary dose Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Measles-containing vaccine (MCV) supplementary dose Expiration": null /* @complete: MCV supplementary dose was administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Measles-containing vaccines" and "Type of dose" = "Supplementary dose") = 1 */ define "MCV supplementary dose was administered": Encounter."Measles supplementary dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'Measles48.3' then "Measles-containing vaccine (MCV) supplementary dose" when Patient.id = 'Measles49.3' then "Measles-containing vaccine (MCV) supplementary dose" when Patient.id = 'Measles50.1' then "MCV supplementary dose was administered" else 'No test case set' end ````: **Publisher: **
  * ?: WHO
* * **Content: **text/cql: ````/* * Library: IMMZD18SMeaslesSupplementaryDoseLogic (IMMZ.D18.S.Measles.Supplementary dose schedule) * Schedule Table: Measles supplementary dose schedule */ library IMMZD18SMeaslesSupplementaryDoseLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTMeaslesEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Measles-containing vaccine (MCV) supplementary dose @description: Provision of a MCV supplementary dose @trigger: Routine measles immunization schedule is complete @pseudo: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Measles-containing vaccines") AND Member States defined logic for supplementary dose applied @triggerDate: "Date when the primary vaccination series was completed" */ define "Measles-containing vaccine (MCV) supplementary dose": not "MCV supplementary dose was administered" and Encounter."Measles routine immunization schedule is complete" /* @output: Measles-containing vaccine (MCV) supplementary dose Create @create: Child is due for a MCV supplementary dose if child is HIV-positive, on antiretroviral therapy (ART) and immune reconstitution has been achieved. */ define "Measles-containing vaccine (MCV) supplementary dose Create": if "Measles-containing vaccine (MCV) supplementary dose" then 'Child is due for a MCV supplementary dose if child is HIV-positive, on antiretroviral therapy (ART) and immune reconstitution has been achieved.' + ' Due Date: ' + ToString("Measles-containing vaccine (MCV) supplementary dose Due Date") else '' /* @dynamicValue: Measles-containing vaccine (MCV) supplementary dose Due Date @pseudocode: "Date when the primary vaccination series completed" + 4 weeks */ define "Measles-containing vaccine (MCV) supplementary dose Due Date": if "Measles-containing vaccine (MCV) supplementary dose" then Encounter."Date when the primary vaccination series completed" + 4 weeks else null /* @dynamicValue: Measles-containing vaccine (MCV) supplementary dose Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "Measles-containing vaccine (MCV) supplementary dose Overdue": null /* @dynamicValue: Measles-containing vaccine (MCV) supplementary dose Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Measles-containing vaccine (MCV) supplementary dose Expiration": null /* @complete: MCV supplementary dose was administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Measles-containing vaccines" and "Type of dose" = "Supplementary dose") = 1 */ define "MCV supplementary dose was administered": Encounter."Measles supplementary dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'Measles48.3' then "Measles-containing vaccine (MCV) supplementary dose" when Patient.id = 'Measles49.3' then "Measles-containing vaccine (MCV) supplementary dose" when Patient.id = 'Measles50.1' then "MCV supplementary dose was administered" else 'No test case set' end ````: **Description: **
  * ?: This library defines decision support logic for the IMMZ.D18.S.Measles.Supplementary dose schedule table in the Immunization CPG



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "IMMZD18SMeaslesSupplementaryDoseLogic",
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
  "url" : "http://smart.who.int/immunizations/Library/IMMZD18SMeaslesSupplementaryDoseLogic",
  "version" : "1.0.0",
  "name" : "IMMZD18SMeaslesSupplementaryDoseLogic",
  "title" : "IMMZD18SMeaslesSupplementaryDoseLogic",
  "status" : "draft",
  "experimental" : false,
  "type" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/library-type",
      "code" : "logic-library"
    }]
  },
  "date" : "2026-04-09T14:18:30+00:00",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "This library defines decision support logic for the IMMZ.D18.S.Measles.Supplementary dose schedule table in the Immunization CPG",
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
    "resource" : "http://smart.who.int/immunizations/Library/IMMZD2DTMeaslesEncounterElements"
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
    "name" : "MCV supplementary dose was administered",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "Measles-containing vaccine (MCV) supplementary dose",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "Measles-containing vaccine (MCV) supplementary dose Due Date",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "date"
  },
  {
    "name" : "Measles-containing vaccine (MCV) supplementary dose Create",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "string"
  },
  {
    "name" : "Measles-containing vaccine (MCV) supplementary dose Overdue",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "Resource"
  },
  {
    "name" : "Measles-containing vaccine (MCV) supplementary dose Expiration",
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
    "data" : "LyoKICogTGlicmFyeTogSU1NWkQxOFNNZWFzbGVzU3VwcGxlbWVudGFyeURvc2VMb2dpYyAoSU1NWi5EMTguUy5NZWFzbGVzLlN1cHBsZW1lbnRhcnkgZG9zZSBzY2hlZHVsZSkKICogU2NoZWR1bGUgVGFibGU6IE1lYXNsZXMgc3VwcGxlbWVudGFyeSBkb3NlIHNjaGVkdWxlCiAqLwpsaWJyYXJ5IElNTVpEMThTTWVhc2xlc1N1cHBsZW1lbnRhcnlEb3NlTG9naWMKCnVzaW5nIEZISVIgdmVyc2lvbiAnNC4wLjEnCmluY2x1ZGUgRkhJUkhlbHBlcnMgdmVyc2lvbiAnNC4wLjEnCgppbmNsdWRlIFdIT0NvbW1vbiBjYWxsZWQgV0MKCmluY2x1ZGUgSU1NWkNvbW1vbiBjYWxsZWQgQ29tbW9uCmluY2x1ZGUgSU1NWkNvbmNlcHRzIGNhbGxlZCBDb25jZXB0cwoKaW5jbHVkZSBJTU1aRW5jb3VudGVyRWxlbWVudHMgY2FsbGVkIElFCmluY2x1ZGUgSU1NWkQyRFRNZWFzbGVzRW5jb3VudGVyRWxlbWVudHMgY2FsbGVkIEVuY291bnRlcgoKcGFyYW1ldGVyIFRvZGF5IERhdGUgZGVmYXVsdCBUb2RheSgpCgoKY29udGV4dCBQYXRpZW50CgoKLyoKQG91dHB1dDogTWVhc2xlcy1jb250YWluaW5nIHZhY2NpbmUgKE1DVikgc3VwcGxlbWVudGFyeSBkb3NlCkBkZXNjcmlwdGlvbjogUHJvdmlzaW9uIG9mIGEgTUNWIHN1cHBsZW1lbnRhcnkgZG9zZQpAdHJpZ2dlcjogUm91dGluZSBtZWFzbGVzIGltbXVuaXphdGlvbiBzY2hlZHVsZSBpcyBjb21wbGV0ZQpAcHNldWRvOiAiQ29tcGxldGVkIHRoZSBwcmltYXJ5IHZhY2NpbmF0aW9uIHNlcmllcyIgPSBUUlVFICh3aGVyZSAiVmFjY2luZSB0eXBlIiA9ICJNZWFzbGVzLWNvbnRhaW5pbmcgdmFjY2luZXMiKSBBTkQgTWVtYmVyIFN0YXRlcyBkZWZpbmVkIGxvZ2ljIGZvciBzdXBwbGVtZW50YXJ5IGRvc2UgYXBwbGllZApAdHJpZ2dlckRhdGU6ICJEYXRlIHdoZW4gdGhlIHByaW1hcnkgdmFjY2luYXRpb24gc2VyaWVzIHdhcyBjb21wbGV0ZWQiCiovCmRlZmluZSAiTWVhc2xlcy1jb250YWluaW5nIHZhY2NpbmUgKE1DVikgc3VwcGxlbWVudGFyeSBkb3NlIjoKICBub3QgIk1DViBzdXBwbGVtZW50YXJ5IGRvc2Ugd2FzIGFkbWluaXN0ZXJlZCIgYW5kIEVuY291bnRlci4iTWVhc2xlcyByb3V0aW5lIGltbXVuaXphdGlvbiBzY2hlZHVsZSBpcyBjb21wbGV0ZSIKCgovKgpAb3V0cHV0OiBNZWFzbGVzLWNvbnRhaW5pbmcgdmFjY2luZSAoTUNWKSBzdXBwbGVtZW50YXJ5IGRvc2UgQ3JlYXRlCkBjcmVhdGU6IENoaWxkIGlzIGR1ZSBmb3IgYSBNQ1Ygc3VwcGxlbWVudGFyeSBkb3NlIGlmIGNoaWxkIGlzIEhJVi1wb3NpdGl2ZSwgb24gYW50aXJldHJvdmlyYWwgdGhlcmFweSAoQVJUKSBhbmQgaW1tdW5lIHJlY29uc3RpdHV0aW9uIGhhcyBiZWVuIGFjaGlldmVkLgoqLwpkZWZpbmUgIk1lYXNsZXMtY29udGFpbmluZyB2YWNjaW5lIChNQ1YpIHN1cHBsZW1lbnRhcnkgZG9zZSBDcmVhdGUiOgogIGlmICJNZWFzbGVzLWNvbnRhaW5pbmcgdmFjY2luZSAoTUNWKSBzdXBwbGVtZW50YXJ5IGRvc2UiCiAgdGhlbiAnQ2hpbGQgaXMgZHVlIGZvciBhIE1DViBzdXBwbGVtZW50YXJ5IGRvc2UgaWYgY2hpbGQgaXMgSElWLXBvc2l0aXZlLCBvbiBhbnRpcmV0cm92aXJhbCB0aGVyYXB5IChBUlQpIGFuZCBpbW11bmUgcmVjb25zdGl0dXRpb24gaGFzIGJlZW4gYWNoaWV2ZWQuJyArICcKRHVlIERhdGU6ICcgKyBUb1N0cmluZygiTWVhc2xlcy1jb250YWluaW5nIHZhY2NpbmUgKE1DVikgc3VwcGxlbWVudGFyeSBkb3NlIER1ZSBEYXRlIikKICBlbHNlICcnCgoKLyoKQGR5bmFtaWNWYWx1ZTogTWVhc2xlcy1jb250YWluaW5nIHZhY2NpbmUgKE1DVikgc3VwcGxlbWVudGFyeSBkb3NlIER1ZSBEYXRlCkBwc2V1ZG9jb2RlOiAiRGF0ZSB3aGVuIHRoZSBwcmltYXJ5IHZhY2NpbmF0aW9uIHNlcmllcyBjb21wbGV0ZWQiICsgNCB3ZWVrcwoqLwpkZWZpbmUgIk1lYXNsZXMtY29udGFpbmluZyB2YWNjaW5lIChNQ1YpIHN1cHBsZW1lbnRhcnkgZG9zZSBEdWUgRGF0ZSI6CiAgaWYgIk1lYXNsZXMtY29udGFpbmluZyB2YWNjaW5lIChNQ1YpIHN1cHBsZW1lbnRhcnkgZG9zZSIgdGhlbiBFbmNvdW50ZXIuIkRhdGUgd2hlbiB0aGUgcHJpbWFyeSB2YWNjaW5hdGlvbiBzZXJpZXMgY29tcGxldGVkIiArIDQgd2Vla3MKICBlbHNlIG51bGwKCgovKgpAZHluYW1pY1ZhbHVlOiBNZWFzbGVzLWNvbnRhaW5pbmcgdmFjY2luZSAoTUNWKSBzdXBwbGVtZW50YXJ5IGRvc2UgT3ZlcmR1ZQpAcHNldWRvY29kZTogVG8gYmUgZGV0ZXJtaW5lZCBieSBNZW1iZXIgU3RhdGVzOyBob3dldmVyLCB0aGVyZSBpcyBubyByZWNvbW1lbmRlZCBvdmVyZHVlIGRhdGUgYW5kIGluZGl2aWR1YWxzIGFyZSBhbHdheXMgZWxpZ2libGUgdG8gYmUgdmFjY2luYXRlZC4KKi8KZGVmaW5lICJNZWFzbGVzLWNvbnRhaW5pbmcgdmFjY2luZSAoTUNWKSBzdXBwbGVtZW50YXJ5IGRvc2UgT3ZlcmR1ZSI6CiAgbnVsbAoKCi8qCkBkeW5hbWljVmFsdWU6IE1lYXNsZXMtY29udGFpbmluZyB2YWNjaW5lIChNQ1YpIHN1cHBsZW1lbnRhcnkgZG9zZSBFeHBpcmF0aW9uCkBwc2V1ZG9jb2RlOiBUbyBiZSBkZXRlcm1pbmVkIGJ5IE1lbWJlciBTdGF0ZXM7IGhvd2V2ZXIsIHRoZXJlIGlzIG5vIHJlY29tbWVuZGVkIGV4cGlyYXRpb24gZGF0ZSBhbmQgaW5kaXZpZHVhbHMgYXJlIGFsd2F5cyBlbGlnaWJsZSB0byBiZSB2YWNjaW5hdGVkLgoqLwpkZWZpbmUgIk1lYXNsZXMtY29udGFpbmluZyB2YWNjaW5lIChNQ1YpIHN1cHBsZW1lbnRhcnkgZG9zZSBFeHBpcmF0aW9uIjoKICBudWxsCgogIAovKgpAY29tcGxldGU6IE1DViBzdXBwbGVtZW50YXJ5IGRvc2Ugd2FzIGFkbWluaXN0ZXJlZApAcHNldWRvY29kZTogQ291bnQgb2YgdmFjY2luZXMgYWRtaW5pc3RlcmVkICh3aGVyZSAiVmFjY2luZSB0eXBlIiA9ICJNZWFzbGVzLWNvbnRhaW5pbmcgdmFjY2luZXMiIGFuZCAiVHlwZSBvZiBkb3NlIiA9ICJTdXBwbGVtZW50YXJ5IGRvc2UiKSA9IDEKKi8KZGVmaW5lICJNQ1Ygc3VwcGxlbWVudGFyeSBkb3NlIHdhcyBhZG1pbmlzdGVyZWQiOgogIEVuY291bnRlci4iTWVhc2xlcyBzdXBwbGVtZW50YXJ5IGRvc2Ugd2FzIGFkbWluaXN0ZXJlZCIKCgoKLyoKQHRlc3Q6IFRlc3QgZXhwZWN0ZWQgcmVzdWx0cyBiYXNlZCBvbiBleGFtcGxlIHBhdGllbnRzCiovCmRlZmluZSAiVGVzdCBWYWxpZGF0aW9uIjoKICBjYXNlCiAgICB3aGVuIFBhdGllbnQuaWQgPSAnTWVhc2xlczQ4LjMnIHRoZW4gIk1lYXNsZXMtY29udGFpbmluZyB2YWNjaW5lIChNQ1YpIHN1cHBsZW1lbnRhcnkgZG9zZSIgCiAgICB3aGVuIFBhdGllbnQuaWQgPSAnTWVhc2xlczQ5LjMnIHRoZW4gIk1lYXNsZXMtY29udGFpbmluZyB2YWNjaW5lIChNQ1YpIHN1cHBsZW1lbnRhcnkgZG9zZSIgCiAgICB3aGVuIFBhdGllbnQuaWQgPSAnTWVhc2xlczUwLjEnIHRoZW4gIk1DViBzdXBwbGVtZW50YXJ5IGRvc2Ugd2FzIGFkbWluaXN0ZXJlZCIgCiAgICBlbHNlICdObyB0ZXN0IGNhc2Ugc2V0JwogIGVuZAo="
  }]
}

```
