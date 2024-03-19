
/*
 * Library: IMMZD2DTDTPPregnancy3 (IMMZ.D2.DT.DTP.Pregnancy starting with 3 doses)
 * Rule: Determine if the client is due for a diphtheria, tetanus and pertussis vaccination according to the national immunization schedule
 * Decision Table: Diphtheria and tetanus vaccine schedule in pregnant women who received 3 childhood diphtheria-tetanus-pertussis (DTP) doses
 * Trigger: IMMZ.D2 Determine required vaccination(s) if any
 */
library IMMZD2DTDTPPregnancy3
// Start Skeleton CQL
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1'
include IMMZCommon called IMMZCom
include IMMZConcepts called IMMZc
include IMMZConfig called IMMZCon
include IMMZVaccineLibrary called IMMZvl
include FHIRCommon called FC
include IMMZD2DTDTPInput called input

// End Skeleton CQL
context Patient



/*
@dynamicValue: Guidance
*/
define "Guidance":
  case
    when "Client is due for tetanus and diphtheria booster dose" then "Client is due for tetanus and diphtheria booster dose Guidance"
    when "Client is not due for tetanus and diphtheria booster dose" then "Client is not due for tetanus and diphtheria booster dose Guidance"
    when "Tetanus and diphtheria immunization schedule is complete" then "Tetanus and diphtheria immunization schedule is complete Guidance"
    else ''
  end

/*
@output: Client is due for tetanus and diphtheria booster dose Case 1
@pseudocode: "Immunization recommendation status" = "Due" (where "Vaccine type" = "Tetanus and diphtheria containing vaccines")
*/
define "Client is due for tetanus and diphtheria booster dose Case 1":
  input."Three DTP primary series doses were administered"
    and input."No tetanus and diphtheria booster doses were administered"
    and input."Client is currently pregnant"

/*
@output: Client is due for tetanus and diphtheria booster dose Case 2
@pseudocode: "Immunization recommendation status" = "Due" (where "Vaccine type" = "Tetanus and diphtheria containing vaccines")
*/
define "Client is due for tetanus and diphtheria booster dose Case 2":
  input."Three DTP primary series doses were administered"
    and input."One tetanus and diphtheria booster dose was administered"
    and input."Client is currently pregnant"
    and input."The latest tetanus and diphtheria dose was administered more than 4 weeks ago"

/*
@output: Client is due for tetanus and diphtheria booster dose Case 3
@pseudocode: "Immunization recommendation status" = "Due" (where "Vaccine type" = "Tetanus and diphtheria containing vaccines")
*/
define "Client is due for tetanus and diphtheria booster dose Case 3":
  input."Three DTP primary series doses were administered"
    and input."Two tetanus and diphtheria booster doses were administered"
    and input."The latest tetanus and diphtheria dose was administered more than 1 year ago"

/*
@output: Client is due for tetanus and diphtheria booster dose
@pseudocode: "Immunization recommendation status" = "Due" (where "Vaccine type" = "Tetanus and diphtheria containing vaccines")
*/
define "Client is due for tetanus and diphtheria booster dose":
  "Client is due for tetanus and diphtheria booster dose Case 1"
    or "Client is due for tetanus and diphtheria booster dose Case 2"
    or "Client is due for tetanus and diphtheria booster dose Case 3"

/*
@output: Client is due for tetanus and diphtheria booster dose Guidance
@guidance: Should vaccinate client for first tetanus and diphtheria booster dose as three DTP primary series doses were already administered and client is currently pregnant. Check for contraindications.
@guidance: Should vaccinate client for second tetanus and diphtheria booster dose as client is currently pregnant and the latest tetanus and diphtheria dose was administered more than 4 weeks ago. Check for contraindications.
@guidance: Should vaccinate client for third tetanus and diphtheria booster dose as the latest tetanus and diphtheria dose was administered more than 1 year ago. This dose should be administered at least 1 year after second booster dose or during next pregnancy. Check for contraindications.
*/
define "Client is due for tetanus and diphtheria booster dose Guidance":
  case
    when "Client is due for tetanus and diphtheria booster dose Case 1" then 'Should vaccinate client for first tetanus and diphtheria booster dose as three DTP primary series doses were already administered and client is currently pregnant. Check for contraindications.'
    when "Client is due for tetanus and diphtheria booster dose Case 2" then 'Should vaccinate client for second tetanus and diphtheria booster dose as client is currently pregnant and the latest tetanus and diphtheria dose was administered more than 4 weeks ago. Check for contraindications.'
    when "Client is due for tetanus and diphtheria booster dose Case 3" then 'Should vaccinate client for third tetanus and diphtheria booster dose as the latest tetanus and diphtheria dose was administered more than 1 year ago. This dose should be administered at least 1 year after second booster dose or during next pregnancy. Check for contraindications.'
    else ''
  end

/*
@output: Client is not due for tetanus and diphtheria booster dose Case 1
@pseudocode: "Immunization recommendation status" = "Not due" (where "Vaccine type" = "Tetanus and diphtheria containing vaccines")
*/
define "Client is not due for tetanus and diphtheria booster dose Case 1":
  input."Three DTP primary series doses were administered"
    and input."One tetanus and diphtheria booster dose was administered"
    and input."Client is currently pregnant"
    and input."The latest tetanus and diphtheria dose was administered less than 4 weeks ago"

