
/*
 * Library: IMMZD2DTPolioSequential (IMMZ.D2.DT.Polio.Sequential IPV–bOPV)
 * Rule: Determine if the client is due for a polio vaccination according to the national immunization protocol
 * Decision Table: Sequential IPV–bOPV schedule (in countries with high vaccination coverage (e.g. 90–95%) and low importation risk (where neighbouring countries and/or countries that share substantial population movement have a similarly high coverage))
 * Trigger: IMMZ.D2  Determine required vaccination(s) if any
 */
library IMMZD2DTPolioSequential
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
    when Patient.id = '56.D0Alt8w' then "Client is not due for IPV vaccination Case 1" and "Guidance" = 'Should not vaccinate client for first IPV dose as client\'s age is less than 8 weeks. Check for any other vaccines due, and inform the caregiver of when to come back for the first polio dose.'
    when Patient.id = '57.D0Agt8w' then "Client is due for IPV vaccination Case 1" and "Guidance" = 'Should vaccinate client for first IPV dose as client is within appropriate age range and IPV dose was not administered. Check for contraindications.'
    when Patient.id = '58.D1Dlt4w' then "Client is not due for IPV vaccination Case 2" and "Guidance" = 'Should not vaccinate client for second IPV dose as the latest IPV dose was administered less than 4 weeks ago. Check for any other vaccines due, and inform the caregiver of when to come back for the next dose.'
    when Patient.id = '59.D1Dgt4w' then "Client is due for IPV vaccination Case 2" and "Guidance" = 'Should vaccinate client for second IPV dose as the latest IPV dose was administered more than 4 weeks ago.
Check for contraindications.'
    when Patient.id = '60.D2' then "Client is due for bOPV vaccination Case 1" and "Guidance" = 'Should vaccinate client for first bOPV dose as two IPV doses were administered.
Check for contraindications.'
    when Patient.id = '61.D3Dlt4w' then "Client is not due for bOPV vaccination" and "Guidance" = 'Should not vaccinate client for second bOPV dose as the latest bOPV dose was administered less than 4 weeks ago. Check for any other vaccines due, and inform the caregiver of when to come back for the next dose'
    when Patient.id = '62.D3Dgt4w' then "Client is due for bOPV vaccination" and "Guidance" = 'Should vaccinate client for second bOPV dose as the latest bOPV dose was administered more than 4 weeks ago.
Check for contraindications.'
    when Patient.id = '63.D4' then "Primary series is complete" and "Guidance" = 'Polio primary series is complete. Assess if supplementary bOPV dose(s) are necessary and create a clinical note.
Check for any other vaccines due.'
    else 'No test case set'
  end

/*
@dynamicValue: Guidance
*/
define "Guidance":
  case
    when "Client is not due for IPV vaccination" then "Client is not due for IPV vaccination Guidance"
    when "Client is due for IPV vaccination" then "Client is due for IPV vaccination Guidance"
    when "Client is due for bOPV vaccination" then "Client is due for bOPV vaccination Guidance"
    when "Client is not due for bOPV vaccination" then "Client is not due for bOPV vaccination Guidance"
    when "Primary series is complete" then "Primary series is complete Guidance"
    else ''
  end

/*
@output: Client is not due for IPV vaccination Case 1
@pseudocode: "Immunization recommendation status" = 'Not due'
*/
define "Client is not due for IPV vaccination Case 1":
  input."No polio primary series doses were administered"
    and input."Client's age is less than 8 weeks"

/*
@output: Client is not due for IPV vaccination Case 2
@pseudocode: "Immunization recommendation status" = 'Not due'
*/
define "Client is not due for IPV vaccination Case 2":
  input."One polio primary series dose was administered"
    and input."The latest polio dose was administered less than 4 weeks ago"

/*
@output: Client is not due for IPV vaccination
@pseudocode: "Immunization recommendation status" = 'Not due'
*/
define "Client is not due for IPV vaccination":
  "Client is not due for IPV vaccination Case 1"
    or "Client is not due for IPV vaccination Case 2"

/*
@output: Client is not due for IPV vaccination Guidance
@guidance: Should not vaccinate client for first IPV dose as client's age is less than 8 weeks. Check for any other vaccines due, and inform the caregiver of when to come back for the first polio dose.
@guidance: Should not vaccinate client for second IPV dose as the latest IPV dose was administered less than 4 weeks ago. Check for any other vaccines due, and inform the caregiver of when to come back for the next dose.
*/
define "Client is not due for IPV vaccination Guidance":
  case
    when "Client is not due for IPV vaccination Case 1" then 'Should not vaccinate client for first IPV dose as client\'s age is less than 8 weeks. Check for any other vaccines due, and inform the caregiver of when to come back for the first polio dose.'
    when "Client is not due for IPV vaccination Case 2" then 'Should not vaccinate client for second IPV dose as the latest IPV dose was administered less than 4 weeks ago. Check for any other vaccines due, and inform the caregiver of when to come back for the next dose.'
    else ''
  end

