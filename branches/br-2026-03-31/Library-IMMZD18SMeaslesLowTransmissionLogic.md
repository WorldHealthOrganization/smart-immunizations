# IMMZD18SMeaslesLowTransmissionLogic - WHO Immunization Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD18SMeaslesLowTransmissionLogic**

## Library: IMMZD18SMeaslesLowTransmissionLogic 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Library/IMMZD18SMeaslesLowTransmissionLogic | *Version*:0.2.0 |
| Draft as of 2026-03-31 | *Computable Name*:IMMZD18SMeaslesLowTransmissionLogic |

 
This library defines decision support logic for the IMMZ.D18.S.Measles.Low transmission schedule table in the Immunization CPG 

* * **Content: **text/cql: ````/* * Library: IMMZD18SMeaslesLowTransmissionLogic (IMMZ.D18.S.Measles.Low transmission schedule) * Schedule Table: Schedule for countries with low levels of measles transmission (countries that provide first dose of measles-containing vaccine (MCV) at 12 months and second dose of MCV at 15 months) */ library IMMZD18SMeaslesLowTransmissionLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTMeaslesEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: MCV dose 1 (MCV1) @description: Provision of MCV1 from the primary series @trigger: Child's birth @pseudo: @triggerDate: "Date of birth" */ define "MCV dose 1 (MCV1)": Encounter."No measles primary series doses were administered" /* @output: MCV dose 1 (MCV1) Create @create: The client is due for MCV1 if the client is at least 12 months */ define "MCV dose 1 (MCV1) Create": if "MCV dose 1 (MCV1)" then 'The client is due for MCV1 if the client is at least 12 months' + ' Due Date: ' + ToString("MCV dose 1 (MCV1) Due Date") else '' /* @dynamicValue: MCV dose 1 (MCV1) Due Date @pseudocode: "Date of birth" + 12 months */ define "MCV dose 1 (MCV1) Due Date": if "MCV dose 1 (MCV1)" then Patient.birthDate + 12 months else null /* @dynamicValue: MCV dose 1 (MCV1) Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "MCV dose 1 (MCV1) Overdue": null /* @dynamicValue: MCV dose 1 (MCV1) Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "MCV dose 1 (MCV1) Expiration": null /* @complete: MCV1 was administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Measles-containing vaccines" and "Type of dose" = "Primary series") = 1 */ define "MCV1 was administered": Encounter."MCV1 was administered" /* @output: MCV2 @description: Provision of MCV2 from the primary series @trigger: MCV1 was administered @pseudo: Count of vaccines administered (where "Vaccine type" = "Measles-containing vaccines" and "Type of dose" = "Primary series") = 1 @triggerDate: "Date of birth" */ define "MCV2": not "MCV2 was administered. The primary series has been completed" /* @output: MCV2 Create @create: The client is due for MCV2 if the client is at least 15 months. */ define "MCV2 Create": if "MCV2" then 'The client is due for MCV2 if the client is at least 15 months.' + ' Due Date: ' + ToString("MCV2 Due Date") else '' /* @dynamicValue: MCV2 Due Date @pseudocode: "Date of birth" + 15 months */ define "MCV2 Due Date": if "MCV2" then Patient.birthDate + 15 months else null /* @dynamicValue: MCV2 Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "MCV2 Overdue": null /* @dynamicValue: MCV2 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "MCV2 Expiration": null /* @complete: MCV2 was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Measles-containing vaccines") */ define "MCV2 was administered. The primary series has been completed": Encounter."MCV2 was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'Measles22.1' then "MCV dose 1 (MCV1)" when Patient.id = 'Measles23.3' then "MCV dose 1 (MCV1)" when Patient.id = 'Measles24.3' then "MCV dose 1 (MCV1)" when Patient.id = 'Measles25.2' then "MCV2" when Patient.id = 'Measles26.3' then "MCV2" when Patient.id = 'Measles27.3' then "MCV2" when Patient.id = 'Measles28.1' then "MCV2 was administered. The primary series has been completed" and not "MCV2" else 'No test case set' end ````: **Id: **
  * ?: IMMZD18SMeaslesLowTransmissionLogic
