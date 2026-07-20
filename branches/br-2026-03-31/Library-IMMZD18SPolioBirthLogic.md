# IMMZD18SPolioBirthLogic - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD18SPolioBirthLogic**

## Library: IMMZD18SPolioBirthLogic (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Library/IMMZD18SPolioBirthLogic | *Version*:0.2.0 |
| Draft as of 2026-03-31 | *Computable Name*:IMMZD18SPolioBirthLogic |

 
This library defines decision support logic for the IMMZ.D18.S.Polio.Birth dose schedule table in the Immunization CPG 

* * **Content: **text/cql: ```` /* * Library: IMMZD18SPolioBirthLogic (IMMZ.D18.S.Polio.Birth dose schedule) * Schedule Table: Birth dose schedule (in countries that are poliomyelitis (polio)-endemic countries or countries at high risk for importation and subsequent spread of polio that follow the combined bivalent oral polio vaccine [bOPV]–inactivated polio vaccine [IPV] schedule) */ library IMMZD18SPolioBirthLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTPolioEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: bOPV birth dose (a zero dose) @description: Provision of bOPV birth dose (a zero dose) @trigger: Child's birth @triggerDate: "Date of birth" */ define "bOPV birth dose (a zero dose)": not "Polio birth dose (a zero dose) was administered" and "bOPV birth dose (a zero dose) Expiration" after day of Today /* @output: bOPV birth dose (a zero dose) Create @create: bOPV birth dose (a zero dose) should be provided within the first week of life and if the client is in a polio-endemic country or a country at high risk for importation and subsequent spread of polio */ define "bOPV birth dose (a zero dose) Create": if "bOPV birth dose (a zero dose)" then 'bOPV birth dose (a zero dose) should be provided within the first week of life and if the client is in a polio-endemic country or a country at high risk for importation and subsequent spread of polio' + ' Due Date: ' + ToString("bOPV birth dose (a zero dose) Due Date") + ' Overdue: ' + ToString("bOPV birth dose (a zero dose) Overdue") + ' Expiration: ' + ToString("bOPV birth dose (a zero dose) Expiration") else '' /* @dynamicValue: bOPV birth dose (a zero dose) Due Date @pseudocode: "Date of birth" */ define "bOPV birth dose (a zero dose) Due Date": if "bOPV birth dose (a zero dose)" then Patient.birthDate else null /* @dynamicValue: bOPV birth dose (a zero dose) Overdue @pseudocode: "Date of birth" + 1 day */ define "bOPV birth dose (a zero dose) Overdue": if "bOPV birth dose (a zero dose)" then Patient.birthDate + 1 day else null /* @dynamicValue: bOPV birth dose (a zero dose) Expiration @pseudocode: "Date of birth" + 1 week */ define "bOPV birth dose (a zero dose) Expiration": Patient.birthDate + 1 week /* @complete: Polio birth dose (a zero dose) was administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Poliovirus-containing vaccines" and "Type of dose" = "Dose 0" AND "Birth dose" = TRUE) = 1 */ define "Polio birth dose (a zero dose) was administered": Encounter."bOPV birth dose (a zero dose) was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = '08.Alt1w' then "bOPV birth dose (a zero dose)" when Patient.id = '09.Agt1w' then not "bOPV birth dose (a zero dose)" when Patient.id = '10.D1' then not "bOPV birth dose (a zero dose)" else 'No test case set' end ````: **Id: **
  * ?: IMMZD18SPolioBirthLogic
