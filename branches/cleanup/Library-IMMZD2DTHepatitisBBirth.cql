
/*
 * Library: IMMZD2DTHepatitisBBirth (IMMZ.D2.DT.Hepatitis B.Birth dose)
 * Rule: Determine if the client is due for a hepatitis B vaccination according to the national immunization schedule
 * Decision Table: Birth dose administration
 * Trigger: IMMZ.D2 Determine required vaccination(s) if any
 */
library IMMZD2DTHepatitisBBirth
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
    when "Client is due for hepatitis B monovalent vaccine" then "Client is due for hepatitis B monovalent vaccine Guidance"
    when "Client should follow delayed start decision logic" then "Client should follow delayed start decision logic Guidance"
    when "Client is not due for the Hepatitis B birth dose" then "Client is not due for the Hepatitis B birth dose Guidance"
    else ''
  end

/*
@output: Client is due for hepatitis B monovalent vaccine
@pseudocode: "Immunization recommendation status" = "Due" (where "Type of hepatitis B dose" = "Hepatitis B monovalent vaccine")
*/
define "Client is due for hepatitis B monovalent vaccine":
  input."Hepatitis B birth dose was not administered"
    and input."Client's age is less than {Member States defined upper limit}"

/*
@output: Client is due for hepatitis B monovalent vaccine Guidance
@guidance: Should vaccinate client for hepatitis B birth dose, as a monovalent dose. For low birth weight (<2000g) and premature infants the birth dose should not count as part of the primary 3-dose series. Check for contraindications.
*/
define "Client is due for hepatitis B monovalent vaccine Guidance":
  'Should vaccinate client for hepatitis B birth dose, as a monovalent dose. For low birth weight (<2000g) and premature infants the birth dose should not count as part of the primary 3-dose series. Check for contraindications.'

/*
@output: Client should follow delayed start decision logic
@pseudocode: 
*/
define "Client should follow delayed start decision logic":
  input."Hepatitis B birth dose was not administered"
    and input."Client's age is more than {Member States defined upper limit}"

/*
@output: Client should follow delayed start decision logic Guidance
@guidance: The client has a delayed start. Please follow the delayed start schedule.
*/
define "Client should follow delayed start decision logic Guidance":
  'The client has a delayed start. Please follow the delayed start schedule.'

/*
@output: Client is not due for the Hepatitis B birth dose
@pseudocode: "Immunization recommendation status" = 'Not due'
*/
define "Client is not due for the Hepatitis B birth dose":
  input."Hepatitis B birth dose was administered"

/*
@output: Client is not due for the Hepatitis B birth dose Guidance
@guidance: Hepatitis B birth dose was already administered. Check Hepatitis B immunization schedule.
*/
define "Client is not due for the Hepatitis B birth dose Guidance":
  'Hepatitis B birth dose was already administered. Check Hepatitis B immunization schedule.'


/*
@test: Test expected results based on example patients
*/
define "Test Validation":
  case
    when Patient.id = '08.B0Alt4w' then "Client is due for hepatitis B monovalent vaccine" and "Guidance" = 'Should vaccinate client for hepatitis B birth dose, as a monovalent dose. For low birth weight (<2000g) and premature infants the birth dose should not count as part of the primary 3-dose series. Check for contraindications.'
    when Patient.id = '09.B0Agt4w' then "Client should follow delayed start decision logic" and "Guidance" = 'The client has a delayed start. Please follow the delayed start schedule.'
    when Patient.id = '10.B1' then "Client is not due for the Hepatitis B birth dose" and "Guidance" = 'Hepatitis B birth dose was already administered. Check Hepatitis B immunization schedule.'
    else 'No test case set'
  end