* * **Content: **text/cql: ````/* * Library: IMMZD18SMeaslesLowTransmissionLogic (IMMZ.D18.S.Measles.Low transmission schedule) * Schedule Table: Schedule for countries with low levels of measles transmission (countries that provide first dose of measles-containing vaccine (MCV) at 12 months and second dose of MCV at 15 months) */ library IMMZD18SMeaslesLowTransmissionLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTMeaslesEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: MCV dose 1 (MCV1) @description: Provision of MCV1 from the primary series @trigger: Child's birth @pseudo: @triggerDate: "Date of birth" */ define "MCV dose 1 (MCV1)": Encounter."No measles primary series doses were administered" /* @output: MCV dose 1 (MCV1) Create @create: The client is due for MCV1 if the client is at least 12 months */ define "MCV dose 1 (MCV1) Create": if "MCV dose 1 (MCV1)" then 'The client is due for MCV1 if the client is at least 12 months' + ' Due Date: ' + ToString("MCV dose 1 (MCV1) Due Date") else '' /* @dynamicValue: MCV dose 1 (MCV1) Due Date @pseudocode: "Date of birth" + 12 months */ define "MCV dose 1 (MCV1) Due Date": if "MCV dose 1 (MCV1)" then Patient.birthDate + 12 months else null /* @dynamicValue: MCV dose 1 (MCV1) Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "MCV dose 1 (MCV1) Overdue": null /* @dynamicValue: MCV dose 1 (MCV1) Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "MCV dose 1 (MCV1) Expiration": null /* @complete: MCV1 was administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Measles-containing vaccines" and "Type of dose" = "Primary series") = 1 */ define "MCV1 was administered": Encounter."MCV1 was administered" /* @output: MCV2 @description: Provision of MCV2 from the primary series @trigger: MCV1 was administered @pseudo: Count of vaccines administered (where "Vaccine type" = "Measles-containing vaccines" and "Type of dose" = "Primary series") = 1 @triggerDate: "Date of birth" */ define "MCV2": not "MCV2 was administered. The primary series has been completed" /* @output: MCV2 Create @create: The client is due for MCV2 if the client is at least 15 months. */ define "MCV2 Create": if "MCV2" then 'The client is due for MCV2 if the client is at least 15 months.' + ' Due Date: ' + ToString("MCV2 Due Date") else '' /* @dynamicValue: MCV2 Due Date @pseudocode: "Date of birth" + 15 months */ define "MCV2 Due Date": if "MCV2" then Patient.birthDate + 15 months else null /* @dynamicValue: MCV2 Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "MCV2 Overdue": null /* @dynamicValue: MCV2 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "MCV2 Expiration": null /* @complete: MCV2 was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Measles-containing vaccines") */ define "MCV2 was administered. The primary series has been completed": Encounter."MCV2 was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'Measles22.1' then "MCV dose 1 (MCV1)" when Patient.id = 'Measles23.3' then "MCV dose 1 (MCV1)" when Patient.id = 'Measles24.3' then "MCV dose 1 (MCV1)" when Patient.id = 'Measles25.2' then "MCV2" when Patient.id = 'Measles26.3' then "MCV2" when Patient.id = 'Measles27.3' then "MCV2" when Patient.id = 'Measles28.1' then "MCV2 was administered. The primary series has been completed" and not "MCV2" else 'No test case set' end ````: **Version: **
  * ?: 0.2.0
* * **Content: **text/cql: ````/* * Library: IMMZD18SMeaslesLowTransmissionLogic (IMMZ.D18.S.Measles.Low transmission schedule) * Schedule Table: Schedule for countries with low levels of measles transmission (countries that provide first dose of measles-containing vaccine (MCV) at 12 months and second dose of MCV at 15 months) */ library IMMZD18SMeaslesLowTransmissionLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTMeaslesEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: MCV dose 1 (MCV1) @description: Provision of MCV1 from the primary series @trigger: Child's birth @pseudo: @triggerDate: "Date of birth" */ define "MCV dose 1 (MCV1)": Encounter."No measles primary series doses were administered" /* @output: MCV dose 1 (MCV1) Create @create: The client is due for MCV1 if the client is at least 12 months */ define "MCV dose 1 (MCV1) Create": if "MCV dose 1 (MCV1)" then 'The client is due for MCV1 if the client is at least 12 months' + ' Due Date: ' + ToString("MCV dose 1 (MCV1) Due Date") else '' /* @dynamicValue: MCV dose 1 (MCV1) Due Date @pseudocode: "Date of birth" + 12 months */ define "MCV dose 1 (MCV1) Due Date": if "MCV dose 1 (MCV1)" then Patient.birthDate + 12 months else null /* @dynamicValue: MCV dose 1 (MCV1) Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "MCV dose 1 (MCV1) Overdue": null /* @dynamicValue: MCV dose 1 (MCV1) Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "MCV dose 1 (MCV1) Expiration": null /* @complete: MCV1 was administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Measles-containing vaccines" and "Type of dose" = "Primary series") = 1 */ define "MCV1 was administered": Encounter."MCV1 was administered" /* @output: MCV2 @description: Provision of MCV2 from the primary series @trigger: MCV1 was administered @pseudo: Count of vaccines administered (where "Vaccine type" = "Measles-containing vaccines" and "Type of dose" = "Primary series") = 1 @triggerDate: "Date of birth" */ define "MCV2": not "MCV2 was administered. The primary series has been completed" /* @output: MCV2 Create @create: The client is due for MCV2 if the client is at least 15 months. */ define "MCV2 Create": if "MCV2" then 'The client is due for MCV2 if the client is at least 15 months.' + ' Due Date: ' + ToString("MCV2 Due Date") else '' /* @dynamicValue: MCV2 Due Date @pseudocode: "Date of birth" + 15 months */ define "MCV2 Due Date": if "MCV2" then Patient.birthDate + 15 months else null /* @dynamicValue: MCV2 Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "MCV2 Overdue": null /* @dynamicValue: MCV2 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "MCV2 Expiration": null /* @complete: MCV2 was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Measles-containing vaccines") */ define "MCV2 was administered. The primary series has been completed": Encounter."MCV2 was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'Measles22.1' then "MCV dose 1 (MCV1)" when Patient.id = 'Measles23.3' then "MCV dose 1 (MCV1)" when Patient.id = 'Measles24.3' then "MCV dose 1 (MCV1)" when Patient.id = 'Measles25.2' then "MCV2" when Patient.id = 'Measles26.3' then "MCV2" when Patient.id = 'Measles27.3' then "MCV2" when Patient.id = 'Measles28.1' then "MCV2 was administered. The primary series has been completed" and not "MCV2" else 'No test case set' end ````: **Url: **
  * ?: [IMMZD18SMeaslesLowTransmissionLogic](Library-IMMZD18SMeaslesLowTransmissionLogic.md)
