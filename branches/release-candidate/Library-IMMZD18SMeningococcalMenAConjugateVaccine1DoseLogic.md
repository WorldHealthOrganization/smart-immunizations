# IMMZD18SMeningococcalMenAConjugateVaccine1DoseLogic - WHO Immunization Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD18SMeningococcalMenAConjugateVaccine1DoseLogic**

## Library: IMMZD18SMeningococcalMenAConjugateVaccine1DoseLogic 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Library/IMMZD18SMeningococcalMenAConjugateVaccine1DoseLogic | *Version*:1.0.0 |
| Draft as of 2026-04-09 | *Computable Name*:IMMZD18SMeningococcalMenAConjugateVaccine1DoseLogic |

 
This library defines decision support logic for the IMMZ.D18.S.Meningococcal.MenA conjugate vaccine 1-dose schedule table in the Immunization CPG 

* * **Content: **text/cql: ````/* * Library: IMMZD18SMeningococcalMenAConjugateVaccine1DoseLogic (IMMZ.D18.S.Meningococcal.MenA conjugate vaccine 1-dose schedule) * Schedule Table: MenA conjugate vaccine, 1-dose schedule */ library IMMZD18SMeningococcalMenAConjugateVaccine1DoseLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTMeningococcalEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Meningococcal dose 1 @description: Provision of the meningococcal dose 1 @trigger: Child's birth @pseudo: @triggerDate: "Date of birth" */ define "Meningococcal dose 1": Encounter."No meningococcal primary series dose was administered" and not "One meningococcal dose from the primary series was administered. The primary series has been completed" /* @output: Meningococcal dose 1 Create @create: For MenA conjugate vaccine (5µg), a 1-dose schedule is recommended at 9–18 months of age */ define "Meningococcal dose 1 Create": if "Meningococcal dose 1" then 'For MenA conjugate vaccine (5µg), a 1-dose schedule is recommended at 9–18 months of age' + ' Due Date: ' + ToString("Meningococcal dose 1 Due Date") + ' Overdue: ' + ToString("Meningococcal dose 1 Overdue") else '' /* @dynamicValue: Meningococcal dose 1 Due Date @pseudocode: "Date of birth" + 9 months */ define "Meningococcal dose 1 Due Date": if "Meningococcal dose 1" then Patient.birthDate + 9 months else null /* @dynamicValue: Meningococcal dose 1 Overdue @pseudocode: "Date of birth" + 18 months */ define "Meningococcal dose 1 Overdue": if "Meningococcal dose 1" then Patient.birthDate + 18 months else null /* @dynamicValue: Meningococcal dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Meningococcal dose 1 Expiration": null /* @complete: One meningococcal dose from the primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Meningococcal vaccines") */ define "One meningococcal dose from the primary series was administered. The primary series has been completed": Encounter."One meningococcal primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'Meningococcal08.1' then "Meningococcal dose 1" when Patient.id = 'Meningococcal09.2' then "Meningococcal dose 1" when Patient.id = 'Meningococcal10.1' then "One meningococcal dose from the primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Id: **
  * ?: IMMZD18SMeningococcalMenAConjugateVaccine1DoseLogic
