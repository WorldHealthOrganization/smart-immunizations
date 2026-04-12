# IMMZD18STyphoidTCVLogic - WHO Immunization Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD18STyphoidTCVLogic**

## Library: IMMZD18STyphoidTCVLogic 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Library/IMMZD18STyphoidTCVLogic | *Version*:1.0.0 |
| Draft as of 2026-04-09 | *Computable Name*:IMMZD18STyphoidTCVLogic |

 
This library defines decision support logic for the IMMZ.D18.S.Typhoid.TCV schedule table in the Immunization CPG 

* * **Content: **text/cql: ````/* * Library: IMMZD18STyphoidTCVLogic (IMMZ.D18.S.Typhoid.TCV schedule) * Schedule Table: Typhoid conjugate vaccine (TCV), 1 dose schedule */ library IMMZD18STyphoidTCVLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTTyphoidEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: TCV dose 1 @description: Provision of the TCV dose 1 @trigger: Child's birth @pseudo: @triggerDate: "Date of birth" */ define "TCV dose 1": Encounter."No typhoid primary series doses were administered" and not "One typhoid dose from primary series was administered. The primary series has been completed" and "TCV dose 1 Expiration" after day of Today /* @output: TCV dose 1 Create @create: TCV dose 1 should be provided if the client's age is over 6 months, and the region recommends typhoid vaccination. */ define "TCV dose 1 Create": if "TCV dose 1" then 'TCV dose 1 should be provided if the client\'s age is over 6 months, and the region recommends typhoid vaccination.' + ' Due Date: ' + ToString("TCV dose 1 Due Date") + ' Expiration: ' + ToString("TCV dose 1 Expiration") else '' /* @dynamicValue: TCV dose 1 Due Date @pseudocode: "Date of birth" + 6 months */ define "TCV dose 1 Due Date": if "TCV dose 1" then Patient.birthDate + 6 months else null /* @dynamicValue: TCV dose 1 Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "TCV dose 1 Overdue": null /* @dynamicValue: TCV dose 1 Expiration @pseudocode: "Date of birth" + 45 years */ define "TCV dose 1 Expiration": Patient.birthDate + 45 years /* @complete: One typhoid dose from primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Typhoid vaccines") */ define "One typhoid dose from primary series was administered. The primary series has been completed": Encounter."One typhoid primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'Typhoid08.1' then "TCV dose 1" when Patient.id = 'Typhoid09.2' then "TCV dose 1" when Patient.id = 'Typhoid10.2' then not "TCV dose 1" when Patient.id = 'Typhoid11.1' then "One typhoid dose from primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Id: **
  * ?: IMMZD18STyphoidTCVLogic
* * **Content: **text/cql: ````/* * Library: IMMZD18STyphoidTCVLogic (IMMZ.D18.S.Typhoid.TCV schedule) * Schedule Table: Typhoid conjugate vaccine (TCV), 1 dose schedule */ library IMMZD18STyphoidTCVLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTTyphoidEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: TCV dose 1 @description: Provision of the TCV dose 1 @trigger: Child's birth @pseudo: @triggerDate: "Date of birth" */ define "TCV dose 1": Encounter."No typhoid primary series doses were administered" and not "One typhoid dose from primary series was administered. The primary series has been completed" and "TCV dose 1 Expiration" after day of Today /* @output: TCV dose 1 Create @create: TCV dose 1 should be provided if the client's age is over 6 months, and the region recommends typhoid vaccination. */ define "TCV dose 1 Create": if "TCV dose 1" then 'TCV dose 1 should be provided if the client\'s age is over 6 months, and the region recommends typhoid vaccination.' + ' Due Date: ' + ToString("TCV dose 1 Due Date") + ' Expiration: ' + ToString("TCV dose 1 Expiration") else '' /* @dynamicValue: TCV dose 1 Due Date @pseudocode: "Date of birth" + 6 months */ define "TCV dose 1 Due Date": if "TCV dose 1" then Patient.birthDate + 6 months else null /* @dynamicValue: TCV dose 1 Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "TCV dose 1 Overdue": null /* @dynamicValue: TCV dose 1 Expiration @pseudocode: "Date of birth" + 45 years */ define "TCV dose 1 Expiration": Patient.birthDate + 45 years /* @complete: One typhoid dose from primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Typhoid vaccines") */ define "One typhoid dose from primary series was administered. The primary series has been completed": Encounter."One typhoid primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'Typhoid08.1' then "TCV dose 1" when Patient.id = 'Typhoid09.2' then "TCV dose 1" when Patient.id = 'Typhoid10.2' then not "TCV dose 1" when Patient.id = 'Typhoid11.1' then "One typhoid dose from primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Version: **
  * ?: 1.0.0
