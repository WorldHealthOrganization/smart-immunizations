
/*
 * Library: IMMZD2DTCholeraWCLogic (IMMZ.D2.DT.Cholera.WC vaccines)
 * Rule: Determine if the client is due for a cholera vaccination according to the national immunization schedule
 * Decision Table: Whole-cell (WC) vaccines schedule
 * Trigger: IMMZ.D2 Determine required vaccination(s) if any  
 */
library IMMZD2DTCholeraWCLogic

using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1'

include IMMZD2DTCholeraEncounterElements called Encounter

parameter Today Date default Today()

context Patient


/*
@dynamicValue: Guidance
*/
define "Guidance":
  case
    when "Client is not due for cholera vaccination" then "Client is not due for cholera vaccination Guidance"
    when "Client is due for cholera vaccination" then "Client is due for cholera vaccination Guidance"
    when "Primary series is complete" then "Primary series is complete Guidance"
    when "Client is not due for cholera booster dose" then "Client is not due for cholera booster dose Guidance"
    when "Client is due for cholera booster dose" then "Client is due for cholera booster dose Guidance"
    when "Booster series is complete" then "Booster series is complete Guidance"
    else ''
  end

define "Has Guidance":
  "Guidance" is not null and "Guidance" != ''

/*
@output: Client is not due for cholera vaccination Case 1
@pseudocode: "Immunization recommendation status" = "Not due"
*/
define "Client is not due for cholera vaccination Case 1":
  Encounter."Client's age is less than 1 year"

/*
@output: Client is not due for cholera vaccination Case 2
@pseudocode: "Immunization recommendation status" = "Not due"
*/
define "Client is not due for cholera vaccination Case 2":
  Encounter."Client's age is more than or equal to 1 year"
    and Encounter."Primary series for cholera has not been completed"
    and Encounter."Latest cholera dose number is less than the total number of doses in the series"
    and Encounter."The latest cholera dose was administered less than 14 days ago"

/*
@output: Client is not due for cholera vaccination Case 3
@pseudocode: "Immunization recommendation status" = "Not due"
*/
define "Client is not due for cholera vaccination Case 3":
  Encounter."Client's age is more than or equal to 1 year"
    and Encounter."Primary series for cholera has been completed"
    and Encounter."Cholera primary series was completed less than 3 years ago"

/*
@output: Client is not due for cholera vaccination Case 4
@pseudocode: "Immunization recommendation status" = "Not due"
*/
define "Client is not due for cholera vaccination Case 4":
  Encounter."Client's age is more than or equal to 1 year"
    and Encounter."Primary series for cholera has been completed"
    and Encounter."Cholera primary series was completed more than 3 years ago"
    and Encounter."Booster series for cholera is completed"
    and Encounter."The latest cholera dose was administered less than 3 years ago"

/*
@output: Client is not due for cholera vaccination
@pseudocode: "Immunization recommendation status" = "Not due"
*/
define "Client is not due for cholera vaccination":
  "Client is not due for cholera vaccination Case 1"
    or "Client is not due for cholera vaccination Case 2"
    or "Client is not due for cholera vaccination Case 3"
    or "Client is not due for cholera vaccination Case 4"

/*
@output: Client is not due for cholera vaccination Guidance
@guidance: Should not vaccinate client with cholera dose as client's age is under 1 year.
Check for any vaccines due and inform the caregiver of when to come back for the first cholera dose.
@guidance: Should not vaccinate client with cholera dose as the latest cholera dose was administered less than 14 days ago.
Check for any vaccines due and inform the caregiver of when to come back for the next dose.
@guidance: Should not vaccinate client with cholera booster dose as primary series was completed less than 3 years ago.
Check for any vaccines due and inform the caregiver of when to come back for the first booster dose.
@guidance: Should not vaccinate client with cholera dose as the booster series for cholera was completed less than 3 years ago. 
Check for any vaccines due and inform the caregiver of when to come back for the next booster series.
*/
define "Client is not due for cholera vaccination Guidance":
  case
    when "Client is not due for cholera vaccination Case 1" then 'Should not vaccinate client with cholera dose as client\'s age is under 1 year.
Check for any vaccines due and inform the caregiver of when to come back for the first cholera dose.'
    when "Client is not due for cholera vaccination Case 2" then 'Should not vaccinate client with cholera dose as the latest cholera dose was administered less than 14 days ago.
