# IMMZD18SYellowfeverYellowFeverLogic - WHO Immunization Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD18SYellowfeverYellowFeverLogic**

## Library: IMMZD18SYellowfeverYellowFeverLogic 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Library/IMMZD18SYellowfeverYellowFeverLogic | *Version*:1.0.0 |
| Draft as of 2026-04-09 | *Computable Name*:IMMZD18SYellowfeverYellowFeverLogic |

 
This library defines decision support logic for the IMMZ.D18.S.Yellow fever schedule table in the Immunization CPG 

* * **Content: **text/cql: ````/* * Library: IMMZD18SYellowfeverYellowFeverLogic (IMMZ.D18.S.Yellow fever schedule) * Schedule Table: IMMZ.D18.S.Yellow fever schedule */ library IMMZD18SYellowfeverYellowFeverLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTYellowfeverEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Yellow fever dose 1 @description: Provision of yellow fever dose 1 @trigger: Child's birth @pseudo: @triggerDate: "Date of birth" */ define "Yellow fever dose 1": Encounter."No yellow fever primary series doses were administered" and not "One yellow fever dose from primary series was administered. The primary series has been completed" /* @output: Yellow fever dose 1 Create @create: The client is due for yellow fever dose 1 if the client's age is at least 9 months and living in a yellow fever endemic area. */ define "Yellow fever dose 1 Create": if "Yellow fever dose 1" then 'The client is due for yellow fever dose 1 if the client\'s age is at least 9 months and living in a yellow fever endemic area.' + ' Due Date: ' + ToString("Yellow fever dose 1 Due Date") + ' Overdue: ' + ToString("Yellow fever dose 1 Overdue") else '' /* @dynamicValue: Yellow fever dose 1 Due Date @pseudocode: "Date of birth" + 9 months */ define "Yellow fever dose 1 Due Date": if "Yellow fever dose 1" then Patient.birthDate + 9 months else null /* @dynamicValue: Yellow fever dose 1 Overdue @pseudocode: "Date of birth" + 12 months */ define "Yellow fever dose 1 Overdue": if "Yellow fever dose 1" then Patient.birthDate + 12 months else null /* @dynamicValue: Yellow fever dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date. */ define "Yellow fever dose 1 Expiration": null /* @complete: One yellow fever dose from primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Yellow fever vaccines") */ define "One yellow fever dose from primary series was administered. The primary series has been completed": Encounter."One yellow fever primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'Yellowfever07.2' then "Yellow fever dose 1" when Patient.id = 'Yellowfever08.3' then "Yellow fever dose 1" when Patient.id = 'Yellowfever09.3' then "Yellow fever dose 1" when Patient.id = 'Yellowfever10.1' then "One yellow fever dose from primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Id: **
  * ?: IMMZD18SYellowfeverYellowFeverLogic
* * **Content: **text/cql: ````/* * Library: IMMZD18SYellowfeverYellowFeverLogic (IMMZ.D18.S.Yellow fever schedule) * Schedule Table: IMMZ.D18.S.Yellow fever schedule */ library IMMZD18SYellowfeverYellowFeverLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTYellowfeverEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Yellow fever dose 1 @description: Provision of yellow fever dose 1 @trigger: Child's birth @pseudo: @triggerDate: "Date of birth" */ define "Yellow fever dose 1": Encounter."No yellow fever primary series doses were administered" and not "One yellow fever dose from primary series was administered. The primary series has been completed" /* @output: Yellow fever dose 1 Create @create: The client is due for yellow fever dose 1 if the client's age is at least 9 months and living in a yellow fever endemic area. */ define "Yellow fever dose 1 Create": if "Yellow fever dose 1" then 'The client is due for yellow fever dose 1 if the client\'s age is at least 9 months and living in a yellow fever endemic area.' + ' Due Date: ' + ToString("Yellow fever dose 1 Due Date") + ' Overdue: ' + ToString("Yellow fever dose 1 Overdue") else '' /* @dynamicValue: Yellow fever dose 1 Due Date @pseudocode: "Date of birth" + 9 months */ define "Yellow fever dose 1 Due Date": if "Yellow fever dose 1" then Patient.birthDate + 9 months else null /* @dynamicValue: Yellow fever dose 1 Overdue @pseudocode: "Date of birth" + 12 months */ define "Yellow fever dose 1 Overdue": if "Yellow fever dose 1" then Patient.birthDate + 12 months else null /* @dynamicValue: Yellow fever dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date. */ define "Yellow fever dose 1 Expiration": null /* @complete: One yellow fever dose from primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Yellow fever vaccines") */ define "One yellow fever dose from primary series was administered. The primary series has been completed": Encounter."One yellow fever primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'Yellowfever07.2' then "Yellow fever dose 1" when Patient.id = 'Yellowfever08.3' then "Yellow fever dose 1" when Patient.id = 'Yellowfever09.3' then "Yellow fever dose 1" when Patient.id = 'Yellowfever10.1' then "One yellow fever dose from primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Version: **
  * ?: 1.0.0
