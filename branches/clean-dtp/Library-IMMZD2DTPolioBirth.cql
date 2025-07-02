/*
 * Library: IMMZD2DTPolioBirth (IMMZ.D2.DT.Polio.Birth dose)
 * Rule: Determine if the client is due for a polio vaccination according to the national immunization protocol
 * Decision Table: Birth dose administration as part of "bOPV plus IPV" schedule (In countries that are polio-endemic countries or countries at high risk for importation and subsequent spread of poliovirus, that follow the combined bOPV-IPV schedule)
 * Trigger: IMMZ.D2  Determine required vaccination(s) if any
 */
library IMMZD2DTPolioBirth
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
@dynamicValue: Guidance
*/
define "Guidance":
  case
    when "Client is due for the bOPV birth dose" then "Client is due for the bOPV birth dose Guidance"
    when "Client is not due for the bOPV birth dose" then "Client is not due for the bOPV birth dose Guidance"
    else ''
  end

/*
@output: Client is due for the bOPV birth dose
@pseudocode: "Immunization recommendation status" = 'Due' (where "Type of polio dose" = 'bOPV')
*/
define "Client is due for the bOPV birth dose":
  input."bOPV birth dose (a zero dose) was not administered"
    and input."Client's age is less than 1 week"

/*
@output: Client is due for the bOPV birth dose Guidance
@guidance: Should vaccinate client for bOPV birth dose (a zero dose) as polio birth dose was not administered and client's age is less than 1 week. Check for contraindications.
*/
define "Client is due for the bOPV birth dose Guidance":
  'Should vaccinate client for bOPV birth dose (a zero dose) as polio birth dose was not administered and client\'s age is less than 1 week. Check for contraindications.'

/*
@output: Client is not due for the bOPV birth dose Case 1
@pseudocode: "Immunization recommendation status" = 'Not due'
*/
define "Client is not due for the bOPV birth dose Case 1":
  input."bOPV birth dose (a zero dose) was not administered"
    and input."Client's age is more or equal to 1 week"

/*
@output: Client is not due for the bOPV birth dose Case 2
@pseudocode: "Immunization recommendation status" = 'Not due'
*/
define "Client is not due for the bOPV birth dose Case 2":
  input."bOPV birth dose (a zero dose) was administered"

/*
@output: Client is not due for the bOPV birth dose
@pseudocode: "Immunization recommendation status" = 'Not due'
*/
define "Client is not due for the bOPV birth dose":
  "Client is not due for the bOPV birth dose Case 1"
    or "Client is not due for the bOPV birth dose Case 2"

/*
@output: Client is not due for the bOPV birth dose Guidance
@guidance: Should not vaccinate client for bOPV birth dose (a zero dose) as client's age is more than or equal to 1 week. Check for any other vaccines due, and inform the caregiver of when to come back for the next dose.
@guidance: Polio birth dose was already administered. Check polio immunization schedule.
*/
define "Client is not due for the bOPV birth dose Guidance":
  case
    when "Client is not due for the bOPV birth dose Case 1" then 'Should not vaccinate client for bOPV birth dose (a zero dose) as client\'s age is more than or equal to 1 week. Check for any other vaccines due, and inform the caregiver of when to come back for the next dose.'
    when "Client is not due for the bOPV birth dose Case 2" then 'Polio birth dose was already administered. Check polio immunization schedule.'
    else ''
  end