* * **Content: **text/cql: ```` /* * Library: IMMZD18SPolioBirthLogic (IMMZ.D18.S.Polio.Birth dose schedule) * Schedule Table: Birth dose schedule (in countries that are poliomyelitis (polio)-endemic countries or countries at high risk for importation and subsequent spread of polio that follow the combined bivalent oral polio vaccine [bOPV]–inactivated polio vaccine [IPV] schedule) */ library IMMZD18SPolioBirthLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTPolioEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: bOPV birth dose (a zero dose) @description: Provision of bOPV birth dose (a zero dose) @trigger: Child's birth @triggerDate: "Date of birth" */ define "bOPV birth dose (a zero dose)": not "Polio birth dose (a zero dose) was administered" and "bOPV birth dose (a zero dose) Expiration" after day of Today /* @output: bOPV birth dose (a zero dose) Create @create: bOPV birth dose (a zero dose) should be provided within the first week of life and if the client is in a polio-endemic country or a country at high risk for importation and subsequent spread of polio */ define "bOPV birth dose (a zero dose) Create": if "bOPV birth dose (a zero dose)" then 'bOPV birth dose (a zero dose) should be provided within the first week of life and if the client is in a polio-endemic country or a country at high risk for importation and subsequent spread of polio' + ' Due Date: ' + ToString("bOPV birth dose (a zero dose) Due Date") + ' Overdue: ' + ToString("bOPV birth dose (a zero dose) Overdue") + ' Expiration: ' + ToString("bOPV birth dose (a zero dose) Expiration") else '' /* @dynamicValue: bOPV birth dose (a zero dose) Due Date @pseudocode: "Date of birth" */ define "bOPV birth dose (a zero dose) Due Date": if "bOPV birth dose (a zero dose)" then Patient.birthDate else null /* @dynamicValue: bOPV birth dose (a zero dose) Overdue @pseudocode: "Date of birth" + 1 day */ define "bOPV birth dose (a zero dose) Overdue": if "bOPV birth dose (a zero dose)" then Patient.birthDate + 1 day else null /* @dynamicValue: bOPV birth dose (a zero dose) Expiration @pseudocode: "Date of birth" + 1 week */ define "bOPV birth dose (a zero dose) Expiration": Patient.birthDate + 1 week /* @complete: Polio birth dose (a zero dose) was administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Poliovirus-containing vaccines" and "Type of dose" = "Dose 0" AND "Birth dose" = TRUE) = 1 */ define "Polio birth dose (a zero dose) was administered": Encounter."bOPV birth dose (a zero dose) was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = '08.Alt1w' then "bOPV birth dose (a zero dose)" when Patient.id = '09.Agt1w' then not "bOPV birth dose (a zero dose)" when Patient.id = '10.D1' then not "bOPV birth dose (a zero dose)" else 'No test case set' end ````: **Version: **
  * ?: 0.2.0
* * **Content: **text/cql: ```` /* * Library: IMMZD18SPolioBirthLogic (IMMZ.D18.S.Polio.Birth dose schedule) * Schedule Table: Birth dose schedule (in countries that are poliomyelitis (polio)-endemic countries or countries at high risk for importation and subsequent spread of polio that follow the combined bivalent oral polio vaccine [bOPV]–inactivated polio vaccine [IPV] schedule) */ library IMMZD18SPolioBirthLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTPolioEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: bOPV birth dose (a zero dose) @description: Provision of bOPV birth dose (a zero dose) @trigger: Child's birth @triggerDate: "Date of birth" */ define "bOPV birth dose (a zero dose)": not "Polio birth dose (a zero dose) was administered" and "bOPV birth dose (a zero dose) Expiration" after day of Today /* @output: bOPV birth dose (a zero dose) Create @create: bOPV birth dose (a zero dose) should be provided within the first week of life and if the client is in a polio-endemic country or a country at high risk for importation and subsequent spread of polio */ define "bOPV birth dose (a zero dose) Create": if "bOPV birth dose (a zero dose)" then 'bOPV birth dose (a zero dose) should be provided within the first week of life and if the client is in a polio-endemic country or a country at high risk for importation and subsequent spread of polio' + ' Due Date: ' + ToString("bOPV birth dose (a zero dose) Due Date") + ' Overdue: ' + ToString("bOPV birth dose (a zero dose) Overdue") + ' Expiration: ' + ToString("bOPV birth dose (a zero dose) Expiration") else '' /* @dynamicValue: bOPV birth dose (a zero dose) Due Date @pseudocode: "Date of birth" */ define "bOPV birth dose (a zero dose) Due Date": if "bOPV birth dose (a zero dose)" then Patient.birthDate else null /* @dynamicValue: bOPV birth dose (a zero dose) Overdue @pseudocode: "Date of birth" + 1 day */ define "bOPV birth dose (a zero dose) Overdue": if "bOPV birth dose (a zero dose)" then Patient.birthDate + 1 day else null /* @dynamicValue: bOPV birth dose (a zero dose) Expiration @pseudocode: "Date of birth" + 1 week */ define "bOPV birth dose (a zero dose) Expiration": Patient.birthDate + 1 week /* @complete: Polio birth dose (a zero dose) was administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Poliovirus-containing vaccines" and "Type of dose" = "Dose 0" AND "Birth dose" = TRUE) = 1 */ define "Polio birth dose (a zero dose) was administered": Encounter."bOPV birth dose (a zero dose) was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = '08.Alt1w' then "bOPV birth dose (a zero dose)" when Patient.id = '09.Agt1w' then not "bOPV birth dose (a zero dose)" when Patient.id = '10.D1' then not "bOPV birth dose (a zero dose)" else 'No test case set' end ````: **Url: **
  * ?: [IMMZD18SPolioBirthLogic](Library-IMMZD18SPolioBirthLogic.md)