* * **Content: **text/cql: ````/* * Library: IMMZD18SMeningococcalMenAConjugateVaccine1DoseLogic (IMMZ.D18.S.Meningococcal.MenA conjugate vaccine 1-dose schedule) * Schedule Table: MenA conjugate vaccine, 1-dose schedule */ library IMMZD18SMeningococcalMenAConjugateVaccine1DoseLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTMeningococcalEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Meningococcal dose 1 @description: Provision of the meningococcal dose 1 @trigger: Child's birth @pseudo: @triggerDate: "Date of birth" */ define "Meningococcal dose 1": Encounter."No meningococcal primary series dose was administered" and not "One meningococcal dose from the primary series was administered. The primary series has been completed" /* @output: Meningococcal dose 1 Create @create: For MenA conjugate vaccine (5µg), a 1-dose schedule is recommended at 9–18 months of age */ define "Meningococcal dose 1 Create": if "Meningococcal dose 1" then 'For MenA conjugate vaccine (5µg), a 1-dose schedule is recommended at 9–18 months of age' + ' Due Date: ' + ToString("Meningococcal dose 1 Due Date") + ' Overdue: ' + ToString("Meningococcal dose 1 Overdue") else '' /* @dynamicValue: Meningococcal dose 1 Due Date @pseudocode: "Date of birth" + 9 months */ define "Meningococcal dose 1 Due Date": if "Meningococcal dose 1" then Patient.birthDate + 9 months else null /* @dynamicValue: Meningococcal dose 1 Overdue @pseudocode: "Date of birth" + 18 months */ define "Meningococcal dose 1 Overdue": if "Meningococcal dose 1" then Patient.birthDate + 18 months else null /* @dynamicValue: Meningococcal dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Meningococcal dose 1 Expiration": null /* @complete: One meningococcal dose from the primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Meningococcal vaccines") */ define "One meningococcal dose from the primary series was administered. The primary series has been completed": Encounter."One meningococcal primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'Meningococcal08.1' then "Meningococcal dose 1" when Patient.id = 'Meningococcal09.2' then "Meningococcal dose 1" when Patient.id = 'Meningococcal10.1' then "One meningococcal dose from the primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Version: **
  * ?: 1.0.0
* * **Content: **text/cql: ````/* * Library: IMMZD18SMeningococcalMenAConjugateVaccine1DoseLogic (IMMZ.D18.S.Meningococcal.MenA conjugate vaccine 1-dose schedule) * Schedule Table: MenA conjugate vaccine, 1-dose schedule */ library IMMZD18SMeningococcalMenAConjugateVaccine1DoseLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTMeningococcalEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Meningococcal dose 1 @description: Provision of the meningococcal dose 1 @trigger: Child's birth @pseudo: @triggerDate: "Date of birth" */ define "Meningococcal dose 1": Encounter."No meningococcal primary series dose was administered" and not "One meningococcal dose from the primary series was administered. The primary series has been completed" /* @output: Meningococcal dose 1 Create @create: For MenA conjugate vaccine (5µg), a 1-dose schedule is recommended at 9–18 months of age */ define "Meningococcal dose 1 Create": if "Meningococcal dose 1" then 'For MenA conjugate vaccine (5µg), a 1-dose schedule is recommended at 9–18 months of age' + ' Due Date: ' + ToString("Meningococcal dose 1 Due Date") + ' Overdue: ' + ToString("Meningococcal dose 1 Overdue") else '' /* @dynamicValue: Meningococcal dose 1 Due Date @pseudocode: "Date of birth" + 9 months */ define "Meningococcal dose 1 Due Date": if "Meningococcal dose 1" then Patient.birthDate + 9 months else null /* @dynamicValue: Meningococcal dose 1 Overdue @pseudocode: "Date of birth" + 18 months */ define "Meningococcal dose 1 Overdue": if "Meningococcal dose 1" then Patient.birthDate + 18 months else null /* @dynamicValue: Meningococcal dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Meningococcal dose 1 Expiration": null /* @complete: One meningococcal dose from the primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Meningococcal vaccines") */ define "One meningococcal dose from the primary series was administered. The primary series has been completed": Encounter."One meningococcal primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'Meningococcal08.1' then "Meningococcal dose 1" when Patient.id = 'Meningococcal09.2' then "Meningococcal dose 1" when Patient.id = 'Meningococcal10.1' then "One meningococcal dose from the primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Url: **
  * ?: [IMMZD18SMeningococcalMenAConjugateVaccine1DoseLogic](Library-IMMZD18SMeningococcalMenAConjugateVaccine1DoseLogic.md)