* * **Content: **text/cql: ````/* * Library: IMMZD18SYellowfeverYellowFeverLogic (IMMZ.D18.S.Yellow fever schedule) * Schedule Table: IMMZ.D18.S.Yellow fever schedule */ library IMMZD18SYellowfeverYellowFeverLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTYellowfeverEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Yellow fever dose 1 @description: Provision of yellow fever dose 1 @trigger: Child's birth @pseudo: @triggerDate: "Date of birth" */ define "Yellow fever dose 1": Encounter."No yellow fever primary series doses were administered" and not "One yellow fever dose from primary series was administered. The primary series has been completed" /* @output: Yellow fever dose 1 Create @create: The client is due for yellow fever dose 1 if the client's age is at least 9 months and living in a yellow fever endemic area. */ define "Yellow fever dose 1 Create": if "Yellow fever dose 1" then 'The client is due for yellow fever dose 1 if the client\'s age is at least 9 months and living in a yellow fever endemic area.' + ' Due Date: ' + ToString("Yellow fever dose 1 Due Date") + ' Overdue: ' + ToString("Yellow fever dose 1 Overdue") else '' /* @dynamicValue: Yellow fever dose 1 Due Date @pseudocode: "Date of birth" + 9 months */ define "Yellow fever dose 1 Due Date": if "Yellow fever dose 1" then Patient.birthDate + 9 months else null /* @dynamicValue: Yellow fever dose 1 Overdue @pseudocode: "Date of birth" + 12 months */ define "Yellow fever dose 1 Overdue": if "Yellow fever dose 1" then Patient.birthDate + 12 months else null /* @dynamicValue: Yellow fever dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date. */ define "Yellow fever dose 1 Expiration": null /* @complete: One yellow fever dose from primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Yellow fever vaccines") */ define "One yellow fever dose from primary series was administered. The primary series has been completed": Encounter."One yellow fever primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'Yellowfever07.2' then "Yellow fever dose 1" when Patient.id = 'Yellowfever08.3' then "Yellow fever dose 1" when Patient.id = 'Yellowfever09.3' then "Yellow fever dose 1" when Patient.id = 'Yellowfever10.1' then "One yellow fever dose from primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Url: **
  * ?: [IMMZD18SYellowfeverYellowFeverLogic](Library-IMMZD18SYellowfeverYellowFeverLogic.md)
* * **Content: **text/cql: ````/* * Library: IMMZD18SYellowfeverYellowFeverLogic (IMMZ.D18.S.Yellow fever schedule) * Schedule Table: IMMZ.D18.S.Yellow fever schedule */ library IMMZD18SYellowfeverYellowFeverLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTYellowfeverEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Yellow fever dose 1 @description: Provision of yellow fever dose 1 @trigger: Child's birth @pseudo: @triggerDate: "Date of birth" */ define "Yellow fever dose 1": Encounter."No yellow fever primary series doses were administered" and not "One yellow fever dose from primary series was administered. The primary series has been completed" /* @output: Yellow fever dose 1 Create @create: The client is due for yellow fever dose 1 if the client's age is at least 9 months and living in a yellow fever endemic area. */ define "Yellow fever dose 1 Create": if "Yellow fever dose 1" then 'The client is due for yellow fever dose 1 if the client\'s age is at least 9 months and living in a yellow fever endemic area.' + ' Due Date: ' + ToString("Yellow fever dose 1 Due Date") + ' Overdue: ' + ToString("Yellow fever dose 1 Overdue") else '' /* @dynamicValue: Yellow fever dose 1 Due Date @pseudocode: "Date of birth" + 9 months */ define "Yellow fever dose 1 Due Date": if "Yellow fever dose 1" then Patient.birthDate + 9 months else null /* @dynamicValue: Yellow fever dose 1 Overdue @pseudocode: "Date of birth" + 12 months */ define "Yellow fever dose 1 Overdue": if "Yellow fever dose 1" then Patient.birthDate + 12 months else null /* @dynamicValue: Yellow fever dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date. */ define "Yellow fever dose 1 Expiration": null /* @complete: One yellow fever dose from primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Yellow fever vaccines") */ define "One yellow fever dose from primary series was administered. The primary series has been completed": Encounter."One yellow fever primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'Yellowfever07.2' then "Yellow fever dose 1" when Patient.id = 'Yellowfever08.3' then "Yellow fever dose 1" when Patient.id = 'Yellowfever09.3' then "Yellow fever dose 1" when Patient.id = 'Yellowfever10.1' then "One yellow fever dose from primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Status: **
  * ?: draft
