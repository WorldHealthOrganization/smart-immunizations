# IMMZD18SYellowfeverLogic - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD18SYellowfeverLogic**

## Library: IMMZD18SYellowfeverLogic (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Library/IMMZD18SYellowfeverLogic | *Version*:0.2.0 |
| Draft as of 2026-03-31 | *Computable Name*:IMMZD18SYellowfeverLogic |

 
This library defines decision support logic for the IMMZ.D18.S.Yellow fever schedule table in the Immunization CPG 

* * **Content: **text/cql: ```` /* * Library: IMMZD18SYellowfeverLogic (IMMZ.D18.S.Yellow fever schedule) * Schedule Table: IMMZ.D18.S.Yellow fever schedule */ library IMMZD18SYellowfeverLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTYellowfeverEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Yellow fever dose 1 @description: Provision of yellow fever dose 1 @trigger: Child's birth @triggerDate: "Date of birth" */ define "Yellow fever dose 1": Encounter."No yellow fever primary series doses were administered" and not "One yellow fever dose from primary series was administered. The primary series has been completed" /* @output: Yellow fever dose 1 Create @create: The client is due for yellow fever dose 1 if the client's age is at least 9 months and living in a yellow fever endemic area. */ define "Yellow fever dose 1 Create": if "Yellow fever dose 1" then 'The client is due for yellow fever dose 1 if the client\'s age is at least 9 months and living in a yellow fever endemic area.' + ' Due Date: ' + ToString("Yellow fever dose 1 Due Date") + ' Overdue: ' + ToString("Yellow fever dose 1 Overdue") else '' /* @dynamicValue: Yellow fever dose 1 Due Date @pseudocode: "Date of birth" + 9 months */ define "Yellow fever dose 1 Due Date": if "Yellow fever dose 1" then Patient.birthDate + 9 months else null /* @dynamicValue: Yellow fever dose 1 Overdue @pseudocode: "Date of birth" + 12 months */ define "Yellow fever dose 1 Overdue": if "Yellow fever dose 1" then Patient.birthDate + 12 months else null /* @dynamicValue: Yellow fever dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date. */ define "Yellow fever dose 1 Expiration": null /* @complete: One yellow fever dose from primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Yellow fever vaccines") */ define "One yellow fever dose from primary series was administered. The primary series has been completed": Encounter."One yellow fever primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = '07.01' then "Yellow fever dose 1" when Patient.id = '08.012' then "Yellow fever dose 1" when Patient.id = '09.012' then "Yellow fever dose 1" when Patient.id = '10.0' then "One yellow fever dose from primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Id: **
  * ?: IMMZD18SYellowfeverLogic
* * **Content: **text/cql: ```` /* * Library: IMMZD18SYellowfeverLogic (IMMZ.D18.S.Yellow fever schedule) * Schedule Table: IMMZ.D18.S.Yellow fever schedule */ library IMMZD18SYellowfeverLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTYellowfeverEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Yellow fever dose 1 @description: Provision of yellow fever dose 1 @trigger: Child's birth @triggerDate: "Date of birth" */ define "Yellow fever dose 1": Encounter."No yellow fever primary series doses were administered" and not "One yellow fever dose from primary series was administered. The primary series has been completed" /* @output: Yellow fever dose 1 Create @create: The client is due for yellow fever dose 1 if the client's age is at least 9 months and living in a yellow fever endemic area. */ define "Yellow fever dose 1 Create": if "Yellow fever dose 1" then 'The client is due for yellow fever dose 1 if the client\'s age is at least 9 months and living in a yellow fever endemic area.' + ' Due Date: ' + ToString("Yellow fever dose 1 Due Date") + ' Overdue: ' + ToString("Yellow fever dose 1 Overdue") else '' /* @dynamicValue: Yellow fever dose 1 Due Date @pseudocode: "Date of birth" + 9 months */ define "Yellow fever dose 1 Due Date": if "Yellow fever dose 1" then Patient.birthDate + 9 months else null /* @dynamicValue: Yellow fever dose 1 Overdue @pseudocode: "Date of birth" + 12 months */ define "Yellow fever dose 1 Overdue": if "Yellow fever dose 1" then Patient.birthDate + 12 months else null /* @dynamicValue: Yellow fever dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date. */ define "Yellow fever dose 1 Expiration": null /* @complete: One yellow fever dose from primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Yellow fever vaccines") */ define "One yellow fever dose from primary series was administered. The primary series has been completed": Encounter."One yellow fever primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = '07.01' then "Yellow fever dose 1" when Patient.id = '08.012' then "Yellow fever dose 1" when Patient.id = '09.012' then "Yellow fever dose 1" when Patient.id = '10.0' then "One yellow fever dose from primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Version: **
  * ?: 0.2.0
