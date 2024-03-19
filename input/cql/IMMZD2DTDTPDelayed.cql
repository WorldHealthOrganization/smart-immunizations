
/*
 * Library: IMMZD2DTDTPDelayed (IMMZ.D2.DT.DTP.Delayed or interrupted series)
 * Rule: Determine if the client is due for a diphtheria, tetanus and pertussis vaccination according to the national immunization schedule
 * Decision Table: Diphtheria-tetanus-pertussis vaccine schedule for: children ≥ 1 year of age with no previous immunization, adolescents and adults with no previous immunization, including pregnant women and supplementary immunization activities in high-risk areas, for women of reproductive age
 * Trigger: IMMZ.D2 Determine required vaccination(s) if any
 */
library IMMZD2DTDTPDelayed
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
    when "Client is due for DTP vaccination" then "Client is due for DTP vaccination Guidance"
    when "Client is not due for DTP vaccination" then "Client is not due for DTP vaccination Guidance"
    when "Primary DTP series is complete." then "Primary DTP series is complete. Guidance"
    when "Client is not due for tetanus and diphtheria booster dose" then "Client is not due for tetanus and diphtheria booster dose Guidance"
    when "Client is due for tetanus and diphtheria booster dose" then "Client is due for tetanus and diphtheria booster dose Guidance"
    when "Tetanus and diphtheria immunization schedule is complete" then "Tetanus and diphtheria immunization schedule is complete Guidance"
    when "Primary DTP series is complete" then "Primary DTP series is complete Guidance"
    when "Pertussis immunization schedule is complete" then "Pertussis immunization schedule is complete Guidance"
    else ''
  end

/*
@output: Client is due for DTP vaccination Case 1
@pseudocode: "Immunization recommendation status" = "Due" (where "Vaccine type" = "Diphtheria-tetanus-pertussis containing vaccines")
*/
define "Client is due for DTP vaccination Case 1":
  input."No DTP primary series doses were administered"
    and input."Client's age is more than 1 year"

/*
@output: Client is due for DTP vaccination Case 2
@pseudocode: "Immunization recommendation status" = "Due" (where "Vaccine type" = "Diphtheria-tetanus-pertussis containing vaccines")
*/
define "Client is due for DTP vaccination Case 2":
  input."One DTP primary series dose was administered"
    and input."The latest DTP dose was administered more than 4 weeks ago"

/*
@output: Client is due for DTP vaccination Case 3
@pseudocode: "Immunization recommendation status" = "Due" (where "Vaccine type" = "Diphtheria-tetanus-pertussis containing vaccines")
*/
define "Client is due for DTP vaccination Case 3":
  input."Two DTP primary series doses were administered"
    and input."The latest DTP dose was administered more than 6 months ago"

/*
@output: Client is due for DTP vaccination
@pseudocode: "Immunization recommendation status" = "Due" (where "Vaccine type" = "Diphtheria-tetanus-pertussis containing vaccines")
*/
define "Client is due for DTP vaccination":
  "Client is due for DTP vaccination Case 1"
    or "Client is due for DTP vaccination Case 2"
    or "Client is due for DTP vaccination Case 3"

/*
@output: Client is due for DTP vaccination Guidance
@guidance: Should vaccinate client for first DTP dose as no DTP doses were administered and client's age is more than 1 year. Check for contraindications.
@guidance: Should vaccinate client for second DTP dose as the latest DTP dose was administered more than 4 weeks ago. Check for contraindications.
@guidance: Should vaccinate client for third DTP dose as the latest DTP dose was administered more than 6 months ago. Check for contraindications.
*/
define "Client is due for DTP vaccination Guidance":
  case
    when "Client is due for DTP vaccination Case 1" then 'Should vaccinate client for first DTP dose as no DTP doses were administered and client\'s age is more than 1 year. Check for contraindications.'
    when "Client is due for DTP vaccination Case 2" then 'Should vaccinate client for second DTP dose as the latest DTP dose was administered more than 4 weeks ago. Check for contraindications.'
    when "Client is due for DTP vaccination Case 3" then 'Should vaccinate client for third DTP dose as the latest DTP dose was administered more than 6 months ago. Check for contraindications.'
    else ''
  end

/*
@output: Client is not due for DTP vaccination Case 1
@pseudocode: "Immunization recommendation status" = "Not due" (where "Vaccine type" = "Diphtheria-tetanus-pertussis containing vaccines")
*/
define "Client is not due for DTP vaccination Case 1":
  input."One DTP primary series dose was administered"
    and input."The latest DTP dose was administered less than 4 weeks ago"

/*
@output: Client is not due for DTP vaccination Case 2
@pseudocode: "Immunization recommendation status" = "Not due" (where "Vaccine type" = "Diphtheria-tetanus-pertussis containing vaccines")
*/
define "Client is not due for DTP vaccination Case 2":
  input."Two DTP primary series doses were administered"
    and input."The latest DTP dose was administered less than 6 months ago"