Check for any vaccines due and inform the caregiver of when to come back for the next dose.'
    when "Client is not due for cholera vaccination Case 3" then 'Should not vaccinate client with cholera booster dose as primary series was completed less than 3 years ago.
Check for any vaccines due and inform the caregiver of when to come back for the first booster dose.'
    when "Client is not due for cholera vaccination Case 4" then 'Should not vaccinate client with cholera dose as the booster series for cholera was completed less than 3 years ago. 
Check for any vaccines due and inform the caregiver of when to come back for the next booster series.'
    else ''
  end

/*
@output: Client is due for cholera vaccination Case 1
@pseudocode: "Immunization recommendation status" = "Due"
*/
define "Client is due for cholera vaccination Case 1":
  Encounter."Client's age is more than or equal to 1 year"
    and Encounter."Primary series for cholera has not been completed"
    and Encounter."Latest cholera dose number is less than the total number of doses in the series"
    and Encounter."The latest cholera dose was administered more than 14 days ago"

/*
@output: Client is due for cholera vaccination Case 2
@pseudocode: "Immunization recommendation status" = "Due"
*/
define "Client is due for cholera vaccination Case 2":
  Encounter."Client's age is more than or equal to 1 year"
    and Encounter."Primary series for cholera has been completed"
    and Encounter."Cholera primary series was completed more than 3 years ago"
    and Encounter."Booster series for cholera is completed"
    and Encounter."The latest cholera dose was administered more than 3 years ago"

/*
@output: Client is due for cholera vaccination
@pseudocode: "Immunization recommendation status" = "Due"
*/
define "Client is due for cholera vaccination":
  "Client is due for cholera vaccination Case 1"
    or "Client is due for cholera vaccination Case 2"

/*
@output: Client is due for cholera vaccination Guidance
@guidance: Should vaccinate client with cholera dose as the latest cholera dose was administered more than 14 days ago.
Check for contraindications.
@guidance: Should vaccinate client with cholera dose as the booster series for cholera was completed more than 3 years ago. 
Check for contraindications. 
*/
define "Client is due for cholera vaccination Guidance":
  case
    when "Client is due for cholera vaccination Case 1" then 'Should vaccinate client with cholera dose as the latest cholera dose was administered more than 14 days ago.
Check for contraindications.'
    when "Client is due for cholera vaccination Case 2" then 'Should vaccinate client with cholera dose as the booster series for cholera was completed more than 3 years ago. 
Check for contraindications. '
    else ''
  end

/*
@output: Primary series is complete
@pseudocode: "Completed the primary vaccination series" (where "Vaccine type" = "Cholera vaccines") = TRUE
*/
define "Primary series is complete":
  Encounter."Client's age is more than or equal to 1 year"
    and Encounter."Primary series for cholera has not been completed"
    and Encounter."Latest cholera dose number is equal to the total number of doses in the series"

/*
@output: Primary series is complete Guidance
@guidance: Primary series for cholera is complete.
Check for any vaccines due and inform the caregiver of when to come back for the first booster dose.
*/
define "Primary series is complete Guidance":
  'Primary series for cholera is complete.
Check for any vaccines due and inform the caregiver of when to come back for the first booster dose.'

/*
@output: Client is not due for cholera booster dose
@pseudocode: "Immunization recommendation status" = "Not due"
*/
define "Client is not due for cholera booster dose":
  Encounter."Client's age is more than or equal to 1 year"
    and Encounter."Primary series for cholera has been completed"
    and Encounter."Cholera primary series was completed more than 3 years ago"
    and Encounter."Booster series for cholera is NOT completed"
    and Encounter."Latest cholera booster dose number is less than the total number of doses in the series"
    and Encounter."The latest cholera dose was administered less than 14 days ago"

/*
@output: Client is not due for cholera booster dose Guidance
@guidance: Should not vaccinate client with cholera booster dose as the latest dose was administered less than 14 days ago.
Check for any vaccines due and inform the caregiver of when to come back for the next dose.
*/
define "Client is not due for cholera booster dose Guidance":
  'Should not vaccinate client with cholera booster dose as the latest dose was administered less than 14 days ago.
Check for any vaccines due and inform the caregiver of when to come back for the next dose.'

