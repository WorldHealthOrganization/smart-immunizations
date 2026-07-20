# IMMZD18SPolioBirthDoseLogic - WHO Immunization Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD18SPolioBirthDoseLogic**

## Library: IMMZD18SPolioBirthDoseLogic 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Library/IMMZD18SPolioBirthDoseLogic | *Version*:1.0.0 |
| Draft as of 2026-04-09 | *Computable Name*:IMMZD18SPolioBirthDoseLogic |

 
This library defines decision support logic for the IMMZ.D18.S.Polio.Birth dose schedule table in the Immunization CPG 

* * **Content: **text/cql: ````/* * Library: IMMZD18SPolioBirthDoseLogic (IMMZ.D18.S.Polio.Birth dose schedule) * Schedule Table: Birth dose schedule (in countries that are poliomyelitis (polio)-endemic countries or countries at high risk for importation and subsequent spread of polio that follow the combined bivalent oral polio vaccine [bOPV]–inactivated polio vaccine [IPV] schedule) */ library IMMZD18SPolioBirthDoseLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTPolioEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: bOPV birth dose (a zero dose) @description: Provision of bOPV birth dose (a zero dose) @trigger: Child's birth @pseudo: @triggerDate: "Date of birth" */ define "bOPV birth dose (a zero dose)": not "Polio birth dose (a zero dose) was administered" and "bOPV birth dose (a zero dose) Expiration" after day of Today /* @output: bOPV birth dose (a zero dose) Create @create: bOPV birth dose (a zero dose) should be provided within the first week of life and if the client is in a polio-endemic country or a country at high risk for importation and subsequent spread of polio */ define "bOPV birth dose (a zero dose) Create": if "bOPV birth dose (a zero dose)" then 'bOPV birth dose (a zero dose) should be provided within the first week of life and if the client is in a polio-endemic country or a country at high risk for importation and subsequent spread of polio' + ' Due Date: ' + ToString("bOPV birth dose (a zero dose) Due Date") + ' Overdue: ' + ToString("bOPV birth dose (a zero dose) Overdue") + ' Expiration: ' + ToString("bOPV birth dose (a zero dose) Expiration") else '' /* @dynamicValue: bOPV birth dose (a zero dose) Due Date @pseudocode: "Date of birth" */ define "bOPV birth dose (a zero dose) Due Date": if "bOPV birth dose (a zero dose)" then Patient.birthDate else null /* @dynamicValue: bOPV birth dose (a zero dose) Overdue @pseudocode: "Date of birth" + 1 day */ define "bOPV birth dose (a zero dose) Overdue": if "bOPV birth dose (a zero dose)" then Patient.birthDate + 1 day else null /* @dynamicValue: bOPV birth dose (a zero dose) Expiration @pseudocode: "Date of birth" + 1 week */ define "bOPV birth dose (a zero dose) Expiration": Patient.birthDate + 1 week /* @complete: Polio birth dose (a zero dose) was administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Poliovirus-containing vaccines" and "Type of dose" = "Dose 0" AND "Birth dose" = TRUE) = 1 */ define "Polio birth dose (a zero dose) was administered": Encounter."bOPV birth dose (a zero dose) was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'Polio08.2' then "bOPV birth dose (a zero dose)" when Patient.id = 'Polio09.2' then not "bOPV birth dose (a zero dose)" when Patient.id = 'Polio10.1' then not "bOPV birth dose (a zero dose)" else 'No test case set' end ````: **Id: **
  * ?: IMMZD18SPolioBirthDoseLogic