* * **Content: **text/cql: ````/* * Library: IMMZD18SYellowfeverYellowFeverLogic (IMMZ.D18.S.Yellow fever schedule) * Schedule Table: IMMZ.D18.S.Yellow fever schedule */ library IMMZD18SYellowfeverYellowFeverLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTYellowfeverEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Yellow fever dose 1 @description: Provision of yellow fever dose 1 @trigger: Child's birth @pseudo: @triggerDate: "Date of birth" */ define "Yellow fever dose 1": Encounter."No yellow fever primary series doses were administered" and not "One yellow fever dose from primary series was administered. The primary series has been completed" /* @output: Yellow fever dose 1 Create @create: The client is due for yellow fever dose 1 if the client's age is at least 9 months and living in a yellow fever endemic area. */ define "Yellow fever dose 1 Create": if "Yellow fever dose 1" then 'The client is due for yellow fever dose 1 if the client\'s age is at least 9 months and living in a yellow fever endemic area.' + ' Due Date: ' + ToString("Yellow fever dose 1 Due Date") + ' Overdue: ' + ToString("Yellow fever dose 1 Overdue") else '' /* @dynamicValue: Yellow fever dose 1 Due Date @pseudocode: "Date of birth" + 9 months */ define "Yellow fever dose 1 Due Date": if "Yellow fever dose 1" then Patient.birthDate + 9 months else null /* @dynamicValue: Yellow fever dose 1 Overdue @pseudocode: "Date of birth" + 12 months */ define "Yellow fever dose 1 Overdue": if "Yellow fever dose 1" then Patient.birthDate + 12 months else null /* @dynamicValue: Yellow fever dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date. */ define "Yellow fever dose 1 Expiration": null /* @complete: One yellow fever dose from primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Yellow fever vaccines") */ define "One yellow fever dose from primary series was administered. The primary series has been completed": Encounter."One yellow fever primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'Yellowfever07.2' then "Yellow fever dose 1" when Patient.id = 'Yellowfever08.3' then "Yellow fever dose 1" when Patient.id = 'Yellowfever09.3' then "Yellow fever dose 1" when Patient.id = 'Yellowfever10.1' then "One yellow fever dose from primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Date: **
  * ?: 2026-04-09 14:18:30+0000
* * **Content: **text/cql: ````/* * Library: IMMZD18SYellowfeverYellowFeverLogic (IMMZ.D18.S.Yellow fever schedule) * Schedule Table: IMMZ.D18.S.Yellow fever schedule */ library IMMZD18SYellowfeverYellowFeverLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTYellowfeverEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Yellow fever dose 1 @description: Provision of yellow fever dose 1 @trigger: Child's birth @pseudo: @triggerDate: "Date of birth" */ define "Yellow fever dose 1": Encounter."No yellow fever primary series doses were administered" and not "One yellow fever dose from primary series was administered. The primary series has been completed" /* @output: Yellow fever dose 1 Create @create: The client is due for yellow fever dose 1 if the client's age is at least 9 months and living in a yellow fever endemic area. */ define "Yellow fever dose 1 Create": if "Yellow fever dose 1" then 'The client is due for yellow fever dose 1 if the client\'s age is at least 9 months and living in a yellow fever endemic area.' + ' Due Date: ' + ToString("Yellow fever dose 1 Due Date") + ' Overdue: ' + ToString("Yellow fever dose 1 Overdue") else '' /* @dynamicValue: Yellow fever dose 1 Due Date @pseudocode: "Date of birth" + 9 months */ define "Yellow fever dose 1 Due Date": if "Yellow fever dose 1" then Patient.birthDate + 9 months else null /* @dynamicValue: Yellow fever dose 1 Overdue @pseudocode: "Date of birth" + 12 months */ define "Yellow fever dose 1 Overdue": if "Yellow fever dose 1" then Patient.birthDate + 12 months else null /* @dynamicValue: Yellow fever dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date. */ define "Yellow fever dose 1 Expiration": null /* @complete: One yellow fever dose from primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Yellow fever vaccines") */ define "One yellow fever dose from primary series was administered. The primary series has been completed": Encounter."One yellow fever primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'Yellowfever07.2' then "Yellow fever dose 1" when Patient.id = 'Yellowfever08.3' then "Yellow fever dose 1" when Patient.id = 'Yellowfever09.3' then "Yellow fever dose 1" when Patient.id = 'Yellowfever10.1' then "One yellow fever dose from primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Publisher: **
  * ?: WHO
