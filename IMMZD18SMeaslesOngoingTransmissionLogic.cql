/*
 * Library: IMMZD18SMeaslesOngoingTransmissionLogic (IMMZ.D18.S.Measles.Ongoing transmission schedule)
 * Schedule Table: Countries with ongoing transmission in which the risk of measles mortality remains high (countries that provide first dose of measles-containing vaccine (MCV) at 9 months and second dose of MCV at 15 months)
 */
library IMMZD18SMeaslesOngoingTransmissionLogic

using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1'

include WHOCommon called WC

include IMMZCommon called Common
include IMMZConcepts called Concepts

include IMMZEncounterElements called IE
include IMMZD2DTMeaslesEncounterElements called Encounter

parameter Today Date default Today()


context Patient


/*
@output: MCV dose 1 (MCV1)
@description: Provision of MCV1 from the primary series
@trigger: Child's birth
@pseudo: 
@triggerDate: "Date of birth"
*/
define "MCV dose 1 (MCV1)":
  Encounter."No measles primary series doses were administered"


/*
@output: MCV dose 1 (MCV1) Create
@create: The client is due for MCV1 if the client is at least 9 months of age.
*/
define "MCV dose 1 (MCV1) Create":
  if "MCV dose 1 (MCV1)"
  then 'The client is due for MCV1 if the client is at least 9 months of age.
Due Date: ' + ToString("MCV dose 1 (MCV1) Due Date")
  else ''


/*
@dynamicValue: MCV dose 1 (MCV1) Due Date
@pseudocode: "Date of birth" + 9 months
*/
define "MCV dose 1 (MCV1) Due Date":
  if "MCV dose 1 (MCV1)" then Patient.birthDate + 9 months
  else null


/*
@dynamicValue: MCV dose 1 (MCV1) Overdue
@pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated.
*/
define "MCV dose 1 (MCV1) Overdue":
  null


/*
@dynamicValue: MCV dose 1 (MCV1) Expiration
@pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated.
*/
define "MCV dose 1 (MCV1) Expiration":
  null

  
/*
@complete: MCV1 was administered
@pseudocode: Count of vaccines administered (where "Vaccine type" = "Measles-containing vaccines" and "Type of dose" = "Primary series") = 1
*/
define "MCV1 was administered":
  Encounter."MCV1 was administered"



/*
@output: MCV2
@description: Provision of the MCV2 from the primary series
@trigger: MCV1 was administered
@pseudo: Count of vaccines administered (where "Vaccine type" = "Measles-containing vaccines" and "Type of dose" = "Primary series") = 1
@triggerDate: "Date of birth"
*/
define "MCV2":
  "MCV1 was administered" and not "MCV2 was administered. The primary series has been completed."


/*
@output: MCV2 Create
@create: The client is due for MCV2 if the client is at least 15 months of age.
*/
define "MCV2 Create":
  if "MCV2"
  then 'The client is due for MCV2 if the client is at least 15 months of age.
Due Date: ' + ToString("MCV2 Due Date")
  else ''


/*
@dynamicValue: MCV2 Due Date
@pseudocode: "Date of birth" + 15 months
*/
define "MCV2 Due Date":
  if "MCV2" then Patient.birthDate + 15 months
  else null


/*
@dynamicValue: MCV2 Overdue
@pseudocode: To be determined by Member States; however, there is no recommended overdue date and individuals are always eligible to be vaccinated.
*/
define "MCV2 Overdue":
  null


/*
@dynamicValue: MCV2 Expiration
@pseudocode: To be determined by Member States; however, there is no recommended expiration date and individuals are always eligible to be vaccinated.
*/
define "MCV2 Expiration":
  null

  
/*
@complete: MCV2 was administered. The primary series has been completed.
@pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Measles-containing vaccines")
*/
define "MCV2 was administered. The primary series has been completed.":
  Encounter."MCV2 was administered"



/*
@test: Test expected results based on example patients
*/
define "Test Validation":
  case
    when Patient.id = 'Measles08.1' then "MCV dose 1 (MCV1)"
    when Patient.id = 'Measles09.3' then "MCV dose 1 (MCV1)" 
    when Patient.id = 'Measles10.3' then "MCV dose 1 (MCV1)" 
    when Patient.id = 'Measles11.2' then "MCV2" 
    when Patient.id = 'Measles12.3' then "MCV2" 
    when Patient.id = 'Measles13.3' then "MCV2" 
    when Patient.id = 'Measles14.1' then "MCV2 was administered. The primary series has been completed." 
    else 'No test case set'
  end
