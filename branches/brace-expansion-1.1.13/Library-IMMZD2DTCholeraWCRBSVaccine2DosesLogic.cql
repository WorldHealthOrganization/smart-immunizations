/*
 * Library: IMMZD2DTCholeraWCRBSVaccine2DosesLogic (IMMZ.D2.DT.Cholera.WC-rBS vaccine 2 doses)
 * Rule: Determine if the client is due for a cholera vaccination according to the national immunization schedule
 * Decision Table: Whole cell-recombinant B subunit (WC-rBS) vaccine, 2-dose schedule for clients aged over 5 years
 * Trigger: IMMZ.D2 Determine required vaccination(s) if any
 */
library IMMZD2DTCholeraWCRBSVaccine2DosesLogic

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
    when "Client is due for cholera vaccination" then "Client is due for cholera vaccination Guidance"
    when "Client is not due for cholera vaccination" then "Client is not due for cholera vaccination Guidance"
    when "Primary series is complete. Client is due for cholera booster dose" then "Primary series is complete. Client is due for cholera booster dose Guidance" 
    else ''
  end
  
define "Has Guidance":
  "Guidance" is not null and "Guidance" != ''

/*
@output: Client is due for cholera vaccination Case 1
@pseudocode: "Immunization recommendation status" = "Due"
*/
define "Client is due for cholera vaccination Case 1":
  Encounter."Client's age is more than 5 years"
    and Encounter."No cholera primary series dose was administered"

/*
@output: Client is due for cholera vaccination Case 2
@pseudocode: "Immunization recommendation status" = "Due"
*/
define "Client is due for cholera vaccination Case 2":
  Encounter."Client's age is more than 5 years"
    and Encounter."At least one cholera primary series dose was administered"
    and Encounter."Dose number of the latest primary series dose is one"
    and Encounter."The latest cholera dose was administered more than 1 week and less than 6 weeks ago"

/*
@output: Client is due for cholera vaccination Case 3
@pseudocode: "Immunization recommendation status" = "Due"
"Completed the booster series" (where "Vaccine type" = "Cholera vaccines") = FALSE when dose 1 is administered
*/
define "Client is due for cholera vaccination Case 3":
  Encounter."Client's age is more than 5 years"
    and Encounter."At least one cholera primary series dose was administered"
    and Encounter."Dose number of the latest primary series dose is one"
    and Encounter."The latest cholera dose was administered more than 6 weeks ago"

/*
@output: Client is due for cholera vaccination Case 4
@pseudocode: "Immunization recommendation status" = "Due"
"Completed the primary vaccination series" (where "Vaccine type" = "Cholera vaccines") = FALSE when dose 1 is administered
*/
define "Client is due for cholera vaccination Case 4":
  Encounter."Client's age is more than 5 years"
    and Encounter."At least one cholera primary series dose was administered"
    and Encounter."Dose number of the latest primary series dose is more than or equal to two"
    and Encounter."The latest cholera dose was administered approximately more than 2 years ago {Member States defined interval}"

/*
@output: Client is due for cholera vaccination
@pseudocode: "Immunization recommendation status" = "Due"
*/
define "Client is due for cholera vaccination":
  "Client is due for cholera vaccination Case 1"
    or "Client is due for cholera vaccination Case 2"
    or "Client is due for cholera vaccination Case 3"
    or "Client is due for cholera vaccination Case 4"

/*
@output: Client is due for cholera vaccination Guidance
@guidance = Should vaccinate client with cholera dose as no cholera doses have been administered.
Check for contraindications.
@guidance = Should vaccinate client with cholera dose as the latest cholera dose was administered in the last 1 to 6 weeks.
Check for contraindications.
@guidance = Should vaccinate client with cholera dose and restart primary series as the latest cholera dose was administered more than 6 weeks ago.
Check for contraindications.
@guidance = Should vaccinate client with cholera dose and restart primary series as the latest cholera dose was administered approximately more than 2 years ago. 
Check for contraindications.
*/
define "Client is due for cholera vaccination Guidance":
  case
    when "Client is due for cholera vaccination Case 1" then 'Should vaccinate client with cholera dose as no cholera doses have been administered.