* * **Content: **text/cql: ```` /* * Library: IMMZD18SYellowfeverLogic (IMMZ.D18.S.Yellow fever schedule) * Schedule Table: IMMZ.D18.S.Yellow fever schedule */ library IMMZD18SYellowfeverLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTYellowfeverEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Yellow fever dose 1 @description: Provision of yellow fever dose 1 @trigger: Child's birth @triggerDate: "Date of birth" */ define "Yellow fever dose 1": Encounter."No yellow fever primary series doses were administered" and not "One yellow fever dose from primary series was administered. The primary series has been completed" /* @output: Yellow fever dose 1 Create @create: The client is due for yellow fever dose 1 if the client's age is at least 9 months and living in a yellow fever endemic area. */ define "Yellow fever dose 1 Create": if "Yellow fever dose 1" then 'The client is due for yellow fever dose 1 if the client\'s age is at least 9 months and living in a yellow fever endemic area.' + ' Due Date: ' + ToString("Yellow fever dose 1 Due Date") + ' Overdue: ' + ToString("Yellow fever dose 1 Overdue") else '' /* @dynamicValue: Yellow fever dose 1 Due Date @pseudocode: "Date of birth" + 9 months */ define "Yellow fever dose 1 Due Date": if "Yellow fever dose 1" then Patient.birthDate + 9 months else null /* @dynamicValue: Yellow fever dose 1 Overdue @pseudocode: "Date of birth" + 12 months */ define "Yellow fever dose 1 Overdue": if "Yellow fever dose 1" then Patient.birthDate + 12 months else null /* @dynamicValue: Yellow fever dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date. */ define "Yellow fever dose 1 Expiration": null /* @complete: One yellow fever dose from primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Yellow fever vaccines") */ define "One yellow fever dose from primary series was administered. The primary series has been completed": Encounter."One yellow fever primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = '07.01' then "Yellow fever dose 1" when Patient.id = '08.012' then "Yellow fever dose 1" when Patient.id = '09.012' then "Yellow fever dose 1" when Patient.id = '10.0' then "One yellow fever dose from primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Url: **
  * ?: [IMMZD18SYellowfeverLogic](Library-IMMZD18SYellowfeverLogic.md)
* * **Content: **text/cql: ```` /* * Library: IMMZD18SYellowfeverLogic (IMMZ.D18.S.Yellow fever schedule) * Schedule Table: IMMZ.D18.S.Yellow fever schedule */ library IMMZD18SYellowfeverLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTYellowfeverEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Yellow fever dose 1 @description: Provision of yellow fever dose 1 @trigger: Child's birth @triggerDate: "Date of birth" */ define "Yellow fever dose 1": Encounter."No yellow fever primary series doses were administered" and not "One yellow fever dose from primary series was administered. The primary series has been completed" /* @output: Yellow fever dose 1 Create @create: The client is due for yellow fever dose 1 if the client's age is at least 9 months and living in a yellow fever endemic area. */ define "Yellow fever dose 1 Create": if "Yellow fever dose 1" then 'The client is due for yellow fever dose 1 if the client\'s age is at least 9 months and living in a yellow fever endemic area.' + ' Due Date: ' + ToString("Yellow fever dose 1 Due Date") + ' Overdue: ' + ToString("Yellow fever dose 1 Overdue") else '' /* @dynamicValue: Yellow fever dose 1 Due Date @pseudocode: "Date of birth" + 9 months */ define "Yellow fever dose 1 Due Date": if "Yellow fever dose 1" then Patient.birthDate + 9 months else null /* @dynamicValue: Yellow fever dose 1 Overdue @pseudocode: "Date of birth" + 12 months */ define "Yellow fever dose 1 Overdue": if "Yellow fever dose 1" then Patient.birthDate + 12 months else null /* @dynamicValue: Yellow fever dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date. */ define "Yellow fever dose 1 Expiration": null /* @complete: One yellow fever dose from primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Yellow fever vaccines") */ define "One yellow fever dose from primary series was administered. The primary series has been completed": Encounter."One yellow fever primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = '07.01' then "Yellow fever dose 1" when Patient.id = '08.012' then "Yellow fever dose 1" when Patient.id = '09.012' then "Yellow fever dose 1" when Patient.id = '10.0' then "One yellow fever dose from primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Status: **
  * ?: draft
