# IMMZD18SRabiesLogic - WHO Immunization Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **IMMZD18SRabiesLogic**

## Library: IMMZD18SRabiesLogic 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/immunizations/Library/IMMZD18SRabiesLogic | *Version*:1.0.0 |
| Draft as of 2026-04-09 | *Computable Name*:IMMZD18SRabiesLogic |

 
This library defines decision support logic for the IMMZ.D18.S.Rabies schedule table in the Immunization CPG 

* * **Content: **text/cql: ````/* * Library: IMMZD18SRabiesLogic (IMMZ.D18.S.Rabies schedule) * Schedule Table: Rabies schedule (2-dose scheme) */ library IMMZD18SRabiesLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTRabiesEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Rabies dose 1 @description: Provision of rabies dose 1 @trigger: To be determined by Member States @pseudo: @triggerDate: To be determined by Member States */ define "Rabies dose 1": Encounter."No rabies primary series doses were administered" and not "First rabies dose from the primary series was administered" /* @output: Rabies dose 1 Create @create: Rabies dose 1 should be provided if the client is at a high risk of rabies virus exposure */ define "Rabies dose 1 Create": if "Rabies dose 1" then 'Rabies dose 1 should be provided if the client is at a high risk of rabies virus exposure' else '' /* @dynamicValue: Rabies dose 1 Due Date @pseudocode: To be determined by Member States */ define "Rabies dose 1 Due Date": null /* @dynamicValue: Rabies dose 1 Overdue @pseudocode: To be determined by Member States */ define "Rabies dose 1 Overdue": null /* @dynamicValue: Rabies dose 1 Expiration @pseudocode: To be determined by Member States */ define "Rabies dose 1 Expiration": null /* @complete: First rabies dose from the primary series was administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Rabies vaccines" and "Type of dose" = "Primary series") = 1 */ define "First rabies dose from the primary series was administered": Encounter."One rabies primary series doses were administered" /* @output: Rabies dose 2 @description: Provision of rabies dose 2 @trigger: First rabies dose from the primary series was administered @pseudo: Count of vaccines administered (where "Vaccine type" = "Rabies vaccines" and "Type of dose" = "Primary series") = 1 @triggerDate: "Date and time of vaccination" (where "Vaccine type" = "Rabies vaccines") */ define "Rabies dose 2": "First rabies dose from the primary series was administered" and not "Second rabies dose from the primary series was administered. The primary series has been completed" /* @output: Rabies dose 2 Create @create: Rabies dose 2 should be provided if previous dose was given more than 1 week ago */ define "Rabies dose 2 Create": if "Rabies dose 2" then 'Rabies dose 2 should be provided if previous dose was given more than 1 week ago' + ' Due Date: ' + ToString("Rabies dose 2 Due Date") else '' /* @dynamicValue: Rabies dose 2 Due Date @pseudocode: "Date and time of vaccination" (where "Vaccine type" = "Rabies vaccines") + 7 days */ define "Rabies dose 2 Due Date": if "Rabies dose 2" then Encounter."Date of Latest Rabies Dose" + 7 days else null /* @dynamicValue: Rabies dose 2 Overdue @pseudocode: To be determined by Member States */ define "Rabies dose 2 Overdue": null /* @dynamicValue: Rabies dose 2 Expiration @pseudocode: To be determined by Member States */ define "Rabies dose 2 Expiration": null /* @complete: Second rabies dose from the primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Rabies vaccines") */ define "Second rabies dose from the primary series was administered. The primary series has been completed": Encounter."Two rabies primary series doses were administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'Rabies08.1' then "Rabies dose 1" when Patient.id = 'Rabies09.2' then "Rabies dose 2" when Patient.id = 'Rabies10.2' then "Rabies dose 2" when Patient.id = 'Rabies11.1' then "Second rabies dose from the primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Id: **
  * ?: IMMZD18SRabiesLogic
