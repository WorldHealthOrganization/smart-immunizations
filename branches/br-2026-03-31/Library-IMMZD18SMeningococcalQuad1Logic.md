# IMMZD18SMeningococcalQuad1Logic - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD18SMeningococcalQuad1Logic**

## Library: IMMZD18SMeningococcalQuad1Logic (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Library/IMMZD18SMeningococcalQuad1Logic | *Version*:0.2.0 |
| Draft as of 2026-03-31 | *Computable Name*:IMMZD18SMeningococcalQuad1Logic |

 
This library defines decision support logic for the IMMZ.D18.S.Meningococcal.Quadrivalent conjugate vaccines 1-dose schedule table in the Immunization CPG 

* * **Content: **text/cql: ```` /* * Library: IMMZD18SMeningococcalQuad1Logic (IMMZ.D18.S.Meningococcal.Quadrivalent conjugate vaccines 1-dose schedule) * Schedule Table: Quadrivalent conjugate vaccines (A,C,W135,Y-D and A,C,W135,Y-CRM), 1-dose schedule */ library IMMZD18SMeningococcalQuad1Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTMeningococcalEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Meningococcal dose 1 @description: Provision of the meningococcal dose 1 @trigger: Child's birth @triggerDate: "Date of birth" */ define "Meningococcal dose 1": Encounter."No meningococcal primary series dose was administered" and not "One meningococcal dose from primary series was administered. The primary series has been completed" /* @output: Meningococcal dose 1 Create @create: Quadrivalent conjugate vaccines (A,C,W135,Y-D and A,C,W135,Y-CRM) should be administered as one single intramuscular dose to individuals aged ≥2 years. */ define "Meningococcal dose 1 Create": if "Meningococcal dose 1" then 'Quadrivalent conjugate vaccines (A,C,W135,Y-D and A,C,W135,Y-CRM) should be administered as one single intramuscular dose to individuals aged ≥2 years.' + ' Due Date: ' + ToString("Meningococcal dose 1 Due Date") else '' /* @dynamicValue: Meningococcal dose 1 Due Date @pseudocode: "Date of birth" + 2 years */ define "Meningococcal dose 1 Due Date": if "Meningococcal dose 1" then Patient.birthDate + 2 years else null /* @dynamicValue: Meningococcal dose 1 Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "Meningococcal dose 1 Overdue": null /* @dynamicValue: Meningococcal dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Meningococcal dose 1 Expiration": null /* @complete: One meningococcal dose from primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" (where "Vaccine type" = "Meningococcal vaccines") = TRUE */ define "One meningococcal dose from primary series was administered. The primary series has been completed": Encounter."One meningococcal primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = '45.1' then "Meningococcal dose 1" when Patient.id = '46.01' then "Meningococcal dose 1" when Patient.id = '47.0' then "One meningococcal dose from primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Id: **
  * ?: IMMZD18SMeningococcalQuad1Logic
* * **Content: **text/cql: ```` /* * Library: IMMZD18SMeningococcalQuad1Logic (IMMZ.D18.S.Meningococcal.Quadrivalent conjugate vaccines 1-dose schedule) * Schedule Table: Quadrivalent conjugate vaccines (A,C,W135,Y-D and A,C,W135,Y-CRM), 1-dose schedule */ library IMMZD18SMeningococcalQuad1Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTMeningococcalEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Meningococcal dose 1 @description: Provision of the meningococcal dose 1 @trigger: Child's birth @triggerDate: "Date of birth" */ define "Meningococcal dose 1": Encounter."No meningococcal primary series dose was administered" and not "One meningococcal dose from primary series was administered. The primary series has been completed" /* @output: Meningococcal dose 1 Create @create: Quadrivalent conjugate vaccines (A,C,W135,Y-D and A,C,W135,Y-CRM) should be administered as one single intramuscular dose to individuals aged ≥2 years. */ define "Meningococcal dose 1 Create": if "Meningococcal dose 1" then 'Quadrivalent conjugate vaccines (A,C,W135,Y-D and A,C,W135,Y-CRM) should be administered as one single intramuscular dose to individuals aged ≥2 years.' + ' Due Date: ' + ToString("Meningococcal dose 1 Due Date") else '' /* @dynamicValue: Meningococcal dose 1 Due Date @pseudocode: "Date of birth" + 2 years */ define "Meningococcal dose 1 Due Date": if "Meningococcal dose 1" then Patient.birthDate + 2 years else null /* @dynamicValue: Meningococcal dose 1 Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "Meningococcal dose 1 Overdue": null /* @dynamicValue: Meningococcal dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Meningococcal dose 1 Expiration": null /* @complete: One meningococcal dose from primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" (where "Vaccine type" = "Meningococcal vaccines") = TRUE */ define "One meningococcal dose from primary series was administered. The primary series has been completed": Encounter."One meningococcal primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = '45.1' then "Meningococcal dose 1" when Patient.id = '46.01' then "Meningococcal dose 1" when Patient.id = '47.0' then "One meningococcal dose from primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Version: **
  * ?: 0.2.0