/*
@output: Client is due for IPV vaccination Case 1
@pseudocode: "Immunization recommendation status" = 'Due' (where "Type of polio dose" = 'IPV')
*/
define "Client is due for IPV vaccination Case 1":
  input."No polio primary series doses were administered"
    and input."Client's age is more than or equal to 8 weeks"

/*
@output: Client is due for IPV vaccination Case 2
@pseudocode: "Immunization recommendation status" = 'Due' (where "Type of polio dose" = 'IPV')
*/
define "Client is due for IPV vaccination Case 2":
  input."One polio primary series dose was administered"
    and input."The latest polio dose was administered more than 4 weeks ago"

/*
@output: Client is due for IPV vaccination
@pseudocode: "Immunization recommendation status" = 'Due' (where "Type of polio dose" = 'IPV')
*/
define "Client is due for IPV vaccination":
  "Client is due for IPV vaccination Case 1"
    or "Client is due for IPV vaccination Case 2"

/*
@output: Client is due for IPV vaccination Guidance
@guidance: Should vaccinate client for first IPV dose as client is within appropriate age range and IPV dose was not administered. Check for contraindications.
@guidance: Should vaccinate client for second IPV dose as the latest IPV dose was administered more than 4 weeks ago.
Check for contraindications.
*/
define "Client is due for IPV vaccination Guidance":
  case
    when "Client is due for IPV vaccination Case 1" then 'Should vaccinate client for first IPV dose as client is within appropriate age range and IPV dose was not administered. Check for contraindications.'
    when "Client is due for IPV vaccination Case 2" then 'Should vaccinate client for second IPV dose as the latest IPV dose was administered more than 4 weeks ago.
Check for contraindications.'
    else ''
  end

/*
@output: Client is due for bOPV vaccination Case 1
@pseudocode: "Immunization recommendation status" = 'Due' (where "Type of polio dose" = 'bOPV')
*/
define "Client is due for bOPV vaccination Case 1":
  input."Two polio primary series doses were administered"

/*
@output: Client is due for bOPV vaccination Case 2
@pseudocode: "Immunization recommendation status" = 'Due' (where "Type of polio dose" = 'bOPV')
*/
define "Client is due for bOPV vaccination Case 2":
  input."Three polio primary series doses were administered"
    and input."The latest polio dose was administered more than 4 weeks ago"

/*
@output: Client is due for bOPV vaccination
@pseudocode: "Immunization recommendation status" = 'Due' (where "Type of polio dose" = 'bOPV')
*/
define "Client is due for bOPV vaccination":
  "Client is due for bOPV vaccination Case 1"
    or "Client is due for bOPV vaccination Case 2"

/*
@output: Client is due for bOPV vaccination Guidance
@guidance: Should vaccinate client for first bOPV dose as two IPV doses were administered.
Check for contraindications.
@guidance: Should vaccinate client for second bOPV dose as the latest bOPV dose was administered more than 4 weeks ago.
Check for contraindications.
*/
define "Client is due for bOPV vaccination Guidance":
  case
    when "Client is due for bOPV vaccination Case 1" then 'Should vaccinate client for first bOPV dose as two IPV doses were administered.
Check for contraindications.'
    when "Client is due for bOPV vaccination Case 2" then 'Should vaccinate client for second bOPV dose as the latest bOPV dose was administered more than 4 weeks ago.
Check for contraindications.'
    else ''
  end

/*
@output: Client is not due for bOPV vaccination
@pseudocode: "Immunization recommendation status" = 'Not due'
*/
define "Client is not due for bOPV vaccination":
  input."Three polio primary series doses were administered"
    and input."The latest polio dose was administered less than 4 weeks ago"

/*
@output: Client is not due for bOPV vaccination Guidance
@guidance: Should not vaccinate client for second bOPV dose as the latest bOPV dose was administered less than 4 weeks ago. Check for any other vaccines due, and inform the caregiver of when to come back for the next dose
*/
define "Client is not due for bOPV vaccination Guidance":
  'Should not vaccinate client for second bOPV dose as the latest bOPV dose was administered less than 4 weeks ago. Check for any other vaccines due, and inform the caregiver of when to come back for the next dose'

/*
@output: Primary series is complete
@pseudocode: "Immunization recommendation status" = 'Further evaluation needed'
*/
define "Primary series is complete":
  input."Four polio primary series doses were administered"

/*
@output: Primary series is complete Guidance
@guidance: Polio primary series is complete. Assess if supplementary bOPV dose(s) are necessary and create a clinical note.
Check for any other vaccines due.
*/
define "Primary series is complete Guidance":
  'Polio primary series is complete. Assess if supplementary bOPV dose(s) are necessary and create a clinical note.
Check for any other vaccines due.'