* * **Content: **text/cql: ````/* * Library: IMMZD18SPolioBirthDoseLogic (IMMZ.D18.S.Polio.Birth dose schedule) * Schedule Table: Birth dose schedule (in countries that are poliomyelitis (polio)-endemic countries or countries at high risk for importation and subsequent spread of polio that follow the combined bivalent oral polio vaccine [bOPV]–inactivated polio vaccine [IPV] schedule) */ library IMMZD18SPolioBirthDoseLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTPolioEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: bOPV birth dose (a zero dose) @description: Provision of bOPV birth dose (a zero dose) @trigger: Child's birth @pseudo: @triggerDate: "Date of birth" */ define "bOPV birth dose (a zero dose)": not "Polio birth dose (a zero dose) was administered" and "bOPV birth dose (a zero dose) Expiration" after day of Today /* @output: bOPV birth dose (a zero dose) Create @create: bOPV birth dose (a zero dose) should be provided within the first week of life and if the client is in a polio-endemic country or a country at high risk for importation and subsequent spread of polio */ define "bOPV birth dose (a zero dose) Create": if "bOPV birth dose (a zero dose)" then 'bOPV birth dose (a zero dose) should be provided within the first week of life and if the client is in a polio-endemic country or a country at high risk for importation and subsequent spread of polio' + ' Due Date: ' + ToString("bOPV birth dose (a zero dose) Due Date") + ' Overdue: ' + ToString("bOPV birth dose (a zero dose) Overdue") + ' Expiration: ' + ToString("bOPV birth dose (a zero dose) Expiration") else '' /* @dynamicValue: bOPV birth dose (a zero dose) Due Date @pseudocode: "Date of birth" */ define "bOPV birth dose (a zero dose) Due Date": if "bOPV birth dose (a zero dose)" then Patient.birthDate else null /* @dynamicValue: bOPV birth dose (a zero dose) Overdue @pseudocode: "Date of birth" + 1 day */ define "bOPV birth dose (a zero dose) Overdue": if "bOPV birth dose (a zero dose)" then Patient.birthDate + 1 day else null /* @dynamicValue: bOPV birth dose (a zero dose) Expiration @pseudocode: "Date of birth" + 1 week */ define "bOPV birth dose (a zero dose) Expiration": Patient.birthDate + 1 week /* @complete: Polio birth dose (a zero dose) was administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Poliovirus-containing vaccines" and "Type of dose" = "Dose 0" AND "Birth dose" = TRUE) = 1 */ define "Polio birth dose (a zero dose) was administered": Encounter."bOPV birth dose (a zero dose) was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'Polio08.2' then "bOPV birth dose (a zero dose)" when Patient.id = 'Polio09.2' then not "bOPV birth dose (a zero dose)" when Patient.id = 'Polio10.1' then not "bOPV birth dose (a zero dose)" else 'No test case set' end ````: **Version: **
  * ?: 1.0.0
* * **Content: **text/cql: ````/* * Library: IMMZD18SPolioBirthDoseLogic (IMMZ.D18.S.Polio.Birth dose schedule) * Schedule Table: Birth dose schedule (in countries that are poliomyelitis (polio)-endemic countries or countries at high risk for importation and subsequent spread of polio that follow the combined bivalent oral polio vaccine [bOPV]–inactivated polio vaccine [IPV] schedule) */ library IMMZD18SPolioBirthDoseLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTPolioEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: bOPV birth dose (a zero dose) @description: Provision of bOPV birth dose (a zero dose) @trigger: Child's birth @pseudo: @triggerDate: "Date of birth" */ define "bOPV birth dose (a zero dose)": not "Polio birth dose (a zero dose) was administered" and "bOPV birth dose (a zero dose) Expiration" after day of Today /* @output: bOPV birth dose (a zero dose) Create @create: bOPV birth dose (a zero dose) should be provided within the first week of life and if the client is in a polio-endemic country or a country at high risk for importation and subsequent spread of polio */ define "bOPV birth dose (a zero dose) Create": if "bOPV birth dose (a zero dose)" then 'bOPV birth dose (a zero dose) should be provided within the first week of life and if the client is in a polio-endemic country or a country at high risk for importation and subsequent spread of polio' + ' Due Date: ' + ToString("bOPV birth dose (a zero dose) Due Date") + ' Overdue: ' + ToString("bOPV birth dose (a zero dose) Overdue") + ' Expiration: ' + ToString("bOPV birth dose (a zero dose) Expiration") else '' /* @dynamicValue: bOPV birth dose (a zero dose) Due Date @pseudocode: "Date of birth" */ define "bOPV birth dose (a zero dose) Due Date": if "bOPV birth dose (a zero dose)" then Patient.birthDate else null /* @dynamicValue: bOPV birth dose (a zero dose) Overdue @pseudocode: "Date of birth" + 1 day */ define "bOPV birth dose (a zero dose) Overdue": if "bOPV birth dose (a zero dose)" then Patient.birthDate + 1 day else null /* @dynamicValue: bOPV birth dose (a zero dose) Expiration @pseudocode: "Date of birth" + 1 week */ define "bOPV birth dose (a zero dose) Expiration": Patient.birthDate + 1 week /* @complete: Polio birth dose (a zero dose) was administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Poliovirus-containing vaccines" and "Type of dose" = "Dose 0" AND "Birth dose" = TRUE) = 1 */ define "Polio birth dose (a zero dose) was administered": Encounter."bOPV birth dose (a zero dose) was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'Polio08.2' then "bOPV birth dose (a zero dose)" when Patient.id = 'Polio09.2' then not "bOPV birth dose (a zero dose)" when Patient.id = 'Polio10.1' then not "bOPV birth dose (a zero dose)" else 'No test case set' end ````: **Url: **
  * ?: [IMMZD18SPolioBirthDoseLogic](Library-IMMZD18SPolioBirthDoseLogic.md)