/*
@output: Client is due for cholera booster dose
@pseudocode: "Immunization recommendation status" = "Due"
*/
define "Client is due for cholera booster dose":
  Encounter."Client's age is more than or equal to 1 year"
    and Encounter."Primary series for cholera has been completed"
    and Encounter."Cholera primary series was completed more than 3 years ago"
    and Encounter."Booster series for cholera is NOT completed"
    and Encounter."Latest cholera booster dose number is less than the total number of doses in the series"
    and Encounter."The latest cholera dose was administered more than 14 days ago"

/*
@output: Client is due for cholera booster dose Guidance
@guidance: Should vaccinate client with cholera booster dose as the booster series is not completed and the latest cholera dose was administered more than 14 days ago.
Check for contraindications. 
*/
define "Client is due for cholera booster dose Guidance":
  'Should vaccinate client with cholera booster dose as the booster series is not completed and the latest cholera dose was administered more than 14 days ago.
Check for contraindications. '

/*
@output: Booster series is complete
@pseudocode: "Completed the booster series" (where "Vaccine type" = "Cholera vaccines") = TRUE
*/
define "Booster series is complete":
  Encounter."Client's age is more than or equal to 1 year"
    and Encounter."Primary series for cholera has been completed"
    and Encounter."Cholera primary series was completed more than 3 years ago"
    and Encounter."Booster series for cholera is NOT completed"
    and Encounter."Latest cholera booster dose number is equal to the total number of doses in the series"

/*
@output: Booster series is complete Guidance
@guidance: Booster series for cholera is complete. 
Check for any vaccines due and inform the caregiver of when to come back for the next booster series.
*/
define "Booster series is complete Guidance":
  'Booster series for cholera is complete. 
Check for any vaccines due and inform the caregiver of when to come back for the next booster series.'


/*
@test: Test expected results based on example patients
*/
define "Test Validation":
  case
    when Patient.id = '08.0' then "Client is not due for cholera vaccination Case 1" and "Guidance" = 'Should not vaccinate client with cholera dose as client\'s age is under 1 year.
Check for any vaccines due and inform the caregiver of when to come back for the first cholera dose.'
    when Patient.id = '09.0145' then "Client is not due for cholera vaccination Case 2" and "Guidance" = 'Should not vaccinate client with cholera dose as the latest cholera dose was administered less than 14 days ago.
Check for any vaccines due and inform the caregiver of when to come back for the next dose.'
    when Patient.id = '10.0145' then "Client is due for cholera vaccination Case 1" and "Guidance" = 'Should vaccinate client with cholera dose as the latest cholera dose was administered more than 14 days ago.
Check for contraindications.'
    when Patient.id = '11.014' then "Primary series is complete" and "Guidance" = 'Primary series for cholera is complete.
Check for any vaccines due and inform the caregiver of when to come back for the first booster dose.'
    when Patient.id = '12.012' then "Client is not due for cholera vaccination Case 3" and "Guidance" = 'Should not vaccinate client with cholera booster dose as primary series was completed less than 3 years ago.
Check for any vaccines due and inform the caregiver of when to come back for the first booster dose.'
    when Patient.id = '13.012345' then "Client is not due for cholera booster dose" and "Guidance" = 'Should not vaccinate client with cholera booster dose as the latest dose was administered less than 14 days ago.
Check for any vaccines due and inform the caregiver of when to come back for the next dose.'
    when Patient.id = '14.012345' then "Client is due for cholera booster dose" and "Guidance" = 'Should vaccinate client with cholera booster dose as the booster series is not completed and the latest cholera dose was administered more than 14 days ago.
Check for contraindications. '
    when Patient.id = '15.01234' then "Booster series is complete" and "Guidance" = 'Booster series for cholera is complete. 
Check for any vaccines due and inform the caregiver of when to come back for the next booster series.'
    when Patient.id = '16.01235' then "Client is not due for cholera vaccination Case 4" and "Guidance" = 'Should not vaccinate client with cholera dose as the booster series for cholera was completed less than 3 years ago. 
Check for any vaccines due and inform the caregiver of when to come back for the next booster series.'
    when Patient.id = '17.01235' then "Client is due for cholera vaccination Case 2" and "Guidance" = 'Should vaccinate client with cholera dose as the booster series for cholera was completed more than 3 years ago. 
Check for contraindications. '
    else 'No test case set'
  end
