
/*
 * Library: IMMZD5DTMumps (IMMZ.D5.DT.Mumps contraindications)
 * Rule: "Check for contraindications before administering the vaccine(s) due	"						
 * Decision Table: Potential contraindications			
 * Trigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications
 */
library IMMZD5DTMumps
// Start Skeleton CQL
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1'
include IMMZCommon called IMMZCom
include IMMZConcepts called IMMZc
include IMMZConfig called IMMZCon
include IMMZVaccineLibrary called IMMZvl
include FHIRCommon called FC
include IMMZD2DTMumpsInput called input

// End Skeleton CQL
context Patient

/*
@internal: Draft Medication Request for Mumps dose
*/
define "Draft Medication Request for Mumps dose":
	[MedicationRequest: IMMZc."Mumps Vaccine"] MR where MR.status = 'draft' and MR.intent = 'proposal'
	sort by date from (authoredOn as FHIR.dateTime) desc

/*
@dynamicValue: Draft Medication Request ID for Mumps dose
*/
define "Draft Medication Request ID for Mumps dose":
	First("Draft Medication Request for Mumps dose").id


/*
@dynamicValue: Guidance
*/
define "Guidance":
  case
    when "Mumps vaccination is contraindicated" then "Mumps vaccination is contraindicated Guidance"
    when "Mumps vaccination could be contraindicated. Clinical judgement is required." then "Mumps vaccination could be contraindicated. Clinical judgement is required. Guidance"
    else ''
  end

/*
@output: Mumps vaccination is contraindicated Case 1
@pseudocode: "Immunization recommendation status" = 'Contraindicated'
*/
define "Mumps vaccination is contraindicated Case 1":
  input."The client is currently pregnant"

/*
@output: Mumps vaccination is contraindicated Case 2
@pseudocode: "Immunization recommendation status" = 'Contraindicated'
*/
define "Mumps vaccination is contraindicated Case 2":
  input."The client has immune deficiency"

/*
@output: Mumps vaccination is contraindicated Case 3
@pseudocode: "Immunization recommendation status" = 'Contraindicated'
*/
define "Mumps vaccination is contraindicated Case 3":
  input."The client is severely immunosuppressed"

/*
@output: Mumps vaccination is contraindicated
@pseudocode: "Immunization recommendation status" = 'Contraindicated'
*/
define "Mumps vaccination is contraindicated":
  "Mumps vaccination is contraindicated Case 1"
    or "Mumps vaccination is contraindicated Case 2"
    or "Mumps vaccination is contraindicated Case 3"

/*
@output: Mumps vaccination is contraindicated Guidance
@guidance: Do not vaccinate client for mumps as mumps vaccination is contraindicated for pregnant individuals.
@guidance: Do not vaccinate client for mumps as mumps vaccination is contraindicated in individuals with immunodeficiency syndromes
@guidance: Do not vaccinate client for mumps as mumps vaccination is contraindicated in immunosuppressed individuals
*/
define "Mumps vaccination is contraindicated Guidance":
  case
    when "Mumps vaccination is contraindicated Case 1" then 'Do not vaccinate client for mumps as mumps vaccination is contraindicated for pregnant individuals.'
    when "Mumps vaccination is contraindicated Case 2" then 'Do not vaccinate client for mumps as mumps vaccination is contraindicated in individuals with immunodeficiency syndromes'
    when "Mumps vaccination is contraindicated Case 3" then 'Do not vaccinate client for mumps as mumps vaccination is contraindicated in immunosuppressed individuals'
    else ''
  end

/*
@output: Mumps vaccination could be contraindicated. Clinical judgement is required.
@pseudocode: Create a clinical note.
*/
define "Mumps vaccination could be contraindicated. Clinical judgement is required.":
  input."The client has allergy to vaccine components"

/*
@output: Mumps vaccination could be contraindicated. Clinical judgement is required. Guidance
@guidance: Do not vaccinate client for mumps if client has allergy to vaccine components, such as neomycin and gelatin.
*/
define "Mumps vaccination could be contraindicated. Clinical judgement is required. Guidance":
  'Do not vaccinate client for mumps if client has allergy to vaccine components, such as neomycin and gelatin.'


/*
@test: Test expected results based on example patients
*/
define "Test Validation":
  case
    when Patient.id = '20.pregnant' then "Mumps vaccination is contraindicated Case 1" and "Guidance" = 'Do not vaccinate client for mumps as mumps vaccination is contraindicated for pregnant individuals.'
    when Patient.id = '21.severe' then "Mumps vaccination could be contraindicated. Clinical judgement is required." and "Guidance" = 'Do not vaccinate client for mumps if client has allergy to vaccine components, such as neomycin and gelatin.'
    when Patient.id = '22.immunodeficiency' then "Mumps vaccination is contraindicated Case 2" and "Guidance" = 'Do not vaccinate client for mumps as mumps vaccination is contraindicated in individuals with immunodeficiency syndromes'
    when Patient.id = '23.immunosuppressed' then "Mumps vaccination is contraindicated Case 3" and "Guidance" = 'Do not vaccinate client for mumps as mumps vaccination is contraindicated in immunosuppressed individuals'
    else 'No test case set'
  end
