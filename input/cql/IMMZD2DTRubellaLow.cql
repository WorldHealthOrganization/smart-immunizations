
/*
 * Library: IMMZD2DTRubellaLow (IMMZ.D2.DT.Rubella.Low incidence)
 * Rule: Determine if the client is due for a rubella vaccination according to the national immunization schedule
 * Decision Table: Countries with low incidence of measles						
 * Trigger: IMMZ.D2  Determine required vaccination(s) if any
 */
library IMMZD2DTRubellaLow
// Start Skeleton CQL
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1'
include IMMZCommon called IMMZCom
include IMMZConcepts called IMMZc
include IMMZConfig called IMMZCon
include IMMZVaccineLibrary called IMMZvl
include FHIRCommon called FC
include IMMZD2DTRubellaInput called input

// End Skeleton CQL
context Patient

/*
@dynamicValue: Guidance
*/
define "Guidance":
  case
    when "Client is not due for rubella vaccination" then "Client is not due for rubella vaccination Guidance"
    when "Client is due for rubella vaccination" then "Client is due for rubella vaccination Guidance"
    when "Rubella immunization schedule is complete" then "Rubella immunization schedule is complete Guidance"
    else ''
  end

/*
@output: Client is not due for rubella vaccination Case 1
@pseudocode: '"Immunization recommendation status" = 'Not due'
*/
define "Client is not due for rubella vaccination Case 1":
  input."Client's age is less than 12 months"

/*
@output: Client is not due for rubella vaccination Case 2
@pseudocode: "Immunization recommendation status" = 'Not due'
*/
define "Client is not due for rubella vaccination Case 2":
  input."No rubella primary series dose was administered"
    and input."Client's age is more than or equal to 12 months"
    and input."Live vaccine was administered in the last 4 weeks"

/*
@output: Client is not due for rubella vaccination
@pseudocode: '"Immunization recommendation status" = 'Not due'
*/
define "Client is not due for rubella vaccination":
  "Client is not due for rubella vaccination Case 1"
    or "Client is not due for rubella vaccination Case 2"

/*
@output: Client is not due for rubella vaccination Guidance
@guidance: Should not vaccinate client for rubella dose. Check for any vaccines due, and inform the caregiver of when to come back for the first dose
@guidance: Should not vaccinate client for rubella dose as live vaccine was administered in the last 4 weeks. Check for any other vaccines due.
*/
define "Client is not due for rubella vaccination Guidance":
  case
    when "Client is not due for rubella vaccination Case 1" then 'Should not vaccinate client for rubella dose. Check for any vaccines due, and inform the caregiver of when to come back for the first dose'
    when "Client is not due for rubella vaccination Case 2" then 'Should not vaccinate client for rubella dose as live vaccine was administered in the last 4 weeks. Check for any other vaccines due.'
    else ''
  end

/*
@output: Client is due for rubella vaccination
@pseudocode: '"Immunization recommendation status" = 'Due'
*/
define "Client is due for rubella vaccination":
  input."No rubella primary series dose was administered"
    and input."Client's age is more than or equal to 12 months"
    and input."No live vaccine was administered in the last 4 weeks"

/*
@output: Client is due for rubella vaccination Guidance
@guidance: Should vaccinate client for rubella dose as no rubella doses were administered, client is within appropriate age range and no live vaccine was administered in the last 4 weeks. Check for contraindications. 
*/
define "Client is due for rubella vaccination Guidance":
  'Should vaccinate client for rubella dose as no rubella doses were administered, client is within appropriate age range and no live vaccine was administered in the last 4 weeks. Check for contraindications. '

/*
@output: Rubella immunization schedule is complete
@pseudocode: '"Immunization recommendation status" = 'Complete'
*/
define "Rubella immunization schedule is complete":
  input."One rubella primary series dose was administered"

/*
@output: Rubella immunization schedule is complete Guidance
@guidance: Rubella immunization schedule is complete. One rubella primary series dose was administered. Check for any other vaccines due.
*/
define "Rubella immunization schedule is complete Guidance":
  'Rubella immunization schedule is complete. One rubella primary series dose was administered. Check for any other vaccines due.'


/*
@test: Test expected results based on example patients
*/
define "Test Validation":
  case
    when Patient.id = '19.Alt12m' then "Client is not due for rubella vaccination Case 1" and "Guidance" = 'Should not vaccinate client for rubella dose. Check for any vaccines due, and inform the caregiver of when to come back for the first dose'
    when Patient.id = '20.D0Agt12mLVgt4w' then "Client is due for rubella vaccination" and "Guidance" = 'Should vaccinate client for rubella dose as no rubella doses were administered, client is within appropriate age range and no live vaccine was administered in the last 4 weeks. Check for contraindications. '
    when Patient.id = '21.D0Agt12mLVlt4w' then "Client is not due for rubella vaccination Case 2" and "Guidance" = 'Should not vaccinate client for rubella dose as live vaccine was administered in the last 4 weeks. Check for any other vaccines due.'
    when Patient.id = '22.D1' then "Rubella immunization schedule is complete" and "Guidance" = 'Rubella immunization schedule is complete. One rubella primary series dose was administered. Check for any other vaccines due.'
    else 'No test case set'
  end