/*
@output: Client is not due for DTP vaccination
@pseudocode: "Immunization recommendation status" = "Not due" (where "Vaccine type" = "Diphtheria-tetanus-pertussis containing vaccines")
*/
define "Client is not due for DTP vaccination":
  "Client is not due for DTP vaccination Case 1"
    or "Client is not due for DTP vaccination Case 2"

/*
@output: Client is not due for DTP vaccination Guidance
@guidance: Should not vaccinate client for second DTP dose as the latest DTP dose was administered less than 4 weeks ago. Check for any other vaccines due, and inform the caregiver of when to come back for second DTP dose
@guidance: Should not vaccinate client for third DTP dose the latest DTP dose was administered less than 6 months ago. Check for any other vaccines due, and inform the caregiver of when to come back for third DTP dose.
*/
define "Client is not due for DTP vaccination Guidance":
  case
    when "Client is not due for DTP vaccination Case 1" then 'Should not vaccinate client for second DTP dose as the latest DTP dose was administered less than 4 weeks ago. Check for any other vaccines due, and inform the caregiver of when to come back for second DTP dose'
    when "Client is not due for DTP vaccination Case 2" then 'Should not vaccinate client for third DTP dose the latest DTP dose was administered less than 6 months ago. Check for any other vaccines due, and inform the caregiver of when to come back for third DTP dose.'
    else ''
  end

/*
@output: Primary DTP series is complete. Case 1
@pseudocode: Client is not due for tetanus and diphtheria booster dose.
*/
define "Primary DTP series is complete. Case 1":
  input."Three DTP primary series doses were administered"
    and input."No tetanus and diphtheria booster doses were administered"
    and input."The latest DTP dose was administered less than 1 year ago"

/*
@output: Primary DTP series is complete. Case 2
@pseudocode: Client is due for tetanus and diphtheria booster dose.
*/
define "Primary DTP series is complete. Case 2":
  input."Three DTP primary series doses were administered"
    and input."No tetanus and diphtheria booster doses were administered"
    and input."The latest DTP dose was administered more than 1 year ago"

/*
@output: Primary DTP series is complete.
@pseudocode: Client is not due for tetanus and diphtheria booster dose.
*/
define "Primary DTP series is complete.":
  "Primary DTP series is complete. Case 1"
    or "Primary DTP series is complete. Case 2"

/*
@output: Primary DTP series is complete. Guidance
@guidance: Should not vaccinate client for first tetanus and diphtheria booster dose as the latest DTP dose was administered less than 1 year ago. Check for any other vaccines due, and inform the caregiver of when to come back for first tetanus and diphtheria booster dose.
@guidance: Should vaccinate client for first tetanus and diphtheria booster dose as the latest DTP dose was administered more than 1 year ago. Check for contraindications.
*/
define "Primary DTP series is complete. Guidance":
  case
    when "Primary DTP series is complete. Case 1" then 'Should not vaccinate client for first tetanus and diphtheria booster dose as the latest DTP dose was administered less than 1 year ago. Check for any other vaccines due, and inform the caregiver of when to come back for first tetanus and diphtheria booster dose.'
    when "Primary DTP series is complete. Case 2" then 'Should vaccinate client for first tetanus and diphtheria booster dose as the latest DTP dose was administered more than 1 year ago. Check for contraindications.'
    else ''
  end

/*
@output: Client is not due for tetanus and diphtheria booster dose
@pseudocode: "Immunization recommendation status" = "Not due" (where "Vaccine type" = "Tetanus and diphtheria containing vaccines")
*/
define "Client is not due for tetanus and diphtheria booster dose":
  input."Three DTP primary series doses were administered"
    and input."One tetanus and diphtheria booster dose was administered"
    and input."The latest tetanus and diphtheria dose was administered less than 1 year ago"

/*
@output: Client is not due for tetanus and diphtheria booster dose Guidance
@guidance: Should not vaccinate client for second tetanus and diphtheria booster dose as the latest tetanus and diphtheria dose was administered less than 1 year ago. Check for any other vaccines due, and inform the caregiver of when to come back for second tetanus and diphtheria booster dose.
*/
define "Client is not due for tetanus and diphtheria booster dose Guidance":
  'Should not vaccinate client for second tetanus and diphtheria booster dose as the latest tetanus and diphtheria dose was administered less than 1 year ago. Check for any other vaccines due, and inform the caregiver of when to come back for second tetanus and diphtheria booster dose.'

