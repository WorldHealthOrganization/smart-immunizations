/*
 * Library: IMMZD2DTRabiesLogic (IMMZ.D2.DT.Rabies)
 * Rule: Determine if the client is due for a rabies vaccination according to the national immunization schedule
 * Decision Table: Pre-exposure prophylaxis (PrEP), 2-dose scheme; high risk of rabies virus exposure
 * Trigger: IMMZ.D2 Determine required vaccination(s) if any
 */
library IMMZD2DTRabiesLogic

using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1'

include IMMZD2DTRabiesEncounterElements called Encounter

parameter Today Date default Today()

context Patient


/*
@dynamicValue: Guidance
*/
define "Guidance":
  case 
    when "Client is due for rabies vaccination" then "Client is due for rabies vaccination Guidance"
    when "Client is not due for rabies vaccination" then "Client is not due for rabies vaccination Guidance"
    when "Rabies immunization schedule is complete" then "Rabies immunization schedule is complete Guidance" 
    else ''
  end
  
define "Has Guidance":
  "Guidance" is not null and "Guidance" != ''

/*
@output: Client is due for rabies vaccination Case 1
@pseudocode: "Immunization recommendation status" = "Due"
*/
define "Client is due for rabies vaccination Case 1":
  Encounter."No rabies primary series doses were administered"

/*
@output: Client is due for rabies vaccination Case 2
@pseudocode: "Immunization recommendation status" = "Due"
*/
define "Client is due for rabies vaccination Case 2":
  Encounter."One rabies primary series doses were administered"
    and Encounter."The latest rabies dose was administered more than 7 days ago"

/*
@output: Client is due for rabies vaccination
@pseudocode: "Immunization recommendation status" = "Due"
*/
define "Client is due for rabies vaccination":
  "Client is due for rabies vaccination Case 1"
    or "Client is due for rabies vaccination Case 2"

/*
@output: Client is due for rabies vaccination Guidance
@guidance = Should vaccinate client with first rabies dose as no rabies doses were administered and client is at high risk of exposure. 
Check for contraindications.
@guidance = Should vaccinate client with second rabies dose as the latest rabies dose was administerd 7 or more days ago. 
Check for contraindications.
*/
define "Client is due for rabies vaccination Guidance":
  case
    when "Client is due for rabies vaccination Case 1" then 'Should vaccinate client with first rabies dose as no rabies doses were administered and client is at high risk of exposure. 
Check for contraindications.'
    when "Client is due for rabies vaccination Case 2" then 'Should vaccinate client with second rabies dose as the latest rabies dose was administerd 7 or more days ago. 
Check for contraindications.'
    else ''
  end

/*
@output: Client is not due for rabies vaccination
@pseudocode: "Immunization recommendation status" = "Not due"
*/
define "Client is not due for rabies vaccination":
  Encounter."One rabies primary series doses were administered"
    and Encounter."The latest rabies dose was administered less than 7 days ago"

/*
@output: Client is not due for rabies vaccination Guidance
@guidance: Should not vaccinate client with second rabies dose as the latest rabies dose was administered less than 7 days ago. 
Check for any other vaccines due and inform the caregiver of when to come back for the second dose.
*/
define "Client is not due for rabies vaccination Guidance":
  'Should not vaccinate client with second rabies dose as the latest rabies dose was administered less than 7 days ago. 
Check for any other vaccines due and inform the caregiver of when to come back for the second dose.'

/*
@output: Rabies immunization schedule is complete
@pseudocode: "Immunization recommendation status" = "Complete"
"Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Rabies vaccines")
*/
define "Rabies immunization schedule is complete":
  Encounter."Two rabies primary series doses were administered"

/*
@output: Rabies immunization schedule is complete Guidance
@guidance: Rabies immunization schedule is complete. Two rabies primary series doses were administered. 
Check for any other vaccines due.
*/
define "Rabies immunization schedule is complete Guidance":
  'Rabies immunization schedule is complete. Two rabies primary series doses were administered. 
Check for any other vaccines due.'


/*
@test: Test expected results based on example patients
*/
define "Test Validation":
  case
    when Patient.id = 'Rabies08.1' then "Client is due for rabies vaccination Case 1" and "Guidance" = 'Should vaccinate client with first rabies dose as no rabies doses were administered and client is at high risk of exposure. 
Check for contraindications.'
    when Patient.id = 'Rabies09.2' then "Client is not due for rabies vaccination" and "Guidance" = 'Should not vaccinate client with second rabies dose as the latest rabies dose was administered less than 7 days ago. 
Check for any other vaccines due and inform the caregiver of when to come back for the second dose.'
    when Patient.id = 'Rabies10.2' then "Client is due for rabies vaccination Case 2" and "Guidance" = 'Should vaccinate client with second rabies dose as the latest rabies dose was administerd 7 or more days ago. 
Check for contraindications.'
    when Patient.id = 'Rabies11.1' then "Rabies immunization schedule is complete" and "Guidance" = 'Rabies immunization schedule is complete. Two rabies primary series doses were administered. 
Check for any other vaccines due.'
    else 'No test case set'
  end
