/*
 * Library: IMMZD2DTVaricella1DoseLogic (IMMZ.D2.DT.Varicella.1 dose)
 * Rule: Determine if the client is due for a varicella vaccination according to the national immunization schedule
 * Decision Table: Countries where varicella is an important public health burden could consider introducing varicella vaccination in the routine childhood immunization programme. However, resources should be sufficient to ensure reaching and sustaining vaccine coverage ≥ 80%. Decision-making on childhood varicella vaccination should also include consideration of the possible impact on herpes zoster.
The number of doses recommended is dependent on the goal of the vaccination programme. One dose is sufficient to reduce mortality and severe morbidity from varicella but not to prevent limited virus circulation and outbreaks. Two doses have higher effectiveness and should therefore be recommended in countries where the programmatic goal is, in addition to decreasing mortality and severe morbidity, to further reduce the number of cases and outbreaks.
 * Trigger: IMMZ.D2 Determine required vaccination(s) if any
 */
library IMMZD2DTVaricella1DoseLogic

using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1'

include IMMZD2DTVaricellaEncounterElements called Encounter

parameter Today Date default Today()

context Patient


/*
@dynamicValue: Guidance
*/
define "Guidance":
  case 
    when "Client is not due for varicella vaccination" then "Client is not due for varicella vaccination Guidance"
    when "Client is due for varicella vaccination" then "Client is due for varicella vaccination Guidance"
    when "Varicella immunization schedule is complete" then "Varicella immunization schedule is complete Guidance" 
    else ''
  end
  
define "Has Guidance":
  "Guidance" is not null and "Guidance" != ''

/*
@output: Client is not due for varicella vaccination Case 1
@pseudocode: "Immunization recommendation status" = "Not due"
*/
define "Client is not due for varicella vaccination Case 1":
  Encounter."Client's age is less than 12 months"

/*
@output: Client is not due for varicella vaccination Case 2
@pseudocode: "Immunization recommendation status" = "Not due"
*/
define "Client is not due for varicella vaccination Case 2":
  Encounter."No varicella primary series dose was administered"
    and Encounter."Cient's age is more than or equal to 12 months"
    and Encounter."Live vaccine was administered in the past 4 weeks"

/*
@output: Client is not due for varicella vaccination
@pseudocode: "Immunization recommendation status" = "Not due"
*/
define "Client is not due for varicella vaccination":
  "Client is not due for varicella vaccination Case 1"
    or "Client is not due for varicella vaccination Case 2"

/*
@output: Client is not due for varicella vaccination Guidance
@guidance = Should not vaccinate client with varicella dose as client's age is less than 12 months.
Check for any vaccines due and inform the caregiver of when to come back for the first varicella dose.
@guidance = Should not vaccinate client with varicella dose as live vaccine was administered in the past 4 weeks.
Check for any vaccines due and inform the caregiver of when to come back for the first varicella dose.
*/
define "Client is not due for varicella vaccination Guidance":
  case
    when "Client is not due for varicella vaccination Case 1" then 'Should not vaccinate client with varicella dose as client\'s age is less than 12 months.
Check for any vaccines due and inform the caregiver of when to come back for the first varicella dose.'
    when "Client is not due for varicella vaccination Case 2" then 'Should not vaccinate client with varicella dose as live vaccine was administered in the past 4 weeks.
Check for any vaccines due and inform the caregiver of when to come back for the first varicella dose.'
    else ''
  end

/*
@output: Client is due for varicella vaccination
@pseudocode: "Immunization recommendation status" = "Due"
*/
define "Client is due for varicella vaccination":
  Encounter."No varicella primary series dose was administered"
    and Encounter."Cient's age is more than or equal to 12 months"
    and Encounter."No live vaccine was administered in the past 4 weeks"

/*
@output: Client is due for varicella vaccination Guidance
@guidance: Should vaccinate client with varicella dose as no varicella dose was administered, client is within the appropriate age range and no live vaccine was administered in past 4 weeks.
Check for contraindications.
*/
define "Client is due for varicella vaccination Guidance":
  'Should vaccinate client with varicella dose as no varicella dose was administered, client is within the appropriate age range and no live vaccine was administered in past 4 weeks.
Check for contraindications.'

/*
@output: Varicella immunization schedule is complete
@pseudocode: "Immunization recommendation status" = "Complete"
*/
define "Varicella immunization schedule is complete":
  Encounter."One varicella primary series dose was administered"

/*
@output: Varicella immunization schedule is complete Guidance
@guidance: Varicella immunization schedule is complete. One varicella primary series dose was administered.
Check for any vaccines due.
*/
define "Varicella immunization schedule is complete Guidance":
  'Varicella immunization schedule is complete. One varicella primary series dose was administered.
Check for any vaccines due.'


/*
@test: Test expected results based on example patients
*/
define "Test Validation":
  case
    when Patient.id = 'Varicella09.1' then "Client is not due for varicella vaccination Case 1" and "Guidance" = 'Should not vaccinate client with varicella dose as client\'s age is less than 12 months.
Check for any vaccines due and inform the caregiver of when to come back for the first varicella dose.'
    when Patient.id = 'Varicella10.3' then "Client is not due for varicella vaccination Case 2" and "Guidance" = 'Should not vaccinate client with varicella dose as live vaccine was administered in the past 4 weeks.
Check for any vaccines due and inform the caregiver of when to come back for the first varicella dose.'
    when Patient.id = 'Varicella11.3' then "Client is due for varicella vaccination" and "Guidance" = 'Should vaccinate client with varicella dose as no varicella dose was administered, client is within the appropriate age range and no live vaccine was administered in past 4 weeks.
Check for contraindications.'
    when Patient.id = 'Varicella12.1' then "Varicella immunization schedule is complete" and "Guidance" = 'Varicella immunization schedule is complete. One varicella primary series dose was administered.
Check for any vaccines due.'
    else 'No test case set'
  end