* * **Content: **text/cql: ```` /* * Library: IMMZD18SPolioBirthLogic (IMMZ.D18.S.Polio.Birth dose schedule) * Schedule Table: Birth dose schedule (in countries that are poliomyelitis (polio)-endemic countries or countries at high risk for importation and subsequent spread of polio that follow the combined bivalent oral polio vaccine [bOPV]–inactivated polio vaccine [IPV] schedule) */ library IMMZD18SPolioBirthLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTPolioEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: bOPV birth dose (a zero dose) @description: Provision of bOPV birth dose (a zero dose) @trigger: Child's birth @triggerDate: "Date of birth" */ define "bOPV birth dose (a zero dose)": not "Polio birth dose (a zero dose) was administered" and "bOPV birth dose (a zero dose) Expiration" after day of Today /* @output: bOPV birth dose (a zero dose) Create @create: bOPV birth dose (a zero dose) should be provided within the first week of life and if the client is in a polio-endemic country or a country at high risk for importation and subsequent spread of polio */ define "bOPV birth dose (a zero dose) Create": if "bOPV birth dose (a zero dose)" then 'bOPV birth dose (a zero dose) should be provided within the first week of life and if the client is in a polio-endemic country or a country at high risk for importation and subsequent spread of polio' + ' Due Date: ' + ToString("bOPV birth dose (a zero dose) Due Date") + ' Overdue: ' + ToString("bOPV birth dose (a zero dose) Overdue") + ' Expiration: ' + ToString("bOPV birth dose (a zero dose) Expiration") else '' /* @dynamicValue: bOPV birth dose (a zero dose) Due Date @pseudocode: "Date of birth" */ define "bOPV birth dose (a zero dose) Due Date": if "bOPV birth dose (a zero dose)" then Patient.birthDate else null /* @dynamicValue: bOPV birth dose (a zero dose) Overdue @pseudocode: "Date of birth" + 1 day */ define "bOPV birth dose (a zero dose) Overdue": if "bOPV birth dose (a zero dose)" then Patient.birthDate + 1 day else null /* @dynamicValue: bOPV birth dose (a zero dose) Expiration @pseudocode: "Date of birth" + 1 week */ define "bOPV birth dose (a zero dose) Expiration": Patient.birthDate + 1 week /* @complete: Polio birth dose (a zero dose) was administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Poliovirus-containing vaccines" and "Type of dose" = "Dose 0" AND "Birth dose" = TRUE) = 1 */ define "Polio birth dose (a zero dose) was administered": Encounter."bOPV birth dose (a zero dose) was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = '08.Alt1w' then "bOPV birth dose (a zero dose)" when Patient.id = '09.Agt1w' then not "bOPV birth dose (a zero dose)" when Patient.id = '10.D1' then not "bOPV birth dose (a zero dose)" else 'No test case set' end ````: **Status: **
  * ?: draft