Check for contraindications.'
    when "Client is due for cholera vaccination Case 2" then 'Should vaccinate client with cholera dose as the latest cholera dose was administered in the last 1 to 6 weeks.
Check for contraindications.'
    when "Client is due for cholera vaccination Case 3" then 'Should vaccinate client with cholera dose and restart primary series as the latest cholera dose was administered more than 6 weeks ago.
Check for contraindications.'
    when "Client is due for cholera vaccination Case 4" then 'Should vaccinate client with cholera dose and restart primary series as the latest cholera dose was administered approximately more than 2 years ago. 
Check for contraindications.'
    else ''
  end

/*
@output: Client is not due for cholera vaccination
@pseudocode: "Immunization recommendation status" = "Not due"
*/
define "Client is not due for cholera vaccination":
  Encounter."Client's age is more than 5 years"
    and Encounter."At least one cholera primary series dose was administered"
    and Encounter."Dose number of the latest primary series dose is one"
    and Encounter."The latest cholera dose was administered less than 1 week ago"

/*
@output: Client is not due for cholera vaccination Guidance
@guidance: Should not vaccinate client with cholera dose as the latest cholera dose was administered less than 1 week ago.
Check for any vaccines due and inform the caregiver of when to come back for the next dose.
*/
define "Client is not due for cholera vaccination Guidance":
  'Should not vaccinate client with cholera dose as the latest cholera dose was administered less than 1 week ago.
Check for any vaccines due and inform the caregiver of when to come back for the next dose.'

/*
@output: Primary series is complete. Client is due for cholera booster dose
@pseudocode: "Immunization recommendation status" = "Due"
"Completed the booster series" (where "Vaccine type" = "Cholera vaccines") = TRUE
*/
define "Primary series is complete. Client is due for cholera booster dose":
  Encounter."Client's age is more than 5 years"
    and Encounter."At least one cholera primary series dose was administered"
    and Encounter."Dose number of the latest primary series dose is more than or equal to two"
    and Encounter."The latest cholera dose was administered approximately less than 2 years ago {Member States defined interval}"

/*
@output: Primary series is complete. Client is due for cholera booster dose Guidance
@guidance: Should vaccinate client with cholera booster dose as the latest cholera dose was administered approximately less than 2 years ago. 
Check for contraindications.
*/
define "Primary series is complete. Client is due for cholera booster dose Guidance":
  'Should vaccinate client with cholera booster dose as the latest cholera dose was administered approximately less than 2 years ago. 
Check for contraindications.'


/*
@test: Test expected results based on example patients
*/
define "Test Validation":
  case
    when Patient.id = 'Cholera44.2' then "Client is due for cholera vaccination Case 1" and "Guidance" = 'Should vaccinate client with cholera dose as no cholera doses have been administered.
Check for contraindications.'
    when Patient.id = 'Cholera45.4' then "Client is not due for cholera vaccination" and "Guidance" = 'Should not vaccinate client with cholera dose as the latest cholera dose was administered less than 1 week ago.
Check for any vaccines due and inform the caregiver of when to come back for the next dose.'
    when Patient.id = 'Cholera46.4' then "Client is due for cholera vaccination Case 2" and "Guidance" = 'Should vaccinate client with cholera dose as the latest cholera dose was administered in the last 1 to 6 weeks.
Check for contraindications.'
    when Patient.id = 'Cholera47.4' then "Client is due for cholera vaccination Case 3" and "Guidance" = 'Should vaccinate client with cholera dose and restart primary series as the latest cholera dose was administered more than 6 weeks ago.
Check for contraindications.'
    when Patient.id = 'Cholera48.4' then "Primary series is complete. Client is due for cholera booster dose" and "Guidance" = 'Should vaccinate client with cholera booster dose as the latest cholera dose was administered approximately less than 2 years ago. 
Check for contraindications.'
    when Patient.id = 'Cholera49.4' then "Client is due for cholera vaccination Case 4" and "Guidance" = 'Should vaccinate client with cholera dose and restart primary series as the latest cholera dose was administered approximately more than 2 years ago. 
Check for contraindications.'
    else 'No test case set'
  end
