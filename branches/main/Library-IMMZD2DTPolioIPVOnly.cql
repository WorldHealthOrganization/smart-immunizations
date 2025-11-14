
/*
 * Library: IMMZD2DTPolioIPVOnly (IMMZ.D2.DT.Polio.IPV-only)
 * Rule: Determine if the client is due for a polio vaccination according to the national immunization protocol
 * Decision Table: IPV-only (in countries, in polio-free regions, with a very low risk of importation and sustained high routine immunization coverage (DTP3 >90%)
 * Trigger: IMMZ.D2  Determine required vaccination(s) if any
 */
library IMMZD2DTPolioIPVOnly
// Start Skeleton CQL
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1'
include IMMZCommon called IMMZCom
include IMMZConcepts called IMMZc
include IMMZConfig called IMMZCon
include IMMZVaccineLibrary called IMMZvl
include FHIRCommon called FC
include IMMZD2DTPolioInput called input

// End Skeleton CQL
context Patient

/*
@test: Test expected results based on example patients
*/
define "Test Validation":
  case 
    when Patient.id = '71.D0Alt6w' then "Client is not due for IPV vaccination Case 1" and "Guidance" = 'Shold not vaccinate client for first IPV dose as client\'s age is less than 6 weeks. Check for any other vaccines due, and inform the caregiver of when to come back for the first IPV dose.'
    when Patient.id = '72.D0Agt6w' then "Client is due for IPV vaccination Case 1" and "Guidance" = 'Should vaccinate client for first IPV dose as client is within appropriate age range. Check for contraindications.'
    when Patient.id = '73.D1Dlt4w' then "Client is not due for IPV vaccination Case 2" and "Guidance" = 'Should not vaccinate client for second IPV dose as the latest IPV dose was administered less than 4 weeks ago. Check for any other vaccines due, and inform the caregiver when to come back for the second dose.'
    when Patient.id = '74.D1Dgt4w' then "Client is due for IPV vaccination Case 2" and "Guidance" = 'Should vaccinate client for second IPV dose as the latest IPV dose was administered more than 4 weeks ago.
Check for contraindications.'
    when Patient.id = '75.D2Dlt4w' then "Client is not due for IPV vaccination Case 3" and "Guidance" = 'Should not vaccinate client for third IPV dose as the latest IPV dose was administered less than 4 weeks ago. Check for any other vaccines due, and inform the caregiver when to come back for the third dose.'
    when Patient.id = '76.D2Dgt4w' then "Client is due for IPV vaccination Case 3" and "Guidance" = 'Should vaccinate client for third IPV dose as the latest polio dose was administered more than 4 weeks ago. Check for contraindications.'
    when Patient.id = '77.D3Fgt6w' then "Polio immunization schedule is complete Case 1" and "Guidance" = 'Polio immunization schedule is complete as client\'s age was more than 6 weeks when the primary series was started.Three polio primary series doses were administered. '
    when Patient.id = '78.D3Feq6wDlt6m' then "Primary series is complete. Client is not due for IPV booster dose" and "Guidance" = 'Should not vaccinate client for IPV booster dose as the latest polio dose was administered less than 6 months ago.
Check for any other vaccines due, and inform the caregiver when to come back for the booster dose.'
    when Patient.id = '79.D3Feq6wDgt6mBn' then "Primary series is complete. Client is due for IPV booster dose" and "Guidance" = 'Should vaccinate client for IPV booster dose as three polio primary series doses were administered, client\'s age was 6 weeks when the primary series was started and the latest polio dose was administered more than 6 months ago. Check for contraindications.'
    when Patient.id = '80.D3Feq6wDgt6mBy' then "Polio immunization schedule is complete Case 2" and "Guidance" = 'Polio immunization schedule is complete. Three polio primary series doses and a booster dose were administered.'
    else 'No test case defined'
  end

/*
@dynamicValue: Guidance
*/
define "Guidance":
  case
    when "Client is not due for IPV vaccination" then "Client is not due for IPV vaccination Guidance"
    when "Client is due for IPV vaccination" then "Client is due for IPV vaccination Guidance"
    when "Polio immunization schedule is complete" then "Polio immunization schedule is complete Guidance"
    when "Primary series is complete. Client is not due for IPV booster dose" then "Primary series is complete. Client is not due for IPV booster dose Guidance"
    when "Primary series is complete. Client is due for IPV booster dose" then "Primary series is complete. Client is due for IPV booster dose Guidance"
    else ''
  end