* * **Content: **text/cql: ````/* * Library: IMMZD18STyphoidTCVLogic (IMMZ.D18.S.Typhoid.TCV schedule) * Schedule Table: Typhoid conjugate vaccine (TCV), 1 dose schedule */ library IMMZD18STyphoidTCVLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTTyphoidEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: TCV dose 1 @description: Provision of the TCV dose 1 @trigger: Child's birth @pseudo: @triggerDate: "Date of birth" */ define "TCV dose 1": Encounter."No typhoid primary series doses were administered" and not "One typhoid dose from primary series was administered. The primary series has been completed" and "TCV dose 1 Expiration" after day of Today /* @output: TCV dose 1 Create @create: TCV dose 1 should be provided if the client's age is over 6 months, and the region recommends typhoid vaccination. */ define "TCV dose 1 Create": if "TCV dose 1" then 'TCV dose 1 should be provided if the client\'s age is over 6 months, and the region recommends typhoid vaccination.' + ' Due Date: ' + ToString("TCV dose 1 Due Date") + ' Expiration: ' + ToString("TCV dose 1 Expiration") else '' /* @dynamicValue: TCV dose 1 Due Date @pseudocode: "Date of birth" + 6 months */ define "TCV dose 1 Due Date": if "TCV dose 1" then Patient.birthDate + 6 months else null /* @dynamicValue: TCV dose 1 Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "TCV dose 1 Overdue": null /* @dynamicValue: TCV dose 1 Expiration @pseudocode: "Date of birth" + 45 years */ define "TCV dose 1 Expiration": Patient.birthDate + 45 years /* @complete: One typhoid dose from primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Typhoid vaccines") */ define "One typhoid dose from primary series was administered. The primary series has been completed": Encounter."One typhoid primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'Typhoid08.1' then "TCV dose 1" when Patient.id = 'Typhoid09.2' then "TCV dose 1" when Patient.id = 'Typhoid10.2' then not "TCV dose 1" when Patient.id = 'Typhoid11.1' then "One typhoid dose from primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Url: **
  * ?: [IMMZD18STyphoidTCVLogic](Library-IMMZD18STyphoidTCVLogic.md)
* * **Content: **text/cql: ````/* * Library: IMMZD18STyphoidTCVLogic (IMMZ.D18.S.Typhoid.TCV schedule) * Schedule Table: Typhoid conjugate vaccine (TCV), 1 dose schedule */ library IMMZD18STyphoidTCVLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTTyphoidEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: TCV dose 1 @description: Provision of the TCV dose 1 @trigger: Child's birth @pseudo: @triggerDate: "Date of birth" */ define "TCV dose 1": Encounter."No typhoid primary series doses were administered" and not "One typhoid dose from primary series was administered. The primary series has been completed" and "TCV dose 1 Expiration" after day of Today /* @output: TCV dose 1 Create @create: TCV dose 1 should be provided if the client's age is over 6 months, and the region recommends typhoid vaccination. */ define "TCV dose 1 Create": if "TCV dose 1" then 'TCV dose 1 should be provided if the client\'s age is over 6 months, and the region recommends typhoid vaccination.' + ' Due Date: ' + ToString("TCV dose 1 Due Date") + ' Expiration: ' + ToString("TCV dose 1 Expiration") else '' /* @dynamicValue: TCV dose 1 Due Date @pseudocode: "Date of birth" + 6 months */ define "TCV dose 1 Due Date": if "TCV dose 1" then Patient.birthDate + 6 months else null /* @dynamicValue: TCV dose 1 Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "TCV dose 1 Overdue": null /* @dynamicValue: TCV dose 1 Expiration @pseudocode: "Date of birth" + 45 years */ define "TCV dose 1 Expiration": Patient.birthDate + 45 years /* @complete: One typhoid dose from primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Typhoid vaccines") */ define "One typhoid dose from primary series was administered. The primary series has been completed": Encounter."One typhoid primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'Typhoid08.1' then "TCV dose 1" when Patient.id = 'Typhoid09.2' then "TCV dose 1" when Patient.id = 'Typhoid10.2' then not "TCV dose 1" when Patient.id = 'Typhoid11.1' then "One typhoid dose from primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Status: **
  * ?: draft