* * **Content: **text/cql: ````/* * Library: IMMZD18SMeningococcalMenAConjugateVaccine1DoseLogic (IMMZ.D18.S.Meningococcal.MenA conjugate vaccine 1-dose schedule) * Schedule Table: MenA conjugate vaccine, 1-dose schedule */ library IMMZD18SMeningococcalMenAConjugateVaccine1DoseLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTMeningococcalEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Meningococcal dose 1 @description: Provision of the meningococcal dose 1 @trigger: Child's birth @pseudo: @triggerDate: "Date of birth" */ define "Meningococcal dose 1": Encounter."No meningococcal primary series dose was administered" and not "One meningococcal dose from the primary series was administered. The primary series has been completed" /* @output: Meningococcal dose 1 Create @create: For MenA conjugate vaccine (5µg), a 1-dose schedule is recommended at 9–18 months of age */ define "Meningococcal dose 1 Create": if "Meningococcal dose 1" then 'For MenA conjugate vaccine (5µg), a 1-dose schedule is recommended at 9–18 months of age' + ' Due Date: ' + ToString("Meningococcal dose 1 Due Date") + ' Overdue: ' + ToString("Meningococcal dose 1 Overdue") else '' /* @dynamicValue: Meningococcal dose 1 Due Date @pseudocode: "Date of birth" + 9 months */ define "Meningococcal dose 1 Due Date": if "Meningococcal dose 1" then Patient.birthDate + 9 months else null /* @dynamicValue: Meningococcal dose 1 Overdue @pseudocode: "Date of birth" + 18 months */ define "Meningococcal dose 1 Overdue": if "Meningococcal dose 1" then Patient.birthDate + 18 months else null /* @dynamicValue: Meningococcal dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Meningococcal dose 1 Expiration": null /* @complete: One meningococcal dose from the primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Meningococcal vaccines") */ define "One meningococcal dose from the primary series was administered. The primary series has been completed": Encounter."One meningococcal primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'Meningococcal08.1' then "Meningococcal dose 1" when Patient.id = 'Meningococcal09.2' then "Meningococcal dose 1" when Patient.id = 'Meningococcal10.1' then "One meningococcal dose from the primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Status: **
  * ?: draft
* * **Content: **text/cql: ````/* * Library: IMMZD18SMeningococcalMenAConjugateVaccine1DoseLogic (IMMZ.D18.S.Meningococcal.MenA conjugate vaccine 1-dose schedule) * Schedule Table: MenA conjugate vaccine, 1-dose schedule */ library IMMZD18SMeningococcalMenAConjugateVaccine1DoseLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTMeningococcalEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Meningococcal dose 1 @description: Provision of the meningococcal dose 1 @trigger: Child's birth @pseudo: @triggerDate: "Date of birth" */ define "Meningococcal dose 1": Encounter."No meningococcal primary series dose was administered" and not "One meningococcal dose from the primary series was administered. The primary series has been completed" /* @output: Meningococcal dose 1 Create @create: For MenA conjugate vaccine (5µg), a 1-dose schedule is recommended at 9–18 months of age */ define "Meningococcal dose 1 Create": if "Meningococcal dose 1" then 'For MenA conjugate vaccine (5µg), a 1-dose schedule is recommended at 9–18 months of age' + ' Due Date: ' + ToString("Meningococcal dose 1 Due Date") + ' Overdue: ' + ToString("Meningococcal dose 1 Overdue") else '' /* @dynamicValue: Meningococcal dose 1 Due Date @pseudocode: "Date of birth" + 9 months */ define "Meningococcal dose 1 Due Date": if "Meningococcal dose 1" then Patient.birthDate + 9 months else null /* @dynamicValue: Meningococcal dose 1 Overdue @pseudocode: "Date of birth" + 18 months */ define "Meningococcal dose 1 Overdue": if "Meningococcal dose 1" then Patient.birthDate + 18 months else null /* @dynamicValue: Meningococcal dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Meningococcal dose 1 Expiration": null /* @complete: One meningococcal dose from the primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Meningococcal vaccines") */ define "One meningococcal dose from the primary series was administered. The primary series has been completed": Encounter."One meningococcal primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'Meningococcal08.1' then "Meningococcal dose 1" when Patient.id = 'Meningococcal09.2' then "Meningococcal dose 1" when Patient.id = 'Meningococcal10.1' then "One meningococcal dose from the primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Date: **
  * ?: 2026-04-09 13:50:16+0000
