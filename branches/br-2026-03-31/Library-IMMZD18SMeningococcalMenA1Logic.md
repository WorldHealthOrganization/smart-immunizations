# IMMZD18SMeningococcalMenA1Logic - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD18SMeningococcalMenA1Logic**

## Library: IMMZD18SMeningococcalMenA1Logic (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Library/IMMZD18SMeningococcalMenA1Logic | *Version*:0.2.0 |
| Draft as of 2026-03-31 | *Computable Name*:IMMZD18SMeningococcalMenA1Logic |

 
This library defines decision support logic for the IMMZ.D18.S.Meningococcal.MenA conjugate vaccine 1-dose schedule table in the Immunization CPG 

* * **Content: **text/cql: ```` /* * Library: IMMZD18SMeningococcalMenA1Logic (IMMZ.D18.S.Meningococcal.MenA conjugate vaccine 1-dose schedule) * Schedule Table: MenA conjugate vaccine, 1-dose schedule */ library IMMZD18SMeningococcalMenA1Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTMeningococcalEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Meningococcal dose 1 @description: Provision of the meningococcal dose 1 @trigger: Child's birth @triggerDate: "Date of birth" */ define "Meningococcal dose 1": Encounter."No meningococcal primary series dose was administered" and not "One meningococcal dose from the primary series was administered. The primary series has been completed" /* @output: Meningococcal dose 1 Create @create: For MenA conjugate vaccine (5µg), a 1-dose schedule is recommended at 9–18 months of age */ define "Meningococcal dose 1 Create": if "Meningococcal dose 1" then 'For MenA conjugate vaccine (5µg), a 1-dose schedule is recommended at 9–18 months of age' + ' Due Date: ' + ToString("Meningococcal dose 1 Due Date") + ' Overdue: ' + ToString("Meningococcal dose 1 Overdue") else '' /* @dynamicValue: Meningococcal dose 1 Due Date @pseudocode: "Date of birth" + 9 months */ define "Meningococcal dose 1 Due Date": if "Meningococcal dose 1" then Patient.birthDate + 9 months else null /* @dynamicValue: Meningococcal dose 1 Overdue @pseudocode: "Date of birth" + 18 months */ define "Meningococcal dose 1 Overdue": if "Meningococcal dose 1" then Patient.birthDate + 18 months else null /* @dynamicValue: Meningococcal dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Meningococcal dose 1 Expiration": null /* @complete: One meningococcal dose from the primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Meningococcal vaccines") */ define "One meningococcal dose from the primary series was administered. The primary series has been completed": Encounter."One meningococcal primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = '08.1' then "Meningococcal dose 1" when Patient.id = '09.01' then "Meningococcal dose 1" when Patient.id = '10.0' then "One meningococcal dose from the primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Id: **
  * ?: IMMZD18SMeningococcalMenA1Logic
* * **Content: **text/cql: ```` /* * Library: IMMZD18SMeningococcalMenA1Logic (IMMZ.D18.S.Meningococcal.MenA conjugate vaccine 1-dose schedule) * Schedule Table: MenA conjugate vaccine, 1-dose schedule */ library IMMZD18SMeningococcalMenA1Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTMeningococcalEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Meningococcal dose 1 @description: Provision of the meningococcal dose 1 @trigger: Child's birth @triggerDate: "Date of birth" */ define "Meningococcal dose 1": Encounter."No meningococcal primary series dose was administered" and not "One meningococcal dose from the primary series was administered. The primary series has been completed" /* @output: Meningococcal dose 1 Create @create: For MenA conjugate vaccine (5µg), a 1-dose schedule is recommended at 9–18 months of age */ define "Meningococcal dose 1 Create": if "Meningococcal dose 1" then 'For MenA conjugate vaccine (5µg), a 1-dose schedule is recommended at 9–18 months of age' + ' Due Date: ' + ToString("Meningococcal dose 1 Due Date") + ' Overdue: ' + ToString("Meningococcal dose 1 Overdue") else '' /* @dynamicValue: Meningococcal dose 1 Due Date @pseudocode: "Date of birth" + 9 months */ define "Meningococcal dose 1 Due Date": if "Meningococcal dose 1" then Patient.birthDate + 9 months else null /* @dynamicValue: Meningococcal dose 1 Overdue @pseudocode: "Date of birth" + 18 months */ define "Meningococcal dose 1 Overdue": if "Meningococcal dose 1" then Patient.birthDate + 18 months else null /* @dynamicValue: Meningococcal dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Meningococcal dose 1 Expiration": null /* @complete: One meningococcal dose from the primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Meningococcal vaccines") */ define "One meningococcal dose from the primary series was administered. The primary series has been completed": Encounter."One meningococcal primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = '08.1' then "Meningococcal dose 1" when Patient.id = '09.01' then "Meningococcal dose 1" when Patient.id = '10.0' then "One meningococcal dose from the primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Version: **
  * ?: 0.2.0