* * **Content: **text/cql: ```` /* * Library: IMMZD18SPolioBirthLogic (IMMZ.D18.S.Polio.Birth dose schedule) * Schedule Table: Birth dose schedule (in countries that are poliomyelitis (polio)-endemic countries or countries at high risk for importation and subsequent spread of polio that follow the combined bivalent oral polio vaccine [bOPV]–inactivated polio vaccine [IPV] schedule) */ library IMMZD18SPolioBirthLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTPolioEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: bOPV birth dose (a zero dose) @description: Provision of bOPV birth dose (a zero dose) @trigger: Child's birth @triggerDate: "Date of birth" */ define "bOPV birth dose (a zero dose)": not "Polio birth dose (a zero dose) was administered" and "bOPV birth dose (a zero dose) Expiration" after day of Today /* @output: bOPV birth dose (a zero dose) Create @create: bOPV birth dose (a zero dose) should be provided within the first week of life and if the client is in a polio-endemic country or a country at high risk for importation and subsequent spread of polio */ define "bOPV birth dose (a zero dose) Create": if "bOPV birth dose (a zero dose)" then 'bOPV birth dose (a zero dose) should be provided within the first week of life and if the client is in a polio-endemic country or a country at high risk for importation and subsequent spread of polio' + ' Due Date: ' + ToString("bOPV birth dose (a zero dose) Due Date") + ' Overdue: ' + ToString("bOPV birth dose (a zero dose) Overdue") + ' Expiration: ' + ToString("bOPV birth dose (a zero dose) Expiration") else '' /* @dynamicValue: bOPV birth dose (a zero dose) Due Date @pseudocode: "Date of birth" */ define "bOPV birth dose (a zero dose) Due Date": if "bOPV birth dose (a zero dose)" then Patient.birthDate else null /* @dynamicValue: bOPV birth dose (a zero dose) Overdue @pseudocode: "Date of birth" + 1 day */ define "bOPV birth dose (a zero dose) Overdue": if "bOPV birth dose (a zero dose)" then Patient.birthDate + 1 day else null /* @dynamicValue: bOPV birth dose (a zero dose) Expiration @pseudocode: "Date of birth" + 1 week */ define "bOPV birth dose (a zero dose) Expiration": Patient.birthDate + 1 week /* @complete: Polio birth dose (a zero dose) was administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Poliovirus-containing vaccines" and "Type of dose" = "Dose 0" AND "Birth dose" = TRUE) = 1 */ define "Polio birth dose (a zero dose) was administered": Encounter."bOPV birth dose (a zero dose) was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = '08.Alt1w' then "bOPV birth dose (a zero dose)" when Patient.id = '09.Agt1w' then not "bOPV birth dose (a zero dose)" when Patient.id = '10.D1' then not "bOPV birth dose (a zero dose)" else 'No test case set' end ````: **Experimental: **
  * ?: true
* * **Content: **text/cql: ```` /* * Library: IMMZD18SPolioBirthLogic (IMMZ.D18.S.Polio.Birth dose schedule) * Schedule Table: Birth dose schedule (in countries that are poliomyelitis (polio)-endemic countries or countries at high risk for importation and subsequent spread of polio that follow the combined bivalent oral polio vaccine [bOPV]–inactivated polio vaccine [IPV] schedule) */ library IMMZD18SPolioBirthLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTPolioEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: bOPV birth dose (a zero dose) @description: Provision of bOPV birth dose (a zero dose) @trigger: Child's birth @triggerDate: "Date of birth" */ define "bOPV birth dose (a zero dose)": not "Polio birth dose (a zero dose) was administered" and "bOPV birth dose (a zero dose) Expiration" after day of Today /* @output: bOPV birth dose (a zero dose) Create @create: bOPV birth dose (a zero dose) should be provided within the first week of life and if the client is in a polio-endemic country or a country at high risk for importation and subsequent spread of polio */ define "bOPV birth dose (a zero dose) Create": if "bOPV birth dose (a zero dose)" then 'bOPV birth dose (a zero dose) should be provided within the first week of life and if the client is in a polio-endemic country or a country at high risk for importation and subsequent spread of polio' + ' Due Date: ' + ToString("bOPV birth dose (a zero dose) Due Date") + ' Overdue: ' + ToString("bOPV birth dose (a zero dose) Overdue") + ' Expiration: ' + ToString("bOPV birth dose (a zero dose) Expiration") else '' /* @dynamicValue: bOPV birth dose (a zero dose) Due Date @pseudocode: "Date of birth" */ define "bOPV birth dose (a zero dose) Due Date": if "bOPV birth dose (a zero dose)" then Patient.birthDate else null /* @dynamicValue: bOPV birth dose (a zero dose) Overdue @pseudocode: "Date of birth" + 1 day */ define "bOPV birth dose (a zero dose) Overdue": if "bOPV birth dose (a zero dose)" then Patient.birthDate + 1 day else null /* @dynamicValue: bOPV birth dose (a zero dose) Expiration @pseudocode: "Date of birth" + 1 week */ define "bOPV birth dose (a zero dose) Expiration": Patient.birthDate + 1 week /* @complete: Polio birth dose (a zero dose) was administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Poliovirus-containing vaccines" and "Type of dose" = "Dose 0" AND "Birth dose" = TRUE) = 1 */ define "Polio birth dose (a zero dose) was administered": Encounter."bOPV birth dose (a zero dose) was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = '08.Alt1w' then "bOPV birth dose (a zero dose)" when Patient.id = '09.Agt1w' then not "bOPV birth dose (a zero dose)" when Patient.id = '10.D1' then not "bOPV birth dose (a zero dose)" else 'No test case set' end ````: **Date: **
  * ?: 2026-03-31 13:43:43+0000