* * **Content: **text/cql: ```` /* * Library: IMMZD18SMeningococcalQuad1Logic (IMMZ.D18.S.Meningococcal.Quadrivalent conjugate vaccines 1-dose schedule) * Schedule Table: Quadrivalent conjugate vaccines (A,C,W135,Y-D and A,C,W135,Y-CRM), 1-dose schedule */ library IMMZD18SMeningococcalQuad1Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTMeningococcalEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Meningococcal dose 1 @description: Provision of the meningococcal dose 1 @trigger: Child's birth @triggerDate: "Date of birth" */ define "Meningococcal dose 1": Encounter."No meningococcal primary series dose was administered" and not "One meningococcal dose from primary series was administered. The primary series has been completed" /* @output: Meningococcal dose 1 Create @create: Quadrivalent conjugate vaccines (A,C,W135,Y-D and A,C,W135,Y-CRM) should be administered as one single intramuscular dose to individuals aged ≥2 years. */ define "Meningococcal dose 1 Create": if "Meningococcal dose 1" then 'Quadrivalent conjugate vaccines (A,C,W135,Y-D and A,C,W135,Y-CRM) should be administered as one single intramuscular dose to individuals aged ≥2 years.' + ' Due Date: ' + ToString("Meningococcal dose 1 Due Date") else '' /* @dynamicValue: Meningococcal dose 1 Due Date @pseudocode: "Date of birth" + 2 years */ define "Meningococcal dose 1 Due Date": if "Meningococcal dose 1" then Patient.birthDate + 2 years else null /* @dynamicValue: Meningococcal dose 1 Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "Meningococcal dose 1 Overdue": null /* @dynamicValue: Meningococcal dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Meningococcal dose 1 Expiration": null /* @complete: One meningococcal dose from primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" (where "Vaccine type" = "Meningococcal vaccines") = TRUE */ define "One meningococcal dose from primary series was administered. The primary series has been completed": Encounter."One meningococcal primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = '45.1' then "Meningococcal dose 1" when Patient.id = '46.01' then "Meningococcal dose 1" when Patient.id = '47.0' then "One meningococcal dose from primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Url: **
  * ?: [IMMZD18SMeningococcalQuad1Logic](Library-IMMZD18SMeningococcalQuad1Logic.md)