* * **Content: **text/cql: ```` /* * Library: IMMZD18SMeningococcalMenA1Logic (IMMZ.D18.S.Meningococcal.MenA conjugate vaccine 1-dose schedule) * Schedule Table: MenA conjugate vaccine, 1-dose schedule */ library IMMZD18SMeningococcalMenA1Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTMeningococcalEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Meningococcal dose 1 @description: Provision of the meningococcal dose 1 @trigger: Child's birth @triggerDate: "Date of birth" */ define "Meningococcal dose 1": Encounter."No meningococcal primary series dose was administered" and not "One meningococcal dose from the primary series was administered. The primary series has been completed" /* @output: Meningococcal dose 1 Create @create: For MenA conjugate vaccine (5µg), a 1-dose schedule is recommended at 9–18 months of age */ define "Meningococcal dose 1 Create": if "Meningococcal dose 1" then 'For MenA conjugate vaccine (5µg), a 1-dose schedule is recommended at 9–18 months of age' + ' Due Date: ' + ToString("Meningococcal dose 1 Due Date") + ' Overdue: ' + ToString("Meningococcal dose 1 Overdue") else '' /* @dynamicValue: Meningococcal dose 1 Due Date @pseudocode: "Date of birth" + 9 months */ define "Meningococcal dose 1 Due Date": if "Meningococcal dose 1" then Patient.birthDate + 9 months else null /* @dynamicValue: Meningococcal dose 1 Overdue @pseudocode: "Date of birth" + 18 months */ define "Meningococcal dose 1 Overdue": if "Meningococcal dose 1" then Patient.birthDate + 18 months else null /* @dynamicValue: Meningococcal dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Meningococcal dose 1 Expiration": null /* @complete: One meningococcal dose from the primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Meningococcal vaccines") */ define "One meningococcal dose from the primary series was administered. The primary series has been completed": Encounter."One meningococcal primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = '08.1' then "Meningococcal dose 1" when Patient.id = '09.01' then "Meningococcal dose 1" when Patient.id = '10.0' then "One meningococcal dose from the primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Url: **
  * ?: [IMMZD18SMeningococcalMenA1Logic](Library-IMMZD18SMeningococcalMenA1Logic.md)