* * **Content: **text/cql: ````/* * Library: IMMZD18SMeningococcalMenAConjugateVaccine1DoseLogic (IMMZ.D18.S.Meningococcal.MenA conjugate vaccine 1-dose schedule) * Schedule Table: MenA conjugate vaccine, 1-dose schedule */ library IMMZD18SMeningococcalMenAConjugateVaccine1DoseLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTMeningococcalEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Meningococcal dose 1 @description: Provision of the meningococcal dose 1 @trigger: Child's birth @pseudo: @triggerDate: "Date of birth" */ define "Meningococcal dose 1": Encounter."No meningococcal primary series dose was administered" and not "One meningococcal dose from the primary series was administered. The primary series has been completed" /* @output: Meningococcal dose 1 Create @create: For MenA conjugate vaccine (5µg), a 1-dose schedule is recommended at 9–18 months of age */ define "Meningococcal dose 1 Create": if "Meningococcal dose 1" then 'For MenA conjugate vaccine (5µg), a 1-dose schedule is recommended at 9–18 months of age' + ' Due Date: ' + ToString("Meningococcal dose 1 Due Date") + ' Overdue: ' + ToString("Meningococcal dose 1 Overdue") else '' /* @dynamicValue: Meningococcal dose 1 Due Date @pseudocode: "Date of birth" + 9 months */ define "Meningococcal dose 1 Due Date": if "Meningococcal dose 1" then Patient.birthDate + 9 months else null /* @dynamicValue: Meningococcal dose 1 Overdue @pseudocode: "Date of birth" + 18 months */ define "Meningococcal dose 1 Overdue": if "Meningococcal dose 1" then Patient.birthDate + 18 months else null /* @dynamicValue: Meningococcal dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Meningococcal dose 1 Expiration": null /* @complete: One meningococcal dose from the primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Meningococcal vaccines") */ define "One meningococcal dose from the primary series was administered. The primary series has been completed": Encounter."One meningococcal primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'Meningococcal08.1' then "Meningococcal dose 1" when Patient.id = 'Meningococcal09.2' then "Meningococcal dose 1" when Patient.id = 'Meningococcal10.1' then "One meningococcal dose from the primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Publisher: **
  * ?: WHO