* * **Content: **text/cql: ```` /* * Library: IMMZD18SMeningococcalQuad1Logic (IMMZ.D18.S.Meningococcal.Quadrivalent conjugate vaccines 1-dose schedule) * Schedule Table: Quadrivalent conjugate vaccines (A,C,W135,Y-D and A,C,W135,Y-CRM), 1-dose schedule */ library IMMZD18SMeningococcalQuad1Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTMeningococcalEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Meningococcal dose 1 @description: Provision of the meningococcal dose 1 @trigger: Child's birth @triggerDate: "Date of birth" */ define "Meningococcal dose 1": Encounter."No meningococcal primary series dose was administered" and not "One meningococcal dose from primary series was administered. The primary series has been completed" /* @output: Meningococcal dose 1 Create @create: Quadrivalent conjugate vaccines (A,C,W135,Y-D and A,C,W135,Y-CRM) should be administered as one single intramuscular dose to individuals aged ≥2 years. */ define "Meningococcal dose 1 Create": if "Meningococcal dose 1" then 'Quadrivalent conjugate vaccines (A,C,W135,Y-D and A,C,W135,Y-CRM) should be administered as one single intramuscular dose to individuals aged ≥2 years.' + ' Due Date: ' + ToString("Meningococcal dose 1 Due Date") else '' /* @dynamicValue: Meningococcal dose 1 Due Date @pseudocode: "Date of birth" + 2 years */ define "Meningococcal dose 1 Due Date": if "Meningococcal dose 1" then Patient.birthDate + 2 years else null /* @dynamicValue: Meningococcal dose 1 Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "Meningococcal dose 1 Overdue": null /* @dynamicValue: Meningococcal dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Meningococcal dose 1 Expiration": null /* @complete: One meningococcal dose from primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" (where "Vaccine type" = "Meningococcal vaccines") = TRUE */ define "One meningococcal dose from primary series was administered. The primary series has been completed": Encounter."One meningococcal primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = '45.1' then "Meningococcal dose 1" when Patient.id = '46.01' then "Meningococcal dose 1" when Patient.id = '47.0' then "One meningococcal dose from primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Status: **
  * ?: draft
* * **Content: **text/cql: ```` /* * Library: IMMZD18SMeningococcalQuad1Logic (IMMZ.D18.S.Meningococcal.Quadrivalent conjugate vaccines 1-dose schedule) * Schedule Table: Quadrivalent conjugate vaccines (A,C,W135,Y-D and A,C,W135,Y-CRM), 1-dose schedule */ library IMMZD18SMeningococcalQuad1Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTMeningococcalEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Meningococcal dose 1 @description: Provision of the meningococcal dose 1 @trigger: Child's birth @triggerDate: "Date of birth" */ define "Meningococcal dose 1": Encounter."No meningococcal primary series dose was administered" and not "One meningococcal dose from primary series was administered. The primary series has been completed" /* @output: Meningococcal dose 1 Create @create: Quadrivalent conjugate vaccines (A,C,W135,Y-D and A,C,W135,Y-CRM) should be administered as one single intramuscular dose to individuals aged ≥2 years. */ define "Meningococcal dose 1 Create": if "Meningococcal dose 1" then 'Quadrivalent conjugate vaccines (A,C,W135,Y-D and A,C,W135,Y-CRM) should be administered as one single intramuscular dose to individuals aged ≥2 years.' + ' Due Date: ' + ToString("Meningococcal dose 1 Due Date") else '' /* @dynamicValue: Meningococcal dose 1 Due Date @pseudocode: "Date of birth" + 2 years */ define "Meningococcal dose 1 Due Date": if "Meningococcal dose 1" then Patient.birthDate + 2 years else null /* @dynamicValue: Meningococcal dose 1 Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "Meningococcal dose 1 Overdue": null /* @dynamicValue: Meningococcal dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Meningococcal dose 1 Expiration": null /* @complete: One meningococcal dose from primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" (where "Vaccine type" = "Meningococcal vaccines") = TRUE */ define "One meningococcal dose from primary series was administered. The primary series has been completed": Encounter."One meningococcal primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = '45.1' then "Meningococcal dose 1" when Patient.id = '46.01' then "Meningococcal dose 1" when Patient.id = '47.0' then "One meningococcal dose from primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Experimental: **
  * ?: true