* * **Content: **text/cql: ````/* * Library: IMMZD18SRabiesLogic (IMMZ.D18.S.Rabies schedule) * Schedule Table: Rabies schedule (2-dose scheme) */ library IMMZD18SRabiesLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTRabiesEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Rabies dose 1 @description: Provision of rabies dose 1 @trigger: To be determined by Member States @pseudo: @triggerDate: To be determined by Member States */ define "Rabies dose 1": Encounter."No rabies primary series doses were administered" and not "First rabies dose from the primary series was administered" /* @output: Rabies dose 1 Create @create: Rabies dose 1 should be provided if the client is at a high risk of rabies virus exposure */ define "Rabies dose 1 Create": if "Rabies dose 1" then 'Rabies dose 1 should be provided if the client is at a high risk of rabies virus exposure' else '' /* @dynamicValue: Rabies dose 1 Due Date @pseudocode: To be determined by Member States */ define "Rabies dose 1 Due Date": null /* @dynamicValue: Rabies dose 1 Overdue @pseudocode: To be determined by Member States */ define "Rabies dose 1 Overdue": null /* @dynamicValue: Rabies dose 1 Expiration @pseudocode: To be determined by Member States */ define "Rabies dose 1 Expiration": null /* @complete: First rabies dose from the primary series was administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Rabies vaccines" and "Type of dose" = "Primary series") = 1 */ define "First rabies dose from the primary series was administered": Encounter."One rabies primary series doses were administered" /* @output: Rabies dose 2 @description: Provision of rabies dose 2 @trigger: First rabies dose from the primary series was administered @pseudo: Count of vaccines administered (where "Vaccine type" = "Rabies vaccines" and "Type of dose" = "Primary series") = 1 @triggerDate: "Date and time of vaccination" (where "Vaccine type" = "Rabies vaccines") */ define "Rabies dose 2": "First rabies dose from the primary series was administered" and not "Second rabies dose from the primary series was administered. The primary series has been completed" /* @output: Rabies dose 2 Create @create: Rabies dose 2 should be provided if previous dose was given more than 1 week ago */ define "Rabies dose 2 Create": if "Rabies dose 2" then 'Rabies dose 2 should be provided if previous dose was given more than 1 week ago' + ' Due Date: ' + ToString("Rabies dose 2 Due Date") else '' /* @dynamicValue: Rabies dose 2 Due Date @pseudocode: "Date and time of vaccination" (where "Vaccine type" = "Rabies vaccines") + 7 days */ define "Rabies dose 2 Due Date": if "Rabies dose 2" then Encounter."Date of Latest Rabies Dose" + 7 days else null /* @dynamicValue: Rabies dose 2 Overdue @pseudocode: To be determined by Member States */ define "Rabies dose 2 Overdue": null /* @dynamicValue: Rabies dose 2 Expiration @pseudocode: To be determined by Member States */ define "Rabies dose 2 Expiration": null /* @complete: Second rabies dose from the primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Rabies vaccines") */ define "Second rabies dose from the primary series was administered. The primary series has been completed": Encounter."Two rabies primary series doses were administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'Rabies08.1' then "Rabies dose 1" when Patient.id = 'Rabies09.2' then "Rabies dose 2" when Patient.id = 'Rabies10.2' then "Rabies dose 2" when Patient.id = 'Rabies11.1' then "Second rabies dose from the primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Version: **
  * ?: 1.0.0
* * **Content: **text/cql: ````/* * Library: IMMZD18SRabiesLogic (IMMZ.D18.S.Rabies schedule) * Schedule Table: Rabies schedule (2-dose scheme) */ library IMMZD18SRabiesLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTRabiesEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Rabies dose 1 @description: Provision of rabies dose 1 @trigger: To be determined by Member States @pseudo: @triggerDate: To be determined by Member States */ define "Rabies dose 1": Encounter."No rabies primary series doses were administered" and not "First rabies dose from the primary series was administered" /* @output: Rabies dose 1 Create @create: Rabies dose 1 should be provided if the client is at a high risk of rabies virus exposure */ define "Rabies dose 1 Create": if "Rabies dose 1" then 'Rabies dose 1 should be provided if the client is at a high risk of rabies virus exposure' else '' /* @dynamicValue: Rabies dose 1 Due Date @pseudocode: To be determined by Member States */ define "Rabies dose 1 Due Date": null /* @dynamicValue: Rabies dose 1 Overdue @pseudocode: To be determined by Member States */ define "Rabies dose 1 Overdue": null /* @dynamicValue: Rabies dose 1 Expiration @pseudocode: To be determined by Member States */ define "Rabies dose 1 Expiration": null /* @complete: First rabies dose from the primary series was administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Rabies vaccines" and "Type of dose" = "Primary series") = 1 */ define "First rabies dose from the primary series was administered": Encounter."One rabies primary series doses were administered" /* @output: Rabies dose 2 @description: Provision of rabies dose 2 @trigger: First rabies dose from the primary series was administered @pseudo: Count of vaccines administered (where "Vaccine type" = "Rabies vaccines" and "Type of dose" = "Primary series") = 1 @triggerDate: "Date and time of vaccination" (where "Vaccine type" = "Rabies vaccines") */ define "Rabies dose 2": "First rabies dose from the primary series was administered" and not "Second rabies dose from the primary series was administered. The primary series has been completed" /* @output: Rabies dose 2 Create @create: Rabies dose 2 should be provided if previous dose was given more than 1 week ago */ define "Rabies dose 2 Create": if "Rabies dose 2" then 'Rabies dose 2 should be provided if previous dose was given more than 1 week ago' + ' Due Date: ' + ToString("Rabies dose 2 Due Date") else '' /* @dynamicValue: Rabies dose 2 Due Date @pseudocode: "Date and time of vaccination" (where "Vaccine type" = "Rabies vaccines") + 7 days */ define "Rabies dose 2 Due Date": if "Rabies dose 2" then Encounter."Date of Latest Rabies Dose" + 7 days else null /* @dynamicValue: Rabies dose 2 Overdue @pseudocode: To be determined by Member States */ define "Rabies dose 2 Overdue": null /* @dynamicValue: Rabies dose 2 Expiration @pseudocode: To be determined by Member States */ define "Rabies dose 2 Expiration": null /* @complete: Second rabies dose from the primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Rabies vaccines") */ define "Second rabies dose from the primary series was administered. The primary series has been completed": Encounter."Two rabies primary series doses were administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'Rabies08.1' then "Rabies dose 1" when Patient.id = 'Rabies09.2' then "Rabies dose 2" when Patient.id = 'Rabies10.2' then "Rabies dose 2" when Patient.id = 'Rabies11.1' then "Second rabies dose from the primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Url: **
  * ?: [IMMZD18SRabiesLogic](Library-IMMZD18SRabiesLogic.md)