/*
@output: Client is due for tetanus and diphtheria booster dose
@pseudocode: "Immunization recommendation status" = "Due" (where "Vaccine type" = "Tetanus and diphtheria containing vaccines")
*/
define "Client is due for tetanus and diphtheria booster dose":
  input."Three DTP primary series doses were administered"
    and input."One tetanus and diphtheria booster dose was administered"
    and input."The latest tetanus and diphtheria dose was administered more than 1 year ago"

/*
@output: Client is due for tetanus and diphtheria booster dose Guidance
@guidance: Should vaccinate client for second tetanus and diphtheria booster dose as the latest tetanus and diphtheria dose was administered more than 1 year ago. Check for contraindications.
*/
define "Client is due for tetanus and diphtheria booster dose Guidance":
  'Should vaccinate client for second tetanus and diphtheria booster dose as the latest tetanus and diphtheria dose was administered more than 1 year ago. Check for contraindications.'

/*
@output: Tetanus and diphtheria immunization schedule is complete
@pseudocode: "Immunization recommendation status" = "Complete" (where "Vaccine type" = "Tetanus and diphtheria containing vaccines")
*/
define "Tetanus and diphtheria immunization schedule is complete":
  input."Three DTP primary series doses were administered"
    and input."Two tetanus and diphtheria booster doses were administered"

/*
@output: Tetanus and diphtheria immunization schedule is complete Guidance
@guidance: Tetanus and diphtheria immunization schedule is complete. Three DTP primary series doses and two tetanus and diphtheria booster doses were administered.
Check for any other vaccines due.
*/
define "Tetanus and diphtheria immunization schedule is complete Guidance":
  'Tetanus and diphtheria immunization schedule is complete. Three DTP primary series doses and two tetanus and diphtheria booster doses were administered.
Check for any other vaccines due.'

/*
@output: Primary DTP series is complete Case 1
@pseudocode: Client is not due for pertussis booster dose
*/
define "Primary DTP series is complete Case 1":
  input."Three DTP primary series doses were administered"
    and input."No pertussis booster doses were administered"
    and input."Client's age is between 1 year and 6 years old"
    and input."The latest DTP dose was administered less than 6 months ago"

/*
@output: Primary DTP series is complete Case 2
@pseudocode: Client is due for pertussis booster dose
*/
define "Primary DTP series is complete Case 2":
  input."Three DTP primary series doses were administered"
    and input."No pertussis booster doses were administered"
    and input."Client's age is between 1 year and 6 years old"
    and input."The latest DTP dose was administered more than 6 months ago"

/*
@output: Primary DTP series is complete
@pseudocode: Client is not due for pertussis booster dose
*/
define "Primary DTP series is complete":
  "Primary DTP series is complete Case 1"
    or "Primary DTP series is complete Case 2"

/*
@output: Primary DTP series is complete Guidance
@guidance: Should not vaccinate client for pertussis booster dose as the latest DTP dose was administered less than 6 months ago. Check for any other vaccines due, and inform the caregiver of when to come back for pertussis booster dose.
@guidance: Should vaccinate client for pertussis booster dose as no pertussis booster doses were administered, client is within appropriate age range and the latest DTP dose was administered more than 6 months ago. Check for contraindications.
*/
define "Primary DTP series is complete Guidance":
  case
    when "Primary DTP series is complete Case 1" then 'Should not vaccinate client for pertussis booster dose as the latest DTP dose was administered less than 6 months ago. Check for any other vaccines due, and inform the caregiver of when to come back for pertussis booster dose.'
    when "Primary DTP series is complete Case 2" then 'Should vaccinate client for pertussis booster dose as no pertussis booster doses were administered, client is within appropriate age range and the latest DTP dose was administered more than 6 months ago. Check for contraindications.'
    else ''
  end

/*
@output: Pertussis immunization schedule is complete Case 1
@pseudocode: "Immunization recommendation status" = "Complete" (where "Vaccine type" = "Pertussis containing vaccines")
*/
define "Pertussis immunization schedule is complete Case 1":
  input."Three DTP primary series doses were administered"
    and input."No pertussis booster doses were administered"
    and input."Client's age is more than 6 years"

/*
@output: Pertussis immunization schedule is complete Case 2
@pseudocode: "Immunization recommendation status" = "Complete" (where "Vaccine type" = "Pertussis containing vaccines")
*/
define "Pertussis immunization schedule is complete Case 2":
  input."Three DTP primary series doses were administered"
    and input."One pertussis booster dose was administered"

/*
@output: Pertussis immunization schedule is complete
@pseudocode: "Immunization recommendation status" = "Complete" (where "Vaccine type" = "Pertussis containing vaccines")
*/
define "Pertussis immunization schedule is complete":
  "Pertussis immunization schedule is complete Case 1"
    or "Pertussis immunization schedule is complete Case 2"

