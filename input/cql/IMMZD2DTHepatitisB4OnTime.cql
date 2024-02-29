
/*
 * Library: IMMZD2DTHepatitisB4OnTime (IMMZ.D2.DT.Hepatitis B.4 doses)
 * Rule: Determine if the client is due for a hepatitis B vaccination according to the national immunization schedule
 * Decision Table: 4-dose schedule, on-time start
 * Trigger: IMMZ.D2 Determine required vaccination(s) if any
 */
library IMMZD2DTHepatitisB4OnTime
// Start Skeleton CQL
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1'
include IMMZCommon called IMMZCom
include IMMZConcepts called IMMZc
include IMMZConfig called IMMZCon
include IMMZVaccineLibrary called IMMZvl
include FHIRCommon called FC
include IMMZD2DTHepatitisBInput called input

// End Skeleton CQL
context Patient

/*
@test: Test expected results based on example patients
*/
define "Test Validation":
  case 
    when Patient.id = '27.D0Alt4w' then "Client is due for hepatitis B monovalent vaccine" and "Guidance" = 'Should vaccinate client for first hepatitis B dose, as a monovalent birth dose. For low birth weight (<2000g) and premature infants the birth dose should not count as part of the primary 3-dose series. Check for contraindications.'
    when Patient.id = '28.D0Agt4w' then "Client should follow delayed start decision logic" and "Guidance" = 'The client has a delayed start. Please follow the delayed start schedule.'
    when Patient.id = '29.D1Hlt4w' then "Client is not due for a hepatitis B vaccination Case 1" and "Guidance" = 'Should not vaccinate client for second Hepatitis B dose as the latest Hepatitis B dose was administered less than 4 weeks ago. Check for any other vaccines due, and inform the caregiver of when to come back for the second dose.'
    when Patient.id = '30.D1Hgt4w' then "Client is due for a hepatitis B vaccination Case 1" and "Guidance" = 'Should vaccinate client for second hepatitis B dose as the latest Hepatitis B dose was administered more than four weeks. Check for contraindications.'
    when Patient.id = '31.D2Hlt4w' then "Client is not due for a hepatitis B vaccination Case 2" and "Guidance" = 'Should not vaccinate client for third hepatitis B dose as the latest Hepatitis B dose was administered less than 4 weeks ago. Check for any other vaccines due, and inform the caregiver of when to come back for the third dose.'
    when Patient.id = '32.D2Hgt4w' then "Client is due for a hepatitis B vaccination Case 2" and "Guidance" = 'Should vaccinate client for third hepatitis B dose as the latest Hepatitis B dose was administered more than 4 weeks ago. Check for contraindications.'
    when Patient.id = '33.D3Hlt4w' then "Client is not due for a hepatitis B vaccination Case 3" and "Guidance" = 'Should not vaccinate client for fourth hepatitis B dose as the latest Hepatitis B dose was administered less than 4 weeks ago. Check for any other vaccines due, and inform the caregiver of when to come back for the third dose.'
    when Patient.id = '34.D3Hgt4w' then "Client is due for a hepatitis B vaccination Case 3" and "Guidance" = 'Should vaccinate client for fourth hepatitis B dose as the latest Hepatitis B dose was administered more than 4 weeks ago. Check for contraindications.'
    when Patient.id = '35.D4' then "Hepatitis B immunization schedule is complete" and "Guidance" = 'The Hepatitis B immunization schedule is complete. Four hepatitis B primary series doses were administered. Check for any other vaccines due.'
    else 'No test case set'
  end

/*
@dynamicValue: Guidance
*/
define "Guidance":
  case
    when "Client is due for hepatitis B monovalent vaccine" then "Client is due for hepatitis B monovalent vaccine Guidance"
    when "Client should follow delayed start decision logic" then "Client should follow delayed start decision logic Guidance"
    when "Client is not due for a hepatitis B vaccination" then "Client is not due for a hepatitis B vaccination Guidance"
    when "Client is due for a hepatitis B vaccination" then "Client is due for a hepatitis B vaccination Guidance"
    when "Hepatitis B immunization schedule is complete" then "Hepatitis B immunization schedule is complete Guidance"
    else ''
  end