* * **Content: **text/cql: ````/* * Library: IMMZD18STyphoidTCVLogic (IMMZ.D18.S.Typhoid.TCV schedule) * Schedule Table: Typhoid conjugate vaccine (TCV), 1 dose schedule */ library IMMZD18STyphoidTCVLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTTyphoidEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: TCV dose 1 @description: Provision of the TCV dose 1 @trigger: Child's birth @pseudo: @triggerDate: "Date of birth" */ define "TCV dose 1": Encounter."No typhoid primary series doses were administered" and not "One typhoid dose from primary series was administered. The primary series has been completed" and "TCV dose 1 Expiration" after day of Today /* @output: TCV dose 1 Create @create: TCV dose 1 should be provided if the client's age is over 6 months, and the region recommends typhoid vaccination. */ define "TCV dose 1 Create": if "TCV dose 1" then 'TCV dose 1 should be provided if the client\'s age is over 6 months, and the region recommends typhoid vaccination.' + ' Due Date: ' + ToString("TCV dose 1 Due Date") + ' Expiration: ' + ToString("TCV dose 1 Expiration") else '' /* @dynamicValue: TCV dose 1 Due Date @pseudocode: "Date of birth" + 6 months */ define "TCV dose 1 Due Date": if "TCV dose 1" then Patient.birthDate + 6 months else null /* @dynamicValue: TCV dose 1 Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "TCV dose 1 Overdue": null /* @dynamicValue: TCV dose 1 Expiration @pseudocode: "Date of birth" + 45 years */ define "TCV dose 1 Expiration": Patient.birthDate + 45 years /* @complete: One typhoid dose from primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Typhoid vaccines") */ define "One typhoid dose from primary series was administered. The primary series has been completed": Encounter."One typhoid primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'Typhoid08.1' then "TCV dose 1" when Patient.id = 'Typhoid09.2' then "TCV dose 1" when Patient.id = 'Typhoid10.2' then not "TCV dose 1" when Patient.id = 'Typhoid11.1' then "One typhoid dose from primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Date: **
  * ?: 2026-04-09 14:34:42+0000
* * **Content: **text/cql: ````/* * Library: IMMZD18STyphoidTCVLogic (IMMZ.D18.S.Typhoid.TCV schedule) * Schedule Table: Typhoid conjugate vaccine (TCV), 1 dose schedule */ library IMMZD18STyphoidTCVLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTTyphoidEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: TCV dose 1 @description: Provision of the TCV dose 1 @trigger: Child's birth @pseudo: @triggerDate: "Date of birth" */ define "TCV dose 1": Encounter."No typhoid primary series doses were administered" and not "One typhoid dose from primary series was administered. The primary series has been completed" and "TCV dose 1 Expiration" after day of Today /* @output: TCV dose 1 Create @create: TCV dose 1 should be provided if the client's age is over 6 months, and the region recommends typhoid vaccination. */ define "TCV dose 1 Create": if "TCV dose 1" then 'TCV dose 1 should be provided if the client\'s age is over 6 months, and the region recommends typhoid vaccination.' + ' Due Date: ' + ToString("TCV dose 1 Due Date") + ' Expiration: ' + ToString("TCV dose 1 Expiration") else '' /* @dynamicValue: TCV dose 1 Due Date @pseudocode: "Date of birth" + 6 months */ define "TCV dose 1 Due Date": if "TCV dose 1" then Patient.birthDate + 6 months else null /* @dynamicValue: TCV dose 1 Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "TCV dose 1 Overdue": null /* @dynamicValue: TCV dose 1 Expiration @pseudocode: "Date of birth" + 45 years */ define "TCV dose 1 Expiration": Patient.birthDate + 45 years /* @complete: One typhoid dose from primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Typhoid vaccines") */ define "One typhoid dose from primary series was administered. The primary series has been completed": Encounter."One typhoid primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'Typhoid08.1' then "TCV dose 1" when Patient.id = 'Typhoid09.2' then "TCV dose 1" when Patient.id = 'Typhoid10.2' then not "TCV dose 1" when Patient.id = 'Typhoid11.1' then "One typhoid dose from primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Publisher: **
  * ?: WHO