/*
@output: Pertussis immunization schedule is complete Guidance
@guidance: Pertussis immunization schedule is complete. Three DTP primary series doses were administered.
Check for any other vaccines due.
@guidance: Pertussis immunization schedule is complete. Three DTP primary series doses and one pertussis booster dose were administered.
Check for any other vaccines due.
*/
define "Pertussis immunization schedule is complete Guidance":
  case
    when "Pertussis immunization schedule is complete Case 1" then 'Pertussis immunization schedule is complete. Three DTP primary series doses were administered.
Check for any other vaccines due.'
    when "Pertussis immunization schedule is complete Case 2" then 'Pertussis immunization schedule is complete. Three DTP primary series doses and one pertussis booster dose were administered.
Check for any other vaccines due.'
    else ''
  end


/*
@test: Test expected results based on example patients
*/
define "Test Validation":
  case
    when Patient.id = '33.D0Agt1y' then "Client is due for DTP vaccination Case 1" and "Guidance" = 'Should vaccinate client for first DTP dose as no DTP doses were administered and client\'s age is more than 1 year. Check for contraindications.'
    when Patient.id = '34.D1Dlt4w' then "Client is not due for DTP vaccination Case 1" and "Guidance" = 'Should not vaccinate client for second DTP dose as the latest DTP dose was administered less than 4 weeks ago. Check for any other vaccines due, and inform the caregiver of when to come back for second DTP dose'
    when Patient.id = '35.D1Dgt4w' then "Client is due for DTP vaccination Case 2" and "Guidance" = 'Should vaccinate client for second DTP dose as the latest DTP dose was administered more than 4 weeks ago. Check for contraindications.'
    when Patient.id = '36.D2Dlt6m' then "Client is not due for DTP vaccination Case 2" and "Guidance" = 'Should not vaccinate client for third DTP dose the latest DTP dose was administered less than 6 months ago. Check for any other vaccines due, and inform the caregiver of when to come back for third DTP dose.'
    when Patient.id = '37.D2Dgt6m' then "Client is due for DTP vaccination Case 3" and "Guidance" = 'Should vaccinate client for third DTP dose as the latest DTP dose was administered more than 6 months ago. Check for contraindications.'
    when Patient.id = '38.D3B0Dlt1y' then "Primary DTP series is complete. Case 1" and "Guidance" = 'Should not vaccinate client for first tetanus and diphtheria booster dose as the latest DTP dose was administered less than 1 year ago. Check for any other vaccines due, and inform the caregiver of when to come back for first tetanus and diphtheria booster dose.'
    when Patient.id = '39.D3B0Dgt1y' then "Primary DTP series is complete. Case 2" and "Guidance" = 'Should vaccinate client for first tetanus and diphtheria booster dose as the latest DTP dose was administered more than 1 year ago. Check for contraindications.'
    when Patient.id = '40.D3B1Blt1y' then "Client is not due for tetanus and diphtheria booster dose" and "Guidance" = 'Should not vaccinate client for second tetanus and diphtheria booster dose as the latest tetanus and diphtheria dose was administered less than 1 year ago. Check for any other vaccines due, and inform the caregiver of when to come back for second tetanus and diphtheria booster dose.'
    when Patient.id = '41.D3B1Bgt1y' then "Client is due for tetanus and diphtheria booster dose" and "Guidance" = 'Should vaccinate client for second tetanus and diphtheria booster dose as the latest tetanus and diphtheria dose was administered more than 1 year ago. Check for contraindications.'
    when Patient.id = '42.D3B2' then "Tetanus and diphtheria immunization schedule is complete" and "Guidance" = 'Tetanus and diphtheria immunization schedule is complete. Three DTP primary series doses and two tetanus and diphtheria booster doses were administered.
Check for any other vaccines due.'
    when Patient.id = '43.D3P0Abt1y6yLDlt6m' then "Primary DTP series is complete Case 1" and "Guidance" = 'Should not vaccinate client for pertussis booster dose as the latest DTP dose was administered less than 6 months ago. Check for any other vaccines due, and inform the caregiver of when to come back for pertussis booster dose.'
    when Patient.id = '44.D3P0Abt1y6yLDgt6m' then "Primary DTP series is complete Case 2" and "Guidance" = 'Should vaccinate client for pertussis booster dose as no pertussis booster doses were administered, client is within appropriate age range and the latest DTP dose was administered more than 6 months ago. Check for contraindications.'
    when Patient.id = '45.D3P0Agt6y' then "Pertussis immunization schedule is complete Case 1" and "Guidance" = 'Pertussis immunization schedule is complete. Three DTP primary series doses were administered.
Check for any other vaccines due.'
    when Patient.id = '46.D3P1' then "Pertussis immunization schedule is complete Case 2" and "Guidance" = 'Pertussis immunization schedule is complete. Three DTP primary series doses and one pertussis booster dose were administered.
Check for any other vaccines due.'
    else 'No test case set'
  end