* * **Content: **text/cql: ```` /* * Library: IMMZD18SYellowfeverLogic (IMMZ.D18.S.Yellow fever schedule) * Schedule Table: IMMZ.D18.S.Yellow fever schedule */ library IMMZD18SYellowfeverLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTYellowfeverEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Yellow fever dose 1 @description: Provision of yellow fever dose 1 @trigger: Child's birth @triggerDate: "Date of birth" */ define "Yellow fever dose 1": Encounter."No yellow fever primary series doses were administered" and not "One yellow fever dose from primary series was administered. The primary series has been completed" /* @output: Yellow fever dose 1 Create @create: The client is due for yellow fever dose 1 if the client's age is at least 9 months and living in a yellow fever endemic area. */ define "Yellow fever dose 1 Create": if "Yellow fever dose 1" then 'The client is due for yellow fever dose 1 if the client\'s age is at least 9 months and living in a yellow fever endemic area.' + ' Due Date: ' + ToString("Yellow fever dose 1 Due Date") + ' Overdue: ' + ToString("Yellow fever dose 1 Overdue") else '' /* @dynamicValue: Yellow fever dose 1 Due Date @pseudocode: "Date of birth" + 9 months */ define "Yellow fever dose 1 Due Date": if "Yellow fever dose 1" then Patient.birthDate + 9 months else null /* @dynamicValue: Yellow fever dose 1 Overdue @pseudocode: "Date of birth" + 12 months */ define "Yellow fever dose 1 Overdue": if "Yellow fever dose 1" then Patient.birthDate + 12 months else null /* @dynamicValue: Yellow fever dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date. */ define "Yellow fever dose 1 Expiration": null /* @complete: One yellow fever dose from primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Yellow fever vaccines") */ define "One yellow fever dose from primary series was administered. The primary series has been completed": Encounter."One yellow fever primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = '07.01' then "Yellow fever dose 1" when Patient.id = '08.012' then "Yellow fever dose 1" when Patient.id = '09.012' then "Yellow fever dose 1" when Patient.id = '10.0' then "One yellow fever dose from primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Experimental: **
  * ?: true
* * **Content: **text/cql: ```` /* * Library: IMMZD18SYellowfeverLogic (IMMZ.D18.S.Yellow fever schedule) * Schedule Table: IMMZ.D18.S.Yellow fever schedule */ library IMMZD18SYellowfeverLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTYellowfeverEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Yellow fever dose 1 @description: Provision of yellow fever dose 1 @trigger: Child's birth @triggerDate: "Date of birth" */ define "Yellow fever dose 1": Encounter."No yellow fever primary series doses were administered" and not "One yellow fever dose from primary series was administered. The primary series has been completed" /* @output: Yellow fever dose 1 Create @create: The client is due for yellow fever dose 1 if the client's age is at least 9 months and living in a yellow fever endemic area. */ define "Yellow fever dose 1 Create": if "Yellow fever dose 1" then 'The client is due for yellow fever dose 1 if the client\'s age is at least 9 months and living in a yellow fever endemic area.' + ' Due Date: ' + ToString("Yellow fever dose 1 Due Date") + ' Overdue: ' + ToString("Yellow fever dose 1 Overdue") else '' /* @dynamicValue: Yellow fever dose 1 Due Date @pseudocode: "Date of birth" + 9 months */ define "Yellow fever dose 1 Due Date": if "Yellow fever dose 1" then Patient.birthDate + 9 months else null /* @dynamicValue: Yellow fever dose 1 Overdue @pseudocode: "Date of birth" + 12 months */ define "Yellow fever dose 1 Overdue": if "Yellow fever dose 1" then Patient.birthDate + 12 months else null /* @dynamicValue: Yellow fever dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date. */ define "Yellow fever dose 1 Expiration": null /* @complete: One yellow fever dose from primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Yellow fever vaccines") */ define "One yellow fever dose from primary series was administered. The primary series has been completed": Encounter."One yellow fever primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = '07.01' then "Yellow fever dose 1" when Patient.id = '08.012' then "Yellow fever dose 1" when Patient.id = '09.012' then "Yellow fever dose 1" when Patient.id = '10.0' then "One yellow fever dose from primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Date: **
  * ?: 2026-03-31 13:43:43+0000
