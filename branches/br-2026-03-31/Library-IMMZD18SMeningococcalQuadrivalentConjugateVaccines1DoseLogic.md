# IMMZD18SMeningococcalQuadrivalentConjugateVaccines1DoseLogic - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD18SMeningococcalQuadrivalentConjugateVaccines1DoseLogic**

## Library: IMMZD18SMeningococcalQuadrivalentConjugateVaccines1DoseLogic 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Library/IMMZD18SMeningococcalQuadrivalentConjugateVaccines1DoseLogic | *Version*:0.2.0 |
| Draft as of 2026-03-31 | *Computable Name*:IMMZD18SMeningococcalQuadrivalentConjugateVaccines1DoseLogic |

 
This library defines decision support logic for the IMMZ.D18.S.Meningococcal.Quadrivalent conjugate vaccines 1-dose schedule table in the Immunization CPG 

* * **Content: **text/cql: ````/* * Library: IMMZD18SMeningococcalQuadrivalentConjugateVaccines1DoseLogic (IMMZ.D18.S.Meningococcal.Quadrivalent conjugate vaccines 1-dose schedule) * Schedule Table: Quadrivalent conjugate vaccines (A,C,W135,Y-D and A,C,W135,Y-CRM), 1-dose schedule */ library IMMZD18SMeningococcalQuadrivalentConjugateVaccines1DoseLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTMeningococcalEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Meningococcal dose 1 @description: Provision of the meningococcal dose 1 @trigger: Child's birth @pseudo: @triggerDate: "Date of birth" */ define "Meningococcal dose 1": Encounter."No meningococcal primary series dose was administered" and not "One meningococcal dose from primary series was administered. The primary series has been completed" /* @output: Meningococcal dose 1 Create @create: Quadrivalent conjugate vaccines (A,C,W135,Y-D and A,C,W135,Y-CRM) should be administered as one single intramuscular dose to individuals aged ≥2 years. */ define "Meningococcal dose 1 Create": if "Meningococcal dose 1" then 'Quadrivalent conjugate vaccines (A,C,W135,Y-D and A,C,W135,Y-CRM) should be administered as one single intramuscular dose to individuals aged ≥2 years.' + ' Due Date: ' + ToString("Meningococcal dose 1 Due Date") else '' /* @dynamicValue: Meningococcal dose 1 Due Date @pseudocode: "Date of birth" + 2 years */ define "Meningococcal dose 1 Due Date": if "Meningococcal dose 1" then Patient.birthDate + 2 years else null /* @dynamicValue: Meningococcal dose 1 Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "Meningococcal dose 1 Overdue": null /* @dynamicValue: Meningococcal dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Meningococcal dose 1 Expiration": null /* @complete: One meningococcal dose from primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" (where "Vaccine type" = "Meningococcal vaccines") = TRUE */ define "One meningococcal dose from primary series was administered. The primary series has been completed": Encounter."One meningococcal primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'Meningococcal45.1' then "Meningococcal dose 1" when Patient.id = 'Meningococcal46.2' then "Meningococcal dose 1" when Patient.id = 'Meningococcal47.1' then "One meningococcal dose from primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Id: **
  * ?: IMMZD18SMeningococcalQuadrivalentConjugateVaccines1DoseLogic