* * **Content: **text/cql: ```` /* * Library: IMMZD18SMeningococcalMenA1Logic (IMMZ.D18.S.Meningococcal.MenA conjugate vaccine 1-dose schedule) * Schedule Table: MenA conjugate vaccine, 1-dose schedule */ library IMMZD18SMeningococcalMenA1Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTMeningococcalEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Meningococcal dose 1 @description: Provision of the meningococcal dose 1 @trigger: Child's birth @triggerDate: "Date of birth" */ define "Meningococcal dose 1": Encounter."No meningococcal primary series dose was administered" and not "One meningococcal dose from the primary series was administered. The primary series has been completed" /* @output: Meningococcal dose 1 Create @create: For MenA conjugate vaccine (5µg), a 1-dose schedule is recommended at 9–18 months of age */ define "Meningococcal dose 1 Create": if "Meningococcal dose 1" then 'For MenA conjugate vaccine (5µg), a 1-dose schedule is recommended at 9–18 months of age' + ' Due Date: ' + ToString("Meningococcal dose 1 Due Date") + ' Overdue: ' + ToString("Meningococcal dose 1 Overdue") else '' /* @dynamicValue: Meningococcal dose 1 Due Date @pseudocode: "Date of birth" + 9 months */ define "Meningococcal dose 1 Due Date": if "Meningococcal dose 1" then Patient.birthDate + 9 months else null /* @dynamicValue: Meningococcal dose 1 Overdue @pseudocode: "Date of birth" + 18 months */ define "Meningococcal dose 1 Overdue": if "Meningococcal dose 1" then Patient.birthDate + 18 months else null /* @dynamicValue: Meningococcal dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Meningococcal dose 1 Expiration": null /* @complete: One meningococcal dose from the primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Meningococcal vaccines") */ define "One meningococcal dose from the primary series was administered. The primary series has been completed": Encounter."One meningococcal primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = '08.1' then "Meningococcal dose 1" when Patient.id = '09.01' then "Meningococcal dose 1" when Patient.id = '10.0' then "One meningococcal dose from the primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Status: **
  * ?: draft
* * **Content: **text/cql: ```` /* * Library: IMMZD18SMeningococcalMenA1Logic (IMMZ.D18.S.Meningococcal.MenA conjugate vaccine 1-dose schedule) * Schedule Table: MenA conjugate vaccine, 1-dose schedule */ library IMMZD18SMeningococcalMenA1Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTMeningococcalEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Meningococcal dose 1 @description: Provision of the meningococcal dose 1 @trigger: Child's birth @triggerDate: "Date of birth" */ define "Meningococcal dose 1": Encounter."No meningococcal primary series dose was administered" and not "One meningococcal dose from the primary series was administered. The primary series has been completed" /* @output: Meningococcal dose 1 Create @create: For MenA conjugate vaccine (5µg), a 1-dose schedule is recommended at 9–18 months of age */ define "Meningococcal dose 1 Create": if "Meningococcal dose 1" then 'For MenA conjugate vaccine (5µg), a 1-dose schedule is recommended at 9–18 months of age' + ' Due Date: ' + ToString("Meningococcal dose 1 Due Date") + ' Overdue: ' + ToString("Meningococcal dose 1 Overdue") else '' /* @dynamicValue: Meningococcal dose 1 Due Date @pseudocode: "Date of birth" + 9 months */ define "Meningococcal dose 1 Due Date": if "Meningococcal dose 1" then Patient.birthDate + 9 months else null /* @dynamicValue: Meningococcal dose 1 Overdue @pseudocode: "Date of birth" + 18 months */ define "Meningococcal dose 1 Overdue": if "Meningococcal dose 1" then Patient.birthDate + 18 months else null /* @dynamicValue: Meningococcal dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Meningococcal dose 1 Expiration": null /* @complete: One meningococcal dose from the primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Meningococcal vaccines") */ define "One meningococcal dose from the primary series was administered. The primary series has been completed": Encounter."One meningococcal primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = '08.1' then "Meningococcal dose 1" when Patient.id = '09.01' then "Meningococcal dose 1" when Patient.id = '10.0' then "One meningococcal dose from the primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Experimental: **
  * ?: true