/*
@output: Client is due for hepatitis B monovalent vaccine
@pseudocode: "Immunization recommendation status" = "Due" (where "Type of hepatitis B dose" = "Hepatitis B monovalent vaccine")
*/
define "Client is due for hepatitis B monovalent vaccine":
  input."No hepatitis B primary series doses were administered"
    and input."Client's age is less than 4 weeks"

/*
@output: Client is due for hepatitis B monovalent vaccine Guidance
@guidance: Should vaccinate client for first hepatitis B dose, as a monovalent birth dose. For low birth weight (<2000g) and premature infants the birth dose should not count as part of the primary 3-dose series. Check for contraindications.
*/
define "Client is due for hepatitis B monovalent vaccine Guidance":
  'Should vaccinate client for first hepatitis B dose, as a monovalent birth dose. For low birth weight (<2000g) and premature infants the birth dose should not count as part of the primary 3-dose series. Check for contraindications.'

/*
@output: Client should follow delayed start decision logic
@pseudocode: 
*/
define "Client should follow delayed start decision logic":
  input."No hepatitis B primary series doses were administered"
    and input."Client's age is more than 4 weeks"

/*
@output: Client should follow delayed start decision logic Guidance
@guidance: The client has a delayed start. Please follow the delayed start schedule.
*/
define "Client should follow delayed start decision logic Guidance":
  'The client has a delayed start. Please follow the delayed start schedule.'

/*
@output: Client is not due for a hepatitis B vaccination Case 1
@pseudocode: "Immunization recommendation status" = "Not due"
*/
define "Client is not due for a hepatitis B vaccination Case 1":
  input."One hepatitis B primary series dose, a birth dose, was administered"
    and input."The latest hepatitis B dose was administered less than 4 weeks ago"

/*
@output: Client is not due for a hepatitis B vaccination Case 2
@pseudocode: "Immunization recommendation status" = "Not due"
*/
define "Client is not due for a hepatitis B vaccination Case 2":
  input."Two hepatitis B primary series doses were administered"
    and input."The latest hepatitis B dose was administered less than 4 weeks ago"

/*
@output: Client is not due for a hepatitis B vaccination Case 3
@pseudocode: "Immunization recommendation status" = "Not due"
*/
define "Client is not due for a hepatitis B vaccination Case 3":
  input."Three hepatitis B primary series doses were administered"
    and input."The latest hepatitis B dose was administered less than 4 weeks ago"

/*
@output: Client is not due for a hepatitis B vaccination
@pseudocode: "Immunization recommendation status" = "Not due"
*/
define "Client is not due for a hepatitis B vaccination":
  "Client is not due for a hepatitis B vaccination Case 1"
    or "Client is not due for a hepatitis B vaccination Case 2"
    or "Client is not due for a hepatitis B vaccination Case 3"

/*
@output: Client is not due for a hepatitis B vaccination Guidance
@guidance: Should not vaccinate client for second Hepatitis B dose as the latest Hepatitis B dose was administered less than 4 weeks ago. Check for any other vaccines due, and inform the caregiver of when to come back for the second dose.
@guidance: Should not vaccinate client for third hepatitis B dose as the latest Hepatitis B dose was administered less than 4 weeks ago. Check for any other vaccines due, and inform the caregiver of when to come back for the third dose.
@guidance: Should not vaccinate client for fourth hepatitis B dose as the latest Hepatitis B dose was administered less than 4 weeks ago. Check for any other vaccines due, and inform the caregiver of when to come back for the third dose.
*/
define "Client is not due for a hepatitis B vaccination Guidance":
  case
    when "Client is not due for a hepatitis B vaccination Case 1" then 'Should not vaccinate client for second Hepatitis B dose as the latest Hepatitis B dose was administered less than 4 weeks ago. Check for any other vaccines due, and inform the caregiver of when to come back for the second dose.'
    when "Client is not due for a hepatitis B vaccination Case 2" then 'Should not vaccinate client for third hepatitis B dose as the latest Hepatitis B dose was administered less than 4 weeks ago. Check for any other vaccines due, and inform the caregiver of when to come back for the third dose.'
    when "Client is not due for a hepatitis B vaccination Case 3" then 'Should not vaccinate client for fourth hepatitis B dose as the latest Hepatitis B dose was administered less than 4 weeks ago. Check for any other vaccines due, and inform the caregiver of when to come back for the third dose.'
    else ''
  end