* * **Content: **text/cql: ````/* * Library: IMMZD18SRabiesLogic (IMMZ.D18.S.Rabies schedule) * Schedule Table: Rabies schedule (2-dose scheme) */ library IMMZD18SRabiesLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTRabiesEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Rabies dose 1 @description: Provision of rabies dose 1 @trigger: To be determined by Member States @pseudo: @triggerDate: To be determined by Member States */ define "Rabies dose 1": Encounter."No rabies primary series doses were administered" and not "First rabies dose from the primary series was administered" /* @output: Rabies dose 1 Create @create: Rabies dose 1 should be provided if the client is at a high risk of rabies virus exposure */ define "Rabies dose 1 Create": if "Rabies dose 1" then 'Rabies dose 1 should be provided if the client is at a high risk of rabies virus exposure' else '' /* @dynamicValue: Rabies dose 1 Due Date @pseudocode: To be determined by Member States */ define "Rabies dose 1 Due Date": null /* @dynamicValue: Rabies dose 1 Overdue @pseudocode: To be determined by Member States */ define "Rabies dose 1 Overdue": null /* @dynamicValue: Rabies dose 1 Expiration @pseudocode: To be determined by Member States */ define "Rabies dose 1 Expiration": null /* @complete: First rabies dose from the primary series was administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Rabies vaccines" and "Type of dose" = "Primary series") = 1 */ define "First rabies dose from the primary series was administered": Encounter."One rabies primary series doses were administered" /* @output: Rabies dose 2 @description: Provision of rabies dose 2 @trigger: First rabies dose from the primary series was administered @pseudo: Count of vaccines administered (where "Vaccine type" = "Rabies vaccines" and "Type of dose" = "Primary series") = 1 @triggerDate: "Date and time of vaccination" (where "Vaccine type" = "Rabies vaccines") */ define "Rabies dose 2": "First rabies dose from the primary series was administered" and not "Second rabies dose from the primary series was administered. The primary series has been completed" /* @output: Rabies dose 2 Create @create: Rabies dose 2 should be provided if previous dose was given more than 1 week ago */ define "Rabies dose 2 Create": if "Rabies dose 2" then 'Rabies dose 2 should be provided if previous dose was given more than 1 week ago' + ' Due Date: ' + ToString("Rabies dose 2 Due Date") else '' /* @dynamicValue: Rabies dose 2 Due Date @pseudocode: "Date and time of vaccination" (where "Vaccine type" = "Rabies vaccines") + 7 days */ define "Rabies dose 2 Due Date": if "Rabies dose 2" then Encounter."Date of Latest Rabies Dose" + 7 days else null /* @dynamicValue: Rabies dose 2 Overdue @pseudocode: To be determined by Member States */ define "Rabies dose 2 Overdue": null /* @dynamicValue: Rabies dose 2 Expiration @pseudocode: To be determined by Member States */ define "Rabies dose 2 Expiration": null /* @complete: Second rabies dose from the primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Rabies vaccines") */ define "Second rabies dose from the primary series was administered. The primary series has been completed": Encounter."Two rabies primary series doses were administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'Rabies08.1' then "Rabies dose 1" when Patient.id = 'Rabies09.2' then "Rabies dose 2" when Patient.id = 'Rabies10.2' then "Rabies dose 2" when Patient.id = 'Rabies11.1' then "Second rabies dose from the primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Status: **
  * ?: draft