* * **Content: **text/cql: ````/* * Library: IMMZD18SYellowfeverYellowFeverLogic (IMMZ.D18.S.Yellow fever schedule) * Schedule Table: IMMZ.D18.S.Yellow fever schedule */ library IMMZD18SYellowfeverYellowFeverLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTYellowfeverEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Yellow fever dose 1 @description: Provision of yellow fever dose 1 @trigger: Child's birth @pseudo: @triggerDate: "Date of birth" */ define "Yellow fever dose 1": Encounter."No yellow fever primary series doses were administered" and not "One yellow fever dose from primary series was administered. The primary series has been completed" /* @output: Yellow fever dose 1 Create @create: The client is due for yellow fever dose 1 if the client's age is at least 9 months and living in a yellow fever endemic area. */ define "Yellow fever dose 1 Create": if "Yellow fever dose 1" then 'The client is due for yellow fever dose 1 if the client\'s age is at least 9 months and living in a yellow fever endemic area.' + ' Due Date: ' + ToString("Yellow fever dose 1 Due Date") + ' Overdue: ' + ToString("Yellow fever dose 1 Overdue") else '' /* @dynamicValue: Yellow fever dose 1 Due Date @pseudocode: "Date of birth" + 9 months */ define "Yellow fever dose 1 Due Date": if "Yellow fever dose 1" then Patient.birthDate + 9 months else null /* @dynamicValue: Yellow fever dose 1 Overdue @pseudocode: "Date of birth" + 12 months */ define "Yellow fever dose 1 Overdue": if "Yellow fever dose 1" then Patient.birthDate + 12 months else null /* @dynamicValue: Yellow fever dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date. */ define "Yellow fever dose 1 Expiration": null /* @complete: One yellow fever dose from primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Yellow fever vaccines") */ define "One yellow fever dose from primary series was administered. The primary series has been completed": Encounter."One yellow fever primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'Yellowfever07.2' then "Yellow fever dose 1" when Patient.id = 'Yellowfever08.3' then "Yellow fever dose 1" when Patient.id = 'Yellowfever09.3' then "Yellow fever dose 1" when Patient.id = 'Yellowfever10.1' then "One yellow fever dose from primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Description: **
  * ?: This library defines decision support logic for the IMMZ.D18.S.Yellow fever schedule table in the Immunization CPG



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "IMMZD18SYellowfeverYellowFeverLogic",
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
  "url" : "http://smart.who.int/immunizations/Library/IMMZD18SYellowfeverYellowFeverLogic",
  "version" : "1.0.0",
  "name" : "IMMZD18SYellowfeverYellowFeverLogic",
  "title" : "IMMZD18SYellowfeverYellowFeverLogic",
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
  "description" : "This library defines decision support logic for the IMMZ.D18.S.Yellow fever schedule table in the Immunization CPG",
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
    "resource" : "http://smart.who.int/immunizations/Library/IMMZD2DTYellowfeverEncounterElements"
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
    "name" : "One yellow fever dose from primary series was administered. The primary series has been completed",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "Yellow fever dose 1",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "Yellow fever dose 1 Due Date",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "date"
  },
  {
    "name" : "Yellow fever dose 1 Overdue",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "date"
  },
  {
    "name" : "Yellow fever dose 1 Create",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "string"
  },
  {
    "name" : "Yellow fever dose 1 Expiration",
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
    "data" : "LyoKICogTGlicmFyeTogSU1NWkQxOFNZZWxsb3dmZXZlclllbGxvd0ZldmVyTG9naWMgKElNTVouRDE4LlMuWWVsbG93IGZldmVyIHNjaGVkdWxlKQogKiBTY2hlZHVsZSBUYWJsZTogSU1NWi5EMTguUy5ZZWxsb3cgZmV2ZXIgc2NoZWR1bGUKICovCmxpYnJhcnkgSU1NWkQxOFNZZWxsb3dmZXZlclllbGxvd0ZldmVyTG9naWMKCnVzaW5nIEZISVIgdmVyc2lvbiAnNC4wLjEnCmluY2x1ZGUgRkhJUkhlbHBlcnMgdmVyc2lvbiAnNC4wLjEnCgppbmNsdWRlIFdIT0NvbW1vbiBjYWxsZWQgV0MKCmluY2x1ZGUgSU1NWkNvbW1vbiBjYWxsZWQgQ29tbW9uCmluY2x1ZGUgSU1NWkNvbmNlcHRzIGNhbGxlZCBDb25jZXB0cwoKaW5jbHVkZSBJTU1aRW5jb3VudGVyRWxlbWVudHMgY2FsbGVkIElFCmluY2x1ZGUgSU1NWkQyRFRZZWxsb3dmZXZlckVuY291bnRlckVsZW1lbnRzIGNhbGxlZCBFbmNvdW50ZXIKCnBhcmFtZXRlciBUb2RheSBEYXRlIGRlZmF1bHQgVG9kYXkoKQoKCmNvbnRleHQgUGF0aWVudAoKCi8qCkBvdXRwdXQ6IFllbGxvdyBmZXZlciBkb3NlIDEKQGRlc2NyaXB0aW9uOiBQcm92aXNpb24gb2YgeWVsbG93IGZldmVyIGRvc2UgMQpAdHJpZ2dlcjogQ2hpbGQncyBiaXJ0aApAcHNldWRvOiAKQHRyaWdnZXJEYXRlOiAiRGF0ZSBvZiBiaXJ0aCIKKi8KZGVmaW5lICJZZWxsb3cgZmV2ZXIgZG9zZSAxIjoKICBFbmNvdW50ZXIuIk5vIHllbGxvdyBmZXZlciBwcmltYXJ5IHNlcmllcyBkb3NlcyB3ZXJlIGFkbWluaXN0ZXJlZCIKICBhbmQgbm90ICJPbmUgeWVsbG93IGZldmVyIGRvc2UgZnJvbSBwcmltYXJ5IHNlcmllcyB3YXMgYWRtaW5pc3RlcmVkLiBUaGUgcHJpbWFyeSBzZXJpZXMgaGFzIGJlZW4gY29tcGxldGVkIgoKCi8qCkBvdXRwdXQ6IFllbGxvdyBmZXZlciBkb3NlIDEgQ3JlYXRlCkBjcmVhdGU6IFRoZSBjbGllbnQgaXMgZHVlIGZvciB5ZWxsb3cgZmV2ZXIgZG9zZSAxIGlmIHRoZSBjbGllbnQncyBhZ2UgaXMgYXQgbGVhc3QgOSBtb250aHMgYW5kIGxpdmluZyBpbiBhIHllbGxvdyBmZXZlciBlbmRlbWljIGFyZWEuCiovCmRlZmluZSAiWWVsbG93IGZldmVyIGRvc2UgMSBDcmVhdGUiOgogIGlmICJZZWxsb3cgZmV2ZXIgZG9zZSAxIgogIHRoZW4gJ1RoZSBjbGllbnQgaXMgZHVlIGZvciB5ZWxsb3cgZmV2ZXIgZG9zZSAxIGlmIHRoZSBjbGllbnRcJ3MgYWdlIGlzIGF0IGxlYXN0IDkgbW9udGhzIGFuZCBsaXZpbmcgaW4gYSB5ZWxsb3cgZmV2ZXIgZW5kZW1pYyBhcmVhLicgKyAnCkR1ZSBEYXRlOiAnICsgVG9TdHJpbmcoIlllbGxvdyBmZXZlciBkb3NlIDEgRHVlIERhdGUiKSArICcKT3ZlcmR1ZTogJyArIFRvU3RyaW5nKCJZZWxsb3cgZmV2ZXIgZG9zZSAxIE92ZXJkdWUiKQogIGVsc2UgJycKCgovKgpAZHluYW1pY1ZhbHVlOiBZZWxsb3cgZmV2ZXIgZG9zZSAxIER1ZSBEYXRlCkBwc2V1ZG9jb2RlOiAiRGF0ZSBvZiBiaXJ0aCIgKyA5IG1vbnRocwoqLwpkZWZpbmUgIlllbGxvdyBmZXZlciBkb3NlIDEgRHVlIERhdGUiOgogIGlmICJZZWxsb3cgZmV2ZXIgZG9zZSAxIiB0aGVuIFBhdGllbnQuYmlydGhEYXRlICsgOSBtb250aHMKICBlbHNlIG51bGwKCgovKgpAZHluYW1pY1ZhbHVlOiBZZWxsb3cgZmV2ZXIgZG9zZSAxIE92ZXJkdWUKQHBzZXVkb2NvZGU6ICJEYXRlIG9mIGJpcnRoIiArIDEyIG1vbnRocwoqLwpkZWZpbmUgIlllbGxvdyBmZXZlciBkb3NlIDEgT3ZlcmR1ZSI6CiAgaWYgIlllbGxvdyBmZXZlciBkb3NlIDEiIHRoZW4gUGF0aWVudC5iaXJ0aERhdGUgKyAxMiBtb250aHMKICBlbHNlIG51bGwKCgovKgpAZHluYW1pY1ZhbHVlOiBZZWxsb3cgZmV2ZXIgZG9zZSAxIEV4cGlyYXRpb24KQHBzZXVkb2NvZGU6IFRvIGJlIGRldGVybWluZWQgYnkgTWVtYmVyIFN0YXRlczsgaG93ZXZlciwgdGhlcmUgaXMgbm8gcmVjb21tZW5kZWQgZXhwaXJhdGlvbiBkYXRlLgoqLwpkZWZpbmUgIlllbGxvdyBmZXZlciBkb3NlIDEgRXhwaXJhdGlvbiI6CiAgbnVsbAoKICAKLyoKQGNvbXBsZXRlOiBPbmUgeWVsbG93IGZldmVyIGRvc2UgZnJvbSBwcmltYXJ5IHNlcmllcyB3YXMgYWRtaW5pc3RlcmVkLiBUaGUgcHJpbWFyeSBzZXJpZXMgaGFzIGJlZW4gY29tcGxldGVkCkBwc2V1ZG9jb2RlOiAiQ29tcGxldGVkIHRoZSBwcmltYXJ5IHZhY2NpbmF0aW9uIHNlcmllcyIgPSBUUlVFICh3aGVyZSAiVmFjY2luZSB0eXBlIiA9ICJZZWxsb3cgZmV2ZXIgdmFjY2luZXMiKQoqLwpkZWZpbmUgIk9uZSB5ZWxsb3cgZmV2ZXIgZG9zZSBmcm9tIHByaW1hcnkgc2VyaWVzIHdhcyBhZG1pbmlzdGVyZWQuIFRoZSBwcmltYXJ5IHNlcmllcyBoYXMgYmVlbiBjb21wbGV0ZWQiOgogIEVuY291bnRlci4iT25lIHllbGxvdyBmZXZlciBwcmltYXJ5IHNlcmllcyBkb3NlIHdhcyBhZG1pbmlzdGVyZWQiCgoKCi8qCkB0ZXN0OiBUZXN0IGV4cGVjdGVkIHJlc3VsdHMgYmFzZWQgb24gZXhhbXBsZSBwYXRpZW50cwoqLwpkZWZpbmUgIlRlc3QgVmFsaWRhdGlvbiI6CiAgY2FzZQogICAgd2hlbiBQYXRpZW50LmlkID0gJ1llbGxvd2ZldmVyMDcuMicgdGhlbiAiWWVsbG93IGZldmVyIGRvc2UgMSIKICAgIHdoZW4gUGF0aWVudC5pZCA9ICdZZWxsb3dmZXZlcjA4LjMnIHRoZW4gIlllbGxvdyBmZXZlciBkb3NlIDEiCiAgICB3aGVuIFBhdGllbnQuaWQgPSAnWWVsbG93ZmV2ZXIwOS4zJyB0aGVuICJZZWxsb3cgZmV2ZXIgZG9zZSAxIgogICAgd2hlbiBQYXRpZW50LmlkID0gJ1llbGxvd2ZldmVyMTAuMScgdGhlbiAiT25lIHllbGxvdyBmZXZlciBkb3NlIGZyb20gcHJpbWFyeSBzZXJpZXMgd2FzIGFkbWluaXN0ZXJlZC4gVGhlIHByaW1hcnkgc2VyaWVzIGhhcyBiZWVuIGNvbXBsZXRlZCIKICAgIGVsc2UgJ05vIHRlc3QgY2FzZSBzZXQnCiAgZW5kCg=="
  }]
}

```