* * **Content: **text/cql: ```` /* * Library: IMMZD18SYellowfeverLogic (IMMZ.D18.S.Yellow fever schedule) * Schedule Table: IMMZ.D18.S.Yellow fever schedule */ library IMMZD18SYellowfeverLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTYellowfeverEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Yellow fever dose 1 @description: Provision of yellow fever dose 1 @trigger: Child's birth @triggerDate: "Date of birth" */ define "Yellow fever dose 1": Encounter."No yellow fever primary series doses were administered" and not "One yellow fever dose from primary series was administered. The primary series has been completed" /* @output: Yellow fever dose 1 Create @create: The client is due for yellow fever dose 1 if the client's age is at least 9 months and living in a yellow fever endemic area. */ define "Yellow fever dose 1 Create": if "Yellow fever dose 1" then 'The client is due for yellow fever dose 1 if the client\'s age is at least 9 months and living in a yellow fever endemic area.' + ' Due Date: ' + ToString("Yellow fever dose 1 Due Date") + ' Overdue: ' + ToString("Yellow fever dose 1 Overdue") else '' /* @dynamicValue: Yellow fever dose 1 Due Date @pseudocode: "Date of birth" + 9 months */ define "Yellow fever dose 1 Due Date": if "Yellow fever dose 1" then Patient.birthDate + 9 months else null /* @dynamicValue: Yellow fever dose 1 Overdue @pseudocode: "Date of birth" + 12 months */ define "Yellow fever dose 1 Overdue": if "Yellow fever dose 1" then Patient.birthDate + 12 months else null /* @dynamicValue: Yellow fever dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date. */ define "Yellow fever dose 1 Expiration": null /* @complete: One yellow fever dose from primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Yellow fever vaccines") */ define "One yellow fever dose from primary series was administered. The primary series has been completed": Encounter."One yellow fever primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = '07.01' then "Yellow fever dose 1" when Patient.id = '08.012' then "Yellow fever dose 1" when Patient.id = '09.012' then "Yellow fever dose 1" when Patient.id = '10.0' then "One yellow fever dose from primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Publisher: **
  * ?: WHO