* * **Content: **text/cql: ````/* * Library: IMMZD18SMeaslesLowTransmissionLogic (IMMZ.D18.S.Measles.Low transmission schedule) * Schedule Table: Schedule for countries with low levels of measles transmission (countries that provide first dose of measles-containing vaccine (MCV) at 12 months and second dose of MCV at 15 months) */ library IMMZD18SMeaslesLowTransmissionLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTMeaslesEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: MCV dose 1 (MCV1) @description: Provision of MCV1 from the primary series @trigger: Child's birth @pseudo: @triggerDate: "Date of birth" */ define "MCV dose 1 (MCV1)": Encounter."No measles primary series doses were administered" /* @output: MCV dose 1 (MCV1) Create @create: The client is due for MCV1 if the client is at least 12 months */ define "MCV dose 1 (MCV1) Create": if "MCV dose 1 (MCV1)" then 'The client is due for MCV1 if the client is at least 12 months' + ' Due Date: ' + ToString("MCV dose 1 (MCV1) Due Date") else '' /* @dynamicValue: MCV dose 1 (MCV1) Due Date @pseudocode: "Date of birth" + 12 months */ define "MCV dose 1 (MCV1) Due Date": if "MCV dose 1 (MCV1)" then Patient.birthDate + 12 months else null /* @dynamicValue: MCV dose 1 (MCV1) Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "MCV dose 1 (MCV1) Overdue": null /* @dynamicValue: MCV dose 1 (MCV1) Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "MCV dose 1 (MCV1) Expiration": null /* @complete: MCV1 was administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Measles-containing vaccines" and "Type of dose" = "Primary series") = 1 */ define "MCV1 was administered": Encounter."MCV1 was administered" /* @output: MCV2 @description: Provision of MCV2 from the primary series @trigger: MCV1 was administered @pseudo: Count of vaccines administered (where "Vaccine type" = "Measles-containing vaccines" and "Type of dose" = "Primary series") = 1 @triggerDate: "Date of birth" */ define "MCV2": not "MCV2 was administered. The primary series has been completed" /* @output: MCV2 Create @create: The client is due for MCV2 if the client is at least 15 months. */ define "MCV2 Create": if "MCV2" then 'The client is due for MCV2 if the client is at least 15 months.' + ' Due Date: ' + ToString("MCV2 Due Date") else '' /* @dynamicValue: MCV2 Due Date @pseudocode: "Date of birth" + 15 months */ define "MCV2 Due Date": if "MCV2" then Patient.birthDate + 15 months else null /* @dynamicValue: MCV2 Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "MCV2 Overdue": null /* @dynamicValue: MCV2 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "MCV2 Expiration": null /* @complete: MCV2 was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Measles-containing vaccines") */ define "MCV2 was administered. The primary series has been completed": Encounter."MCV2 was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'Measles22.1' then "MCV dose 1 (MCV1)" when Patient.id = 'Measles23.3' then "MCV dose 1 (MCV1)" when Patient.id = 'Measles24.3' then "MCV dose 1 (MCV1)" when Patient.id = 'Measles25.2' then "MCV2" when Patient.id = 'Measles26.3' then "MCV2" when Patient.id = 'Measles27.3' then "MCV2" when Patient.id = 'Measles28.1' then "MCV2 was administered. The primary series has been completed" and not "MCV2" else 'No test case set' end ````: **Status: **
  * ?: draft