* * **Content: **text/cql: ```` /* * Library: IMMZD18SMeningococcalMenA1Logic (IMMZ.D18.S.Meningococcal.MenA conjugate vaccine 1-dose schedule) * Schedule Table: MenA conjugate vaccine, 1-dose schedule */ library IMMZD18SMeningococcalMenA1Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTMeningococcalEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Meningococcal dose 1 @description: Provision of the meningococcal dose 1 @trigger: Child's birth @triggerDate: "Date of birth" */ define "Meningococcal dose 1": Encounter."No meningococcal primary series dose was administered" and not "One meningococcal dose from the primary series was administered. The primary series has been completed" /* @output: Meningococcal dose 1 Create @create: For MenA conjugate vaccine (5µg), a 1-dose schedule is recommended at 9–18 months of age */ define "Meningococcal dose 1 Create": if "Meningococcal dose 1" then 'For MenA conjugate vaccine (5µg), a 1-dose schedule is recommended at 9–18 months of age' + ' Due Date: ' + ToString("Meningococcal dose 1 Due Date") + ' Overdue: ' + ToString("Meningococcal dose 1 Overdue") else '' /* @dynamicValue: Meningococcal dose 1 Due Date @pseudocode: "Date of birth" + 9 months */ define "Meningococcal dose 1 Due Date": if "Meningococcal dose 1" then Patient.birthDate + 9 months else null /* @dynamicValue: Meningococcal dose 1 Overdue @pseudocode: "Date of birth" + 18 months */ define "Meningococcal dose 1 Overdue": if "Meningococcal dose 1" then Patient.birthDate + 18 months else null /* @dynamicValue: Meningococcal dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Meningococcal dose 1 Expiration": null /* @complete: One meningococcal dose from the primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Meningococcal vaccines") */ define "One meningococcal dose from the primary series was administered. The primary series has been completed": Encounter."One meningococcal primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = '08.1' then "Meningococcal dose 1" when Patient.id = '09.01' then "Meningococcal dose 1" when Patient.id = '10.0' then "One meningococcal dose from the primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Date: **
  * ?: 2026-03-31 13:43:43+0000
* * **Content: **text/cql: ```` /* * Library: IMMZD18SMeningococcalMenA1Logic (IMMZ.D18.S.Meningococcal.MenA conjugate vaccine 1-dose schedule) * Schedule Table: MenA conjugate vaccine, 1-dose schedule */ library IMMZD18SMeningococcalMenA1Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTMeningococcalEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Meningococcal dose 1 @description: Provision of the meningococcal dose 1 @trigger: Child's birth @triggerDate: "Date of birth" */ define "Meningococcal dose 1": Encounter."No meningococcal primary series dose was administered" and not "One meningococcal dose from the primary series was administered. The primary series has been completed" /* @output: Meningococcal dose 1 Create @create: For MenA conjugate vaccine (5µg), a 1-dose schedule is recommended at 9–18 months of age */ define "Meningococcal dose 1 Create": if "Meningococcal dose 1" then 'For MenA conjugate vaccine (5µg), a 1-dose schedule is recommended at 9–18 months of age' + ' Due Date: ' + ToString("Meningococcal dose 1 Due Date") + ' Overdue: ' + ToString("Meningococcal dose 1 Overdue") else '' /* @dynamicValue: Meningococcal dose 1 Due Date @pseudocode: "Date of birth" + 9 months */ define "Meningococcal dose 1 Due Date": if "Meningococcal dose 1" then Patient.birthDate + 9 months else null /* @dynamicValue: Meningococcal dose 1 Overdue @pseudocode: "Date of birth" + 18 months */ define "Meningococcal dose 1 Overdue": if "Meningococcal dose 1" then Patient.birthDate + 18 months else null /* @dynamicValue: Meningococcal dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Meningococcal dose 1 Expiration": null /* @complete: One meningococcal dose from the primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Meningococcal vaccines") */ define "One meningococcal dose from the primary series was administered. The primary series has been completed": Encounter."One meningococcal primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = '08.1' then "Meningococcal dose 1" when Patient.id = '09.01' then "Meningococcal dose 1" when Patient.id = '10.0' then "One meningococcal dose from the primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Publisher: **
  * ?: WHO