/*
@output: Client is not due for IPV vaccination Case 1
@pseudocode: "Immunization recommendation status" = 'Not due'
*/
define "Client is not due for IPV vaccination Case 1":
  input."No polio primary series doses were administered"
    and input."Client's age is less than 6 weeks"

/*
@output: Client is not due for IPV vaccination Case 2
@pseudocode: "Immunization recommendation status" = 'Not due'
*/
define "Client is not due for IPV vaccination Case 2":
  input."One polio primary series dose was administered"
    and input."The latest polio dose was administered less than 4 weeks ago"

/*
@output: Client is not due for IPV vaccination Case 3
@pseudocode: "Immunization recommendation status" = 'Not due'
*/
define "Client is not due for IPV vaccination Case 3":
  input."Two polio primary series doses were administered"
    and input."The latest polio dose was administered less than 4 weeks ago"

/*
@output: Client is not due for IPV vaccination
@pseudocode: "Immunization recommendation status" = 'Not due'
*/
define "Client is not due for IPV vaccination":
  "Client is not due for IPV vaccination Case 1"
    or "Client is not due for IPV vaccination Case 2"
    or "Client is not due for IPV vaccination Case 3"

/*
@output: Client is not due for IPV vaccination Guidance
@guidance: Shold not vaccinate client for first IPV dose as client's age is less than 6 weeks. Check for any other vaccines due, and inform the caregiver of when to come back for the first IPV dose.
@guidance: Should not vaccinate client for second IPV dose as the latest IPV dose was administered less than 4 weeks ago. Check for any other vaccines due, and inform the caregiver when to come back for the second dose.
@guidance: Should not vaccinate client for third IPV dose as the latest IPV dose was administered less than 4 weeks ago. Check for any other vaccines due, and inform the caregiver when to come back for the third dose.
*/
define "Client is not due for IPV vaccination Guidance":
  case
    when "Client is not due for IPV vaccination Case 1" then 'Shold not vaccinate client for first IPV dose as client\'s age is less than 6 weeks. Check for any other vaccines due, and inform the caregiver of when to come back for the first IPV dose.'
    when "Client is not due for IPV vaccination Case 2" then 'Should not vaccinate client for second IPV dose as the latest IPV dose was administered less than 4 weeks ago. Check for any other vaccines due, and inform the caregiver when to come back for the second dose.'
    when "Client is not due for IPV vaccination Case 3" then 'Should not vaccinate client for third IPV dose as the latest IPV dose was administered less than 4 weeks ago. Check for any other vaccines due, and inform the caregiver when to come back for the third dose.'
    else ''
  end

/*
@output: Client is due for IPV vaccination Case 1
@pseudocode: "Immunization recommendation status" = 'Due'
*/
define "Client is due for IPV vaccination Case 1":
  input."No polio primary series doses were administered"
    and input."Client's age is more than or equal to 6 weeks"

/*
@output: Client is due for IPV vaccination Case 2
@pseudocode: "Immunization recommendation status" = 'Due'
*/
define "Client is due for IPV vaccination Case 2":
  input."One polio primary series dose was administered"
    and input."The latest polio dose was administered more than 4 weeks ago"

/*
@output: Client is due for IPV vaccination Case 3
@pseudocode: "Immunization recommendation status" = 'Due'
*/
define "Client is due for IPV vaccination Case 3":
  input."Two polio primary series doses were administered"
    and input."The latest polio dose was administered more than 4 weeks ago"

/*
@output: Client is due for IPV vaccination
@pseudocode: "Immunization recommendation status" = 'Due'
*/
define "Client is due for IPV vaccination":
  "Client is due for IPV vaccination Case 1"
    or "Client is due for IPV vaccination Case 2"
    or "Client is due for IPV vaccination Case 3"

/*
@output: Client is due for IPV vaccination Guidance
@guidance: Should vaccinate client for first IPV dose as client is within appropriate age range. Check for contraindications.
@guidance: Should vaccinate client for second IPV dose as the latest IPV dose was administered more than 4 weeks ago.
Check for contraindications.
@guidance: Should vaccinate client for third IPV dose as the latest polio dose was administered more than 4 weeks ago. Check for contraindications.
*/
define "Client is due for IPV vaccination Guidance":
  case
    when "Client is due for IPV vaccination Case 1" then 'Should vaccinate client for first IPV dose as client is within appropriate age range. Check for contraindications.'
    when "Client is due for IPV vaccination Case 2" then 'Should vaccinate client for second IPV dose as the latest IPV dose was administered more than 4 weeks ago.