* * **Content: **text/cql: ````/* * Library: IMMZD18SMeningococcalQuadrivalentConjugateVaccines1DoseLogic (IMMZ.D18.S.Meningococcal.Quadrivalent conjugate vaccines 1-dose schedule) * Schedule Table: Quadrivalent conjugate vaccines (A,C,W135,Y-D and A,C,W135,Y-CRM), 1-dose schedule */ library IMMZD18SMeningococcalQuadrivalentConjugateVaccines1DoseLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTMeningococcalEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Meningococcal dose 1 @description: Provision of the meningococcal dose 1 @trigger: Child's birth @pseudo: @triggerDate: "Date of birth" */ define "Meningococcal dose 1": Encounter."No meningococcal primary series dose was administered" and not "One meningococcal dose from primary series was administered. The primary series has been completed" /* @output: Meningococcal dose 1 Create @create: Quadrivalent conjugate vaccines (A,C,W135,Y-D and A,C,W135,Y-CRM) should be administered as one single intramuscular dose to individuals aged ≥2 years. */ define "Meningococcal dose 1 Create": if "Meningococcal dose 1" then 'Quadrivalent conjugate vaccines (A,C,W135,Y-D and A,C,W135,Y-CRM) should be administered as one single intramuscular dose to individuals aged ≥2 years.' + ' Due Date: ' + ToString("Meningococcal dose 1 Due Date") else '' /* @dynamicValue: Meningococcal dose 1 Due Date @pseudocode: "Date of birth" + 2 years */ define "Meningococcal dose 1 Due Date": if "Meningococcal dose 1" then Patient.birthDate + 2 years else null /* @dynamicValue: Meningococcal dose 1 Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "Meningococcal dose 1 Overdue": null /* @dynamicValue: Meningococcal dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Meningococcal dose 1 Expiration": null /* @complete: One meningococcal dose from primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" (where "Vaccine type" = "Meningococcal vaccines") = TRUE */ define "One meningococcal dose from primary series was administered. The primary series has been completed": Encounter."One meningococcal primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'Meningococcal45.1' then "Meningococcal dose 1" when Patient.id = 'Meningococcal46.2' then "Meningococcal dose 1" when Patient.id = 'Meningococcal47.1' then "One meningococcal dose from primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Version: **
  * ?: 0.2.0
* * **Content: **text/cql: ````/* * Library: IMMZD18SMeningococcalQuadrivalentConjugateVaccines1DoseLogic (IMMZ.D18.S.Meningococcal.Quadrivalent conjugate vaccines 1-dose schedule) * Schedule Table: Quadrivalent conjugate vaccines (A,C,W135,Y-D and A,C,W135,Y-CRM), 1-dose schedule */ library IMMZD18SMeningococcalQuadrivalentConjugateVaccines1DoseLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTMeningococcalEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Meningococcal dose 1 @description: Provision of the meningococcal dose 1 @trigger: Child's birth @pseudo: @triggerDate: "Date of birth" */ define "Meningococcal dose 1": Encounter."No meningococcal primary series dose was administered" and not "One meningococcal dose from primary series was administered. The primary series has been completed" /* @output: Meningococcal dose 1 Create @create: Quadrivalent conjugate vaccines (A,C,W135,Y-D and A,C,W135,Y-CRM) should be administered as one single intramuscular dose to individuals aged ≥2 years. */ define "Meningococcal dose 1 Create": if "Meningococcal dose 1" then 'Quadrivalent conjugate vaccines (A,C,W135,Y-D and A,C,W135,Y-CRM) should be administered as one single intramuscular dose to individuals aged ≥2 years.' + ' Due Date: ' + ToString("Meningococcal dose 1 Due Date") else '' /* @dynamicValue: Meningococcal dose 1 Due Date @pseudocode: "Date of birth" + 2 years */ define "Meningococcal dose 1 Due Date": if "Meningococcal dose 1" then Patient.birthDate + 2 years else null /* @dynamicValue: Meningococcal dose 1 Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "Meningococcal dose 1 Overdue": null /* @dynamicValue: Meningococcal dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Meningococcal dose 1 Expiration": null /* @complete: One meningococcal dose from primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" (where "Vaccine type" = "Meningococcal vaccines") = TRUE */ define "One meningococcal dose from primary series was administered. The primary series has been completed": Encounter."One meningococcal primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'Meningococcal45.1' then "Meningococcal dose 1" when Patient.id = 'Meningococcal46.2' then "Meningococcal dose 1" when Patient.id = 'Meningococcal47.1' then "One meningococcal dose from primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Url: **
  * ?: [IMMZD18SMeningococcalQuadrivalentConjugateVaccines1DoseLogic](Library-IMMZD18SMeningococcalQuadrivalentConjugateVaccines1DoseLogic.md)