* * **Content: **text/cql: ````/* * Library: IMMZD18SMeningococcalMenAConjugateVaccine1DoseLogic (IMMZ.D18.S.Meningococcal.MenA conjugate vaccine 1-dose schedule) * Schedule Table: MenA conjugate vaccine, 1-dose schedule */ library IMMZD18SMeningococcalMenAConjugateVaccine1DoseLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTMeningococcalEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Meningococcal dose 1 @description: Provision of the meningococcal dose 1 @trigger: Child's birth @pseudo: @triggerDate: "Date of birth" */ define "Meningococcal dose 1": Encounter."No meningococcal primary series dose was administered" and not "One meningococcal dose from the primary series was administered. The primary series has been completed" /* @output: Meningococcal dose 1 Create @create: For MenA conjugate vaccine (5µg), a 1-dose schedule is recommended at 9–18 months of age */ define "Meningococcal dose 1 Create": if "Meningococcal dose 1" then 'For MenA conjugate vaccine (5µg), a 1-dose schedule is recommended at 9–18 months of age' + ' Due Date: ' + ToString("Meningococcal dose 1 Due Date") + ' Overdue: ' + ToString("Meningococcal dose 1 Overdue") else '' /* @dynamicValue: Meningococcal dose 1 Due Date @pseudocode: "Date of birth" + 9 months */ define "Meningococcal dose 1 Due Date": if "Meningococcal dose 1" then Patient.birthDate + 9 months else null /* @dynamicValue: Meningococcal dose 1 Overdue @pseudocode: "Date of birth" + 18 months */ define "Meningococcal dose 1 Overdue": if "Meningococcal dose 1" then Patient.birthDate + 18 months else null /* @dynamicValue: Meningococcal dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Meningococcal dose 1 Expiration": null /* @complete: One meningococcal dose from the primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Meningococcal vaccines") */ define "One meningococcal dose from the primary series was administered. The primary series has been completed": Encounter."One meningococcal primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'Meningococcal08.1' then "Meningococcal dose 1" when Patient.id = 'Meningococcal09.2' then "Meningococcal dose 1" when Patient.id = 'Meningococcal10.1' then "One meningococcal dose from the primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Description: **
  * ?: This library defines decision support logic for the IMMZ.D18.S.Meningococcal.MenA conjugate vaccine 1-dose schedule table in the Immunization CPG



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "IMMZD18SMeningococcalMenAConjugateVaccine1DoseLogic",
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
  "url" : "http://smart.who.int/immunizations/Library/IMMZD18SMeningococcalMenAConjugateVaccine1DoseLogic",
  "version" : "1.0.0",
  "name" : "IMMZD18SMeningococcalMenAConjugateVaccine1DoseLogic",
  "title" : "IMMZD18SMeningococcalMenAConjugateVaccine1DoseLogic",
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
  "description" : "This library defines decision support logic for the IMMZ.D18.S.Meningococcal.MenA conjugate vaccine 1-dose schedule table in the Immunization CPG",
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
    "resource" : "http://smart.who.int/immunizations/Library/IMMZD2DTMeningococcalEncounterElements"
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
    "name" : "One meningococcal dose from the primary series was administered. The primary series has been completed",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "Meningococcal dose 1",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "Meningococcal dose 1 Due Date",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "date"
  },
  {
    "name" : "Meningococcal dose 1 Overdue",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "date"
  },
  {
    "name" : "Meningococcal dose 1 Create",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "string"
  },
  {
    "name" : "Meningococcal dose 1 Expiration",
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
    "data" : "LyoKICogTGlicmFyeTogSU1NWkQxOFNNZW5pbmdvY29jY2FsTWVuQUNvbmp1Z2F0ZVZhY2NpbmUxRG9zZUxvZ2ljIChJTU1aLkQxOC5TLk1lbmluZ29jb2NjYWwuTWVuQSBjb25qdWdhdGUgdmFjY2luZSAxLWRvc2Ugc2NoZWR1bGUpCiAqIFNjaGVkdWxlIFRhYmxlOiBNZW5BIGNvbmp1Z2F0ZSB2YWNjaW5lLCAxLWRvc2Ugc2NoZWR1bGUKICovCmxpYnJhcnkgSU1NWkQxOFNNZW5pbmdvY29jY2FsTWVuQUNvbmp1Z2F0ZVZhY2NpbmUxRG9zZUxvZ2ljCgp1c2luZyBGSElSIHZlcnNpb24gJzQuMC4xJwppbmNsdWRlIEZISVJIZWxwZXJzIHZlcnNpb24gJzQuMC4xJwoKaW5jbHVkZSBXSE9Db21tb24gY2FsbGVkIFdDCgppbmNsdWRlIElNTVpDb21tb24gY2FsbGVkIENvbW1vbgppbmNsdWRlIElNTVpDb25jZXB0cyBjYWxsZWQgQ29uY2VwdHMKCmluY2x1ZGUgSU1NWkVuY291bnRlckVsZW1lbnRzIGNhbGxlZCBJRQppbmNsdWRlIElNTVpEMkRUTWVuaW5nb2NvY2NhbEVuY291bnRlckVsZW1lbnRzIGNhbGxlZCBFbmNvdW50ZXIKCnBhcmFtZXRlciBUb2RheSBEYXRlIGRlZmF1bHQgVG9kYXkoKQoKCmNvbnRleHQgUGF0aWVudAoKCi8qCkBvdXRwdXQ6IE1lbmluZ29jb2NjYWwgZG9zZSAxCkBkZXNjcmlwdGlvbjogUHJvdmlzaW9uIG9mIHRoZSBtZW5pbmdvY29jY2FsIGRvc2UgMQpAdHJpZ2dlcjogQ2hpbGQncyBiaXJ0aApAcHNldWRvOiAKQHRyaWdnZXJEYXRlOiAiRGF0ZSBvZiBiaXJ0aCIKKi8KZGVmaW5lICJNZW5pbmdvY29jY2FsIGRvc2UgMSI6CiAgRW5jb3VudGVyLiJObyBtZW5pbmdvY29jY2FsIHByaW1hcnkgc2VyaWVzIGRvc2Ugd2FzIGFkbWluaXN0ZXJlZCIKICBhbmQgbm90ICJPbmUgbWVuaW5nb2NvY2NhbCBkb3NlIGZyb20gdGhlIHByaW1hcnkgc2VyaWVzIHdhcyBhZG1pbmlzdGVyZWQuIFRoZSBwcmltYXJ5IHNlcmllcyBoYXMgYmVlbiBjb21wbGV0ZWQiCgoKLyoKQG91dHB1dDogTWVuaW5nb2NvY2NhbCBkb3NlIDEgQ3JlYXRlCkBjcmVhdGU6IEZvciBNZW5BIGNvbmp1Z2F0ZSB2YWNjaW5lICg1wrVnKSwgYSAxLWRvc2Ugc2NoZWR1bGUgaXMgcmVjb21tZW5kZWQgYXQgOeKAkzE4IG1vbnRocyBvZiBhZ2UKKi8KZGVmaW5lICJNZW5pbmdvY29jY2FsIGRvc2UgMSBDcmVhdGUiOgogIGlmICJNZW5pbmdvY29jY2FsIGRvc2UgMSIKICB0aGVuICdGb3IgTWVuQSBjb25qdWdhdGUgdmFjY2luZSAoNcK1ZyksIGEgMS1kb3NlIHNjaGVkdWxlIGlzIHJlY29tbWVuZGVkIGF0IDnigJMxOCBtb250aHMgb2YgYWdlJyArICcKRHVlIERhdGU6ICcgKyBUb1N0cmluZygiTWVuaW5nb2NvY2NhbCBkb3NlIDEgRHVlIERhdGUiKSArICcKT3ZlcmR1ZTogJyArIFRvU3RyaW5nKCJNZW5pbmdvY29jY2FsIGRvc2UgMSBPdmVyZHVlIikKICBlbHNlICcnCgoKLyoKQGR5bmFtaWNWYWx1ZTogTWVuaW5nb2NvY2NhbCBkb3NlIDEgRHVlIERhdGUKQHBzZXVkb2NvZGU6ICJEYXRlIG9mIGJpcnRoIiArIDkgbW9udGhzCiovCmRlZmluZSAiTWVuaW5nb2NvY2NhbCBkb3NlIDEgRHVlIERhdGUiOgogIGlmICJNZW5pbmdvY29jY2FsIGRvc2UgMSIgdGhlbiBQYXRpZW50LmJpcnRoRGF0ZSArIDkgbW9udGhzCiAgZWxzZSBudWxsCgoKLyoKQGR5bmFtaWNWYWx1ZTogTWVuaW5nb2NvY2NhbCBkb3NlIDEgT3ZlcmR1ZQpAcHNldWRvY29kZTogIkRhdGUgb2YgYmlydGgiICsgMTggbW9udGhzCiovCmRlZmluZSAiTWVuaW5nb2NvY2NhbCBkb3NlIDEgT3ZlcmR1ZSI6CiAgaWYgIk1lbmluZ29jb2NjYWwgZG9zZSAxIiB0aGVuIFBhdGllbnQuYmlydGhEYXRlICsgMTggbW9udGhzCiAgZWxzZSBudWxsCgoKLyoKQGR5bmFtaWNWYWx1ZTogTWVuaW5nb2NvY2NhbCBkb3NlIDEgRXhwaXJhdGlvbgpAcHNldWRvY29kZTogVG8gYmUgZGV0ZXJtaW5lZCBieSBNZW1iZXIgU3RhdGVzOyBob3dldmVyLCB0aGVyZSBpcyBubyByZWNvbW1lbmRlZCBleHBpcmF0aW9uIGRhdGUgYW5kIGluZGl2aWR1YWxzIGFyZSBhbHdheXMgZWxpZ2libGUgdG8gYmUgdmFjY2luYXRlZC4KKi8KZGVmaW5lICJNZW5pbmdvY29jY2FsIGRvc2UgMSBFeHBpcmF0aW9uIjoKICBudWxsCgogIAovKgpAY29tcGxldGU6IE9uZSBtZW5pbmdvY29jY2FsIGRvc2UgZnJvbSB0aGUgcHJpbWFyeSBzZXJpZXMgd2FzIGFkbWluaXN0ZXJlZC4gVGhlIHByaW1hcnkgc2VyaWVzIGhhcyBiZWVuIGNvbXBsZXRlZApAcHNldWRvY29kZTogIkNvbXBsZXRlZCB0aGUgcHJpbWFyeSB2YWNjaW5hdGlvbiBzZXJpZXMiID0gVFJVRSAod2hlcmUgIlZhY2NpbmUgdHlwZSIgPSAiTWVuaW5nb2NvY2NhbCB2YWNjaW5lcyIpCiovCmRlZmluZSAiT25lIG1lbmluZ29jb2NjYWwgZG9zZSBmcm9tIHRoZSBwcmltYXJ5IHNlcmllcyB3YXMgYWRtaW5pc3RlcmVkLiBUaGUgcHJpbWFyeSBzZXJpZXMgaGFzIGJlZW4gY29tcGxldGVkIjoKICBFbmNvdW50ZXIuIk9uZSBtZW5pbmdvY29jY2FsIHByaW1hcnkgc2VyaWVzIGRvc2Ugd2FzIGFkbWluaXN0ZXJlZCIKCgoKLyoKQHRlc3Q6IFRlc3QgZXhwZWN0ZWQgcmVzdWx0cyBiYXNlZCBvbiBleGFtcGxlIHBhdGllbnRzCiovCmRlZmluZSAiVGVzdCBWYWxpZGF0aW9uIjoKICBjYXNlCiAgICB3aGVuIFBhdGllbnQuaWQgPSAnTWVuaW5nb2NvY2NhbDA4LjEnIHRoZW4gIk1lbmluZ29jb2NjYWwgZG9zZSAxIgogICAgd2hlbiBQYXRpZW50LmlkID0gJ01lbmluZ29jb2NjYWwwOS4yJyB0aGVuICJNZW5pbmdvY29jY2FsIGRvc2UgMSIKICAgIHdoZW4gUGF0aWVudC5pZCA9ICdNZW5pbmdvY29jY2FsMTAuMScgdGhlbiAiT25lIG1lbmluZ29jb2NjYWwgZG9zZSBmcm9tIHRoZSBwcmltYXJ5IHNlcmllcyB3YXMgYWRtaW5pc3RlcmVkLiBUaGUgcHJpbWFyeSBzZXJpZXMgaGFzIGJlZW4gY29tcGxldGVkIgogICAgZWxzZSAnTm8gdGVzdCBjYXNlIHNldCcKICBlbmQK"
  }]
}

```