* * **Content: **text/cql: ```` /* * Library: IMMZD18SMeningococcalMenA1Logic (IMMZ.D18.S.Meningococcal.MenA conjugate vaccine 1-dose schedule) * Schedule Table: MenA conjugate vaccine, 1-dose schedule */ library IMMZD18SMeningococcalMenA1Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTMeningococcalEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Meningococcal dose 1 @description: Provision of the meningococcal dose 1 @trigger: Child's birth @triggerDate: "Date of birth" */ define "Meningococcal dose 1": Encounter."No meningococcal primary series dose was administered" and not "One meningococcal dose from the primary series was administered. The primary series has been completed" /* @output: Meningococcal dose 1 Create @create: For MenA conjugate vaccine (5µg), a 1-dose schedule is recommended at 9–18 months of age */ define "Meningococcal dose 1 Create": if "Meningococcal dose 1" then 'For MenA conjugate vaccine (5µg), a 1-dose schedule is recommended at 9–18 months of age' + ' Due Date: ' + ToString("Meningococcal dose 1 Due Date") + ' Overdue: ' + ToString("Meningococcal dose 1 Overdue") else '' /* @dynamicValue: Meningococcal dose 1 Due Date @pseudocode: "Date of birth" + 9 months */ define "Meningococcal dose 1 Due Date": if "Meningococcal dose 1" then Patient.birthDate + 9 months else null /* @dynamicValue: Meningococcal dose 1 Overdue @pseudocode: "Date of birth" + 18 months */ define "Meningococcal dose 1 Overdue": if "Meningococcal dose 1" then Patient.birthDate + 18 months else null /* @dynamicValue: Meningococcal dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Meningococcal dose 1 Expiration": null /* @complete: One meningococcal dose from the primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Meningococcal vaccines") */ define "One meningococcal dose from the primary series was administered. The primary series has been completed": Encounter."One meningococcal primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = '08.1' then "Meningococcal dose 1" when Patient.id = '09.01' then "Meningococcal dose 1" when Patient.id = '10.0' then "One meningococcal dose from the primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Description: **
  * ?: This library defines decision support logic for the IMMZ.D18.S.Meningococcal.MenA conjugate vaccine 1-dose schedule table in the Immunization CPG



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "IMMZD18SMeningococcalMenA1Logic",
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
  "url" : "http://smart.who.int/immunizations/Library/IMMZD18SMeningococcalMenA1Logic",
  "version" : "0.2.0",
  "name" : "IMMZD18SMeningococcalMenA1Logic",
  "title" : "IMMZD18SMeningococcalMenA1Logic",
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
    "data" : "Ci8qCiAqIExpYnJhcnk6IElNTVpEMThTTWVuaW5nb2NvY2NhbE1lbkExTG9naWMgKElNTVouRDE4LlMuTWVuaW5nb2NvY2NhbC5NZW5BIGNvbmp1Z2F0ZSB2YWNjaW5lIDEtZG9zZSBzY2hlZHVsZSkKICogU2NoZWR1bGUgVGFibGU6IE1lbkEgY29uanVnYXRlIHZhY2NpbmUsIDEtZG9zZSBzY2hlZHVsZQogKi8KbGlicmFyeSBJTU1aRDE4U01lbmluZ29jb2NjYWxNZW5BMUxvZ2ljCgp1c2luZyBGSElSIHZlcnNpb24gJzQuMC4xJwppbmNsdWRlIEZISVJIZWxwZXJzIHZlcnNpb24gJzQuMC4xJwoKaW5jbHVkZSBXSE9Db21tb24gY2FsbGVkIFdDCgppbmNsdWRlIElNTVpDb21tb24gY2FsbGVkIENvbW1vbgppbmNsdWRlIElNTVpDb25jZXB0cyBjYWxsZWQgQ29uY2VwdHMKCmluY2x1ZGUgSU1NWkVuY291bnRlckVsZW1lbnRzIGNhbGxlZCBJRQppbmNsdWRlIElNTVpEMkRUTWVuaW5nb2NvY2NhbEVuY291bnRlckVsZW1lbnRzIGNhbGxlZCBFbmNvdW50ZXIKCnBhcmFtZXRlciBUb2RheSBEYXRlIGRlZmF1bHQgVG9kYXkoKQoKY29udGV4dCBQYXRpZW50CgoKLyoKQG91dHB1dDogTWVuaW5nb2NvY2NhbCBkb3NlIDEKQGRlc2NyaXB0aW9uOiBQcm92aXNpb24gb2YgdGhlIG1lbmluZ29jb2NjYWwgZG9zZSAxCkB0cmlnZ2VyOiBDaGlsZCdzIGJpcnRoCkB0cmlnZ2VyRGF0ZTogIkRhdGUgb2YgYmlydGgiCiovCmRlZmluZSAiTWVuaW5nb2NvY2NhbCBkb3NlIDEiOgogIEVuY291bnRlci4iTm8gbWVuaW5nb2NvY2NhbCBwcmltYXJ5IHNlcmllcyBkb3NlIHdhcyBhZG1pbmlzdGVyZWQiCiAgYW5kIG5vdCAiT25lIG1lbmluZ29jb2NjYWwgZG9zZSBmcm9tIHRoZSBwcmltYXJ5IHNlcmllcyB3YXMgYWRtaW5pc3RlcmVkLiBUaGUgcHJpbWFyeSBzZXJpZXMgaGFzIGJlZW4gY29tcGxldGVkIgoKLyoKQG91dHB1dDogTWVuaW5nb2NvY2NhbCBkb3NlIDEgQ3JlYXRlCkBjcmVhdGU6IEZvciBNZW5BIGNvbmp1Z2F0ZSB2YWNjaW5lICg1wrVnKSwgYSAxLWRvc2Ugc2NoZWR1bGUgaXMgcmVjb21tZW5kZWQgYXQgOeKAkzE4IG1vbnRocyBvZiBhZ2UKKi8KZGVmaW5lICJNZW5pbmdvY29jY2FsIGRvc2UgMSBDcmVhdGUiOgogIGlmICJNZW5pbmdvY29jY2FsIGRvc2UgMSIgCiAgdGhlbiAnRm9yIE1lbkEgY29uanVnYXRlIHZhY2NpbmUgKDXCtWcpLCBhIDEtZG9zZSBzY2hlZHVsZSBpcyByZWNvbW1lbmRlZCBhdCA54oCTMTggbW9udGhzIG9mIGFnZScgKyAnCkR1ZSBEYXRlOiAnICsgVG9TdHJpbmcoIk1lbmluZ29jb2NjYWwgZG9zZSAxIER1ZSBEYXRlIikgKyAnCk92ZXJkdWU6ICcgKyBUb1N0cmluZygiTWVuaW5nb2NvY2NhbCBkb3NlIDEgT3ZlcmR1ZSIpCiAgZWxzZSAnJwoKLyoKQGR5bmFtaWNWYWx1ZTogTWVuaW5nb2NvY2NhbCBkb3NlIDEgRHVlIERhdGUKQHBzZXVkb2NvZGU6ICJEYXRlIG9mIGJpcnRoIiArIDkgbW9udGhzCiovCmRlZmluZSAiTWVuaW5nb2NvY2NhbCBkb3NlIDEgRHVlIERhdGUiOgogIGlmICJNZW5pbmdvY29jY2FsIGRvc2UgMSIgdGhlbiBQYXRpZW50LmJpcnRoRGF0ZSArIDkgbW9udGhzCiAgZWxzZSBudWxsCgovKgpAZHluYW1pY1ZhbHVlOiBNZW5pbmdvY29jY2FsIGRvc2UgMSBPdmVyZHVlCkBwc2V1ZG9jb2RlOiAiRGF0ZSBvZiBiaXJ0aCIgKyAxOCBtb250aHMKKi8KZGVmaW5lICJNZW5pbmdvY29jY2FsIGRvc2UgMSBPdmVyZHVlIjoKICBpZiAiTWVuaW5nb2NvY2NhbCBkb3NlIDEiIHRoZW4gUGF0aWVudC5iaXJ0aERhdGUgKyAxOCBtb250aHMKICBlbHNlIG51bGwKCi8qCkBkeW5hbWljVmFsdWU6IE1lbmluZ29jb2NjYWwgZG9zZSAxIEV4cGlyYXRpb24KQHBzZXVkb2NvZGU6IFRvIGJlIGRldGVybWluZWQgYnkgTWVtYmVyIFN0YXRlczsgaG93ZXZlciwgdGhlcmUgaXMgbm8gcmVjb21tZW5kZWQgZXhwaXJhdGlvbiBkYXRlIGFuZCBpbmRpdmlkdWFscyBhcmUgYWx3YXlzIGVsaWdpYmxlIHRvIGJlIHZhY2NpbmF0ZWQuCiovCmRlZmluZSAiTWVuaW5nb2NvY2NhbCBkb3NlIDEgRXhwaXJhdGlvbiI6CiAgbnVsbAogIAovKgpAY29tcGxldGU6IE9uZSBtZW5pbmdvY29jY2FsIGRvc2UgZnJvbSB0aGUgcHJpbWFyeSBzZXJpZXMgd2FzIGFkbWluaXN0ZXJlZC4gVGhlIHByaW1hcnkgc2VyaWVzIGhhcyBiZWVuIGNvbXBsZXRlZApAcHNldWRvY29kZTogIkNvbXBsZXRlZCB0aGUgcHJpbWFyeSB2YWNjaW5hdGlvbiBzZXJpZXMiID0gVFJVRSAod2hlcmUgIlZhY2NpbmUgdHlwZSIgPSAiTWVuaW5nb2NvY2NhbCB2YWNjaW5lcyIpCiovCmRlZmluZSAiT25lIG1lbmluZ29jb2NjYWwgZG9zZSBmcm9tIHRoZSBwcmltYXJ5IHNlcmllcyB3YXMgYWRtaW5pc3RlcmVkLiBUaGUgcHJpbWFyeSBzZXJpZXMgaGFzIGJlZW4gY29tcGxldGVkIjoKICBFbmNvdW50ZXIuIk9uZSBtZW5pbmdvY29jY2FsIHByaW1hcnkgc2VyaWVzIGRvc2Ugd2FzIGFkbWluaXN0ZXJlZCIKCi8qCkB0ZXN0OiBUZXN0IGV4cGVjdGVkIHJlc3VsdHMgYmFzZWQgb24gZXhhbXBsZSBwYXRpZW50cwoqLwpkZWZpbmUgIlRlc3QgVmFsaWRhdGlvbiI6CiAgY2FzZQogICAgd2hlbiBQYXRpZW50LmlkID0gJzA4LjEnIHRoZW4gIk1lbmluZ29jb2NjYWwgZG9zZSAxIgogICAgd2hlbiBQYXRpZW50LmlkID0gJzA5LjAxJyB0aGVuICJNZW5pbmdvY29jY2FsIGRvc2UgMSIKICAgIHdoZW4gUGF0aWVudC5pZCA9ICcxMC4wJyB0aGVuICJPbmUgbWVuaW5nb2NvY2NhbCBkb3NlIGZyb20gdGhlIHByaW1hcnkgc2VyaWVzIHdhcyBhZG1pbmlzdGVyZWQuIFRoZSBwcmltYXJ5IHNlcmllcyBoYXMgYmVlbiBjb21wbGV0ZWQiCiAgICBlbHNlICdObyB0ZXN0IGNhc2Ugc2V0JwogIGVuZAo="
  }]
}

```
