
/*
 * Library: IMMZD5DTRubella (IMMZ.D5.DT.Rubella contraindications)
 * Rule: Check for contraindications before administering the vaccine(s) due
 * Decision Table: Potential contraindications
 * Trigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications
 */
library IMMZD5DTRubella
// Start Skeleton CQL
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1'
include IMMZCommon called IMMZCom
include IMMZConcepts called IMMZc
include IMMZConfig called IMMZCon
include IMMZVaccineLibrary called IMMZvl
include FHIRCommon called FC
include IMMZD2DTRubellaInput called input

// End Skeleton CQL
context Patient

/*
@internal: Draft Medication Request for Rubella dose
*/
define "Draft Medication Request for Rubella dose":
	[MedicationRequest: IMMZc."Rubella Vaccine"] MR where MR.status = 'draft' and MR.intent = 'proposal'
	sort by date from (authoredOn as FHIR.dateTime) desc

/*
@dynamicValue: Draft Medication Request ID for Rubella dose
*/
define "Draft Medication Request ID for Rubella dose":
	First("Draft Medication Request for Rubella dose").id

/*
@dynamicValue: Guidance
*/
define "Guidance":
  case
    when "Rubella vaccination is contraindicated" then "Rubella vaccination is contraindicated Guidance"
    when "Clinical judgement is required." then "Clinical judgement is required. Guidance"
    when "Rubella vaccination could be contraindicated. Clinical judgement is required." then "Rubella vaccination could be contraindicated. Clinical judgement is required. Guidance"
    else ''
  end

/*
@output: Rubella vaccination is contraindicated Case 1
@pseudocode: '"Immunization recommendation status" = 'Contraindicated'
*/
define "Rubella vaccination is contraindicated Case 1":
  input."The client is currently pregnant"

/*
@output: Rubella vaccination is contraindicated Case 2
@pseudocode: '"Immunization recommendation status" = 'Contraindicated'
*/
define "Rubella vaccination is contraindicated Case 2":
  input."The client is receiving blood products"

/*
@output: Rubella vaccination is contraindicated Case 3
@pseudocode: '"Immunization recommendation status" = 'Contraindicated'
*/
define "Rubella vaccination is contraindicated Case 3":
  input."The client has symptomatic HIV infection"

/*
@output: Rubella vaccination is contraindicated Case 4
@pseudocode: '"Immunization recommendation status" = 'Contraindicated'
*/
define "Rubella vaccination is contraindicated Case 4":
  input."The client has TB disease"

/*
@output: Rubella vaccination is contraindicated Case 5
@pseudocode: '"Immunization recommendation status" = 'Contraindicated'
*/
define "Rubella vaccination is contraindicated Case 5":
  input."The client has immunodeficiency syndromes"

/*
@output: Rubella vaccination is contraindicated Case 6
@pseudocode: '"Immunization recommendation status" = 'Contraindicated'
*/
define "Rubella vaccination is contraindicated Case 6":
  input."The client is exposed to immunosuppressive treatment"

/*
@output: Rubella vaccination is contraindicated
@pseudocode: '"Immunization recommendation status" = 'Contraindicated'
*/
define "Rubella vaccination is contraindicated":
  "Rubella vaccination is contraindicated Case 1"
    or "Rubella vaccination is contraindicated Case 2"
    or "Rubella vaccination is contraindicated Case 3"
    or "Rubella vaccination is contraindicated Case 4"
    or "Rubella vaccination is contraindicated Case 5"
    or "Rubella vaccination is contraindicated Case 6"