* * **Content: **text/cql: ````/* * Library: IMMZD18SMeningococcalQuadrivalentConjugateVaccines1DoseLogic (IMMZ.D18.S.Meningococcal.Quadrivalent conjugate vaccines 1-dose schedule) * Schedule Table: Quadrivalent conjugate vaccines (A,C,W135,Y-D and A,C,W135,Y-CRM), 1-dose schedule */ library IMMZD18SMeningococcalQuadrivalentConjugateVaccines1DoseLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTMeningococcalEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Meningococcal dose 1 @description: Provision of the meningococcal dose 1 @trigger: Child's birth @pseudo: @triggerDate: "Date of birth" */ define "Meningococcal dose 1": Encounter."No meningococcal primary series dose was administered" and not "One meningococcal dose from primary series was administered. The primary series has been completed" /* @output: Meningococcal dose 1 Create @create: Quadrivalent conjugate vaccines (A,C,W135,Y-D and A,C,W135,Y-CRM) should be administered as one single intramuscular dose to individuals aged ≥2 years. */ define "Meningococcal dose 1 Create": if "Meningococcal dose 1" then 'Quadrivalent conjugate vaccines (A,C,W135,Y-D and A,C,W135,Y-CRM) should be administered as one single intramuscular dose to individuals aged ≥2 years.' + ' Due Date: ' + ToString("Meningococcal dose 1 Due Date") else '' /* @dynamicValue: Meningococcal dose 1 Due Date @pseudocode: "Date of birth" + 2 years */ define "Meningococcal dose 1 Due Date": if "Meningococcal dose 1" then Patient.birthDate + 2 years else null /* @dynamicValue: Meningococcal dose 1 Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "Meningococcal dose 1 Overdue": null /* @dynamicValue: Meningococcal dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Meningococcal dose 1 Expiration": null /* @complete: One meningococcal dose from primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" (where "Vaccine type" = "Meningococcal vaccines") = TRUE */ define "One meningococcal dose from primary series was administered. The primary series has been completed": Encounter."One meningococcal primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'Meningococcal45.1' then "Meningococcal dose 1" when Patient.id = 'Meningococcal46.2' then "Meningococcal dose 1" when Patient.id = 'Meningococcal47.1' then "One meningococcal dose from primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Status: **
  * ?: draft
* * **Content: **text/cql: ````/* * Library: IMMZD18SMeningococcalQuadrivalentConjugateVaccines1DoseLogic (IMMZ.D18.S.Meningococcal.Quadrivalent conjugate vaccines 1-dose schedule) * Schedule Table: Quadrivalent conjugate vaccines (A,C,W135,Y-D and A,C,W135,Y-CRM), 1-dose schedule */ library IMMZD18SMeningococcalQuadrivalentConjugateVaccines1DoseLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTMeningococcalEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Meningococcal dose 1 @description: Provision of the meningococcal dose 1 @trigger: Child's birth @pseudo: @triggerDate: "Date of birth" */ define "Meningococcal dose 1": Encounter."No meningococcal primary series dose was administered" and not "One meningococcal dose from primary series was administered. The primary series has been completed" /* @output: Meningococcal dose 1 Create @create: Quadrivalent conjugate vaccines (A,C,W135,Y-D and A,C,W135,Y-CRM) should be administered as one single intramuscular dose to individuals aged ≥2 years. */ define "Meningococcal dose 1 Create": if "Meningococcal dose 1" then 'Quadrivalent conjugate vaccines (A,C,W135,Y-D and A,C,W135,Y-CRM) should be administered as one single intramuscular dose to individuals aged ≥2 years.' + ' Due Date: ' + ToString("Meningococcal dose 1 Due Date") else '' /* @dynamicValue: Meningococcal dose 1 Due Date @pseudocode: "Date of birth" + 2 years */ define "Meningococcal dose 1 Due Date": if "Meningococcal dose 1" then Patient.birthDate + 2 years else null /* @dynamicValue: Meningococcal dose 1 Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "Meningococcal dose 1 Overdue": null /* @dynamicValue: Meningococcal dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Meningococcal dose 1 Expiration": null /* @complete: One meningococcal dose from primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" (where "Vaccine type" = "Meningococcal vaccines") = TRUE */ define "One meningococcal dose from primary series was administered. The primary series has been completed": Encounter."One meningococcal primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'Meningococcal45.1' then "Meningococcal dose 1" when Patient.id = 'Meningococcal46.2' then "Meningococcal dose 1" when Patient.id = 'Meningococcal47.1' then "One meningococcal dose from primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Date: **
  * ?: 2026-03-31 13:43:57+0000