* * **Content: **text/cql: ````/* * Library: IMMZD18SPolioBirthDoseLogic (IMMZ.D18.S.Polio.Birth dose schedule) * Schedule Table: Birth dose schedule (in countries that are poliomyelitis (polio)-endemic countries or countries at high risk for importation and subsequent spread of polio that follow the combined bivalent oral polio vaccine [bOPV]–inactivated polio vaccine [IPV] schedule) */ library IMMZD18SPolioBirthDoseLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTPolioEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: bOPV birth dose (a zero dose) @description: Provision of bOPV birth dose (a zero dose) @trigger: Child's birth @pseudo: @triggerDate: "Date of birth" */ define "bOPV birth dose (a zero dose)": not "Polio birth dose (a zero dose) was administered" and "bOPV birth dose (a zero dose) Expiration" after day of Today /* @output: bOPV birth dose (a zero dose) Create @create: bOPV birth dose (a zero dose) should be provided within the first week of life and if the client is in a polio-endemic country or a country at high risk for importation and subsequent spread of polio */ define "bOPV birth dose (a zero dose) Create": if "bOPV birth dose (a zero dose)" then 'bOPV birth dose (a zero dose) should be provided within the first week of life and if the client is in a polio-endemic country or a country at high risk for importation and subsequent spread of polio' + ' Due Date: ' + ToString("bOPV birth dose (a zero dose) Due Date") + ' Overdue: ' + ToString("bOPV birth dose (a zero dose) Overdue") + ' Expiration: ' + ToString("bOPV birth dose (a zero dose) Expiration") else '' /* @dynamicValue: bOPV birth dose (a zero dose) Due Date @pseudocode: "Date of birth" */ define "bOPV birth dose (a zero dose) Due Date": if "bOPV birth dose (a zero dose)" then Patient.birthDate else null /* @dynamicValue: bOPV birth dose (a zero dose) Overdue @pseudocode: "Date of birth" + 1 day */ define "bOPV birth dose (a zero dose) Overdue": if "bOPV birth dose (a zero dose)" then Patient.birthDate + 1 day else null /* @dynamicValue: bOPV birth dose (a zero dose) Expiration @pseudocode: "Date of birth" + 1 week */ define "bOPV birth dose (a zero dose) Expiration": Patient.birthDate + 1 week /* @complete: Polio birth dose (a zero dose) was administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Poliovirus-containing vaccines" and "Type of dose" = "Dose 0" AND "Birth dose" = TRUE) = 1 */ define "Polio birth dose (a zero dose) was administered": Encounter."bOPV birth dose (a zero dose) was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'Polio08.2' then "bOPV birth dose (a zero dose)" when Patient.id = 'Polio09.2' then not "bOPV birth dose (a zero dose)" when Patient.id = 'Polio10.1' then not "bOPV birth dose (a zero dose)" else 'No test case set' end ````: **Status: **
  * ?: draft
