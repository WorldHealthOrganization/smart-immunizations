
/*
 * Library: IMMZD2DTHepatitisB3OnTime (IMMZ.D2.DT.Hepatitis B.3 doses)
 * Rule: Determine if the client is due for a hepatitis B vaccination according to the national immunization schedule
 * Decision Table: 3-dose schedule (birth dose + 2 primary series doses), on-time start
 * Trigger: IMMZ.D2 Determine required vaccination(s) if any
 */
library IMMZD2DTHepatitisB3OnTime
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
@dynamicValue: Guidance
*/
define "Guidance":
  case
    when "Client is not due for a hepatitis B vaccination" then "Client is not due for a hepatitis B vaccination Guidance"
    when "Client is due for a hepatitis B vaccination" then "Client is due for a hepatitis B vaccination Guidance"
    when "Hepatitis B immunization schedule is complete" then "Hepatitis B immunization schedule is complete Guidance"
    else ''
  end

/*
@output: Client is not due for a hepatitis B vaccination Case 1
@pseudocode: "Immunization recommendation status" = "Not due"
*/
define "Client is not due for a hepatitis B vaccination Case 1":
  input."No hepatitis B primary series doses were administered"
    and input."Client's age is less than {Member States defined lower limit}"

/*
@output: Client is not due for a hepatitis B vaccination Case 2
@pseudocode: "Immunization recommendation status" = "Not due"
*/
define "Client is not due for a hepatitis B vaccination Case 2":
  input."One hepatitis B primary series dose was administered"
    and input."The latest hepatitis B dose was administered less than 4 weeks ago"

/*
@output: Client is not due for a hepatitis B vaccination Case 3
@pseudocode: "Immunization recommendation status" = "Not due"
*/
define "Client is not due for a hepatitis B vaccination Case 3":
  input."Two hepatitis B primary series doses were administered"
    and input."Client's weight at birth was below 2000g"
    and input."The latest hepatitis B dose was administered less than 4 weeks ago"

/*
@output: Client is not due for a hepatitis B vaccination Case 4
@pseudocode: "Immunization recommendation status" = "Not due"
*/
define "Client is not due for a hepatitis B vaccination Case 4":
  input."Two hepatitis B primary series doses were administered"
    and input."Client was a premature infant at birth"
    and input."The latest hepatitis B dose was administered less than 4 weeks ago"

/*
@output: Client is not due for a hepatitis B vaccination
@pseudocode: "Immunization recommendation status" = "Not due"
*/
define "Client is not due for a hepatitis B vaccination":
  "Client is not due for a hepatitis B vaccination Case 1"
    or "Client is not due for a hepatitis B vaccination Case 2"
    or "Client is not due for a hepatitis B vaccination Case 3"
    or "Client is not due for a hepatitis B vaccination Case 4"

/*
@output: Client is not due for a hepatitis B vaccination Guidance
@guidance: Should not vaccinate client for first Hepatitis B dose as client's age is not within appropriate age range. Check for any other vaccines due, and inform the caregiver of when to come back for the first dose.
@guidance: Should not vaccinate client for second hepatitis B dose as the latest Hepatitis B dose was administered less than 4 weeks ago. Check for any other vaccines due, and inform the caregiver of when to come back for the third dose.
@guidance: Should not vaccinate client for third hepatitis B dose as the client was a low birth weight infant and the latest hepatitis B vaccine was administered less than 4 weeks ago. Check for any other vaccines due, and inform the caregiver of when to come back for the third dose.
@guidance: Should not vaccinate client for third hepatitis B dose as the client was a low birth weight infant and the latest hepatitis B dose was administered less than 4 weeks ago. Check for any other vaccines due, and inform the caregiver of when to come back for the next dose.
*/
define "Client is not due for a hepatitis B vaccination Guidance":
  case
    when "Client is not due for a hepatitis B vaccination Case 1" then 'Should not vaccinate client for first Hepatitis B dose as client\'s age is not within appropriate age range. Check for any other vaccines due, and inform the caregiver of when to come back for the first dose.'
    when "Client is not due for a hepatitis B vaccination Case 2" then 'Should not vaccinate client for second hepatitis B dose as the latest Hepatitis B dose was administered less than 4 weeks ago. Check for any other vaccines due, and inform the caregiver of when to come back for the third dose.'
    when "Client is not due for a hepatitis B vaccination Case 3" then 'Should not vaccinate client for third hepatitis B dose as the client was a low birth weight infant and the latest hepatitis B vaccine was administered less than 4 weeks ago. Check for any other vaccines due, and inform the caregiver of when to come back for the third dose.'
    when "Client is not due for a hepatitis B vaccination Case 4" then 'Should not vaccinate client for third hepatitis B dose as the client was a low birth weight infant and the latest hepatitis B dose was administered less than 4 weeks ago. Check for any other vaccines due, and inform the caregiver of when to come back for the next dose.'
    else ''
  end