* * **Content: **text/cql: ```` /* * Library: IMMZD18SPolioBirthLogic (IMMZ.D18.S.Polio.Birth dose schedule) * Schedule Table: Birth dose schedule (in countries that are poliomyelitis (polio)-endemic countries or countries at high risk for importation and subsequent spread of polio that follow the combined bivalent oral polio vaccine [bOPV]–inactivated polio vaccine [IPV] schedule) */ library IMMZD18SPolioBirthLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTPolioEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: bOPV birth dose (a zero dose) @description: Provision of bOPV birth dose (a zero dose) @trigger: Child's birth @triggerDate: "Date of birth" */ define "bOPV birth dose (a zero dose)": not "Polio birth dose (a zero dose) was administered" and "bOPV birth dose (a zero dose) Expiration" after day of Today /* @output: bOPV birth dose (a zero dose) Create @create: bOPV birth dose (a zero dose) should be provided within the first week of life and if the client is in a polio-endemic country or a country at high risk for importation and subsequent spread of polio */ define "bOPV birth dose (a zero dose) Create": if "bOPV birth dose (a zero dose)" then 'bOPV birth dose (a zero dose) should be provided within the first week of life and if the client is in a polio-endemic country or a country at high risk for importation and subsequent spread of polio' + ' Due Date: ' + ToString("bOPV birth dose (a zero dose) Due Date") + ' Overdue: ' + ToString("bOPV birth dose (a zero dose) Overdue") + ' Expiration: ' + ToString("bOPV birth dose (a zero dose) Expiration") else '' /* @dynamicValue: bOPV birth dose (a zero dose) Due Date @pseudocode: "Date of birth" */ define "bOPV birth dose (a zero dose) Due Date": if "bOPV birth dose (a zero dose)" then Patient.birthDate else null /* @dynamicValue: bOPV birth dose (a zero dose) Overdue @pseudocode: "Date of birth" + 1 day */ define "bOPV birth dose (a zero dose) Overdue": if "bOPV birth dose (a zero dose)" then Patient.birthDate + 1 day else null /* @dynamicValue: bOPV birth dose (a zero dose) Expiration @pseudocode: "Date of birth" + 1 week */ define "bOPV birth dose (a zero dose) Expiration": Patient.birthDate + 1 week /* @complete: Polio birth dose (a zero dose) was administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Poliovirus-containing vaccines" and "Type of dose" = "Dose 0" AND "Birth dose" = TRUE) = 1 */ define "Polio birth dose (a zero dose) was administered": Encounter."bOPV birth dose (a zero dose) was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = '08.Alt1w' then "bOPV birth dose (a zero dose)" when Patient.id = '09.Agt1w' then not "bOPV birth dose (a zero dose)" when Patient.id = '10.D1' then not "bOPV birth dose (a zero dose)" else 'No test case set' end ````: **Publisher: **
  * ?: WHO