* * **Content: **text/cql: ````/* * Library: IMMZD18SPolioBirthDoseLogic (IMMZ.D18.S.Polio.Birth dose schedule) * Schedule Table: Birth dose schedule (in countries that are poliomyelitis (polio)-endemic countries or countries at high risk for importation and subsequent spread of polio that follow the combined bivalent oral polio vaccine [bOPV]–inactivated polio vaccine [IPV] schedule) */ library IMMZD18SPolioBirthDoseLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTPolioEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: bOPV birth dose (a zero dose) @description: Provision of bOPV birth dose (a zero dose) @trigger: Child's birth @pseudo: @triggerDate: "Date of birth" */ define "bOPV birth dose (a zero dose)": not "Polio birth dose (a zero dose) was administered" and "bOPV birth dose (a zero dose) Expiration" after day of Today /* @output: bOPV birth dose (a zero dose) Create @create: bOPV birth dose (a zero dose) should be provided within the first week of life and if the client is in a polio-endemic country or a country at high risk for importation and subsequent spread of polio */ define "bOPV birth dose (a zero dose) Create": if "bOPV birth dose (a zero dose)" then 'bOPV birth dose (a zero dose) should be provided within the first week of life and if the client is in a polio-endemic country or a country at high risk for importation and subsequent spread of polio' + ' Due Date: ' + ToString("bOPV birth dose (a zero dose) Due Date") + ' Overdue: ' + ToString("bOPV birth dose (a zero dose) Overdue") + ' Expiration: ' + ToString("bOPV birth dose (a zero dose) Expiration") else '' /* @dynamicValue: bOPV birth dose (a zero dose) Due Date @pseudocode: "Date of birth" */ define "bOPV birth dose (a zero dose) Due Date": if "bOPV birth dose (a zero dose)" then Patient.birthDate else null /* @dynamicValue: bOPV birth dose (a zero dose) Overdue @pseudocode: "Date of birth" + 1 day */ define "bOPV birth dose (a zero dose) Overdue": if "bOPV birth dose (a zero dose)" then Patient.birthDate + 1 day else null /* @dynamicValue: bOPV birth dose (a zero dose) Expiration @pseudocode: "Date of birth" + 1 week */ define "bOPV birth dose (a zero dose) Expiration": Patient.birthDate + 1 week /* @complete: Polio birth dose (a zero dose) was administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Poliovirus-containing vaccines" and "Type of dose" = "Dose 0" AND "Birth dose" = TRUE) = 1 */ define "Polio birth dose (a zero dose) was administered": Encounter."bOPV birth dose (a zero dose) was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'Polio08.2' then "bOPV birth dose (a zero dose)" when Patient.id = 'Polio09.2' then not "bOPV birth dose (a zero dose)" when Patient.id = 'Polio10.1' then not "bOPV birth dose (a zero dose)" else 'No test case set' end ````: **Date: **
  * ?: 2026-04-09 14:34:42+0000