/*
@output: Client is due for a hepatitis B vaccination Case 1
@pseudocode: "Immunization recommendation status" = "Due"
*/
define "Client is due for a hepatitis B vaccination Case 1":
  input."No hepatitis B primary series doses were administered"
    and input."Client's age is more than or equal to {Member States defined lower limit}"

/*
@output: Client is due for a hepatitis B vaccination Case 2
@pseudocode: "Immunization recommendation status" = "Due"
*/
define "Client is due for a hepatitis B vaccination Case 2":
  input."One hepatitis B primary series dose was administered"
    and input."The latest hepatitis B dose was administered more than 4 weeks ago"

/*
@output: Client is due for a hepatitis B vaccination Case 3
@pseudocode: "Immunization recommendation status" = "Due"
*/
define "Client is due for a hepatitis B vaccination Case 3":
  input."Two hepatitis B primary series doses were administered"
    and input."Client's weight at birth was below 2000g"
    and input."The latest hepatitis B dose was administered more than 4 weeks ago"

/*
@output: Client is due for a hepatitis B vaccination Case 4
@pseudocode: "Immunization recommendation status" = "Due"
*/
define "Client is due for a hepatitis B vaccination Case 4":
  input."Two hepatitis B primary series doses were administered"
    and input."Client was a premature infant at birth"
    and input."The latest hepatitis B dose was administered more than 4 weeks ago"

/*
@output: Client is due for a hepatitis B vaccination
@pseudocode: "Immunization recommendation status" = "Due"
*/
define "Client is due for a hepatitis B vaccination":
  "Client is due for a hepatitis B vaccination Case 1"
    or "Client is due for a hepatitis B vaccination Case 2"
    or "Client is due for a hepatitis B vaccination Case 3"
    or "Client is due for a hepatitis B vaccination Case 4"

/*
@output: Client is due for a hepatitis B vaccination Guidance
@guidance: Should vaccinate client for first hepatitis B dose as client's age is within appropriate age range. Check for contraindications.
@guidance: Should vaccinate client for second hepatitis B dose as the latest Hepatitis B dose was administered more than 4 weeks ago. Check for contraindications.
@guidance: Should vaccinate client for third hepatitis B dose as the client was a low birth weight infant and the latest Hepatitis B vaccine administered more than 4 weeks ago. Check for contraindications.
@guidance: Should vaccinate client for third hepatitis B dose as the client was a low birth weight infant and the latest hepatitis B dose was administered more than 4 weeks ago. Check for contraindications.
*/
define "Client is due for a hepatitis B vaccination Guidance":
  case
    when "Client is due for a hepatitis B vaccination Case 1" then 'Should vaccinate client for first hepatitis B dose as client\'s age is within appropriate age range. Check for contraindications.'
    when "Client is due for a hepatitis B vaccination Case 2" then 'Should vaccinate client for second hepatitis B dose as the latest Hepatitis B dose was administered more than 4 weeks ago. Check for contraindications.'
    when "Client is due for a hepatitis B vaccination Case 3" then 'Should vaccinate client for third hepatitis B dose as the client was a low birth weight infant and the latest Hepatitis B vaccine administered more than 4 weeks ago. Check for contraindications.'
    when "Client is due for a hepatitis B vaccination Case 4" then 'Should vaccinate client for third hepatitis B dose as the client was a low birth weight infant and the latest hepatitis B dose was administered more than 4 weeks ago. Check for contraindications.'
    else ''
  end

/*
@output: Hepatitis B immunization schedule is complete Case 1
@pseudocode: "Immunization recommendation status" = 'Complete'
*/
define "Hepatitis B immunization schedule is complete Case 1":
  input."Two hepatitis B primary series doses were administered"
    and input."Client's weight at birth was over 2000g"
    and input."Client was not a premature infant at birth"

/*
@output: Hepatitis B immunization schedule is complete Case 2
@pseudocode: 
*/
define "Hepatitis B immunization schedule is complete Case 2":
  input."Three hepatitis B primary series doses were administered"