* * **Content: **text/cql: ```` /* * Library: IMMZD18SPolioBirthLogic (IMMZ.D18.S.Polio.Birth dose schedule) * Schedule Table: Birth dose schedule (in countries that are poliomyelitis (polio)-endemic countries or countries at high risk for importation and subsequent spread of polio that follow the combined bivalent oral polio vaccine [bOPV]–inactivated polio vaccine [IPV] schedule) */ library IMMZD18SPolioBirthLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTPolioEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: bOPV birth dose (a zero dose) @description: Provision of bOPV birth dose (a zero dose) @trigger: Child's birth @triggerDate: "Date of birth" */ define "bOPV birth dose (a zero dose)": not "Polio birth dose (a zero dose) was administered" and "bOPV birth dose (a zero dose) Expiration" after day of Today /* @output: bOPV birth dose (a zero dose) Create @create: bOPV birth dose (a zero dose) should be provided within the first week of life and if the client is in a polio-endemic country or a country at high risk for importation and subsequent spread of polio */ define "bOPV birth dose (a zero dose) Create": if "bOPV birth dose (a zero dose)" then 'bOPV birth dose (a zero dose) should be provided within the first week of life and if the client is in a polio-endemic country or a country at high risk for importation and subsequent spread of polio' + ' Due Date: ' + ToString("bOPV birth dose (a zero dose) Due Date") + ' Overdue: ' + ToString("bOPV birth dose (a zero dose) Overdue") + ' Expiration: ' + ToString("bOPV birth dose (a zero dose) Expiration") else '' /* @dynamicValue: bOPV birth dose (a zero dose) Due Date @pseudocode: "Date of birth" */ define "bOPV birth dose (a zero dose) Due Date": if "bOPV birth dose (a zero dose)" then Patient.birthDate else null /* @dynamicValue: bOPV birth dose (a zero dose) Overdue @pseudocode: "Date of birth" + 1 day */ define "bOPV birth dose (a zero dose) Overdue": if "bOPV birth dose (a zero dose)" then Patient.birthDate + 1 day else null /* @dynamicValue: bOPV birth dose (a zero dose) Expiration @pseudocode: "Date of birth" + 1 week */ define "bOPV birth dose (a zero dose) Expiration": Patient.birthDate + 1 week /* @complete: Polio birth dose (a zero dose) was administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Poliovirus-containing vaccines" and "Type of dose" = "Dose 0" AND "Birth dose" = TRUE) = 1 */ define "Polio birth dose (a zero dose) was administered": Encounter."bOPV birth dose (a zero dose) was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = '08.Alt1w' then "bOPV birth dose (a zero dose)" when Patient.id = '09.Agt1w' then not "bOPV birth dose (a zero dose)" when Patient.id = '10.D1' then not "bOPV birth dose (a zero dose)" else 'No test case set' end ````: **Description: **
  * ?: This library defines decision support logic for the IMMZ.D18.S.Polio.Birth dose schedule table in the Immunization CPG



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "IMMZD18SPolioBirthLogic",
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
  "url" : "http://smart.who.int/immunizations/Library/IMMZD18SPolioBirthLogic",
  "version" : "0.2.0",
  "name" : "IMMZD18SPolioBirthLogic",
  "title" : "IMMZD18SPolioBirthLogic",
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
    "data" : "Ci8qCiAqIExpYnJhcnk6IElNTVpEMThTUG9saW9CaXJ0aExvZ2ljIChJTU1aLkQxOC5TLlBvbGlvLkJpcnRoIGRvc2Ugc2NoZWR1bGUpCiAqIFNjaGVkdWxlIFRhYmxlOiBCaXJ0aCBkb3NlIHNjaGVkdWxlIChpbiBjb3VudHJpZXMgdGhhdCBhcmUgcG9saW9teWVsaXRpcyAocG9saW8pLWVuZGVtaWMgY291bnRyaWVzIG9yIGNvdW50cmllcyBhdCBoaWdoIHJpc2sgZm9yIGltcG9ydGF0aW9uIGFuZCBzdWJzZXF1ZW50IHNwcmVhZCBvZiBwb2xpbyB0aGF0IGZvbGxvdyB0aGUgY29tYmluZWQgYml2YWxlbnQgb3JhbCBwb2xpbyB2YWNjaW5lIFtiT1BWXeKAk2luYWN0aXZhdGVkIHBvbGlvIHZhY2NpbmUgW0lQVl0gc2NoZWR1bGUpCiAqLwpsaWJyYXJ5IElNTVpEMThTUG9saW9CaXJ0aExvZ2ljCgp1c2luZyBGSElSIHZlcnNpb24gJzQuMC4xJwppbmNsdWRlIEZISVJIZWxwZXJzIHZlcnNpb24gJzQuMC4xJwoKaW5jbHVkZSBXSE9Db21tb24gY2FsbGVkIFdDCgppbmNsdWRlIElNTVpDb21tb24gY2FsbGVkIENvbW1vbgppbmNsdWRlIElNTVpDb25jZXB0cyBjYWxsZWQgQ29uY2VwdHMKCmluY2x1ZGUgSU1NWkVuY291bnRlckVsZW1lbnRzIGNhbGxlZCBJRQppbmNsdWRlIElNTVpEMkRUUG9saW9FbmNvdW50ZXJFbGVtZW50cyBjYWxsZWQgRW5jb3VudGVyCgpwYXJhbWV0ZXIgVG9kYXkgRGF0ZSBkZWZhdWx0IFRvZGF5KCkKCmNvbnRleHQgUGF0aWVudAoKCi8qCkBvdXRwdXQ6IGJPUFYgYmlydGggZG9zZSAoYSB6ZXJvIGRvc2UpCkBkZXNjcmlwdGlvbjogUHJvdmlzaW9uIG9mIGJPUFYgYmlydGggZG9zZSAoYSB6ZXJvIGRvc2UpCkB0cmlnZ2VyOiBDaGlsZCdzIGJpcnRoCkB0cmlnZ2VyRGF0ZTogIkRhdGUgb2YgYmlydGgiCiovCmRlZmluZSAiYk9QViBiaXJ0aCBkb3NlIChhIHplcm8gZG9zZSkiOgogIG5vdCAiUG9saW8gYmlydGggZG9zZSAoYSB6ZXJvIGRvc2UpIHdhcyBhZG1pbmlzdGVyZWQiCiAgYW5kICJiT1BWIGJpcnRoIGRvc2UgKGEgemVybyBkb3NlKSBFeHBpcmF0aW9uIiBhZnRlciBkYXkgb2YgVG9kYXkKCi8qCkBvdXRwdXQ6IGJPUFYgYmlydGggZG9zZSAoYSB6ZXJvIGRvc2UpIENyZWF0ZQpAY3JlYXRlOiBiT1BWIGJpcnRoIGRvc2UgKGEgemVybyBkb3NlKSBzaG91bGQgYmUgcHJvdmlkZWQgd2l0aGluIHRoZSBmaXJzdCB3ZWVrIG9mIGxpZmUgYW5kIGlmIHRoZSBjbGllbnQgaXMgaW4gYSBwb2xpby1lbmRlbWljIGNvdW50cnkgb3IgYSBjb3VudHJ5IGF0IGhpZ2ggcmlzayBmb3IgaW1wb3J0YXRpb24gYW5kIHN1YnNlcXVlbnQgc3ByZWFkIG9mIHBvbGlvCiovCmRlZmluZSAiYk9QViBiaXJ0aCBkb3NlIChhIHplcm8gZG9zZSkgQ3JlYXRlIjoKICBpZiAiYk9QViBiaXJ0aCBkb3NlIChhIHplcm8gZG9zZSkiIAogIHRoZW4gJ2JPUFYgYmlydGggZG9zZSAoYSB6ZXJvIGRvc2UpIHNob3VsZCBiZSBwcm92aWRlZCB3aXRoaW4gdGhlIGZpcnN0IHdlZWsgb2YgbGlmZSBhbmQgaWYgdGhlIGNsaWVudCBpcyBpbiBhIHBvbGlvLWVuZGVtaWMgY291bnRyeSBvciBhIGNvdW50cnkgYXQgaGlnaCByaXNrIGZvciBpbXBvcnRhdGlvbiBhbmQgc3Vic2VxdWVudCBzcHJlYWQgb2YgcG9saW8nICsgJwpEdWUgRGF0ZTogJyArIFRvU3RyaW5nKCJiT1BWIGJpcnRoIGRvc2UgKGEgemVybyBkb3NlKSBEdWUgRGF0ZSIpICsgJwpPdmVyZHVlOiAnICsgVG9TdHJpbmcoImJPUFYgYmlydGggZG9zZSAoYSB6ZXJvIGRvc2UpIE92ZXJkdWUiKSArICcKRXhwaXJhdGlvbjogJyArIFRvU3RyaW5nKCJiT1BWIGJpcnRoIGRvc2UgKGEgemVybyBkb3NlKSBFeHBpcmF0aW9uIikKICBlbHNlICcnCgovKgpAZHluYW1pY1ZhbHVlOiBiT1BWIGJpcnRoIGRvc2UgKGEgemVybyBkb3NlKSBEdWUgRGF0ZQpAcHNldWRvY29kZTogIkRhdGUgb2YgYmlydGgiCiovCmRlZmluZSAiYk9QViBiaXJ0aCBkb3NlIChhIHplcm8gZG9zZSkgRHVlIERhdGUiOgogIGlmICJiT1BWIGJpcnRoIGRvc2UgKGEgemVybyBkb3NlKSIgdGhlbiBQYXRpZW50LmJpcnRoRGF0ZQogIGVsc2UgbnVsbAoKLyoKQGR5bmFtaWNWYWx1ZTogYk9QViBiaXJ0aCBkb3NlIChhIHplcm8gZG9zZSkgT3ZlcmR1ZQpAcHNldWRvY29kZTogIkRhdGUgb2YgYmlydGgiICsgMSBkYXkKKi8KZGVmaW5lICJiT1BWIGJpcnRoIGRvc2UgKGEgemVybyBkb3NlKSBPdmVyZHVlIjoKICBpZiAiYk9QViBiaXJ0aCBkb3NlIChhIHplcm8gZG9zZSkiIHRoZW4gUGF0aWVudC5iaXJ0aERhdGUgKyAxIGRheQogIGVsc2UgbnVsbAoKLyoKQGR5bmFtaWNWYWx1ZTogYk9QViBiaXJ0aCBkb3NlIChhIHplcm8gZG9zZSkgRXhwaXJhdGlvbgpAcHNldWRvY29kZTogIkRhdGUgb2YgYmlydGgiICsgMSB3ZWVrCiovCmRlZmluZSAiYk9QViBiaXJ0aCBkb3NlIChhIHplcm8gZG9zZSkgRXhwaXJhdGlvbiI6CiAgUGF0aWVudC5iaXJ0aERhdGUgKyAxIHdlZWsKCi8qCkBjb21wbGV0ZTogUG9saW8gYmlydGggZG9zZSAoYSB6ZXJvIGRvc2UpIHdhcyBhZG1pbmlzdGVyZWQKQHBzZXVkb2NvZGU6IENvdW50IG9mIHZhY2NpbmVzIGFkbWluaXN0ZXJlZCAod2hlcmUgIlZhY2NpbmUgdHlwZSIgPSAiUG9saW92aXJ1cy1jb250YWluaW5nIHZhY2NpbmVzIiBhbmQgIlR5cGUgb2YgZG9zZSIgPSAiRG9zZSAwIiBBTkQgIkJpcnRoIGRvc2UiID0gVFJVRSkgPSAxCiovCmRlZmluZSAiUG9saW8gYmlydGggZG9zZSAoYSB6ZXJvIGRvc2UpIHdhcyBhZG1pbmlzdGVyZWQiOgogIEVuY291bnRlci4iYk9QViBiaXJ0aCBkb3NlIChhIHplcm8gZG9zZSkgd2FzIGFkbWluaXN0ZXJlZCIKCi8qCkB0ZXN0OiBUZXN0IGV4cGVjdGVkIHJlc3VsdHMgYmFzZWQgb24gZXhhbXBsZSBwYXRpZW50cwoqLwpkZWZpbmUgIlRlc3QgVmFsaWRhdGlvbiI6CiAgY2FzZQogICAgd2hlbiBQYXRpZW50LmlkID0gJzA4LkFsdDF3JyB0aGVuICJiT1BWIGJpcnRoIGRvc2UgKGEgemVybyBkb3NlKSIKICAgIHdoZW4gUGF0aWVudC5pZCA9ICcwOS5BZ3QxdycgdGhlbiBub3QgImJPUFYgYmlydGggZG9zZSAoYSB6ZXJvIGRvc2UpIgogICAgd2hlbiBQYXRpZW50LmlkID0gJzEwLkQxJyB0aGVuIG5vdCAiYk9QViBiaXJ0aCBkb3NlIChhIHplcm8gZG9zZSkiCiAgICBlbHNlICdObyB0ZXN0IGNhc2Ugc2V0JwogIGVuZAo="
  }]
}

```