* * **Content: **text/cql: ````/* * Library: IMMZD18SMeaslesLowTransmissionLogic (IMMZ.D18.S.Measles.Low transmission schedule) * Schedule Table: Schedule for countries with low levels of measles transmission (countries that provide first dose of measles-containing vaccine (MCV) at 12 months and second dose of MCV at 15 months) */ library IMMZD18SMeaslesLowTransmissionLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTMeaslesEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: MCV dose 1 (MCV1) @description: Provision of MCV1 from the primary series @trigger: Child's birth @pseudo: @triggerDate: "Date of birth" */ define "MCV dose 1 (MCV1)": Encounter."No measles primary series doses were administered" /* @output: MCV dose 1 (MCV1) Create @create: The client is due for MCV1 if the client is at least 12 months */ define "MCV dose 1 (MCV1) Create": if "MCV dose 1 (MCV1)" then 'The client is due for MCV1 if the client is at least 12 months' + ' Due Date: ' + ToString("MCV dose 1 (MCV1) Due Date") else '' /* @dynamicValue: MCV dose 1 (MCV1) Due Date @pseudocode: "Date of birth" + 12 months */ define "MCV dose 1 (MCV1) Due Date": if "MCV dose 1 (MCV1)" then Patient.birthDate + 12 months else null /* @dynamicValue: MCV dose 1 (MCV1) Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "MCV dose 1 (MCV1) Overdue": null /* @dynamicValue: MCV dose 1 (MCV1) Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "MCV dose 1 (MCV1) Expiration": null /* @complete: MCV1 was administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Measles-containing vaccines" and "Type of dose" = "Primary series") = 1 */ define "MCV1 was administered": Encounter."MCV1 was administered" /* @output: MCV2 @description: Provision of MCV2 from the primary series @trigger: MCV1 was administered @pseudo: Count of vaccines administered (where "Vaccine type" = "Measles-containing vaccines" and "Type of dose" = "Primary series") = 1 @triggerDate: "Date of birth" */ define "MCV2": not "MCV2 was administered. The primary series has been completed" /* @output: MCV2 Create @create: The client is due for MCV2 if the client is at least 15 months. */ define "MCV2 Create": if "MCV2" then 'The client is due for MCV2 if the client is at least 15 months.' + ' Due Date: ' + ToString("MCV2 Due Date") else '' /* @dynamicValue: MCV2 Due Date @pseudocode: "Date of birth" + 15 months */ define "MCV2 Due Date": if "MCV2" then Patient.birthDate + 15 months else null /* @dynamicValue: MCV2 Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "MCV2 Overdue": null /* @dynamicValue: MCV2 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "MCV2 Expiration": null /* @complete: MCV2 was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Measles-containing vaccines") */ define "MCV2 was administered. The primary series has been completed": Encounter."MCV2 was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'Measles22.1' then "MCV dose 1 (MCV1)" when Patient.id = 'Measles23.3' then "MCV dose 1 (MCV1)" when Patient.id = 'Measles24.3' then "MCV dose 1 (MCV1)" when Patient.id = 'Measles25.2' then "MCV2" when Patient.id = 'Measles26.3' then "MCV2" when Patient.id = 'Measles27.3' then "MCV2" when Patient.id = 'Measles28.1' then "MCV2 was administered. The primary series has been completed" and not "MCV2" else 'No test case set' end ````: **Date: **
  * ?: 2026-03-31 13:43:57+0000
* * **Content: **text/cql: ````/* * Library: IMMZD18SMeaslesLowTransmissionLogic (IMMZ.D18.S.Measles.Low transmission schedule) * Schedule Table: Schedule for countries with low levels of measles transmission (countries that provide first dose of measles-containing vaccine (MCV) at 12 months and second dose of MCV at 15 months) */ library IMMZD18SMeaslesLowTransmissionLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTMeaslesEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: MCV dose 1 (MCV1) @description: Provision of MCV1 from the primary series @trigger: Child's birth @pseudo: @triggerDate: "Date of birth" */ define "MCV dose 1 (MCV1)": Encounter."No measles primary series doses were administered" /* @output: MCV dose 1 (MCV1) Create @create: The client is due for MCV1 if the client is at least 12 months */ define "MCV dose 1 (MCV1) Create": if "MCV dose 1 (MCV1)" then 'The client is due for MCV1 if the client is at least 12 months' + ' Due Date: ' + ToString("MCV dose 1 (MCV1) Due Date") else '' /* @dynamicValue: MCV dose 1 (MCV1) Due Date @pseudocode: "Date of birth" + 12 months */ define "MCV dose 1 (MCV1) Due Date": if "MCV dose 1 (MCV1)" then Patient.birthDate + 12 months else null /* @dynamicValue: MCV dose 1 (MCV1) Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "MCV dose 1 (MCV1) Overdue": null /* @dynamicValue: MCV dose 1 (MCV1) Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "MCV dose 1 (MCV1) Expiration": null /* @complete: MCV1 was administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Measles-containing vaccines" and "Type of dose" = "Primary series") = 1 */ define "MCV1 was administered": Encounter."MCV1 was administered" /* @output: MCV2 @description: Provision of MCV2 from the primary series @trigger: MCV1 was administered @pseudo: Count of vaccines administered (where "Vaccine type" = "Measles-containing vaccines" and "Type of dose" = "Primary series") = 1 @triggerDate: "Date of birth" */ define "MCV2": not "MCV2 was administered. The primary series has been completed" /* @output: MCV2 Create @create: The client is due for MCV2 if the client is at least 15 months. */ define "MCV2 Create": if "MCV2" then 'The client is due for MCV2 if the client is at least 15 months.' + ' Due Date: ' + ToString("MCV2 Due Date") else '' /* @dynamicValue: MCV2 Due Date @pseudocode: "Date of birth" + 15 months */ define "MCV2 Due Date": if "MCV2" then Patient.birthDate + 15 months else null /* @dynamicValue: MCV2 Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "MCV2 Overdue": null /* @dynamicValue: MCV2 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "MCV2 Expiration": null /* @complete: MCV2 was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Measles-containing vaccines") */ define "MCV2 was administered. The primary series has been completed": Encounter."MCV2 was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'Measles22.1' then "MCV dose 1 (MCV1)" when Patient.id = 'Measles23.3' then "MCV dose 1 (MCV1)" when Patient.id = 'Measles24.3' then "MCV dose 1 (MCV1)" when Patient.id = 'Measles25.2' then "MCV2" when Patient.id = 'Measles26.3' then "MCV2" when Patient.id = 'Measles27.3' then "MCV2" when Patient.id = 'Measles28.1' then "MCV2 was administered. The primary series has been completed" and not "MCV2" else 'No test case set' end ````: **Publisher: **
  * ?: WHO