* * **Content: **text/cql: ```` /* * Library: IMMZD18SMeningococcalQuad1Logic (IMMZ.D18.S.Meningococcal.Quadrivalent conjugate vaccines 1-dose schedule) * Schedule Table: Quadrivalent conjugate vaccines (A,C,W135,Y-D and A,C,W135,Y-CRM), 1-dose schedule */ library IMMZD18SMeningococcalQuad1Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTMeningococcalEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Meningococcal dose 1 @description: Provision of the meningococcal dose 1 @trigger: Child's birth @triggerDate: "Date of birth" */ define "Meningococcal dose 1": Encounter."No meningococcal primary series dose was administered" and not "One meningococcal dose from primary series was administered. The primary series has been completed" /* @output: Meningococcal dose 1 Create @create: Quadrivalent conjugate vaccines (A,C,W135,Y-D and A,C,W135,Y-CRM) should be administered as one single intramuscular dose to individuals aged ≥2 years. */ define "Meningococcal dose 1 Create": if "Meningococcal dose 1" then 'Quadrivalent conjugate vaccines (A,C,W135,Y-D and A,C,W135,Y-CRM) should be administered as one single intramuscular dose to individuals aged ≥2 years.' + ' Due Date: ' + ToString("Meningococcal dose 1 Due Date") else '' /* @dynamicValue: Meningococcal dose 1 Due Date @pseudocode: "Date of birth" + 2 years */ define "Meningococcal dose 1 Due Date": if "Meningococcal dose 1" then Patient.birthDate + 2 years else null /* @dynamicValue: Meningococcal dose 1 Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "Meningococcal dose 1 Overdue": null /* @dynamicValue: Meningococcal dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Meningococcal dose 1 Expiration": null /* @complete: One meningococcal dose from primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" (where "Vaccine type" = "Meningococcal vaccines") = TRUE */ define "One meningococcal dose from primary series was administered. The primary series has been completed": Encounter."One meningococcal primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = '45.1' then "Meningococcal dose 1" when Patient.id = '46.01' then "Meningococcal dose 1" when Patient.id = '47.0' then "One meningococcal dose from primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Date: **
  * ?: 2026-03-31 13:43:43+0000
* * **Content: **text/cql: ```` /* * Library: IMMZD18SMeningococcalQuad1Logic (IMMZ.D18.S.Meningococcal.Quadrivalent conjugate vaccines 1-dose schedule) * Schedule Table: Quadrivalent conjugate vaccines (A,C,W135,Y-D and A,C,W135,Y-CRM), 1-dose schedule */ library IMMZD18SMeningococcalQuad1Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTMeningococcalEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Meningococcal dose 1 @description: Provision of the meningococcal dose 1 @trigger: Child's birth @triggerDate: "Date of birth" */ define "Meningococcal dose 1": Encounter."No meningococcal primary series dose was administered" and not "One meningococcal dose from primary series was administered. The primary series has been completed" /* @output: Meningococcal dose 1 Create @create: Quadrivalent conjugate vaccines (A,C,W135,Y-D and A,C,W135,Y-CRM) should be administered as one single intramuscular dose to individuals aged ≥2 years. */ define "Meningococcal dose 1 Create": if "Meningococcal dose 1" then 'Quadrivalent conjugate vaccines (A,C,W135,Y-D and A,C,W135,Y-CRM) should be administered as one single intramuscular dose to individuals aged ≥2 years.' + ' Due Date: ' + ToString("Meningococcal dose 1 Due Date") else '' /* @dynamicValue: Meningococcal dose 1 Due Date @pseudocode: "Date of birth" + 2 years */ define "Meningococcal dose 1 Due Date": if "Meningococcal dose 1" then Patient.birthDate + 2 years else null /* @dynamicValue: Meningococcal dose 1 Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "Meningococcal dose 1 Overdue": null /* @dynamicValue: Meningococcal dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Meningococcal dose 1 Expiration": null /* @complete: One meningococcal dose from primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" (where "Vaccine type" = "Meningococcal vaccines") = TRUE */ define "One meningococcal dose from primary series was administered. The primary series has been completed": Encounter."One meningococcal primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = '45.1' then "Meningococcal dose 1" when Patient.id = '46.01' then "Meningococcal dose 1" when Patient.id = '47.0' then "One meningococcal dose from primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Publisher: **
  * ?: WHO