/*
@output: Rubella vaccination is contraindicated Guidance
@guidance: Do not vaccinate client for rubella as rubella vaccination is contraindicated for pregnant client.
@guidance: Do not vaccinate client for rubella as rubella vaccination is contraindicated until at least 3 months after stopping receiving blood products
@guidance: Do not vaccinate client for rubella as rubella vaccination is contraindicated for clients with symptomatic HIV infection.
@guidance: Do not vaccinate client for rubella as rubella vaccination is contraindicated for clients with active TB.
@guidance: Do not vaccinate client for rubella as rubella vaccination is contraindicated for clients with severe immunodeficiency.
@guidance: Do not vaccinate client for rubella as rubella vaccination is contraindicated for clients receiving or exposed to immunosuppressive therapy.
*/
define "Rubella vaccination is contraindicated Guidance":
  case
    when "Rubella vaccination is contraindicated Case 1" then 'Do not vaccinate client for rubella as rubella vaccination is contraindicated for pregnant client.'
    when "Rubella vaccination is contraindicated Case 2" then 'Do not vaccinate client for rubella as rubella vaccination is contraindicated until at least 3 months after stopping receiving blood products'
    when "Rubella vaccination is contraindicated Case 3" then 'Do not vaccinate client for rubella as rubella vaccination is contraindicated for clients with symptomatic HIV infection.'
    when "Rubella vaccination is contraindicated Case 4" then 'Do not vaccinate client for rubella as rubella vaccination is contraindicated for clients with active TB.'
    when "Rubella vaccination is contraindicated Case 5" then 'Do not vaccinate client for rubella as rubella vaccination is contraindicated for clients with severe immunodeficiency.'
    when "Rubella vaccination is contraindicated Case 6" then 'Do not vaccinate client for rubella as rubella vaccination is contraindicated for clients receiving or exposed to immunosuppressive therapy.'
    else ''
  end

/*
@output: Clinical judgement is required.
@pseudocode: Create a clinical note.
*/
define "Clinical judgement is required.":
  input."The client is planning to get pregnant in next month"

/*
@output: Clinical judgement is required. Guidance
@guidance: Discuss pregnancy intentions with client, consider risks of vaccination and make a clinical judgement. Clients planning a pregnancy are advised to avoid pregnancy for 1 month after rubella vaccination
*/
define "Clinical judgement is required. Guidance":
  'Discuss pregnancy intentions with client, consider risks of vaccination and make a clinical judgement. Clients planning a pregnancy are advised to avoid pregnancy for 1 month after rubella vaccination'

/*
@output: Rubella vaccination could be contraindicated. Clinical judgement is required.
@pseudocode: Create a clinical note.
*/
define "Rubella vaccination could be contraindicated. Clinical judgement is required.":
  input."The client has history of severe allergic reactions"

/*
@output: Rubella vaccination could be contraindicated. Clinical judgement is required. Guidance
@guidance: Do not vaccinate client for rubella if client has experienced a severe allergic reaction after a previous vaccine dose or vaccine component.
*/
define "Rubella vaccination could be contraindicated. Clinical judgement is required. Guidance":
  'Do not vaccinate client for rubella if client has experienced a severe allergic reaction after a previous vaccine dose or vaccine component.'


/*
@test: Test expected results based on example patients
*/
define "Test Validation":
  case
    when Patient.id = '28.pregnant' then "Rubella vaccination is contraindicated Case 1" and "Guidance" = 'Do not vaccinate client for rubella as rubella vaccination is contraindicated for pregnant client.'
    when Patient.id = '29.planning' then "Clinical judgement is required." and "Guidance" = 'Discuss pregnancy intentions with client, consider risks of vaccination and make a clinical judgement. Clients planning a pregnancy are advised to avoid pregnancy for 1 month after rubella vaccination'
    when Patient.id = '30.blood' then "Rubella vaccination is contraindicated Case 2" and "Guidance" = 'Do not vaccinate client for rubella as rubella vaccination is contraindicated until at least 3 months after stopping receiving blood products'
    when Patient.id = '31.severe' then "Rubella vaccination could be contraindicated. Clinical judgement is required." and "Guidance" = 'Do not vaccinate client for rubella if client has experienced a severe allergic reaction after a previous vaccine dose or vaccine component.'
    when Patient.id = '32.hiv' then "Rubella vaccination is contraindicated Case 3" and "Guidance" = 'Do not vaccinate client for rubella as rubella vaccination is contraindicated for clients with symptomatic HIV infection.'
    when Patient.id = '33.tb' then "Rubella vaccination is contraindicated Case 4" and "Guidance" = 'Do not vaccinate client for rubella as rubella vaccination is contraindicated for clients with active TB.'
    when Patient.id = '34.immunodeficiency' then "Rubella vaccination is contraindicated Case 5" and "Guidance" = 'Do not vaccinate client for rubella as rubella vaccination is contraindicated for clients with severe immunodeficiency.'
    when Patient.id = '35.immunosuppressive' then "Rubella vaccination is contraindicated Case 6" and "Guidance" = 'Do not vaccinate client for rubella as rubella vaccination is contraindicated for clients receiving or exposed to immunosuppressive therapy.'
    else 'No test case set'
  end