/*
@output: Client is not due for tetanus and diphtheria booster dose Case 2
@pseudocode: "Immunization recommendation status" = "Not due" (where "Vaccine type" = "Tetanus and diphtheria containing vaccines")
*/
define "Client is not due for tetanus and diphtheria booster dose Case 2":
  input."Three DTP primary series doses were administered"
    and input."Two tetanus and diphtheria booster doses were administered"
    and input."The latest tetanus and diphtheria dose was administered less than 1 year ago"

/*
@output: Client is not due for tetanus and diphtheria booster dose
@pseudocode: "Immunization recommendation status" = "Not due" (where "Vaccine type" = "Tetanus and diphtheria containing vaccines")
*/
define "Client is not due for tetanus and diphtheria booster dose":
  "Client is not due for tetanus and diphtheria booster dose Case 1"
    or "Client is not due for tetanus and diphtheria booster dose Case 2"

/*
@output: Client is not due for tetanus and diphtheria booster dose Guidance
@guidance: Should not vaccinate client for second tetanus and diphtheria booster dose as the latest tetanus and booster dose was administered less than 4 weeks ago. Check for any other vaccines due, and inform the caregiver of when to come back for second tetanus and diphtheria booster dose.
@guidance: Should not vaccinate client for third tetanus and diphtheria booster dose as the latest tetanus and booster dose was administered less than 1 year ago. This dose should be administered at least 1 year after second booster dose or during next pregnancy. Check for any other vaccines due, and inform the caregiver of when to come back for third tetanus and diphtheria booster dose.
*/
define "Client is not due for tetanus and diphtheria booster dose Guidance":
  case
    when "Client is not due for tetanus and diphtheria booster dose Case 1" then 'Should not vaccinate client for second tetanus and diphtheria booster dose as the latest tetanus and booster dose was administered less than 4 weeks ago. Check for any other vaccines due, and inform the caregiver of when to come back for second tetanus and diphtheria booster dose.'
    when "Client is not due for tetanus and diphtheria booster dose Case 2" then 'Should not vaccinate client for third tetanus and diphtheria booster dose as the latest tetanus and booster dose was administered less than 1 year ago. This dose should be administered at least 1 year after second booster dose or during next pregnancy. Check for any other vaccines due, and inform the caregiver of when to come back for third tetanus and diphtheria booster dose.'
    else ''
  end

/*
@output: Tetanus and diphtheria immunization schedule is complete
@pseudocode: "Immunization recommendation status" = "Complete" (where "Vaccine type" = "Tetanus and diphtheria containing vaccines")
*/
define "Tetanus and diphtheria immunization schedule is complete":
  input."Three DTP primary series doses were administered"
    and input."Three tetanus and diphtheria booster doses were administered"

/*
@output: Tetanus and diphtheria immunization schedule is complete Guidance
@guidance: Tetanus and diphtheria immunization schedule is complete. Three DTP primary series doses and three tetanus and diphtheria booster doses were administered.
Check for any other vaccines due.
*/
define "Tetanus and diphtheria immunization schedule is complete Guidance":
  'Tetanus and diphtheria immunization schedule is complete. Three DTP primary series doses and three tetanus and diphtheria booster doses were administered.
Check for any other vaccines due.'


/*
@test: Test expected results based on example patients
*/
define "Test Validation":
  case
    when Patient.id = '66.D3B0P' then "Client is due for tetanus and diphtheria booster dose Case 1" and "Guidance" = 'Should vaccinate client for first tetanus and diphtheria booster dose as three DTP primary series doses were already administered and client is currently pregnant. Check for contraindications.'
    when Patient.id = '67.D3B1PBlt4w' then "Client is not due for tetanus and diphtheria booster dose Case 1" and "Guidance" = 'Should not vaccinate client for second tetanus and diphtheria booster dose as the latest tetanus and booster dose was administered less than 4 weeks ago. Check for any other vaccines due, and inform the caregiver of when to come back for second tetanus and diphtheria booster dose.'
    when Patient.id = '68.D3B1PBgt4w' then "Client is due for tetanus and diphtheria booster dose Case 2" and "Guidance" = 'Should vaccinate client for second tetanus and diphtheria booster dose as client is currently pregnant and the latest tetanus and diphtheria dose was administered more than 4 weeks ago. Check for contraindications.'
    when Patient.id = '69.D3B2Blt1y' then "Client is not due for tetanus and diphtheria booster dose Case 2" and "Guidance" = 'Should not vaccinate client for third tetanus and diphtheria booster dose as the latest tetanus and booster dose was administered less than 1 year ago. This dose should be administered at least 1 year after second booster dose or during next pregnancy. Check for any other vaccines due, and inform the caregiver of when to come back for third tetanus and diphtheria booster dose.'
    when Patient.id = '70.D3B2Bgt1y' then "Client is due for tetanus and diphtheria booster dose Case 3" and "Guidance" = 'Should vaccinate client for third tetanus and diphtheria booster dose as the latest tetanus and diphtheria dose was administered more than 1 year ago. This dose should be administered at least 1 year after second booster dose or during next pregnancy. Check for contraindications.'
    when Patient.id = '71.D3B3' then "Tetanus and diphtheria immunization schedule is complete" and "Guidance" = 'Tetanus and diphtheria immunization schedule is complete. Three DTP primary series doses and three tetanus and diphtheria booster doses were administered.
Check for any other vaccines due.'
    else 'No test case set'
  end