/*
@output: Client is due for a hepatitis B vaccination Case 1
@pseudocode: "Immunization recommendation status" = "Due"
*/
define "Client is due for a hepatitis B vaccination Case 1":
  input."One hepatitis B primary series dose, a birth dose, was administered"
    and input."The latest hepatitis B dose was administered more than 4 weeks ago"

/*
@output: Client is due for a hepatitis B vaccination Case 2
@pseudocode: "Immunization recommendation status" = "Due"
*/
define "Client is due for a hepatitis B vaccination Case 2":
  input."Two hepatitis B primary series doses were administered"
    and input."The latest hepatitis B dose was administered more than 4 weeks ago"

/*
@output: Client is due for a hepatitis B vaccination Case 3
@pseudocode: "Immunization recommendation status" = "Due"
*/
define "Client is due for a hepatitis B vaccination Case 3":
  input."Three hepatitis B primary series doses were administered"
    and input."The latest hepatitis B dose was administered more than 4 weeks ago"

/*
@output: Client is due for a hepatitis B vaccination
@pseudocode: "Immunization recommendation status" = "Due"
*/
define "Client is due for a hepatitis B vaccination":
  "Client is due for a hepatitis B vaccination Case 1"
    or "Client is due for a hepatitis B vaccination Case 2"
    or "Client is due for a hepatitis B vaccination Case 3"

/*
@output: Client is due for a hepatitis B vaccination Guidance
@guidance: Should vaccinate client for second hepatitis B dose as the latest Hepatitis B dose was administered more than four weeks. Check for contraindications.
@guidance: Should vaccinate client for third hepatitis B dose as the latest Hepatitis B dose was administered more than 4 weeks ago. Check for contraindications.
@guidance: Should vaccinate client for fourth hepatitis B dose as the latest Hepatitis B dose was administered more than 4 weeks ago. Check for contraindications.
*/
define "Client is due for a hepatitis B vaccination Guidance":
  case
    when "Client is due for a hepatitis B vaccination Case 1" then 'Should vaccinate client for second hepatitis B dose as the latest Hepatitis B dose was administered more than four weeks. Check for contraindications.'
    when "Client is due for a hepatitis B vaccination Case 2" then 'Should vaccinate client for third hepatitis B dose as the latest Hepatitis B dose was administered more than 4 weeks ago. Check for contraindications.'
    when "Client is due for a hepatitis B vaccination Case 3" then 'Should vaccinate client for fourth hepatitis B dose as the latest Hepatitis B dose was administered more than 4 weeks ago. Check for contraindications.'
    else ''
  end

/*
@output: Hepatitis B immunization schedule is complete
@pseudocode: 
*/
define "Hepatitis B immunization schedule is complete":
  input."Four hepatitis B primary series doses were administered"

/*
@output: Hepatitis B immunization schedule is complete Guidance
@guidance: The Hepatitis B immunization schedule is complete. Four hepatitis B primary series doses were administered. Check for any other vaccines due.
*/
define "Hepatitis B immunization schedule is complete Guidance":
  'The Hepatitis B immunization schedule is complete. Four hepatitis B primary series doses were administered. Check for any other vaccines due.'