* * **Content: **text/cql: ````/* * Library: IMMZD18SPolioBirthDoseLogic (IMMZ.D18.S.Polio.Birth dose schedule) * Schedule Table: Birth dose schedule (in countries that are poliomyelitis (polio)-endemic countries or countries at high risk for importation and subsequent spread of polio that follow the combined bivalent oral polio vaccine [bOPV]–inactivated polio vaccine [IPV] schedule) */ library IMMZD18SPolioBirthDoseLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTPolioEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: bOPV birth dose (a zero dose) @description: Provision of bOPV birth dose (a zero dose) @trigger: Child's birth @pseudo: @triggerDate: "Date of birth" */ define "bOPV birth dose (a zero dose)": not "Polio birth dose (a zero dose) was administered" and "bOPV birth dose (a zero dose) Expiration" after day of Today /* @output: bOPV birth dose (a zero dose) Create @create: bOPV birth dose (a zero dose) should be provided within the first week of life and if the client is in a polio-endemic country or a country at high risk for importation and subsequent spread of polio */ define "bOPV birth dose (a zero dose) Create": if "bOPV birth dose (a zero dose)" then 'bOPV birth dose (a zero dose) should be provided within the first week of life and if the client is in a polio-endemic country or a country at high risk for importation and subsequent spread of polio' + ' Due Date: ' + ToString("bOPV birth dose (a zero dose) Due Date") + ' Overdue: ' + ToString("bOPV birth dose (a zero dose) Overdue") + ' Expiration: ' + ToString("bOPV birth dose (a zero dose) Expiration") else '' /* @dynamicValue: bOPV birth dose (a zero dose) Due Date @pseudocode: "Date of birth" */ define "bOPV birth dose (a zero dose) Due Date": if "bOPV birth dose (a zero dose)" then Patient.birthDate else null /* @dynamicValue: bOPV birth dose (a zero dose) Overdue @pseudocode: "Date of birth" + 1 day */ define "bOPV birth dose (a zero dose) Overdue": if "bOPV birth dose (a zero dose)" then Patient.birthDate + 1 day else null /* @dynamicValue: bOPV birth dose (a zero dose) Expiration @pseudocode: "Date of birth" + 1 week */ define "bOPV birth dose (a zero dose) Expiration": Patient.birthDate + 1 week /* @complete: Polio birth dose (a zero dose) was administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Poliovirus-containing vaccines" and "Type of dose" = "Dose 0" AND "Birth dose" = TRUE) = 1 */ define "Polio birth dose (a zero dose) was administered": Encounter."bOPV birth dose (a zero dose) was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'Polio08.2' then "bOPV birth dose (a zero dose)" when Patient.id = 'Polio09.2' then not "bOPV birth dose (a zero dose)" when Patient.id = 'Polio10.1' then not "bOPV birth dose (a zero dose)" else 'No test case set' end ````: **Publisher: **
  * ?: WHO
