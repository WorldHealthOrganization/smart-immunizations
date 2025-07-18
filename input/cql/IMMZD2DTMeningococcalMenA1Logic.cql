
/*
 * Library: IMMZD2DTMeningococcalMenA1Logic (IMMZ.D2.DT.Meningococcal.MenA conjugate vaccine 1 dose)
 * Rule: Determine if the client is due for a meningococcal vaccination according to the national immunization schedule
 * Decision Table: MenA conjugate vaccine, 1-dose schedule
 * Trigger: IMMZ.D2 Determine required vaccination(s) if any  
 */
library IMMZD2DTMeningococcalMenA1Logic

using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1'

include IMMZD2DTMeningococcalEncounterElements called Encounter

parameter Today Date default Today()

context Patient


/*
@dynamicValue: Guidance
*/
define "Guidance":
  case
    when "Client is not due for meningococcal vaccination" then "Client is not due for meningococcal vaccination Guidance"
    when "Client is due for meningococcal vaccination" then "Client is due for meningococcal vaccination Guidance"
    when "Meningococcal immunization schedule is complete" then "Meningococcal immunization schedule is complete Guidance"
    else ''
  end

define "Has Guidance":
  "Guidance" is not null and "Guidance" != ''

/*
@output: Client is not due for meningococcal vaccination
@pseudocode: "Immunization recommendation status" = "Not due"
*/
define "Client is not due for meningococcal vaccination":
  Encounter."Client's age is less than 9 months"

/*
@output: Client is not due for meningococcal vaccination Guidance
@guidance: Should not vaccinate client with meningococcal dose as client's age is under 9 months. 
Check for any other vaccines due and inform the caregiver of when to come back for the first dose.
*/
define "Client is not due for meningococcal vaccination Guidance":
  'Should not vaccinate client with meningococcal dose as client\'s age is under 9 months. 
Check for any other vaccines due and inform the caregiver of when to come back for the first dose.'

/*
@output: Client is due for meningococcal vaccination
@pseudocode: "Immunization recommendation status" = "Due"
*/
define "Client is due for meningococcal vaccination":
  Encounter."No meningococcal primary series dose was administered"
    and Encounter."Client's age is more than 9 months"

/*
@output: Client is due for meningococcal vaccination Guidance
@guidance: Should vaccinate client with meningococcal dose as no meningococcal dose was administered and client is within appropriate age range. 
Check for contraindications. 
*/
define "Client is due for meningococcal vaccination Guidance":
  'Should vaccinate client with meningococcal dose as no meningococcal dose was administered and client is within appropriate age range. 
Check for contraindications. '

/*
@output: Meningococcal immunization schedule is complete
@pseudocode: "Immunization recommendation status" = "Complete"
*/
define "Meningococcal immunization schedule is complete":
  Encounter."One meningococcal primary series dose was administered"

/*
@output: Meningococcal immunization schedule is complete Guidance
@guidance: Meningococcal immunization schedule is complete. One meningococcal primary series dose was administered. 
Check for any other vaccines due.
*/
define "Meningococcal immunization schedule is complete Guidance":
  'Meningococcal immunization schedule is complete. One meningococcal primary series dose was administered. 
Check for any other vaccines due.'


/*
@test: Test expected results based on example patients
*/
define "Test Validation":
  case
    when Patient.id = '08.1' then "Client is not due for meningococcal vaccination" and "Guidance" = 'Should not vaccinate client with meningococcal dose as client\'s age is under 9 months. 
Check for any other vaccines due and inform the caregiver of when to come back for the first dose.'
    when Patient.id = '09.01' then "Client is due for meningococcal vaccination" and "Guidance" = 'Should vaccinate client with meningococcal dose as no meningococcal dose was administered and client is within appropriate age range. 
Check for contraindications. '
    when Patient.id = '10.0' then "Meningococcal immunization schedule is complete" and "Guidance" = 'Meningococcal immunization schedule is complete. One meningococcal primary series dose was administered. 
Check for any other vaccines due.'
    else 'No test case set'
  end