* * **Content: **text/cql: ````/* * Library: IMMZD18SRabiesLogic (IMMZ.D18.S.Rabies schedule) * Schedule Table: Rabies schedule (2-dose scheme) */ library IMMZD18SRabiesLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTRabiesEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Rabies dose 1 @description: Provision of rabies dose 1 @trigger: To be determined by Member States @pseudo: @triggerDate: To be determined by Member States */ define "Rabies dose 1": Encounter."No rabies primary series doses were administered" and not "First rabies dose from the primary series was administered" /* @output: Rabies dose 1 Create @create: Rabies dose 1 should be provided if the client is at a high risk of rabies virus exposure */ define "Rabies dose 1 Create": if "Rabies dose 1" then 'Rabies dose 1 should be provided if the client is at a high risk of rabies virus exposure' else '' /* @dynamicValue: Rabies dose 1 Due Date @pseudocode: To be determined by Member States */ define "Rabies dose 1 Due Date": null /* @dynamicValue: Rabies dose 1 Overdue @pseudocode: To be determined by Member States */ define "Rabies dose 1 Overdue": null /* @dynamicValue: Rabies dose 1 Expiration @pseudocode: To be determined by Member States */ define "Rabies dose 1 Expiration": null /* @complete: First rabies dose from the primary series was administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Rabies vaccines" and "Type of dose" = "Primary series") = 1 */ define "First rabies dose from the primary series was administered": Encounter."One rabies primary series doses were administered" /* @output: Rabies dose 2 @description: Provision of rabies dose 2 @trigger: First rabies dose from the primary series was administered @pseudo: Count of vaccines administered (where "Vaccine type" = "Rabies vaccines" and "Type of dose" = "Primary series") = 1 @triggerDate: "Date and time of vaccination" (where "Vaccine type" = "Rabies vaccines") */ define "Rabies dose 2": "First rabies dose from the primary series was administered" and not "Second rabies dose from the primary series was administered. The primary series has been completed" /* @output: Rabies dose 2 Create @create: Rabies dose 2 should be provided if previous dose was given more than 1 week ago */ define "Rabies dose 2 Create": if "Rabies dose 2" then 'Rabies dose 2 should be provided if previous dose was given more than 1 week ago' + ' Due Date: ' + ToString("Rabies dose 2 Due Date") else '' /* @dynamicValue: Rabies dose 2 Due Date @pseudocode: "Date and time of vaccination" (where "Vaccine type" = "Rabies vaccines") + 7 days */ define "Rabies dose 2 Due Date": if "Rabies dose 2" then Encounter."Date of Latest Rabies Dose" + 7 days else null /* @dynamicValue: Rabies dose 2 Overdue @pseudocode: To be determined by Member States */ define "Rabies dose 2 Overdue": null /* @dynamicValue: Rabies dose 2 Expiration @pseudocode: To be determined by Member States */ define "Rabies dose 2 Expiration": null /* @complete: Second rabies dose from the primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Rabies vaccines") */ define "Second rabies dose from the primary series was administered. The primary series has been completed": Encounter."Two rabies primary series doses were administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'Rabies08.1' then "Rabies dose 1" when Patient.id = 'Rabies09.2' then "Rabies dose 2" when Patient.id = 'Rabies10.2' then "Rabies dose 2" when Patient.id = 'Rabies11.1' then "Second rabies dose from the primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Date: **
  * ?: 2026-04-09 13:50:16+0000
* * **Content: **text/cql: ````/* * Library: IMMZD18SRabiesLogic (IMMZ.D18.S.Rabies schedule) * Schedule Table: Rabies schedule (2-dose scheme) */ library IMMZD18SRabiesLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTRabiesEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Rabies dose 1 @description: Provision of rabies dose 1 @trigger: To be determined by Member States @pseudo: @triggerDate: To be determined by Member States */ define "Rabies dose 1": Encounter."No rabies primary series doses were administered" and not "First rabies dose from the primary series was administered" /* @output: Rabies dose 1 Create @create: Rabies dose 1 should be provided if the client is at a high risk of rabies virus exposure */ define "Rabies dose 1 Create": if "Rabies dose 1" then 'Rabies dose 1 should be provided if the client is at a high risk of rabies virus exposure' else '' /* @dynamicValue: Rabies dose 1 Due Date @pseudocode: To be determined by Member States */ define "Rabies dose 1 Due Date": null /* @dynamicValue: Rabies dose 1 Overdue @pseudocode: To be determined by Member States */ define "Rabies dose 1 Overdue": null /* @dynamicValue: Rabies dose 1 Expiration @pseudocode: To be determined by Member States */ define "Rabies dose 1 Expiration": null /* @complete: First rabies dose from the primary series was administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Rabies vaccines" and "Type of dose" = "Primary series") = 1 */ define "First rabies dose from the primary series was administered": Encounter."One rabies primary series doses were administered" /* @output: Rabies dose 2 @description: Provision of rabies dose 2 @trigger: First rabies dose from the primary series was administered @pseudo: Count of vaccines administered (where "Vaccine type" = "Rabies vaccines" and "Type of dose" = "Primary series") = 1 @triggerDate: "Date and time of vaccination" (where "Vaccine type" = "Rabies vaccines") */ define "Rabies dose 2": "First rabies dose from the primary series was administered" and not "Second rabies dose from the primary series was administered. The primary series has been completed" /* @output: Rabies dose 2 Create @create: Rabies dose 2 should be provided if previous dose was given more than 1 week ago */ define "Rabies dose 2 Create": if "Rabies dose 2" then 'Rabies dose 2 should be provided if previous dose was given more than 1 week ago' + ' Due Date: ' + ToString("Rabies dose 2 Due Date") else '' /* @dynamicValue: Rabies dose 2 Due Date @pseudocode: "Date and time of vaccination" (where "Vaccine type" = "Rabies vaccines") + 7 days */ define "Rabies dose 2 Due Date": if "Rabies dose 2" then Encounter."Date of Latest Rabies Dose" + 7 days else null /* @dynamicValue: Rabies dose 2 Overdue @pseudocode: To be determined by Member States */ define "Rabies dose 2 Overdue": null /* @dynamicValue: Rabies dose 2 Expiration @pseudocode: To be determined by Member States */ define "Rabies dose 2 Expiration": null /* @complete: Second rabies dose from the primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Rabies vaccines") */ define "Second rabies dose from the primary series was administered. The primary series has been completed": Encounter."Two rabies primary series doses were administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'Rabies08.1' then "Rabies dose 1" when Patient.id = 'Rabies09.2' then "Rabies dose 2" when Patient.id = 'Rabies10.2' then "Rabies dose 2" when Patient.id = 'Rabies11.1' then "Second rabies dose from the primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Publisher: **
  * ?: WHO