* * **Content: **text/cql: ````/* * Library: IMMZD18SPolioBirthDoseLogic (IMMZ.D18.S.Polio.Birth dose schedule) * Schedule Table: Birth dose schedule (in countries that are poliomyelitis (polio)-endemic countries or countries at high risk for importation and subsequent spread of polio that follow the combined bivalent oral polio vaccine [bOPV]–inactivated polio vaccine [IPV] schedule) */ library IMMZD18SPolioBirthDoseLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTPolioEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: bOPV birth dose (a zero dose) @description: Provision of bOPV birth dose (a zero dose) @trigger: Child's birth @pseudo: @triggerDate: "Date of birth" */ define "bOPV birth dose (a zero dose)": not "Polio birth dose (a zero dose) was administered" and "bOPV birth dose (a zero dose) Expiration" after day of Today /* @output: bOPV birth dose (a zero dose) Create @create: bOPV birth dose (a zero dose) should be provided within the first week of life and if the client is in a polio-endemic country or a country at high risk for importation and subsequent spread of polio */ define "bOPV birth dose (a zero dose) Create": if "bOPV birth dose (a zero dose)" then 'bOPV birth dose (a zero dose) should be provided within the first week of life and if the client is in a polio-endemic country or a country at high risk for importation and subsequent spread of polio' + ' Due Date: ' + ToString("bOPV birth dose (a zero dose) Due Date") + ' Overdue: ' + ToString("bOPV birth dose (a zero dose) Overdue") + ' Expiration: ' + ToString("bOPV birth dose (a zero dose) Expiration") else '' /* @dynamicValue: bOPV birth dose (a zero dose) Due Date @pseudocode: "Date of birth" */ define "bOPV birth dose (a zero dose) Due Date": if "bOPV birth dose (a zero dose)" then Patient.birthDate else null /* @dynamicValue: bOPV birth dose (a zero dose) Overdue @pseudocode: "Date of birth" + 1 day */ define "bOPV birth dose (a zero dose) Overdue": if "bOPV birth dose (a zero dose)" then Patient.birthDate + 1 day else null /* @dynamicValue: bOPV birth dose (a zero dose) Expiration @pseudocode: "Date of birth" + 1 week */ define "bOPV birth dose (a zero dose) Expiration": Patient.birthDate + 1 week /* @complete: Polio birth dose (a zero dose) was administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Poliovirus-containing vaccines" and "Type of dose" = "Dose 0" AND "Birth dose" = TRUE) = 1 */ define "Polio birth dose (a zero dose) was administered": Encounter."bOPV birth dose (a zero dose) was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'Polio08.2' then "bOPV birth dose (a zero dose)" when Patient.id = 'Polio09.2' then not "bOPV birth dose (a zero dose)" when Patient.id = 'Polio10.1' then not "bOPV birth dose (a zero dose)" else 'No test case set' end ````: **Description: **
  * ?: This library defines decision support logic for the IMMZ.D18.S.Polio.Birth dose schedule table in the Immunization CPG



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "IMMZD18SPolioBirthDoseLogic",
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
  "url" : "http://smart.who.int/immunizations/Library/IMMZD18SPolioBirthDoseLogic",
  "version" : "1.0.0",
  "name" : "IMMZD18SPolioBirthDoseLogic",
  "title" : "IMMZD18SPolioBirthDoseLogic",
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
  "description" : "This library defines decision support logic for the IMMZ.D18.S.Polio.Birth dose schedule table in the Immunization CPG",
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
    "resource" : "http://smart.who.int/immunizations/Library/IMMZD2DTPolioEncounterElements"
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
    "name" : "Polio birth dose (a zero dose) was administered",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "bOPV birth dose (a zero dose) Expiration",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "date"
  },
  {
    "name" : "bOPV birth dose (a zero dose)",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "bOPV birth dose (a zero dose) Due Date",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "date"
  },
  {
    "name" : "bOPV birth dose (a zero dose) Overdue",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "date"
  },
  {
    "name" : "bOPV birth dose (a zero dose) Create",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "string"
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
    "data" : "LyoKICogTGlicmFyeTogSU1NWkQxOFNQb2xpb0JpcnRoRG9zZUxvZ2ljIChJTU1aLkQxOC5TLlBvbGlvLkJpcnRoIGRvc2Ugc2NoZWR1bGUpCiAqIFNjaGVkdWxlIFRhYmxlOiBCaXJ0aCBkb3NlIHNjaGVkdWxlIChpbiBjb3VudHJpZXMgdGhhdCBhcmUgcG9saW9teWVsaXRpcyAocG9saW8pLWVuZGVtaWMgY291bnRyaWVzIG9yIGNvdW50cmllcyBhdCBoaWdoIHJpc2sgZm9yIGltcG9ydGF0aW9uIGFuZCBzdWJzZXF1ZW50IHNwcmVhZCBvZiBwb2xpbyB0aGF0IGZvbGxvdyB0aGUgY29tYmluZWQgYml2YWxlbnQgb3JhbCBwb2xpbyB2YWNjaW5lIFtiT1BWXeKAk2luYWN0aXZhdGVkIHBvbGlvIHZhY2NpbmUgW0lQVl0gc2NoZWR1bGUpCiAqLwpsaWJyYXJ5IElNTVpEMThTUG9saW9CaXJ0aERvc2VMb2dpYwoKdXNpbmcgRkhJUiB2ZXJzaW9uICc0LjAuMScKaW5jbHVkZSBGSElSSGVscGVycyB2ZXJzaW9uICc0LjAuMScKCmluY2x1ZGUgV0hPQ29tbW9uIGNhbGxlZCBXQwoKaW5jbHVkZSBJTU1aQ29tbW9uIGNhbGxlZCBDb21tb24KaW5jbHVkZSBJTU1aQ29uY2VwdHMgY2FsbGVkIENvbmNlcHRzCgppbmNsdWRlIElNTVpFbmNvdW50ZXJFbGVtZW50cyBjYWxsZWQgSUUKaW5jbHVkZSBJTU1aRDJEVFBvbGlvRW5jb3VudGVyRWxlbWVudHMgY2FsbGVkIEVuY291bnRlcgoKcGFyYW1ldGVyIFRvZGF5IERhdGUgZGVmYXVsdCBUb2RheSgpCgoKY29udGV4dCBQYXRpZW50CgoKLyoKQG91dHB1dDogYk9QViBiaXJ0aCBkb3NlIChhIHplcm8gZG9zZSkKQGRlc2NyaXB0aW9uOiBQcm92aXNpb24gb2YgYk9QViBiaXJ0aCBkb3NlIChhIHplcm8gZG9zZSkKQHRyaWdnZXI6IENoaWxkJ3MgYmlydGgKQHBzZXVkbzogCkB0cmlnZ2VyRGF0ZTogIkRhdGUgb2YgYmlydGgiCiovCmRlZmluZSAiYk9QViBiaXJ0aCBkb3NlIChhIHplcm8gZG9zZSkiOgogIG5vdCAiUG9saW8gYmlydGggZG9zZSAoYSB6ZXJvIGRvc2UpIHdhcyBhZG1pbmlzdGVyZWQiCiAgYW5kICJiT1BWIGJpcnRoIGRvc2UgKGEgemVybyBkb3NlKSBFeHBpcmF0aW9uIiBhZnRlciBkYXkgb2YgVG9kYXkKCgovKgpAb3V0cHV0OiBiT1BWIGJpcnRoIGRvc2UgKGEgemVybyBkb3NlKSBDcmVhdGUKQGNyZWF0ZTogYk9QViBiaXJ0aCBkb3NlIChhIHplcm8gZG9zZSkgc2hvdWxkIGJlIHByb3ZpZGVkIHdpdGhpbiB0aGUgZmlyc3Qgd2VlayBvZiBsaWZlIGFuZCBpZiB0aGUgY2xpZW50IGlzIGluIGEgcG9saW8tZW5kZW1pYyBjb3VudHJ5IG9yIGEgY291bnRyeSBhdCBoaWdoIHJpc2sgZm9yIGltcG9ydGF0aW9uIGFuZCBzdWJzZXF1ZW50IHNwcmVhZCBvZiBwb2xpbwoqLwpkZWZpbmUgImJPUFYgYmlydGggZG9zZSAoYSB6ZXJvIGRvc2UpIENyZWF0ZSI6CiAgaWYgImJPUFYgYmlydGggZG9zZSAoYSB6ZXJvIGRvc2UpIgogIHRoZW4gJ2JPUFYgYmlydGggZG9zZSAoYSB6ZXJvIGRvc2UpIHNob3VsZCBiZSBwcm92aWRlZCB3aXRoaW4gdGhlIGZpcnN0IHdlZWsgb2YgbGlmZSBhbmQgaWYgdGhlIGNsaWVudCBpcyBpbiBhIHBvbGlvLWVuZGVtaWMgY291bnRyeSBvciBhIGNvdW50cnkgYXQgaGlnaCByaXNrIGZvciBpbXBvcnRhdGlvbiBhbmQgc3Vic2VxdWVudCBzcHJlYWQgb2YgcG9saW8nICsgJwpEdWUgRGF0ZTogJyArIFRvU3RyaW5nKCJiT1BWIGJpcnRoIGRvc2UgKGEgemVybyBkb3NlKSBEdWUgRGF0ZSIpICsgJwpPdmVyZHVlOiAnICsgVG9TdHJpbmcoImJPUFYgYmlydGggZG9zZSAoYSB6ZXJvIGRvc2UpIE92ZXJkdWUiKSArICcKRXhwaXJhdGlvbjogJyArIFRvU3RyaW5nKCJiT1BWIGJpcnRoIGRvc2UgKGEgemVybyBkb3NlKSBFeHBpcmF0aW9uIikKICBlbHNlICcnCgoKLyoKQGR5bmFtaWNWYWx1ZTogYk9QViBiaXJ0aCBkb3NlIChhIHplcm8gZG9zZSkgRHVlIERhdGUKQHBzZXVkb2NvZGU6ICJEYXRlIG9mIGJpcnRoIgoqLwpkZWZpbmUgImJPUFYgYmlydGggZG9zZSAoYSB6ZXJvIGRvc2UpIER1ZSBEYXRlIjoKICBpZiAiYk9QViBiaXJ0aCBkb3NlIChhIHplcm8gZG9zZSkiIHRoZW4gUGF0aWVudC5iaXJ0aERhdGUKICBlbHNlIG51bGwKCgovKgpAZHluYW1pY1ZhbHVlOiBiT1BWIGJpcnRoIGRvc2UgKGEgemVybyBkb3NlKSBPdmVyZHVlCkBwc2V1ZG9jb2RlOiAiRGF0ZSBvZiBiaXJ0aCIgKyAxIGRheQoqLwpkZWZpbmUgImJPUFYgYmlydGggZG9zZSAoYSB6ZXJvIGRvc2UpIE92ZXJkdWUiOgogIGlmICJiT1BWIGJpcnRoIGRvc2UgKGEgemVybyBkb3NlKSIgdGhlbiBQYXRpZW50LmJpcnRoRGF0ZSArIDEgZGF5CiAgZWxzZSBudWxsCgoKLyoKQGR5bmFtaWNWYWx1ZTogYk9QViBiaXJ0aCBkb3NlIChhIHplcm8gZG9zZSkgRXhwaXJhdGlvbgpAcHNldWRvY29kZTogIkRhdGUgb2YgYmlydGgiICsgMSB3ZWVrCiovCmRlZmluZSAiYk9QViBiaXJ0aCBkb3NlIChhIHplcm8gZG9zZSkgRXhwaXJhdGlvbiI6CiAgUGF0aWVudC5iaXJ0aERhdGUgKyAxIHdlZWsKCiAgCi8qCkBjb21wbGV0ZTogUG9saW8gYmlydGggZG9zZSAoYSB6ZXJvIGRvc2UpIHdhcyBhZG1pbmlzdGVyZWQKQHBzZXVkb2NvZGU6IENvdW50IG9mIHZhY2NpbmVzIGFkbWluaXN0ZXJlZCAod2hlcmUgIlZhY2NpbmUgdHlwZSIgPSAiUG9saW92aXJ1cy1jb250YWluaW5nIHZhY2NpbmVzIiBhbmQgIlR5cGUgb2YgZG9zZSIgPSAiRG9zZSAwIiBBTkQgIkJpcnRoIGRvc2UiID0gVFJVRSkgPSAxCiovCmRlZmluZSAiUG9saW8gYmlydGggZG9zZSAoYSB6ZXJvIGRvc2UpIHdhcyBhZG1pbmlzdGVyZWQiOgogIEVuY291bnRlci4iYk9QViBiaXJ0aCBkb3NlIChhIHplcm8gZG9zZSkgd2FzIGFkbWluaXN0ZXJlZCIKCgoKLyoKQHRlc3Q6IFRlc3QgZXhwZWN0ZWQgcmVzdWx0cyBiYXNlZCBvbiBleGFtcGxlIHBhdGllbnRzCiovCmRlZmluZSAiVGVzdCBWYWxpZGF0aW9uIjoKICBjYXNlCiAgICB3aGVuIFBhdGllbnQuaWQgPSAnUG9saW8wOC4yJyB0aGVuICJiT1BWIGJpcnRoIGRvc2UgKGEgemVybyBkb3NlKSIKICAgIHdoZW4gUGF0aWVudC5pZCA9ICdQb2xpbzA5LjInIHRoZW4gbm90ICJiT1BWIGJpcnRoIGRvc2UgKGEgemVybyBkb3NlKSIKICAgIHdoZW4gUGF0aWVudC5pZCA9ICdQb2xpbzEwLjEnIHRoZW4gbm90ICJiT1BWIGJpcnRoIGRvc2UgKGEgemVybyBkb3NlKSIKICAgIGVsc2UgJ05vIHRlc3QgY2FzZSBzZXQnCiAgZW5kCg=="
  }]
}

```