* * **Content: **text/cql: ```` /* * Library: IMMZD18SMeningococcalQuad1Logic (IMMZ.D18.S.Meningococcal.Quadrivalent conjugate vaccines 1-dose schedule) * Schedule Table: Quadrivalent conjugate vaccines (A,C,W135,Y-D and A,C,W135,Y-CRM), 1-dose schedule */ library IMMZD18SMeningococcalQuad1Logic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTMeningococcalEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Meningococcal dose 1 @description: Provision of the meningococcal dose 1 @trigger: Child's birth @triggerDate: "Date of birth" */ define "Meningococcal dose 1": Encounter."No meningococcal primary series dose was administered" and not "One meningococcal dose from primary series was administered. The primary series has been completed" /* @output: Meningococcal dose 1 Create @create: Quadrivalent conjugate vaccines (A,C,W135,Y-D and A,C,W135,Y-CRM) should be administered as one single intramuscular dose to individuals aged ≥2 years. */ define "Meningococcal dose 1 Create": if "Meningococcal dose 1" then 'Quadrivalent conjugate vaccines (A,C,W135,Y-D and A,C,W135,Y-CRM) should be administered as one single intramuscular dose to individuals aged ≥2 years.' + ' Due Date: ' + ToString("Meningococcal dose 1 Due Date") else '' /* @dynamicValue: Meningococcal dose 1 Due Date @pseudocode: "Date of birth" + 2 years */ define "Meningococcal dose 1 Due Date": if "Meningococcal dose 1" then Patient.birthDate + 2 years else null /* @dynamicValue: Meningococcal dose 1 Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "Meningococcal dose 1 Overdue": null /* @dynamicValue: Meningococcal dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "Meningococcal dose 1 Expiration": null /* @complete: One meningococcal dose from primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" (where "Vaccine type" = "Meningococcal vaccines") = TRUE */ define "One meningococcal dose from primary series was administered. The primary series has been completed": Encounter."One meningococcal primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = '45.1' then "Meningococcal dose 1" when Patient.id = '46.01' then "Meningococcal dose 1" when Patient.id = '47.0' then "One meningococcal dose from primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Description: **
  * ?: This library defines decision support logic for the IMMZ.D18.S.Meningococcal.Quadrivalent conjugate vaccines 1-dose schedule table in the Immunization CPG



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "IMMZD18SMeningococcalQuad1Logic",
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
  "url" : "http://smart.who.int/immunizations/Library/IMMZD18SMeningococcalQuad1Logic",
  "version" : "0.2.0",
  "name" : "IMMZD18SMeningococcalQuad1Logic",
  "title" : "IMMZD18SMeningococcalQuad1Logic",
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
    "data" : "Ci8qCiAqIExpYnJhcnk6IElNTVpEMThTTWVuaW5nb2NvY2NhbFF1YWQxTG9naWMgKElNTVouRDE4LlMuTWVuaW5nb2NvY2NhbC5RdWFkcml2YWxlbnQgY29uanVnYXRlIHZhY2NpbmVzIDEtZG9zZSBzY2hlZHVsZSkKICogU2NoZWR1bGUgVGFibGU6IFF1YWRyaXZhbGVudCBjb25qdWdhdGUgdmFjY2luZXMgKEEsQyxXMTM1LFktRCBhbmQgQSxDLFcxMzUsWS1DUk0pLCAxLWRvc2Ugc2NoZWR1bGUKICovCmxpYnJhcnkgSU1NWkQxOFNNZW5pbmdvY29jY2FsUXVhZDFMb2dpYwoKdXNpbmcgRkhJUiB2ZXJzaW9uICc0LjAuMScKaW5jbHVkZSBGSElSSGVscGVycyB2ZXJzaW9uICc0LjAuMScKCmluY2x1ZGUgV0hPQ29tbW9uIGNhbGxlZCBXQwoKaW5jbHVkZSBJTU1aQ29tbW9uIGNhbGxlZCBDb21tb24KaW5jbHVkZSBJTU1aQ29uY2VwdHMgY2FsbGVkIENvbmNlcHRzCgppbmNsdWRlIElNTVpFbmNvdW50ZXJFbGVtZW50cyBjYWxsZWQgSUUKaW5jbHVkZSBJTU1aRDJEVE1lbmluZ29jb2NjYWxFbmNvdW50ZXJFbGVtZW50cyBjYWxsZWQgRW5jb3VudGVyCgpwYXJhbWV0ZXIgVG9kYXkgRGF0ZSBkZWZhdWx0IFRvZGF5KCkKCmNvbnRleHQgUGF0aWVudAoKCi8qCkBvdXRwdXQ6IE1lbmluZ29jb2NjYWwgZG9zZSAxCkBkZXNjcmlwdGlvbjogUHJvdmlzaW9uIG9mIHRoZSBtZW5pbmdvY29jY2FsIGRvc2UgMQpAdHJpZ2dlcjogQ2hpbGQncyBiaXJ0aApAdHJpZ2dlckRhdGU6ICJEYXRlIG9mIGJpcnRoIgoqLwpkZWZpbmUgIk1lbmluZ29jb2NjYWwgZG9zZSAxIjoKICBFbmNvdW50ZXIuIk5vIG1lbmluZ29jb2NjYWwgcHJpbWFyeSBzZXJpZXMgZG9zZSB3YXMgYWRtaW5pc3RlcmVkIgogIGFuZCBub3QgIk9uZSBtZW5pbmdvY29jY2FsIGRvc2UgZnJvbSBwcmltYXJ5IHNlcmllcyB3YXMgYWRtaW5pc3RlcmVkLiBUaGUgcHJpbWFyeSBzZXJpZXMgaGFzIGJlZW4gY29tcGxldGVkIgoKLyoKQG91dHB1dDogTWVuaW5nb2NvY2NhbCBkb3NlIDEgQ3JlYXRlCkBjcmVhdGU6IFF1YWRyaXZhbGVudCBjb25qdWdhdGUgdmFjY2luZXMgKEEsQyxXMTM1LFktRCBhbmQgQSxDLFcxMzUsWS1DUk0pIHNob3VsZCBiZSBhZG1pbmlzdGVyZWQgYXMgb25lIHNpbmdsZSBpbnRyYW11c2N1bGFyIGRvc2UgdG8gaW5kaXZpZHVhbHMgYWdlZCDiiaUyIHllYXJzLgoqLwpkZWZpbmUgIk1lbmluZ29jb2NjYWwgZG9zZSAxIENyZWF0ZSI6CiAgaWYgIk1lbmluZ29jb2NjYWwgZG9zZSAxIiAKICB0aGVuICdRdWFkcml2YWxlbnQgY29uanVnYXRlIHZhY2NpbmVzIChBLEMsVzEzNSxZLUQgYW5kIEEsQyxXMTM1LFktQ1JNKSBzaG91bGQgYmUgYWRtaW5pc3RlcmVkIGFzIG9uZSBzaW5nbGUgaW50cmFtdXNjdWxhciBkb3NlIHRvIGluZGl2aWR1YWxzIGFnZWQg4omlMiB5ZWFycy4nICsgJwpEdWUgRGF0ZTogJyArIFRvU3RyaW5nKCJNZW5pbmdvY29jY2FsIGRvc2UgMSBEdWUgRGF0ZSIpCiAgZWxzZSAnJwoKLyoKQGR5bmFtaWNWYWx1ZTogTWVuaW5nb2NvY2NhbCBkb3NlIDEgRHVlIERhdGUKQHBzZXVkb2NvZGU6ICJEYXRlIG9mIGJpcnRoIiArIDIgeWVhcnMKKi8KZGVmaW5lICJNZW5pbmdvY29jY2FsIGRvc2UgMSBEdWUgRGF0ZSI6CiAgaWYgIk1lbmluZ29jb2NjYWwgZG9zZSAxIiB0aGVuIFBhdGllbnQuYmlydGhEYXRlICsgMiB5ZWFycwogIGVsc2UgbnVsbAoKLyoKQGR5bmFtaWNWYWx1ZTogTWVuaW5nb2NvY2NhbCBkb3NlIDEgT3ZlcmR1ZQpAcHNldWRvY29kZTogVG8gYmUgZGV0ZXJtaW5lZCBieSBNZW1iZXIgU3RhdGVzOyBob3dldmVyLCB0aGVyZSBpcyBubyByZWNvbW1lbmRlZCBvdmVyZHVlIGRhdGUgYW5kIGluZGl2aWR1YWxzIGFyZSBhbHdheXMgZWxpZ2libGUgdG8gYmUgdmFjY2luYXRlZC4KKi8KZGVmaW5lICJNZW5pbmdvY29jY2FsIGRvc2UgMSBPdmVyZHVlIjoKICBudWxsCgovKgpAZHluYW1pY1ZhbHVlOiBNZW5pbmdvY29jY2FsIGRvc2UgMSBFeHBpcmF0aW9uCkBwc2V1ZG9jb2RlOiBUbyBiZSBkZXRlcm1pbmVkIGJ5IE1lbWJlciBTdGF0ZXM7IGhvd2V2ZXIsIHRoZXJlIGlzIG5vIHJlY29tbWVuZGVkIGV4cGlyYXRpb24gZGF0ZSBhbmQgaW5kaXZpZHVhbHMgYXJlIGFsd2F5cyBlbGlnaWJsZSB0byBiZSB2YWNjaW5hdGVkLgoqLwpkZWZpbmUgIk1lbmluZ29jb2NjYWwgZG9zZSAxIEV4cGlyYXRpb24iOgogIG51bGwKICAKLyoKQGNvbXBsZXRlOiBPbmUgbWVuaW5nb2NvY2NhbCBkb3NlIGZyb20gcHJpbWFyeSBzZXJpZXMgd2FzIGFkbWluaXN0ZXJlZC4gVGhlIHByaW1hcnkgc2VyaWVzIGhhcyBiZWVuIGNvbXBsZXRlZApAcHNldWRvY29kZTogIkNvbXBsZXRlZCB0aGUgcHJpbWFyeSB2YWNjaW5hdGlvbiBzZXJpZXMiICh3aGVyZSAiVmFjY2luZSB0eXBlIiA9ICJNZW5pbmdvY29jY2FsIHZhY2NpbmVzIikgPSBUUlVFCiovCmRlZmluZSAiT25lIG1lbmluZ29jb2NjYWwgZG9zZSBmcm9tIHByaW1hcnkgc2VyaWVzIHdhcyBhZG1pbmlzdGVyZWQuIFRoZSBwcmltYXJ5IHNlcmllcyBoYXMgYmVlbiBjb21wbGV0ZWQiOgogIEVuY291bnRlci4iT25lIG1lbmluZ29jb2NjYWwgcHJpbWFyeSBzZXJpZXMgZG9zZSB3YXMgYWRtaW5pc3RlcmVkIgoKLyoKQHRlc3Q6IFRlc3QgZXhwZWN0ZWQgcmVzdWx0cyBiYXNlZCBvbiBleGFtcGxlIHBhdGllbnRzCiovCmRlZmluZSAiVGVzdCBWYWxpZGF0aW9uIjoKICBjYXNlCiAgICB3aGVuIFBhdGllbnQuaWQgPSAnNDUuMScgdGhlbiAiTWVuaW5nb2NvY2NhbCBkb3NlIDEiCiAgICB3aGVuIFBhdGllbnQuaWQgPSAnNDYuMDEnIHRoZW4gIk1lbmluZ29jb2NjYWwgZG9zZSAxIgogICAgd2hlbiBQYXRpZW50LmlkID0gJzQ3LjAnIHRoZW4gIk9uZSBtZW5pbmdvY29jY2FsIGRvc2UgZnJvbSBwcmltYXJ5IHNlcmllcyB3YXMgYWRtaW5pc3RlcmVkLiBUaGUgcHJpbWFyeSBzZXJpZXMgaGFzIGJlZW4gY29tcGxldGVkIgogICAgZWxzZSAnTm8gdGVzdCBjYXNlIHNldCcKICBlbmQK"
  }]
}

```