* * **Content: **text/cql: ````/* * Library: IMMZD18STyphoidTCVLogic (IMMZ.D18.S.Typhoid.TCV schedule) * Schedule Table: Typhoid conjugate vaccine (TCV), 1 dose schedule */ library IMMZD18STyphoidTCVLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTTyphoidEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: TCV dose 1 @description: Provision of the TCV dose 1 @trigger: Child's birth @pseudo: @triggerDate: "Date of birth" */ define "TCV dose 1": Encounter."No typhoid primary series doses were administered" and not "One typhoid dose from primary series was administered. The primary series has been completed" and "TCV dose 1 Expiration" after day of Today /* @output: TCV dose 1 Create @create: TCV dose 1 should be provided if the client's age is over 6 months, and the region recommends typhoid vaccination. */ define "TCV dose 1 Create": if "TCV dose 1" then 'TCV dose 1 should be provided if the client\'s age is over 6 months, and the region recommends typhoid vaccination.' + ' Due Date: ' + ToString("TCV dose 1 Due Date") + ' Expiration: ' + ToString("TCV dose 1 Expiration") else '' /* @dynamicValue: TCV dose 1 Due Date @pseudocode: "Date of birth" + 6 months */ define "TCV dose 1 Due Date": if "TCV dose 1" then Patient.birthDate + 6 months else null /* @dynamicValue: TCV dose 1 Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "TCV dose 1 Overdue": null /* @dynamicValue: TCV dose 1 Expiration @pseudocode: "Date of birth" + 45 years */ define "TCV dose 1 Expiration": Patient.birthDate + 45 years /* @complete: One typhoid dose from primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Typhoid vaccines") */ define "One typhoid dose from primary series was administered. The primary series has been completed": Encounter."One typhoid primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'Typhoid08.1' then "TCV dose 1" when Patient.id = 'Typhoid09.2' then "TCV dose 1" when Patient.id = 'Typhoid10.2' then not "TCV dose 1" when Patient.id = 'Typhoid11.1' then "One typhoid dose from primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Description: **
  * ?: This library defines decision support logic for the IMMZ.D18.S.Typhoid.TCV schedule table in the Immunization CPG



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "IMMZD18STyphoidTCVLogic",
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
  "url" : "http://smart.who.int/immunizations/Library/IMMZD18STyphoidTCVLogic",
  "version" : "1.0.0",
  "name" : "IMMZD18STyphoidTCVLogic",
  "title" : "IMMZD18STyphoidTCVLogic",
  "status" : "draft",
  "experimental" : false,
  "type" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/library-type",
      "code" : "logic-library"
    }]
  },
  "date" : "2026-04-09T14:34:42+00:00",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "This library defines decision support logic for the IMMZ.D18.S.Typhoid.TCV schedule table in the Immunization CPG",
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
    "resource" : "http://smart.who.int/immunizations/Library/IMMZD2DTTyphoidEncounterElements"
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
    "name" : "One typhoid dose from primary series was administered. The primary series has been completed",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "TCV dose 1 Expiration",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "date"
  },
  {
    "name" : "TCV dose 1",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "TCV dose 1 Due Date",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "date"
  },
  {
    "name" : "TCV dose 1 Create",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "string"
  },
  {
    "name" : "TCV dose 1 Overdue",
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
    "data" : "LyoKICogTGlicmFyeTogSU1NWkQxOFNUeXBob2lkVENWTG9naWMgKElNTVouRDE4LlMuVHlwaG9pZC5UQ1Ygc2NoZWR1bGUpCiAqIFNjaGVkdWxlIFRhYmxlOiBUeXBob2lkIGNvbmp1Z2F0ZSB2YWNjaW5lIChUQ1YpLCAxIGRvc2Ugc2NoZWR1bGUKICovCmxpYnJhcnkgSU1NWkQxOFNUeXBob2lkVENWTG9naWMKCnVzaW5nIEZISVIgdmVyc2lvbiAnNC4wLjEnCmluY2x1ZGUgRkhJUkhlbHBlcnMgdmVyc2lvbiAnNC4wLjEnCgppbmNsdWRlIFdIT0NvbW1vbiBjYWxsZWQgV0MKCmluY2x1ZGUgSU1NWkNvbW1vbiBjYWxsZWQgQ29tbW9uCmluY2x1ZGUgSU1NWkNvbmNlcHRzIGNhbGxlZCBDb25jZXB0cwoKaW5jbHVkZSBJTU1aRW5jb3VudGVyRWxlbWVudHMgY2FsbGVkIElFCmluY2x1ZGUgSU1NWkQyRFRUeXBob2lkRW5jb3VudGVyRWxlbWVudHMgY2FsbGVkIEVuY291bnRlcgoKcGFyYW1ldGVyIFRvZGF5IERhdGUgZGVmYXVsdCBUb2RheSgpCgoKY29udGV4dCBQYXRpZW50CgoKLyoKQG91dHB1dDogVENWIGRvc2UgMQpAZGVzY3JpcHRpb246IFByb3Zpc2lvbiBvZiB0aGUgVENWIGRvc2UgMQpAdHJpZ2dlcjogQ2hpbGQncyBiaXJ0aApAcHNldWRvOiAKQHRyaWdnZXJEYXRlOiAiRGF0ZSBvZiBiaXJ0aCIKKi8KZGVmaW5lICJUQ1YgZG9zZSAxIjoKICBFbmNvdW50ZXIuIk5vIHR5cGhvaWQgcHJpbWFyeSBzZXJpZXMgZG9zZXMgd2VyZSBhZG1pbmlzdGVyZWQiCiAgYW5kIG5vdCAiT25lIHR5cGhvaWQgZG9zZSBmcm9tIHByaW1hcnkgc2VyaWVzIHdhcyBhZG1pbmlzdGVyZWQuIFRoZSBwcmltYXJ5IHNlcmllcyBoYXMgYmVlbiBjb21wbGV0ZWQiCiAgYW5kICJUQ1YgZG9zZSAxIEV4cGlyYXRpb24iIGFmdGVyIGRheSBvZiBUb2RheQoKCi8qCkBvdXRwdXQ6IFRDViBkb3NlIDEgQ3JlYXRlCkBjcmVhdGU6IFRDViBkb3NlIDEgc2hvdWxkIGJlIHByb3ZpZGVkIGlmIHRoZSBjbGllbnQncyBhZ2UgaXMgb3ZlciA2IG1vbnRocywgYW5kIHRoZSByZWdpb24gcmVjb21tZW5kcyB0eXBob2lkIHZhY2NpbmF0aW9uLgoqLwpkZWZpbmUgIlRDViBkb3NlIDEgQ3JlYXRlIjoKICBpZiAiVENWIGRvc2UgMSIKICB0aGVuICdUQ1YgZG9zZSAxIHNob3VsZCBiZSBwcm92aWRlZCBpZiB0aGUgY2xpZW50XCdzIGFnZSBpcyBvdmVyIDYgbW9udGhzLCBhbmQgdGhlIHJlZ2lvbiByZWNvbW1lbmRzIHR5cGhvaWQgdmFjY2luYXRpb24uJyArICcKRHVlIERhdGU6ICcgKyBUb1N0cmluZygiVENWIGRvc2UgMSBEdWUgRGF0ZSIpICsgJwpFeHBpcmF0aW9uOiAnICsgVG9TdHJpbmcoIlRDViBkb3NlIDEgRXhwaXJhdGlvbiIpCiAgZWxzZSAnJwoKCi8qCkBkeW5hbWljVmFsdWU6IFRDViBkb3NlIDEgRHVlIERhdGUKQHBzZXVkb2NvZGU6ICJEYXRlIG9mIGJpcnRoIiArIDYgbW9udGhzCiovCmRlZmluZSAiVENWIGRvc2UgMSBEdWUgRGF0ZSI6CiAgaWYgIlRDViBkb3NlIDEiIHRoZW4gUGF0aWVudC5iaXJ0aERhdGUgKyA2IG1vbnRocwogIGVsc2UgbnVsbAoKCi8qCkBkeW5hbWljVmFsdWU6IFRDViBkb3NlIDEgT3ZlcmR1ZQpAcHNldWRvY29kZTogVG8gYmUgZGV0ZXJtaW5lZCBieSBNZW1iZXIgU3RhdGVzOyBob3dldmVyLCB0aGVyZSBpcyBubyByZWNvbW1lbmRlZCBvdmVyZHVlIGRhdGUgYW5kIGluZGl2aWR1YWxzIGFyZSBhbHdheXMgZWxpZ2libGUgdG8gYmUgdmFjY2luYXRlZC4KKi8KZGVmaW5lICJUQ1YgZG9zZSAxIE92ZXJkdWUiOgogIG51bGwKCgovKgpAZHluYW1pY1ZhbHVlOiBUQ1YgZG9zZSAxIEV4cGlyYXRpb24KQHBzZXVkb2NvZGU6ICJEYXRlIG9mIGJpcnRoIiArIDQ1IHllYXJzCiovCmRlZmluZSAiVENWIGRvc2UgMSBFeHBpcmF0aW9uIjoKICBQYXRpZW50LmJpcnRoRGF0ZSArIDQ1IHllYXJzCgogIAovKgpAY29tcGxldGU6IE9uZSB0eXBob2lkIGRvc2UgZnJvbSBwcmltYXJ5IHNlcmllcyB3YXMgYWRtaW5pc3RlcmVkLiBUaGUgcHJpbWFyeSBzZXJpZXMgaGFzIGJlZW4gY29tcGxldGVkCkBwc2V1ZG9jb2RlOiAiQ29tcGxldGVkIHRoZSBwcmltYXJ5IHZhY2NpbmF0aW9uIHNlcmllcyIgPSBUUlVFICh3aGVyZSAiVmFjY2luZSB0eXBlIiA9ICJUeXBob2lkIHZhY2NpbmVzIikKKi8KZGVmaW5lICJPbmUgdHlwaG9pZCBkb3NlIGZyb20gcHJpbWFyeSBzZXJpZXMgd2FzIGFkbWluaXN0ZXJlZC4gVGhlIHByaW1hcnkgc2VyaWVzIGhhcyBiZWVuIGNvbXBsZXRlZCI6CiAgRW5jb3VudGVyLiJPbmUgdHlwaG9pZCBwcmltYXJ5IHNlcmllcyBkb3NlIHdhcyBhZG1pbmlzdGVyZWQiCgoKCi8qCkB0ZXN0OiBUZXN0IGV4cGVjdGVkIHJlc3VsdHMgYmFzZWQgb24gZXhhbXBsZSBwYXRpZW50cwoqLwpkZWZpbmUgIlRlc3QgVmFsaWRhdGlvbiI6CiAgY2FzZQogICAgd2hlbiBQYXRpZW50LmlkID0gJ1R5cGhvaWQwOC4xJyB0aGVuICJUQ1YgZG9zZSAxIgogICAgd2hlbiBQYXRpZW50LmlkID0gJ1R5cGhvaWQwOS4yJyB0aGVuICJUQ1YgZG9zZSAxIgogICAgd2hlbiBQYXRpZW50LmlkID0gJ1R5cGhvaWQxMC4yJyB0aGVuIG5vdCAiVENWIGRvc2UgMSIKICAgIHdoZW4gUGF0aWVudC5pZCA9ICdUeXBob2lkMTEuMScgdGhlbiAiT25lIHR5cGhvaWQgZG9zZSBmcm9tIHByaW1hcnkgc2VyaWVzIHdhcyBhZG1pbmlzdGVyZWQuIFRoZSBwcmltYXJ5IHNlcmllcyBoYXMgYmVlbiBjb21wbGV0ZWQiCiAgICBlbHNlICdObyB0ZXN0IGNhc2Ugc2V0JwogIGVuZAo="
  }]
}

```