/*
@output: Hepatitis B immunization schedule is complete
@pseudocode: "Immunization recommendation status" = 'Complete'
*/
define "Hepatitis B immunization schedule is complete":
  "Hepatitis B immunization schedule is complete Case 1"
    or "Hepatitis B immunization schedule is complete Case 2"

/*
@output: Hepatitis B immunization schedule is complete Guidance
@guidance: Hepatitis B immunization schedule is complete for client whose weight at birth was over 2000g and who was not premature infant. Two hepatitis B primary series doses were administered.
@guidance: The Hepatitis B immunization schedule is complete for client whose weight at birth was below 2000g and who was a premature infant. Four hepatitis B primary series doses were administered. Check for any other vaccines due.
*/
define "Hepatitis B immunization schedule is complete Guidance":
  case
    when "Hepatitis B immunization schedule is complete Case 1" then 'Hepatitis B immunization schedule is complete for client whose weight at birth was over 2000g and who was not premature infant. Two hepatitis B primary series doses were administered.'
    when "Hepatitis B immunization schedule is complete Case 2" then 'The Hepatitis B immunization schedule is complete for client whose weight at birth was below 2000g and who was a premature infant. Four hepatitis B primary series doses were administered. Check for any other vaccines due.'
    else ''
  end


/*
@test: Test expected results based on example patients
*/
define "Test Validation":
  case
    when Patient.id = '21.D0Alt4w' then "Client is not due for a hepatitis B vaccination Case 1" and "Guidance" = 'Should not vaccinate client for first Hepatitis B dose as client\'s age is not within appropriate age range. Check for any other vaccines due, and inform the caregiver of when to come back for the first dose.'
    when Patient.id = '22.D0Agt4w' then "Client is due for a hepatitis B vaccination Case 1" and "Guidance" = 'Should vaccinate client for first hepatitis B dose as client\'s age is within appropriate age range. Check for contraindications.'
    when Patient.id = '23.D1Hlt4w' then "Client is not due for a hepatitis B vaccination Case 2" and "Guidance" = 'Should not vaccinate client for second hepatitis B dose as the latest Hepatitis B dose was administered less than 4 weeks ago. Check for any other vaccines due, and inform the caregiver of when to come back for the third dose.'
    when Patient.id = '24.D1Hgt4w' then "Client is due for a hepatitis B vaccination Case 2" and "Guidance" = 'Should vaccinate client for second hepatitis B dose as the latest Hepatitis B dose was administered more than 4 weeks ago. Check for contraindications.'
    when Patient.id = '25.D2BWgt2kgNP' then "Hepatitis B immunization schedule is complete Case 1" and "Guidance" = 'Hepatitis B immunization schedule is complete for client whose weight at birth was over 2000g and who was not premature infant. Two hepatitis B primary series doses were administered.'
    when Patient.id = '26.D2BWlt2kgHlt4w' then "Client is not due for a hepatitis B vaccination Case 3" and "Guidance" = 'Should not vaccinate client for third hepatitis B dose as the client was a low birth weight infant and the latest hepatitis B vaccine was administered less than 4 weeks ago. Check for any other vaccines due, and inform the caregiver of when to come back for the third dose.'
    when Patient.id = '27.D2BWlt2kgHgt4w' then "Client is due for a hepatitis B vaccination Case 3" and "Guidance" = 'Should vaccinate client for third hepatitis B dose as the client was a low birth weight infant and the latest Hepatitis B vaccine administered more than 4 weeks ago. Check for contraindications.'
    when Patient.id = '28.D2PHlt4w' then "Client is not due for a hepatitis B vaccination Case 4" and "Guidance" = 'Should not vaccinate client for third hepatitis B dose as the client was a low birth weight infant and the latest hepatitis B dose was administered less than 4 weeks ago. Check for any other vaccines due, and inform the caregiver of when to come back for the next dose.'
    when Patient.id = '29.D2PHgt4w' then "Client is due for a hepatitis B vaccination Case 4" and "Guidance" = 'Should vaccinate client for third hepatitis B dose as the client was a low birth weight infant and the latest hepatitis B dose was administered more than 4 weeks ago. Check for contraindications.'
    when Patient.id = '30.D3' then "Hepatitis B immunization schedule is complete Case 2" and "Guidance" = 'The Hepatitis B immunization schedule is complete for client whose weight at birth was below 2000g and who was a premature infant. Four hepatitis B primary series doses were administered. Check for any other vaccines due.'
    else 'No test case set'
  end
