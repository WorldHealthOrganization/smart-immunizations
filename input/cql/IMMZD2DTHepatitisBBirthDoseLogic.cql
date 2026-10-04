/*
 * Library: IMMZD2DTHepatitisBBirthDoseLogic (IMMZ.D2.DT.Hepatitis B.Birth dose)
 * Rule: Determine if the client is due for a hepatitis B vaccination according to the national immunization schedule
 * Decision Table: Birth dose administration
 * Trigger: IMMZ.D2 Determine required vaccination(s) if any
 */
library IMMZD2DTHepatitisBBirthDoseLogic

using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1'

include IMMZD2DTHepatitisBEncounterElements called Encounter

parameter Today Date default Today()

context Patient


/*
@dynamicValue: Guidance
*/
define "Guidance":
  case 
    when "Client is due for hepatitis B monovalent vaccine" then "Client is due for hepatitis B monovalent vaccine Guidance"
    when "Client should follow delayed-start decision logic" then "Client should follow delayed-start decision logic Guidance"
    when "Client is not due for the hepatitis B birth dose" then "Client is not due for the hepatitis B birth dose Guidance" 
    else ''
  end
  
define "Has Guidance":
  "Guidance" is not null and "Guidance" != ''

/*
@output: Client is due for hepatitis B monovalent vaccine
@pseudocode: "Immunization recommendation status" = "Due" (where "Type of hepatitis B dose" = "Hepatitis B monovalent vaccine")
*/
define "Client is due for hepatitis B monovalent vaccine":
  Encounter."Hepatitis B birth dose was not administered"
    and Encounter."Client's age is less than {Member States defined upper limit}"

/*
@output: Client is due for hepatitis B monovalent vaccine Guidance
@guidance: Should vaccinate client with hepatitis B birth dose, as a monovalent dose. Check for contraindications.
*/
define "Client is due for hepatitis B monovalent vaccine Guidance":
  'Should vaccinate client with hepatitis B birth dose, as a monovalent dose. Check for contraindications.'

/*
@output: Client should follow delayed-start decision logic
@pseudocode: 
*/
define "Client should follow delayed-start decision logic":
  Encounter."Hepatitis B birth dose was not administered"
    and Encounter."Client's age is more than {Member States defined upper limit}"

/*
@output: Client should follow delayed-start decision logic Guidance
@guidance: The client has a delayed start. Please follow the delayed start schedule.
*/
define "Client should follow delayed-start decision logic Guidance":
  'The client has a delayed start. Please follow the delayed start schedule.'

/*
@output: Client is not due for the hepatitis B birth dose
@pseudocode: "Immunization recommendation status" = "Not due"
*/
define "Client is not due for the hepatitis B birth dose":
  Encounter."Hepatitis B birth dose was administered"

/*
@output: Client is not due for the hepatitis B birth dose Guidance
@guidance: Hepatitis B birth dose was already administered. Check hepatitis B immunization schedule.
*/
define "Client is not due for the hepatitis B birth dose Guidance":
  'Hepatitis B birth dose was already administered. Check hepatitis B immunization schedule.'


/*
@test: Test expected results based on example patients
*/
define "Test Validation":
  case
    when Patient.id = 'HepatitisB08.2' then "Client is due for hepatitis B monovalent vaccine" and "Guidance" = 'Should vaccinate client with hepatitis B birth dose, as a monovalent dose. Check for contraindications.'
    when Patient.id = 'HepatitisB09.2' then "Client should follow delayed-start decision logic" and "Guidance" = 'The client has a delayed start. Please follow the delayed start schedule.'
    when Patient.id = 'HepatitisB10.1' then "Client is not due for the hepatitis B birth dose" and "Guidance" = 'Hepatitis B birth dose was already administered. Check hepatitis B immunization schedule.'
    else 'No test case set'
  end

// @generated dynamicValue constants
// Resolved via text/cql-identifier from PlanDefinition.action.dynamicValue,
// avoiding per-$apply CQL→ELM compilation of inline text/cql-expression literals.
// See input/fsh/rulesets/rulesets-plandefinition.fsh.
define "Draft Status": 'draft'
define "Proposal Intent": 'proposal'
define "Active Status": 'active'
define "Alert Category Coding": Code { system: 'http://terminology.hl7.org/CodeSystem/communication-category', code: 'alert' }
define "Routine Priority": Code { system: 'http://hl7.org/fhir/request-priority', code: 'routine' }
define "Hepatitis B-containing vaccines Medication": Concept { codes: { Code { system: 'http://smart.who.int/immunizations/CodeSystem/IMMZ.Z', code: 'DE6', display: 'Hepatitis B-containing vaccines' } }, display: 'Hepatitis B-containing vaccines' }