* * **Content: **text/cql: ````/* * Library: IMMZD18SMeningococcalQuadrivalentConjugateVaccines1DoseLogic (IMMZ.D18.S.Meningococcal.Quadrivalent conjugate vaccines 1-dose schedule) * Schedule Table: Quadrivalent conjugate vaccines (A,C,W135,Y-D and A,C,W135,Y-CRM), 1-dose schedule */ library IMMZD18SMeningococcalQuadrivalentConjugateVaccines1DoseLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTMeningococcalEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Meningococcal dose 1 @description: Provision of the meningococcal dose 1 @trigger: Child's birth @pseudo: @triggerDate: "Date of birth" */ define "Meningococcal dose 1": Encounter."No meningococcal primary series dose was administered" and not "One meningococcal dose from primary series was administered. The primary series has been completed" /* @output: Meningococcal dose 1 Create @create: Quadrivalent conjugate vaccines (A,C,W135,Y-D and A,C,W135,Y-CRM) should be administered as one single intramuscular dose to individuals aged ≥2 years. */ define "Meningococcal dose 1 Create": if "Meningococcal dose 1" then 'Quadrivalent conjugate vaccines (A,C,W135,Y-D and A,C,W135,Y-CRM) should be administered as one single intramuscular dose to individuals aged ≥2 years.' + ' Due Date: ' + ToString("Meningococcal dose 1 Due Date") else '' /* @dynamicValue: Meningococcal dose 1 Due Date @pseudocode: "Date of birth" + 2 years */ define "Meningococcal dose 1 Due Date": if "Meningococcal dose 1" then Patient.birthDate + 2 years else null /* @dynamicValue: Meningococcal dose 1 Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "Meningococcal dose 1 Overdue": null /* @dynamicValue: Meningococcal dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Meningococcal dose 1 Expiration": null /* @complete: One meningococcal dose from primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" (where "Vaccine type" = "Meningococcal vaccines") = TRUE */ define "One meningococcal dose from primary series was administered. The primary series has been completed": Encounter."One meningococcal primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'Meningococcal45.1' then "Meningococcal dose 1" when Patient.id = 'Meningococcal46.2' then "Meningococcal dose 1" when Patient.id = 'Meningococcal47.1' then "One meningococcal dose from primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Publisher: **
  * ?: WHO