Check for contraindications.'
    when "Client is due for IPV vaccination Case 3" then 'Should vaccinate client for third IPV dose as the latest polio dose was administered more than 4 weeks ago. Check for contraindications.'
    else ''
  end

/*
@output: Polio immunization schedule is complete Case 1
@pseudocode: "Immunization recommendation status" = 'Complete'
*/
define "Polio immunization schedule is complete Case 1":
  input."Three polio primary series doses were administered"
    and input."Client's age was more than 6 weeks when the primary series was started"

/*
@output: Polio immunization schedule is complete Case 2
@pseudocode: "Immunization recommendation status" = 'Complete'
@note: Due to not having a good reliable way to know if a dose is primary or not, this also allows 4 doses
*/
define "Polio immunization schedule is complete Case 2":
  (input."Three polio primary series doses were administered" or input."Four polio primary series doses were administered")
    and input."Polio booster dose was administered"

/*
@output: Polio immunization schedule is complete
@pseudocode: "Immunization recommendation status" = 'Complete'
*/
define "Polio immunization schedule is complete":
  "Polio immunization schedule is complete Case 1"
    or "Polio immunization schedule is complete Case 2"

/*
@output: Polio immunization schedule is complete Guidance
@guidance: Polio immunization schedule is complete as client's age was more than 6 weeks when the primary series was started.Three polio primary series doses were administered. 
@guidance: Polio immunization schedule is complete. Three polio primary series doses and a booster dose were administered.
*/
define "Polio immunization schedule is complete Guidance":
  case
    when "Polio immunization schedule is complete Case 1" then 'Polio immunization schedule is complete as client\'s age was more than 6 weeks when the primary series was started.Three polio primary series doses were administered. '
    when "Polio immunization schedule is complete Case 2" then 'Polio immunization schedule is complete. Three polio primary series doses and a booster dose were administered.'
    else ''
  end

/*
@output: Primary series is complete. Client is not due for IPV booster dose
@pseudocode: "Immunization recommendation status" = 'Not due'
  "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Polio containing vaccines")
*/
define "Primary series is complete. Client is not due for IPV booster dose":
  input."Three polio primary series doses were administered"
    and input."Client's age was 6 weeks when the primary series was started"
    and input."The latest polio dose was administered less than 6 months ago"

/*
@output: Primary series is complete. Client is due for IPV booster dose
@pseudocode: "Immunization recommendation status" = 'Due'
  "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Polio containing vaccines")
*/
define "Primary series is complete. Client is due for IPV booster dose":
  input."Three polio primary series doses were administered"
    and input."Client's age was 6 weeks when the primary series was started"
    and input."The latest polio dose was administered more than 6 months ago"
    and input."No polio booster dose was administered"

/*
@output: Primary series is complete. Guidance
@guidance: Should not vaccinate client for IPV booster dose as the latest polio dose was administered less than 6 months ago.
Check for any other vaccines due, and inform the caregiver when to come back for the booster dose.
@guidance: Should vaccinate client for IPV booster dose as three polio primary series doses were administered, client's age was 6 weeks when the primary series was started and the latest polio dose was administered more than 6 months ago. Check for contraindications.
*/
define "Primary series is complete. Client is not due for IPV booster dose Guidance":
  'Should not vaccinate client for IPV booster dose as the latest polio dose was administered less than 6 months ago.
Check for any other vaccines due, and inform the caregiver when to come back for the booster dose.'



/*
@output: Primary series is complete. Guidance
@guidance: Should not vaccinate client for IPV booster dose as the latest polio dose was administered less than 6 months ago.
Check for any other vaccines due, and inform the caregiver when to come back for the booster dose.
@guidance: Should vaccinate client for IPV booster dose as three polio primary series doses were administered, client's age was 6 weeks when the primary series was started and the latest polio dose was administered more than 6 months ago. Check for contraindications.
*/
define "Primary series is complete. Client is due for IPV booster dose Guidance":
  'Should vaccinate client for IPV booster dose as three polio primary series doses were administered, client\'s age was 6 weeks when the primary series was started and the latest polio dose was administered more than 6 months ago. Check for contraindications.'


