
/*
 * Library: IMMZD2DTDTP (IMMZ.D5.DT.DTP contraindications)
 * Rule: Check for contraindications before administering the vaccine(s) due
 * Decision Table: Potential contraindications
 * Trigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications
 */
library IMMZD5DTDTP
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
@internal: Draft Medication Request for DTP dose
*/
define "Draft Medication Request for DTP dose":
	[MedicationRequest: IMMZc."DTP Vaccine"] MR where MR.status = 'draft' and MR.intent = 'proposal'
	sort by date from (authoredOn as FHIR.dateTime) desc

/*
@internal: Draft Medication Request for Tetanus and Diphtheria Vaccine dose
*/
define "Draft Medication Request for Tetanus and Diphtheria Vaccine dose":
	[MedicationRequest: IMMZc."Tetanus and Diphtheria Vaccine"] MR where MR.status = 'draft' and MR.intent = 'proposal'
	sort by date from (authoredOn as FHIR.dateTime) desc

/*
@internal: Draft Medication Request for Pertussis dose
*/
define "Draft Medication Request for Pertussis dose":
	[MedicationRequest: IMMZc."Pertussis Vaccine"] MR where MR.status = 'draft' and MR.intent = 'proposal'
	sort by date from (authoredOn as FHIR.dateTime) desc

/*
@dynamicValue: Draft Medication Request ID for DTP dose
*/
define "Draft Medication Request ID for DTP dose":
  case
    when exists("Draft Medication Request for DTP dose") then First("Draft Medication Request for DTP dose").id
    when exists("Draft Medication Request for Tetanus and Diphtheria Vaccine dose") then First("Draft Medication Request for Tetanus and Diphtheria Vaccine dose").id
    when exists("Draft Medication Request for Pertussis dose") then First("Draft Medication Request for Pertussis dose").id
    else null
  end


/*
@dynamicValue: Guidance
*/
define "Guidance":
  case
    when "Tetanus and pertussis vaccination could be contraindicated. Clinical judgement is required. Create a clinical note." then "Tetanus and pertussis vaccination could be contraindicated. Clinical judgement is required. Create a clinical note. Guidance"
    when "Tetanus vaccination is contraindicated" then "Tetanus vaccination is contraindicated Guidance"
    else ''
  end

/*
@output: Tetanus and pertussis vaccination could be contraindicated. Clinical judgement is required. Create a clinical note.
@pseudocode: "Immunization recommendation status" = "Further evaluation needed" (where "Vaccine type" = "Pertussis containing vaccines")
*/
define "Tetanus and pertussis vaccination could be contraindicated. Clinical judgement is required. Create a clinical note.":
  input."The client has a history of anaphylactic reactions"

/*
@output: Tetanus and pertussis vaccination could be contraindicated. Clinical judgement is required. Create a clinical note. Guidance
@guidance: Do not vaccinate client for pertussis and/or tetanus if the client has had a severe anaphylactic reaction to a vaccine component or reaction following a prior dose.
*/
define "Tetanus and pertussis vaccination could be contraindicated. Clinical judgement is required. Create a clinical note. Guidance":
  'Do not vaccinate client for pertussis and/or tetanus if the client has had a severe anaphylactic reaction to a vaccine component or reaction following a prior dose.'

/*
@output: Tetanus vaccination is contraindicated
@pseudocode: "Immunization recommendation status" = "Contraindicated" (where "Vaccine type" = "Tetanus  containing vaccines")
*/
define "Tetanus vaccination is contraindicated":
  input."The client currently has a severe acute illness"

/*
@output: Tetanus vaccination is contraindicated Guidance
@guidance: Do not vaccinate client for tetanus as tetanus vaccination is contraindicated for clients with severe acute illness
*/
define "Tetanus vaccination is contraindicated Guidance":
  'Do not vaccinate client for tetanus as tetanus vaccination is contraindicated for clients with severe acute illness'


/*
@test: Test expected results based on example patients
*/
define "Test Validation":
  case
    when Patient.id = '88.anaplylactic' then "Tetanus and pertussis vaccination could be contraindicated. Clinical judgement is required. Create a clinical note." and "Guidance" = 'Do not vaccinate client for pertussis and/or tetanus if the client has had a severe anaphylactic reaction to a vaccine component or reaction following a prior dose.'
    when Patient.id = '89.illness' then "Tetanus vaccination is contraindicated" and "Guidance" = 'Do not vaccinate client for tetanus as tetanus vaccination is contraindicated for clients with severe acute illness'
    else 'No test case set'
  end