* * **Content: **text/cql: ````/* * Library: IMMZD18SRabiesLogic (IMMZ.D18.S.Rabies schedule) * Schedule Table: Rabies schedule (2-dose scheme) */ library IMMZD18SRabiesLogic using FHIR version '4.0.1' include FHIRHelpers version '4.0.1' include WHOCommon called WC include IMMZCommon called Common include IMMZConcepts called Concepts include IMMZEncounterElements called IE include IMMZD2DTRabiesEncounterElements called Encounter parameter Today Date default Today() context Patient /* @output: Rabies dose 1 @description: Provision of rabies dose 1 @trigger: To be determined by Member States @pseudo: @triggerDate: To be determined by Member States */ define "Rabies dose 1": Encounter."No rabies primary series doses were administered" and not "First rabies dose from the primary series was administered" /* @output: Rabies dose 1 Create @create: Rabies dose 1 should be provided if the client is at a high risk of rabies virus exposure */ define "Rabies dose 1 Create": if "Rabies dose 1" then 'Rabies dose 1 should be provided if the client is at a high risk of rabies virus exposure' else '' /* @dynamicValue: Rabies dose 1 Due Date @pseudocode: To be determined by Member States */ define "Rabies dose 1 Due Date": null /* @dynamicValue: Rabies dose 1 Overdue @pseudocode: To be determined by Member States */ define "Rabies dose 1 Overdue": null /* @dynamicValue: Rabies dose 1 Expiration @pseudocode: To be determined by Member States */ define "Rabies dose 1 Expiration": null /* @complete: First rabies dose from the primary series was administered @pseudocode: Count of vaccines administered (where "Vaccine type" = "Rabies vaccines" and "Type of dose" = "Primary series") = 1 */ define "First rabies dose from the primary series was administered": Encounter."One rabies primary series doses were administered" /* @output: Rabies dose 2 @description: Provision of rabies dose 2 @trigger: First rabies dose from the primary series was administered @pseudo: Count of vaccines administered (where "Vaccine type" = "Rabies vaccines" and "Type of dose" = "Primary series") = 1 @triggerDate: "Date and time of vaccination" (where "Vaccine type" = "Rabies vaccines") */ define "Rabies dose 2": "First rabies dose from the primary series was administered" and not "Second rabies dose from the primary series was administered. The primary series has been completed" /* @output: Rabies dose 2 Create @create: Rabies dose 2 should be provided if previous dose was given more than 1 week ago */ define "Rabies dose 2 Create": if "Rabies dose 2" then 'Rabies dose 2 should be provided if previous dose was given more than 1 week ago' + ' Due Date: ' + ToString("Rabies dose 2 Due Date") else '' /* @dynamicValue: Rabies dose 2 Due Date @pseudocode: "Date and time of vaccination" (where "Vaccine type" = "Rabies vaccines") + 7 days */ define "Rabies dose 2 Due Date": if "Rabies dose 2" then Encounter."Date of Latest Rabies Dose" + 7 days else null /* @dynamicValue: Rabies dose 2 Overdue @pseudocode: To be determined by Member States */ define "Rabies dose 2 Overdue": null /* @dynamicValue: Rabies dose 2 Expiration @pseudocode: To be determined by Member States */ define "Rabies dose 2 Expiration": null /* @complete: Second rabies dose from the primary series was administered. The primary series has been completed @pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Rabies vaccines") */ define "Second rabies dose from the primary series was administered. The primary series has been completed": Encounter."Two rabies primary series doses were administered" /* @test: Test expected results based on example patients */ define "Test Validation": case when Patient.id = 'Rabies08.1' then "Rabies dose 1" when Patient.id = 'Rabies09.2' then "Rabies dose 2" when Patient.id = 'Rabies10.2' then "Rabies dose 2" when Patient.id = 'Rabies11.1' then "Second rabies dose from the primary series was administered. The primary series has been completed" else 'No test case set' end ````: **Description: **
  * ?: This library defines decision support logic for the IMMZ.D18.S.Rabies schedule table in the Immunization CPG



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "IMMZD18SRabiesLogic",
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
  "url" : "http://smart.who.int/immunizations/Library/IMMZD18SRabiesLogic",
  "version" : "1.0.0",
  "name" : "IMMZD18SRabiesLogic",
  "title" : "IMMZD18SRabiesLogic",
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
  "description" : "This library defines decision support logic for the IMMZ.D18.S.Rabies schedule table in the Immunization CPG",
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
    "resource" : "http://smart.who.int/immunizations/Library/IMMZD2DTRabiesEncounterElements"
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
    "name" : "First rabies dose from the primary series was administered",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "Rabies dose 1",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "Rabies dose 1 Create",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "string"
  },
  {
    "name" : "Rabies dose 1 Due Date",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "Resource"
  },
  {
    "name" : "Rabies dose 1 Overdue",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "Resource"
  },
  {
    "name" : "Rabies dose 1 Expiration",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "Resource"
  },
  {
    "name" : "Second rabies dose from the primary series was administered. The primary series has been completed",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "Rabies dose 2",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "boolean"
  },
  {
    "name" : "Rabies dose 2 Due Date",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "date"
  },
  {
    "name" : "Rabies dose 2 Create",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "string"
  },
  {
    "name" : "Rabies dose 2 Overdue",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "type" : "Resource"
  },
  {
    "name" : "Rabies dose 2 Expiration",
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
    "data" : "LyoKICogTGlicmFyeTogSU1NWkQxOFNSYWJpZXNMb2dpYyAoSU1NWi5EMTguUy5SYWJpZXMgc2NoZWR1bGUpCiAqIFNjaGVkdWxlIFRhYmxlOiBSYWJpZXMgc2NoZWR1bGUgKDItZG9zZSBzY2hlbWUpCiAqLwpsaWJyYXJ5IElNTVpEMThTUmFiaWVzTG9naWMKCnVzaW5nIEZISVIgdmVyc2lvbiAnNC4wLjEnCmluY2x1ZGUgRkhJUkhlbHBlcnMgdmVyc2lvbiAnNC4wLjEnCgppbmNsdWRlIFdIT0NvbW1vbiBjYWxsZWQgV0MKCmluY2x1ZGUgSU1NWkNvbW1vbiBjYWxsZWQgQ29tbW9uCmluY2x1ZGUgSU1NWkNvbmNlcHRzIGNhbGxlZCBDb25jZXB0cwoKaW5jbHVkZSBJTU1aRW5jb3VudGVyRWxlbWVudHMgY2FsbGVkIElFCmluY2x1ZGUgSU1NWkQyRFRSYWJpZXNFbmNvdW50ZXJFbGVtZW50cyBjYWxsZWQgRW5jb3VudGVyCgpwYXJhbWV0ZXIgVG9kYXkgRGF0ZSBkZWZhdWx0IFRvZGF5KCkKCgpjb250ZXh0IFBhdGllbnQKCgovKgpAb3V0cHV0OiBSYWJpZXMgZG9zZSAxCkBkZXNjcmlwdGlvbjogUHJvdmlzaW9uIG9mIHJhYmllcyBkb3NlIDEKQHRyaWdnZXI6IFRvIGJlIGRldGVybWluZWQgYnkgTWVtYmVyIFN0YXRlcwpAcHNldWRvOiAKQHRyaWdnZXJEYXRlOiBUbyBiZSBkZXRlcm1pbmVkIGJ5IE1lbWJlciBTdGF0ZXMKKi8KZGVmaW5lICJSYWJpZXMgZG9zZSAxIjoKICBFbmNvdW50ZXIuIk5vIHJhYmllcyBwcmltYXJ5IHNlcmllcyBkb3NlcyB3ZXJlIGFkbWluaXN0ZXJlZCIKICBhbmQgbm90ICJGaXJzdCByYWJpZXMgZG9zZSBmcm9tIHRoZSBwcmltYXJ5IHNlcmllcyB3YXMgYWRtaW5pc3RlcmVkIgoKCi8qCkBvdXRwdXQ6IFJhYmllcyBkb3NlIDEgQ3JlYXRlCkBjcmVhdGU6IFJhYmllcyBkb3NlIDEgc2hvdWxkIGJlIHByb3ZpZGVkIGlmIHRoZSBjbGllbnQgaXMgYXQgYSBoaWdoIHJpc2sgb2YgcmFiaWVzIHZpcnVzIGV4cG9zdXJlCiovCmRlZmluZSAiUmFiaWVzIGRvc2UgMSBDcmVhdGUiOgogIGlmICJSYWJpZXMgZG9zZSAxIgogIHRoZW4gJ1JhYmllcyBkb3NlIDEgc2hvdWxkIGJlIHByb3ZpZGVkIGlmIHRoZSBjbGllbnQgaXMgYXQgYSBoaWdoIHJpc2sgb2YgcmFiaWVzIHZpcnVzIGV4cG9zdXJlJwogIGVsc2UgJycKCgovKgpAZHluYW1pY1ZhbHVlOiBSYWJpZXMgZG9zZSAxIER1ZSBEYXRlCkBwc2V1ZG9jb2RlOiBUbyBiZSBkZXRlcm1pbmVkIGJ5IE1lbWJlciBTdGF0ZXMKKi8KZGVmaW5lICJSYWJpZXMgZG9zZSAxIER1ZSBEYXRlIjoKICBudWxsCgoKLyoKQGR5bmFtaWNWYWx1ZTogUmFiaWVzIGRvc2UgMSBPdmVyZHVlCkBwc2V1ZG9jb2RlOiBUbyBiZSBkZXRlcm1pbmVkIGJ5IE1lbWJlciBTdGF0ZXMKKi8KZGVmaW5lICJSYWJpZXMgZG9zZSAxIE92ZXJkdWUiOgogIG51bGwKCgovKgpAZHluYW1pY1ZhbHVlOiBSYWJpZXMgZG9zZSAxIEV4cGlyYXRpb24KQHBzZXVkb2NvZGU6IFRvIGJlIGRldGVybWluZWQgYnkgTWVtYmVyIFN0YXRlcwoqLwpkZWZpbmUgIlJhYmllcyBkb3NlIDEgRXhwaXJhdGlvbiI6CiAgbnVsbAoKICAKLyoKQGNvbXBsZXRlOiBGaXJzdCByYWJpZXMgZG9zZSBmcm9tIHRoZSBwcmltYXJ5IHNlcmllcyB3YXMgYWRtaW5pc3RlcmVkCkBwc2V1ZG9jb2RlOiBDb3VudCBvZiB2YWNjaW5lcyBhZG1pbmlzdGVyZWQgKHdoZXJlICJWYWNjaW5lIHR5cGUiID0gIlJhYmllcyB2YWNjaW5lcyIgYW5kICJUeXBlIG9mIGRvc2UiID0gIlByaW1hcnkgc2VyaWVzIikgPSAxCiovCmRlZmluZSAiRmlyc3QgcmFiaWVzIGRvc2UgZnJvbSB0aGUgcHJpbWFyeSBzZXJpZXMgd2FzIGFkbWluaXN0ZXJlZCI6CiAgRW5jb3VudGVyLiJPbmUgcmFiaWVzIHByaW1hcnkgc2VyaWVzIGRvc2VzIHdlcmUgYWRtaW5pc3RlcmVkIgoKCgovKgpAb3V0cHV0OiBSYWJpZXMgZG9zZSAyCkBkZXNjcmlwdGlvbjogUHJvdmlzaW9uIG9mIHJhYmllcyBkb3NlIDIKQHRyaWdnZXI6IEZpcnN0IHJhYmllcyBkb3NlIGZyb20gdGhlIHByaW1hcnkgc2VyaWVzIHdhcyBhZG1pbmlzdGVyZWQKQHBzZXVkbzogQ291bnQgb2YgdmFjY2luZXMgYWRtaW5pc3RlcmVkICh3aGVyZSAiVmFjY2luZSB0eXBlIiA9ICJSYWJpZXMgdmFjY2luZXMiIGFuZCAiVHlwZSBvZiBkb3NlIiA9ICJQcmltYXJ5IHNlcmllcyIpID0gMQpAdHJpZ2dlckRhdGU6ICJEYXRlIGFuZCB0aW1lIG9mIHZhY2NpbmF0aW9uIiAod2hlcmUgIlZhY2NpbmUgdHlwZSIgPSAiUmFiaWVzIHZhY2NpbmVzIikKKi8KZGVmaW5lICJSYWJpZXMgZG9zZSAyIjoKICAiRmlyc3QgcmFiaWVzIGRvc2UgZnJvbSB0aGUgcHJpbWFyeSBzZXJpZXMgd2FzIGFkbWluaXN0ZXJlZCIKICBhbmQgbm90ICJTZWNvbmQgcmFiaWVzIGRvc2UgZnJvbSB0aGUgcHJpbWFyeSBzZXJpZXMgd2FzIGFkbWluaXN0ZXJlZC4gVGhlIHByaW1hcnkgc2VyaWVzIGhhcyBiZWVuIGNvbXBsZXRlZCIKCgovKgpAb3V0cHV0OiBSYWJpZXMgZG9zZSAyIENyZWF0ZQpAY3JlYXRlOiBSYWJpZXMgZG9zZSAyIHNob3VsZCBiZSBwcm92aWRlZCBpZiBwcmV2aW91cyBkb3NlIHdhcyBnaXZlbiBtb3JlIHRoYW4gMSB3ZWVrIGFnbwoqLwpkZWZpbmUgIlJhYmllcyBkb3NlIDIgQ3JlYXRlIjoKICBpZiAiUmFiaWVzIGRvc2UgMiIKICB0aGVuICdSYWJpZXMgZG9zZSAyIHNob3VsZCBiZSBwcm92aWRlZCBpZiBwcmV2aW91cyBkb3NlIHdhcyBnaXZlbiBtb3JlIHRoYW4gMSB3ZWVrIGFnbycgKyAnCkR1ZSBEYXRlOiAnICsgVG9TdHJpbmcoIlJhYmllcyBkb3NlIDIgRHVlIERhdGUiKQogIGVsc2UgJycKCgovKgpAZHluYW1pY1ZhbHVlOiBSYWJpZXMgZG9zZSAyIER1ZSBEYXRlCkBwc2V1ZG9jb2RlOiAiRGF0ZSBhbmQgdGltZSBvZiB2YWNjaW5hdGlvbiIgKHdoZXJlICJWYWNjaW5lIHR5cGUiID0gIlJhYmllcyB2YWNjaW5lcyIpICsgNyBkYXlzCiovCmRlZmluZSAiUmFiaWVzIGRvc2UgMiBEdWUgRGF0ZSI6CiAgaWYgIlJhYmllcyBkb3NlIDIiIHRoZW4gRW5jb3VudGVyLiJEYXRlIG9mIExhdGVzdCBSYWJpZXMgRG9zZSIgKyA3IGRheXMKICBlbHNlIG51bGwKCgovKgpAZHluYW1pY1ZhbHVlOiBSYWJpZXMgZG9zZSAyIE92ZXJkdWUKQHBzZXVkb2NvZGU6IFRvIGJlIGRldGVybWluZWQgYnkgTWVtYmVyIFN0YXRlcwoqLwpkZWZpbmUgIlJhYmllcyBkb3NlIDIgT3ZlcmR1ZSI6CiAgbnVsbAoKCi8qCkBkeW5hbWljVmFsdWU6IFJhYmllcyBkb3NlIDIgRXhwaXJhdGlvbgpAcHNldWRvY29kZTogVG8gYmUgZGV0ZXJtaW5lZCBieSBNZW1iZXIgU3RhdGVzCiovCmRlZmluZSAiUmFiaWVzIGRvc2UgMiBFeHBpcmF0aW9uIjoKICBudWxsCgogIAovKgpAY29tcGxldGU6IFNlY29uZCByYWJpZXMgZG9zZSBmcm9tIHRoZSBwcmltYXJ5IHNlcmllcyB3YXMgYWRtaW5pc3RlcmVkLiBUaGUgcHJpbWFyeSBzZXJpZXMgaGFzIGJlZW4gY29tcGxldGVkCkBwc2V1ZG9jb2RlOiAiQ29tcGxldGVkIHRoZSBwcmltYXJ5IHZhY2NpbmF0aW9uIHNlcmllcyIgPSBUUlVFICh3aGVyZSAiVmFjY2luZSB0eXBlIiA9ICJSYWJpZXMgdmFjY2luZXMiKQoqLwpkZWZpbmUgIlNlY29uZCByYWJpZXMgZG9zZSBmcm9tIHRoZSBwcmltYXJ5IHNlcmllcyB3YXMgYWRtaW5pc3RlcmVkLiBUaGUgcHJpbWFyeSBzZXJpZXMgaGFzIGJlZW4gY29tcGxldGVkIjoKICBFbmNvdW50ZXIuIlR3byByYWJpZXMgcHJpbWFyeSBzZXJpZXMgZG9zZXMgd2VyZSBhZG1pbmlzdGVyZWQiCgoKCi8qCkB0ZXN0OiBUZXN0IGV4cGVjdGVkIHJlc3VsdHMgYmFzZWQgb24gZXhhbXBsZSBwYXRpZW50cwoqLwpkZWZpbmUgIlRlc3QgVmFsaWRhdGlvbiI6CiAgY2FzZQogICAgd2hlbiBQYXRpZW50LmlkID0gJ1JhYmllczA4LjEnIHRoZW4gIlJhYmllcyBkb3NlIDEiCiAgICB3aGVuIFBhdGllbnQuaWQgPSAnUmFiaWVzMDkuMicgdGhlbiAiUmFiaWVzIGRvc2UgMiIKICAgIHdoZW4gUGF0aWVudC5pZCA9ICdSYWJpZXMxMC4yJyB0aGVuICJSYWJpZXMgZG9zZSAyIgogICAgd2hlbiBQYXRpZW50LmlkID0gJ1JhYmllczExLjEnIHRoZW4gIlNlY29uZCByYWJpZXMgZG9zZSBmcm9tIHRoZSBwcmltYXJ5IHNlcmllcyB3YXMgYWRtaW5pc3RlcmVkLiBUaGUgcHJpbWFyeSBzZXJpZXMgaGFzIGJlZW4gY29tcGxldGVkIgogICAgZWxzZSAnTm8gdGVzdCBjYXNlIHNldCcKICBlbmQK"
  }]
}

```