* * **Content: **text/cql: ````/* * Library: IMMZD18SMeningococcalQuadrivalentConjugateVaccines1DoseLogic (IMMZ.D18.S.Meningococcal.Quadrivalent conjugate vaccines 1-dose schedule) * Schedule Table: Quadrivalent conjugate vaccines (A,C,W135,Y-D and A,C,W135,Y-CRM), 1-dose schedule */ library IMMZD18SMeningococcalQuadrivalentConjugateVaccines1DoseLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTMeningococcalEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Meningococcal dose 1 @description: Provision of the meningococcal dose 1 @trigger: Child's birth @pseudo: @triggerDate: "Date of birth" */ define "Meningococcal dose 1": Encounter."No meningococcal primary series dose was administered" and not "One meningococcal dose from primary series was administered. The primary series has been completed" /* @output: Meningococcal dose 1 Create @create: Quadrivalent conjugate vaccines (A,C,W135,Y-D and A,C,W135,Y-CRM) should be administered as one single intramuscular dose to individuals aged ≥2 years. */ define "Meningococcal dose 1 Create": if "Meningococcal dose 1" then 'Quadrivalent conjugate vaccines (A,C,W135,Y-D and A,C,W135,Y-CRM) should be administered as one single intramuscular dose to individuals aged ≥2 years.' + ' Due Date: ' + ToString("Meningococcal dose 1 Due Date") else '' /* @dynamicValue: Meningococcal dose 1 Due Date @pseudocode: "Date of birth" + 2 years */ define "Meningococcal dose 1 Due Date": if "Meningococcal dose 1" then Patient.birthDate + 2 years else null /* @dynamicValue: Meningococcal dose 1 Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "Meningococcal dose 1 Overdue": null /* @dynamicValue: Meningococcal dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Meningococcal dose 1 Expiration": null /* @complete: One meningococcal dose from primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" (where "Vaccine type" = "Meningococcal vaccines") = TRUE */ define "One meningococcal dose from primary series was administered. The primary series has been completed": Encounter."One meningococcal primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'Meningococcal45.1' then "Meningococcal dose 1" when Patient.id = 'Meningococcal46.2' then "Meningococcal dose 1" when Patient.id = 'Meningococcal47.1' then "One meningococcal dose from primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Description: **
  * ?: This library defines decision support logic for the IMMZ.D18.S.Meningococcal.Quadrivalent conjugate vaccines 1-dose schedule table in the Immunization CPG



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "IMMZD18SMeningococcalQuadrivalentConjugateVaccines1DoseLogic",
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
  "url" : "http://smart.who.int/immunizations/Library/IMMZD18SMeningococcalQuadrivalentConjugateVaccines1DoseLogic",
  "version" : "0.2.0",
  "name" : "IMMZD18SMeningococcalQuadrivalentConjugateVaccines1DoseLogic",
  "title" : "IMMZD18SMeningococcalQuadrivalentConjugateVaccines1DoseLogic",
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
  "description" : "This library defines decision support logic for the IMMZ.D18.S.Meningococcal.Quadrivalent conjugate vaccines 1-dose schedule table in the Immunization CPG",
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
    "name" : "One meningococcal dose from primary series was administered. The primary series has been completed",
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
    "name" : "Meningococcal dose 1 Create",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "string"
  },
  {
    "name" : "Meningococcal dose 1 Overdue",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "Resource"
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
    "data" : "LyoKICogTGlicmFyeTogSU1NWkQxOFNNZW5pbmdvY29jY2FsUXVhZHJpdmFsZW50Q29uanVnYXRlVmFjY2luZXMxRG9zZUxvZ2ljIChJTU1aLkQxOC5TLk1lbmluZ29jb2NjYWwuUXVhZHJpdmFsZW50IGNvbmp1Z2F0ZSB2YWNjaW5lcyAxLWRvc2Ugc2NoZWR1bGUpCiAqIFNjaGVkdWxlIFRhYmxlOiBRdWFkcml2YWxlbnQgY29uanVnYXRlIHZhY2NpbmVzIChBLEMsVzEzNSxZLUQgYW5kIEEsQyxXMTM1LFktQ1JNKSwgMS1kb3NlIHNjaGVkdWxlCiAqLwpsaWJyYXJ5IElNTVpEMThTTWVuaW5nb2NvY2NhbFF1YWRyaXZhbGVudENvbmp1Z2F0ZVZhY2NpbmVzMURvc2VMb2dpYwoKdXNpbmcgRkhJUiB2ZXJzaW9uICc0LjAuMScKaW5jbHVkZSBGSElSSGVscGVycyB2ZXJzaW9uICc0LjAuMScKCmluY2x1ZGUgV0hPQ29tbW9uIGNhbGxlZCBXQwoKaW5jbHVkZSBJTU1aQ29tbW9uIGNhbGxlZCBDb21tb24KaW5jbHVkZSBJTU1aQ29uY2VwdHMgY2FsbGVkIENvbmNlcHRzCgppbmNsdWRlIElNTVpFbmNvdW50ZXJFbGVtZW50cyBjYWxsZWQgSUUKaW5jbHVkZSBJTU1aRDJEVE1lbmluZ29jb2NjYWxFbmNvdW50ZXJFbGVtZW50cyBjYWxsZWQgRW5jb3VudGVyCgpwYXJhbWV0ZXIgVG9kYXkgRGF0ZSBkZWZhdWx0IFRvZGF5KCkKCgpjb250ZXh0IFBhdGllbnQKCgovKgpAb3V0cHV0OiBNZW5pbmdvY29jY2FsIGRvc2UgMQpAZGVzY3JpcHRpb246IFByb3Zpc2lvbiBvZiB0aGUgbWVuaW5nb2NvY2NhbCBkb3NlIDEKQHRyaWdnZXI6IENoaWxkJ3MgYmlydGgKQHBzZXVkbzogCkB0cmlnZ2VyRGF0ZTogIkRhdGUgb2YgYmlydGgiCiovCmRlZmluZSAiTWVuaW5nb2NvY2NhbCBkb3NlIDEiOgogIEVuY291bnRlci4iTm8gbWVuaW5nb2NvY2NhbCBwcmltYXJ5IHNlcmllcyBkb3NlIHdhcyBhZG1pbmlzdGVyZWQiCiAgYW5kIG5vdCAiT25lIG1lbmluZ29jb2NjYWwgZG9zZSBmcm9tIHByaW1hcnkgc2VyaWVzIHdhcyBhZG1pbmlzdGVyZWQuIFRoZSBwcmltYXJ5IHNlcmllcyBoYXMgYmVlbiBjb21wbGV0ZWQiCgoKLyoKQG91dHB1dDogTWVuaW5nb2NvY2NhbCBkb3NlIDEgQ3JlYXRlCkBjcmVhdGU6IFF1YWRyaXZhbGVudCBjb25qdWdhdGUgdmFjY2luZXMgKEEsQyxXMTM1LFktRCBhbmQgQSxDLFcxMzUsWS1DUk0pIHNob3VsZCBiZSBhZG1pbmlzdGVyZWQgYXMgb25lIHNpbmdsZSBpbnRyYW11c2N1bGFyIGRvc2UgdG8gaW5kaXZpZHVhbHMgYWdlZCDiiaUyIHllYXJzLgoqLwpkZWZpbmUgIk1lbmluZ29jb2NjYWwgZG9zZSAxIENyZWF0ZSI6CiAgaWYgIk1lbmluZ29jb2NjYWwgZG9zZSAxIgogIHRoZW4gJ1F1YWRyaXZhbGVudCBjb25qdWdhdGUgdmFjY2luZXMgKEEsQyxXMTM1LFktRCBhbmQgQSxDLFcxMzUsWS1DUk0pIHNob3VsZCBiZSBhZG1pbmlzdGVyZWQgYXMgb25lIHNpbmdsZSBpbnRyYW11c2N1bGFyIGRvc2UgdG8gaW5kaXZpZHVhbHMgYWdlZCDiiaUyIHllYXJzLicgKyAnCkR1ZSBEYXRlOiAnICsgVG9TdHJpbmcoIk1lbmluZ29jb2NjYWwgZG9zZSAxIER1ZSBEYXRlIikKICBlbHNlICcnCgoKLyoKQGR5bmFtaWNWYWx1ZTogTWVuaW5nb2NvY2NhbCBkb3NlIDEgRHVlIERhdGUKQHBzZXVkb2NvZGU6ICJEYXRlIG9mIGJpcnRoIiArIDIgeWVhcnMKKi8KZGVmaW5lICJNZW5pbmdvY29jY2FsIGRvc2UgMSBEdWUgRGF0ZSI6CiAgaWYgIk1lbmluZ29jb2NjYWwgZG9zZSAxIiB0aGVuIFBhdGllbnQuYmlydGhEYXRlICsgMiB5ZWFycwogIGVsc2UgbnVsbAoKCi8qCkBkeW5hbWljVmFsdWU6IE1lbmluZ29jb2NjYWwgZG9zZSAxIE92ZXJkdWUKQHBzZXVkb2NvZGU6IFRvIGJlIGRldGVybWluZWQgYnkgTWVtYmVyIFN0YXRlczsgaG93ZXZlciwgdGhlcmUgaXMgbm8gcmVjb21tZW5kZWQgb3ZlcmR1ZSBkYXRlIGFuZCBpbmRpdmlkdWFscyBhcmUgYWx3YXlzIGVsaWdpYmxlIHRvIGJlIHZhY2NpbmF0ZWQuCiovCmRlZmluZSAiTWVuaW5nb2NvY2NhbCBkb3NlIDEgT3ZlcmR1ZSI6CiAgbnVsbAoKCi8qCkBkeW5hbWljVmFsdWU6IE1lbmluZ29jb2NjYWwgZG9zZSAxIEV4cGlyYXRpb24KQHBzZXVkb2NvZGU6IFRvIGJlIGRldGVybWluZWQgYnkgTWVtYmVyIFN0YXRlczsgaG93ZXZlciwgdGhlcmUgaXMgbm8gcmVjb21tZW5kZWQgZXhwaXJhdGlvbiBkYXRlIGFuZCBpbmRpdmlkdWFscyBhcmUgYWx3YXlzIGVsaWdpYmxlIHRvIGJlIHZhY2NpbmF0ZWQuCiovCmRlZmluZSAiTWVuaW5nb2NvY2NhbCBkb3NlIDEgRXhwaXJhdGlvbiI6CiAgbnVsbAoKICAKLyoKQGNvbXBsZXRlOiBPbmUgbWVuaW5nb2NvY2NhbCBkb3NlIGZyb20gcHJpbWFyeSBzZXJpZXMgd2FzIGFkbWluaXN0ZXJlZC4gVGhlIHByaW1hcnkgc2VyaWVzIGhhcyBiZWVuIGNvbXBsZXRlZApAcHNldWRvY29kZTogIkNvbXBsZXRlZCB0aGUgcHJpbWFyeSB2YWNjaW5hdGlvbiBzZXJpZXMiICh3aGVyZSAiVmFjY2luZSB0eXBlIiA9ICJNZW5pbmdvY29jY2FsIHZhY2NpbmVzIikgPSBUUlVFCiovCmRlZmluZSAiT25lIG1lbmluZ29jb2NjYWwgZG9zZSBmcm9tIHByaW1hcnkgc2VyaWVzIHdhcyBhZG1pbmlzdGVyZWQuIFRoZSBwcmltYXJ5IHNlcmllcyBoYXMgYmVlbiBjb21wbGV0ZWQiOgogIEVuY291bnRlci4iT25lIG1lbmluZ29jb2NjYWwgcHJpbWFyeSBzZXJpZXMgZG9zZSB3YXMgYWRtaW5pc3RlcmVkIgoKCgovKgpAdGVzdDogVGVzdCBleHBlY3RlZCByZXN1bHRzIGJhc2VkIG9uIGV4YW1wbGUgcGF0aWVudHMKKi8KZGVmaW5lICJUZXN0IFZhbGlkYXRpb24iOgogIGNhc2UKICAgIHdoZW4gUGF0aWVudC5pZCA9ICdNZW5pbmdvY29jY2FsNDUuMScgdGhlbiAiTWVuaW5nb2NvY2NhbCBkb3NlIDEiCiAgICB3aGVuIFBhdGllbnQuaWQgPSAnTWVuaW5nb2NvY2NhbDQ2LjInIHRoZW4gIk1lbmluZ29jb2NjYWwgZG9zZSAxIgogICAgd2hlbiBQYXRpZW50LmlkID0gJ01lbmluZ29jb2NjYWw0Ny4xJyB0aGVuICJPbmUgbWVuaW5nb2NvY2NhbCBkb3NlIGZyb20gcHJpbWFyeSBzZXJpZXMgd2FzIGFkbWluaXN0ZXJlZC4gVGhlIHByaW1hcnkgc2VyaWVzIGhhcyBiZWVuIGNvbXBsZXRlZCIKICAgIGVsc2UgJ05vIHRlc3QgY2FzZSBzZXQnCiAgZW5kCg=="
  }]
}

```