* * **Content: **text/cql: ````/* * Library: IMMZD18SMeaslesLowTransmissionLogic (IMMZ.D18.S.Measles.Low transmission schedule) * Schedule Table: Schedule for countries with low levels of measles transmission (countries that provide first dose of measles-containing vaccine (MCV) at 12 months and second dose of MCV at 15 months) */ library IMMZD18SMeaslesLowTransmissionLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTMeaslesEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: MCV dose 1 (MCV1) @description: Provision of MCV1 from the primary series @trigger: Child's birth @pseudo: @triggerDate: "Date of birth" */ define "MCV dose 1 (MCV1)": Encounter."No measles primary series doses were administered" /* @output: MCV dose 1 (MCV1) Create @create: The client is due for MCV1 if the client is at least 12 months */ define "MCV dose 1 (MCV1) Create": if "MCV dose 1 (MCV1)" then 'The client is due for MCV1 if the client is at least 12 months' + ' Due Date: ' + ToString("MCV dose 1 (MCV1) Due Date") else '' /* @dynamicValue: MCV dose 1 (MCV1) Due Date @pseudocode: "Date of birth" + 12 months */ define "MCV dose 1 (MCV1) Due Date": if "MCV dose 1 (MCV1)" then Patient.birthDate + 12 months else null /* @dynamicValue: MCV dose 1 (MCV1) Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "MCV dose 1 (MCV1) Overdue": null /* @dynamicValue: MCV dose 1 (MCV1) Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "MCV dose 1 (MCV1) Expiration": null /* @complete: MCV1 was administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Measles-containing vaccines" and "Type of dose" = "Primary series") = 1 */ define "MCV1 was administered": Encounter."MCV1 was administered" /* @output: MCV2 @description: Provision of MCV2 from the primary series @trigger: MCV1 was administered @pseudo: Count of vaccines administered (where "Vaccine type" = "Measles-containing vaccines" and "Type of dose" = "Primary series") = 1 @triggerDate: "Date of birth" */ define "MCV2": not "MCV2 was administered. The primary series has been completed" /* @output: MCV2 Create @create: The client is due for MCV2 if the client is at least 15 months. */ define "MCV2 Create": if "MCV2" then 'The client is due for MCV2 if the client is at least 15 months.' + ' Due Date: ' + ToString("MCV2 Due Date") else '' /* @dynamicValue: MCV2 Due Date @pseudocode: "Date of birth" + 15 months */ define "MCV2 Due Date": if "MCV2" then Patient.birthDate + 15 months else null /* @dynamicValue: MCV2 Overdue @pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated. */ define "MCV2 Overdue": null /* @dynamicValue: MCV2 Expiration @pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated. */ define "MCV2 Expiration": null /* @complete: MCV2 was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Measles-containing vaccines") */ define "MCV2 was administered. The primary series has been completed": Encounter."MCV2 was administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'Measles22.1' then "MCV dose 1 (MCV1)" when Patient.id = 'Measles23.3' then "MCV dose 1 (MCV1)" when Patient.id = 'Measles24.3' then "MCV dose 1 (MCV1)" when Patient.id = 'Measles25.2' then "MCV2" when Patient.id = 'Measles26.3' then "MCV2" when Patient.id = 'Measles27.3' then "MCV2" when Patient.id = 'Measles28.1' then "MCV2 was administered. The primary series has been completed" and not "MCV2" else 'No test case set' end ````: **Description: **
  * ?: This library defines decision support logic for the IMMZ.D18.S.Measles.Low transmission schedule table in the Immunization CPG



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "IMMZD18SMeaslesLowTransmissionLogic",
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
  "url" : "http://smart.who.int/immunizations/Library/IMMZD18SMeaslesLowTransmissionLogic",
  "version" : "0.2.0",
  "name" : "IMMZD18SMeaslesLowTransmissionLogic",
  "title" : "IMMZD18SMeaslesLowTransmissionLogic",
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
  "description" : "This library defines decision support logic for the IMMZ.D18.S.Measles.Low transmission schedule table in the Immunization CPG",
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
    "name" : "MCV dose 1 (MCV1)",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "MCV dose 1 (MCV1) Due Date",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "date"
  },
  {
    "name" : "MCV dose 1 (MCV1) Create",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "string"
  },
  {
    "name" : "MCV dose 1 (MCV1) Overdue",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "Resource"
  },
  {
    "name" : "MCV dose 1 (MCV1) Expiration",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "Resource"
  },
  {
    "name" : "MCV1 was administered",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "MCV2 was administered. The primary series has been completed",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "MCV2",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "MCV2 Due Date",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "date"
  },
  {
    "name" : "MCV2 Create",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "string"
  },
  {
    "name" : "MCV2 Overdue",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "Resource"
  },
  {
    "name" : "MCV2 Expiration",
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
    "data" : "LyoKICogTGlicmFyeTogSU1NWkQxOFNNZWFzbGVzTG93VHJhbnNtaXNzaW9uTG9naWMgKElNTVouRDE4LlMuTWVhc2xlcy5Mb3cgdHJhbnNtaXNzaW9uIHNjaGVkdWxlKQogKiBTY2hlZHVsZSBUYWJsZTogU2NoZWR1bGUgZm9yIGNvdW50cmllcyB3aXRoIGxvdyBsZXZlbHMgb2YgbWVhc2xlcyB0cmFuc21pc3Npb24gKGNvdW50cmllcyB0aGF0IHByb3ZpZGUgZmlyc3QgZG9zZSBvZiBtZWFzbGVzLWNvbnRhaW5pbmcgdmFjY2luZSAoTUNWKSBhdCAxMiBtb250aHMgYW5kIHNlY29uZCBkb3NlIG9mIE1DViBhdCAxNSBtb250aHMpCiAqLwpsaWJyYXJ5IElNTVpEMThTTWVhc2xlc0xvd1RyYW5zbWlzc2lvbkxvZ2ljCgp1c2luZyBGSElSIHZlcnNpb24gJzQuMC4xJwppbmNsdWRlIEZISVJIZWxwZXJzIHZlcnNpb24gJzQuMC4xJwoKaW5jbHVkZSBXSE9Db21tb24gY2FsbGVkIFdDCgppbmNsdWRlIElNTVpDb21tb24gY2FsbGVkIENvbW1vbgppbmNsdWRlIElNTVpDb25jZXB0cyBjYWxsZWQgQ29uY2VwdHMKCmluY2x1ZGUgSU1NWkVuY291bnRlckVsZW1lbnRzIGNhbGxlZCBJRQppbmNsdWRlIElNTVpEMkRUTWVhc2xlc0VuY291bnRlckVsZW1lbnRzIGNhbGxlZCBFbmNvdW50ZXIKCnBhcmFtZXRlciBUb2RheSBEYXRlIGRlZmF1bHQgVG9kYXkoKQoKCmNvbnRleHQgUGF0aWVudAoKCi8qCkBvdXRwdXQ6IE1DViBkb3NlIDEgKE1DVjEpCkBkZXNjcmlwdGlvbjogUHJvdmlzaW9uIG9mIE1DVjEgZnJvbSB0aGUgcHJpbWFyeSBzZXJpZXMKQHRyaWdnZXI6IENoaWxkJ3MgYmlydGgKQHBzZXVkbzogCkB0cmlnZ2VyRGF0ZTogIkRhdGUgb2YgYmlydGgiCiovCmRlZmluZSAiTUNWIGRvc2UgMSAoTUNWMSkiOgogIEVuY291bnRlci4iTm8gbWVhc2xlcyBwcmltYXJ5IHNlcmllcyBkb3NlcyB3ZXJlIGFkbWluaXN0ZXJlZCIKCgovKgpAb3V0cHV0OiBNQ1YgZG9zZSAxIChNQ1YxKSBDcmVhdGUKQGNyZWF0ZTogVGhlIGNsaWVudCBpcyBkdWUgZm9yIE1DVjEgaWYgdGhlIGNsaWVudCBpcyBhdCBsZWFzdCAxMiBtb250aHMKKi8KZGVmaW5lICJNQ1YgZG9zZSAxIChNQ1YxKSBDcmVhdGUiOgogIGlmICJNQ1YgZG9zZSAxIChNQ1YxKSIKICB0aGVuICdUaGUgY2xpZW50IGlzIGR1ZSBmb3IgTUNWMSBpZiB0aGUgY2xpZW50IGlzIGF0IGxlYXN0IDEyIG1vbnRocycgKyAnCkR1ZSBEYXRlOiAnICsgVG9TdHJpbmcoIk1DViBkb3NlIDEgKE1DVjEpIER1ZSBEYXRlIikKICBlbHNlICcnCgoKLyoKQGR5bmFtaWNWYWx1ZTogTUNWIGRvc2UgMSAoTUNWMSkgRHVlIERhdGUKQHBzZXVkb2NvZGU6ICJEYXRlIG9mIGJpcnRoIiArIDEyIG1vbnRocwoqLwpkZWZpbmUgIk1DViBkb3NlIDEgKE1DVjEpIER1ZSBEYXRlIjoKICBpZiAiTUNWIGRvc2UgMSAoTUNWMSkiIHRoZW4gUGF0aWVudC5iaXJ0aERhdGUgKyAxMiBtb250aHMKICBlbHNlIG51bGwKCgovKgpAZHluYW1pY1ZhbHVlOiBNQ1YgZG9zZSAxIChNQ1YxKSBPdmVyZHVlCkBwc2V1ZG9jb2RlOiBUbyBiZSBkZXRlcm1pbmVkIGJ5IE1lbWJlciBTdGF0ZXM7IGhvd2V2ZXIsIHRoZXJlIGlzIG5vIHJlY29tbWVuZGVkIG92ZXJkdWUgZGF0ZSBhbmQgaW5kaXZpZHVhbHMgYXJlIGFsd2F5cyBlbGlnaWJsZSB0byBiZSB2YWNjaW5hdGVkLgoqLwpkZWZpbmUgIk1DViBkb3NlIDEgKE1DVjEpIE92ZXJkdWUiOgogIG51bGwKCgovKgpAZHluYW1pY1ZhbHVlOiBNQ1YgZG9zZSAxIChNQ1YxKSBFeHBpcmF0aW9uCkBwc2V1ZG9jb2RlOiBUbyBiZSBkZXRlcm1pbmVkIGJ5IE1lbWJlciBTdGF0ZXM7IGhvd2V2ZXIsIHRoZXJlIGlzIG5vIHJlY29tbWVuZGVkIGV4cGlyYXRpb24gZGF0ZSBhbmQgaW5kaXZpZHVhbHMgYXJlIGFsd2F5cyBlbGlnaWJsZSB0byBiZSB2YWNjaW5hdGVkLgoqLwpkZWZpbmUgIk1DViBkb3NlIDEgKE1DVjEpIEV4cGlyYXRpb24iOgogIG51bGwKCiAgCi8qCkBjb21wbGV0ZTogTUNWMSB3YXMgYWRtaW5pc3RlcmVkCkBwc2V1ZG9jb2RlOiBDb3VudCBvZiB2YWNjaW5lcyBhZG1pbmlzdGVyZWQgKHdoZXJlICJWYWNjaW5lIHR5cGUiID0gIk1lYXNsZXMtY29udGFpbmluZyB2YWNjaW5lcyIgYW5kICJUeXBlIG9mIGRvc2UiID0gIlByaW1hcnkgc2VyaWVzIikgPSAxCiovCmRlZmluZSAiTUNWMSB3YXMgYWRtaW5pc3RlcmVkIjoKICAgRW5jb3VudGVyLiJNQ1YxIHdhcyBhZG1pbmlzdGVyZWQiCgoKCi8qCkBvdXRwdXQ6IE1DVjIKQGRlc2NyaXB0aW9uOiBQcm92aXNpb24gb2YgTUNWMiBmcm9tIHRoZSBwcmltYXJ5IHNlcmllcwpAdHJpZ2dlcjogTUNWMSB3YXMgYWRtaW5pc3RlcmVkCkBwc2V1ZG86IENvdW50IG9mIHZhY2NpbmVzIGFkbWluaXN0ZXJlZCAod2hlcmUgIlZhY2NpbmUgdHlwZSIgPSAiTWVhc2xlcy1jb250YWluaW5nIHZhY2NpbmVzIiBhbmQgIlR5cGUgb2YgZG9zZSIgPSAiUHJpbWFyeSBzZXJpZXMiKSA9IDEKQHRyaWdnZXJEYXRlOiAiRGF0ZSBvZiBiaXJ0aCIKKi8KZGVmaW5lICJNQ1YyIjoKICBub3QgIk1DVjIgd2FzIGFkbWluaXN0ZXJlZC4gVGhlIHByaW1hcnkgc2VyaWVzIGhhcyBiZWVuIGNvbXBsZXRlZCIKCgovKgpAb3V0cHV0OiBNQ1YyIENyZWF0ZQpAY3JlYXRlOiBUaGUgY2xpZW50IGlzIGR1ZSBmb3IgTUNWMiBpZiB0aGUgY2xpZW50IGlzIGF0IGxlYXN0IDE1IG1vbnRocy4KKi8KZGVmaW5lICJNQ1YyIENyZWF0ZSI6CiAgaWYgIk1DVjIiCiAgdGhlbiAnVGhlIGNsaWVudCBpcyBkdWUgZm9yIE1DVjIgaWYgdGhlIGNsaWVudCBpcyBhdCBsZWFzdCAxNSBtb250aHMuJyArICcKRHVlIERhdGU6ICcgKyBUb1N0cmluZygiTUNWMiBEdWUgRGF0ZSIpCiAgZWxzZSAnJwoKCi8qCkBkeW5hbWljVmFsdWU6IE1DVjIgRHVlIERhdGUKQHBzZXVkb2NvZGU6ICJEYXRlIG9mIGJpcnRoIiArIDE1IG1vbnRocwoqLwpkZWZpbmUgIk1DVjIgRHVlIERhdGUiOgogIGlmICJNQ1YyIiB0aGVuIFBhdGllbnQuYmlydGhEYXRlICsgMTUgbW9udGhzCiAgZWxzZSBudWxsCgoKLyoKQGR5bmFtaWNWYWx1ZTogTUNWMiBPdmVyZHVlCkBwc2V1ZG9jb2RlOiBUbyBiZSBkZXRlcm1pbmVkIGJ5IE1lbWJlciBTdGF0ZXM7IGhvd2V2ZXIsIHRoZXJlIGlzIG5vIHJlY29tbWVuZGVkIG92ZXJkdWUgZGF0ZSBhbmQgaW5kaXZpZHVhbHMgYXJlIGFsd2F5cyBlbGlnaWJsZSB0byBiZSB2YWNjaW5hdGVkLgoqLwpkZWZpbmUgIk1DVjIgT3ZlcmR1ZSI6CiAgbnVsbAoKCi8qCkBkeW5hbWljVmFsdWU6IE1DVjIgRXhwaXJhdGlvbgpAcHNldWRvY29kZTogVG8gYmUgZGV0ZXJtaW5lZCBieSBNZW1iZXIgU3RhdGVzOyBob3dldmVyLCB0aGVyZSBpcyBubyByZWNvbW1lbmRlZCBleHBpcmF0aW9uIGRhdGUgYW5kIGluZGl2aWR1YWxzIGFyZSBhbHdheXMgZWxpZ2libGUgdG8gYmUgdmFjY2luYXRlZC4KKi8KZGVmaW5lICJNQ1YyIEV4cGlyYXRpb24iOgogIG51bGwKCiAgCi8qCkBjb21wbGV0ZTogTUNWMiB3YXMgYWRtaW5pc3RlcmVkLiBUaGUgcHJpbWFyeSBzZXJpZXMgaGFzIGJlZW4gY29tcGxldGVkCkBwc2V1ZG9jb2RlOiAiQ29tcGxldGVkIHRoZSBwcmltYXJ5IHZhY2NpbmF0aW9uIHNlcmllcyIgPSBUUlVFICh3aGVyZSAiVmFjY2luZSB0eXBlIiA9ICJNZWFzbGVzLWNvbnRhaW5pbmcgdmFjY2luZXMiKQoqLwpkZWZpbmUgIk1DVjIgd2FzIGFkbWluaXN0ZXJlZC4gVGhlIHByaW1hcnkgc2VyaWVzIGhhcyBiZWVuIGNvbXBsZXRlZCI6CiAgRW5jb3VudGVyLiJNQ1YyIHdhcyBhZG1pbmlzdGVyZWQiCgoKCi8qCkB0ZXN0OiBUZXN0IGV4cGVjdGVkIHJlc3VsdHMgYmFzZWQgb24gZXhhbXBsZSBwYXRpZW50cwoqLwpkZWZpbmUgIlRlc3QgVmFsaWRhdGlvbiI6CiAgY2FzZQogICAgd2hlbiBQYXRpZW50LmlkID0gJ01lYXNsZXMyMi4xJyB0aGVuICJNQ1YgZG9zZSAxIChNQ1YxKSIKICAgIHdoZW4gUGF0aWVudC5pZCA9ICdNZWFzbGVzMjMuMycgdGhlbiAiTUNWIGRvc2UgMSAoTUNWMSkiIAogICAgd2hlbiBQYXRpZW50LmlkID0gJ01lYXNsZXMyNC4zJyB0aGVuICJNQ1YgZG9zZSAxIChNQ1YxKSIgCiAgICB3aGVuIFBhdGllbnQuaWQgPSAnTWVhc2xlczI1LjInIHRoZW4gIk1DVjIiIAogICAgd2hlbiBQYXRpZW50LmlkID0gJ01lYXNsZXMyNi4zJyB0aGVuICJNQ1YyIiAKICAgIHdoZW4gUGF0aWVudC5pZCA9ICdNZWFzbGVzMjcuMycgdGhlbiAiTUNWMiIgCiAgICB3aGVuIFBhdGllbnQuaWQgPSAnTWVhc2xlczI4LjEnIHRoZW4gIk1DVjIgd2FzIGFkbWluaXN0ZXJlZC4gVGhlIHByaW1hcnkgc2VyaWVzIGhhcyBiZWVuIGNvbXBsZXRlZCIgYW5kIG5vdCAiTUNWMiIKICAgIGVsc2UgJ05vIHRlc3QgY2FzZSBzZXQnCiAgZW5kCg=="
  }]
}

```