* * **Content: **text/cql: ```` /* * Library: IMMZD18SYellowfeverLogic (IMMZ.D18.S.Yellow fever schedule) * Schedule Table: IMMZ.D18.S.Yellow fever schedule */ library IMMZD18SYellowfeverLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTYellowfeverEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Yellow fever dose 1 @description: Provision of yellow fever dose 1 @trigger: Child's birth @triggerDate: "Date of birth" */ define "Yellow fever dose 1": Encounter."No yellow fever primary series doses were administered" and not "One yellow fever dose from primary series was administered. The primary series has been completed" /* @output: Yellow fever dose 1 Create @create: The client is due for yellow fever dose 1 if the client's age is at least 9 months and living in a yellow fever endemic area. */ define "Yellow fever dose 1 Create": if "Yellow fever dose 1" then 'The client is due for yellow fever dose 1 if the client\'s age is at least 9 months and living in a yellow fever endemic area.' + ' Due Date: ' + ToString("Yellow fever dose 1 Due Date") + ' Overdue: ' + ToString("Yellow fever dose 1 Overdue") else '' /* @dynamicValue: Yellow fever dose 1 Due Date @pseudocode: "Date of birth" + 9 months */ define "Yellow fever dose 1 Due Date": if "Yellow fever dose 1" then Patient.birthDate + 9 months else null /* @dynamicValue: Yellow fever dose 1 Overdue @pseudocode: "Date of birth" + 12 months */ define "Yellow fever dose 1 Overdue": if "Yellow fever dose 1" then Patient.birthDate + 12 months else null /* @dynamicValue: Yellow fever dose 1 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date. */ define "Yellow fever dose 1 Expiration": null /* @complete: One yellow fever dose from primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Yellow fever vaccines") */ define "One yellow fever dose from primary series was administered. The primary series has been completed": Encounter."One yellow fever primary series dose was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = '07.01' then "Yellow fever dose 1" when Patient.id = '08.012' then "Yellow fever dose 1" when Patient.id = '09.012' then "Yellow fever dose 1" when Patient.id = '10.0' then "One yellow fever dose from primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Description: **
  * ?: This library defines decision support logic for the IMMZ.D18.S.Yellow fever schedule table in the Immunization CPG



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "IMMZD18SYellowfeverLogic",
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
  "url" : "http://smart.who.int/immunizations/Library/IMMZD18SYellowfeverLogic",
  "version" : "0.2.0",
  "name" : "IMMZD18SYellowfeverLogic",
  "title" : "IMMZD18SYellowfeverLogic",
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
    "data" : "Ci8qCiAqIExpYnJhcnk6IElNTVpEMThTWWVsbG93ZmV2ZXJMb2dpYyAoSU1NWi5EMTguUy5ZZWxsb3cgZmV2ZXIgc2NoZWR1bGUpCiAqIFNjaGVkdWxlIFRhYmxlOiBJTU1aLkQxOC5TLlllbGxvdyBmZXZlciBzY2hlZHVsZQogKi8KbGlicmFyeSBJTU1aRDE4U1llbGxvd2ZldmVyTG9naWMKCnVzaW5nIEZISVIgdmVyc2lvbiAnNC4wLjEnCmluY2x1ZGUgRkhJUkhlbHBlcnMgdmVyc2lvbiAnNC4wLjEnCgppbmNsdWRlIFdIT0NvbW1vbiBjYWxsZWQgV0MKCmluY2x1ZGUgSU1NWkNvbW1vbiBjYWxsZWQgQ29tbW9uCmluY2x1ZGUgSU1NWkNvbmNlcHRzIGNhbGxlZCBDb25jZXB0cwoKaW5jbHVkZSBJTU1aRW5jb3VudGVyRWxlbWVudHMgY2FsbGVkIElFCmluY2x1ZGUgSU1NWkQyRFRZZWxsb3dmZXZlckVuY291bnRlckVsZW1lbnRzIGNhbGxlZCBFbmNvdW50ZXIKCnBhcmFtZXRlciBUb2RheSBEYXRlIGRlZmF1bHQgVG9kYXkoKQoKY29udGV4dCBQYXRpZW50CgoKLyoKQG91dHB1dDogWWVsbG93IGZldmVyIGRvc2UgMQpAZGVzY3JpcHRpb246IFByb3Zpc2lvbiBvZiB5ZWxsb3cgZmV2ZXIgZG9zZSAxCkB0cmlnZ2VyOiBDaGlsZCdzIGJpcnRoCkB0cmlnZ2VyRGF0ZTogIkRhdGUgb2YgYmlydGgiCiovCmRlZmluZSAiWWVsbG93IGZldmVyIGRvc2UgMSI6CiAgRW5jb3VudGVyLiJObyB5ZWxsb3cgZmV2ZXIgcHJpbWFyeSBzZXJpZXMgZG9zZXMgd2VyZSBhZG1pbmlzdGVyZWQiCiAgYW5kIG5vdCAiT25lIHllbGxvdyBmZXZlciBkb3NlIGZyb20gcHJpbWFyeSBzZXJpZXMgd2FzIGFkbWluaXN0ZXJlZC4gVGhlIHByaW1hcnkgc2VyaWVzIGhhcyBiZWVuIGNvbXBsZXRlZCIKCi8qCkBvdXRwdXQ6IFllbGxvdyBmZXZlciBkb3NlIDEgQ3JlYXRlCkBjcmVhdGU6IFRoZSBjbGllbnQgaXMgZHVlIGZvciB5ZWxsb3cgZmV2ZXIgZG9zZSAxIGlmIHRoZSBjbGllbnQncyBhZ2UgaXMgYXQgbGVhc3QgOSBtb250aHMgYW5kIGxpdmluZyBpbiBhIHllbGxvdyBmZXZlciBlbmRlbWljIGFyZWEuCiovCmRlZmluZSAiWWVsbG93IGZldmVyIGRvc2UgMSBDcmVhdGUiOgogIGlmICJZZWxsb3cgZmV2ZXIgZG9zZSAxIiAKICB0aGVuICdUaGUgY2xpZW50IGlzIGR1ZSBmb3IgeWVsbG93IGZldmVyIGRvc2UgMSBpZiB0aGUgY2xpZW50XCdzIGFnZSBpcyBhdCBsZWFzdCA5IG1vbnRocyBhbmQgbGl2aW5nIGluIGEgeWVsbG93IGZldmVyIGVuZGVtaWMgYXJlYS4nICsgJwpEdWUgRGF0ZTogJyArIFRvU3RyaW5nKCJZZWxsb3cgZmV2ZXIgZG9zZSAxIER1ZSBEYXRlIikgKyAnCk92ZXJkdWU6ICcgKyBUb1N0cmluZygiWWVsbG93IGZldmVyIGRvc2UgMSBPdmVyZHVlIikKICBlbHNlICcnCgovKgpAZHluYW1pY1ZhbHVlOiBZZWxsb3cgZmV2ZXIgZG9zZSAxIER1ZSBEYXRlCkBwc2V1ZG9jb2RlOiAiRGF0ZSBvZiBiaXJ0aCIgKyA5IG1vbnRocwoqLwpkZWZpbmUgIlllbGxvdyBmZXZlciBkb3NlIDEgRHVlIERhdGUiOgogIGlmICJZZWxsb3cgZmV2ZXIgZG9zZSAxIiB0aGVuIFBhdGllbnQuYmlydGhEYXRlICsgOSBtb250aHMKICBlbHNlIG51bGwKCi8qCkBkeW5hbWljVmFsdWU6IFllbGxvdyBmZXZlciBkb3NlIDEgT3ZlcmR1ZQpAcHNldWRvY29kZTogIkRhdGUgb2YgYmlydGgiICsgMTIgbW9udGhzCiovCmRlZmluZSAiWWVsbG93IGZldmVyIGRvc2UgMSBPdmVyZHVlIjoKICBpZiAiWWVsbG93IGZldmVyIGRvc2UgMSIgdGhlbiBQYXRpZW50LmJpcnRoRGF0ZSArIDEyIG1vbnRocwogIGVsc2UgbnVsbAoKLyoKQGR5bmFtaWNWYWx1ZTogWWVsbG93IGZldmVyIGRvc2UgMSBFeHBpcmF0aW9uCkBwc2V1ZG9jb2RlOiBUbyBiZSBkZXRlcm1pbmVkIGJ5IE1lbWJlciBTdGF0ZXM7IGhvd2V2ZXIsIHRoZXJlIGlzIG5vIHJlY29tbWVuZGVkIGV4cGlyYXRpb24gZGF0ZS4KKi8KZGVmaW5lICJZZWxsb3cgZmV2ZXIgZG9zZSAxIEV4cGlyYXRpb24iOgogIG51bGwKICAKLyoKQGNvbXBsZXRlOiBPbmUgeWVsbG93IGZldmVyIGRvc2UgZnJvbSBwcmltYXJ5IHNlcmllcyB3YXMgYWRtaW5pc3RlcmVkLiBUaGUgcHJpbWFyeSBzZXJpZXMgaGFzIGJlZW4gY29tcGxldGVkCkBwc2V1ZG9jb2RlOiAiQ29tcGxldGVkIHRoZSBwcmltYXJ5IHZhY2NpbmF0aW9uIHNlcmllcyIgPSBUUlVFICh3aGVyZSAiVmFjY2luZSB0eXBlIiA9ICJZZWxsb3cgZmV2ZXIgdmFjY2luZXMiKQoqLwpkZWZpbmUgIk9uZSB5ZWxsb3cgZmV2ZXIgZG9zZSBmcm9tIHByaW1hcnkgc2VyaWVzIHdhcyBhZG1pbmlzdGVyZWQuIFRoZSBwcmltYXJ5IHNlcmllcyBoYXMgYmVlbiBjb21wbGV0ZWQiOgogIEVuY291bnRlci4iT25lIHllbGxvdyBmZXZlciBwcmltYXJ5IHNlcmllcyBkb3NlIHdhcyBhZG1pbmlzdGVyZWQiCgovKgpAdGVzdDogVGVzdCBleHBlY3RlZCByZXN1bHRzIGJhc2VkIG9uIGV4YW1wbGUgcGF0aWVudHMKKi8KZGVmaW5lICJUZXN0IFZhbGlkYXRpb24iOgogIGNhc2UKICAgIHdoZW4gUGF0aWVudC5pZCA9ICcwNy4wMScgdGhlbiAiWWVsbG93IGZldmVyIGRvc2UgMSIKICAgIHdoZW4gUGF0aWVudC5pZCA9ICcwOC4wMTInIHRoZW4gIlllbGxvdyBmZXZlciBkb3NlIDEiCiAgICB3aGVuIFBhdGllbnQuaWQgPSAnMDkuMDEyJyB0aGVuICJZZWxsb3cgZmV2ZXIgZG9zZSAxIgogICAgd2hlbiBQYXRpZW50LmlkID0gJzEwLjAnIHRoZW4gIk9uZSB5ZWxsb3cgZmV2ZXIgZG9zZSBmcm9tIHByaW1hcnkgc2VyaWVzIHdhcyBhZG1pbmlzdGVyZWQuIFRoZSBwcmltYXJ5IHNlcmllcyBoYXMgYmVlbiBjb21wbGV0ZWQiCiAgICBlbHNlICdObyB0ZXN0IGNhc2Ugc2V0JwogIGVuZAo="
  }]
}

```
