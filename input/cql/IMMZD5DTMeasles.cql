/*
 * Library: IMMZD5DTMeasles (IMMZ.D5.DT.Measles)
 * Rule: Check for contraindications before administering the vaccine(s) due	 	 	  
 * Trigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications
 */
library IMMZD5DTMeasles
// Start Skeleton CQL
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1'
include IMMZCommon called IMMZCom
include IMMZConcepts called IMMZc
include IMMZConfig called IMMZCon
include IMMZVaccineLibrary called IMMZvl
include FHIRCommon called FC
include IMMZD2DTMeaslesInput called input

// End Skeleton CQL
context Patient

/*
@internal: Draft Medication Request for MCV dose
*/
define "Draft Medication Request for MCV dose":
	[MedicationRequest: IMMZc."MCV Vaccine"] MR where MR.status = 'draft' and MR.intent = 'proposal'
	sort by date from (authoredOn as FHIR.dateTime) desc

/*
@dynamicValue: Draft Medication Request ID for MCV dose
*/
define "Draft Medication Request ID for MCV dose":
	First("Draft Medication Request for MCV dose").id

/*
@dynamicValue: Guidance
*/
define "Guidance":
	Combine( { 
		if "Measles vaccination contraindicated" then "Measles vaccination contraindicated Guidance" else '',
		if "Clinical judgement required" then "Clinical judgement required Guidance" else ''
	}, ' ' )

/*
@output: Measles vaccination contraindicated Case 1
@pseudocode: "Immunization recommendation status" = 'Contraindicated'
*/
define "Measles vaccination contraindicated Case 1":
	input."The client is pregnant"

/*
@output: Measles vaccination contraindicated Case 2
@pseudocode: "Immunization recommendation status" = 'Contraindicated'
*/
define "Measles vaccination contraindicated Case 2":
	input."The client is severely immunosuppressed"

/*
@output: Measles vaccination contraindicated
@pseudocode: "Immunization recommendation status" = 'Contraindicated'
*/
define "Measles vaccination contraindicated":
	"Measles vaccination contraindicated Case 1" or "Measles vaccination contraindicated Case 2"

/*
@output: Measles vaccination contraindicated Guidance
@guidance: Do not vaccinate due to a contraindication: client is pregnant.
@guidance: Do not vaccinate due to a contraindication: client is severely immunosuppressed.
*/
define "Measles vaccination contraindicated Guidance":
	Combine( {
		if "Measles vaccination contraindicated Case 1" then 'Do not vaccinate due to a contraindication: client is pregnant.' else '',
		if "Measles vaccination contraindicated Case 2" then 'Do not vaccinate due to a contraindication: client is severely immunosuppressed.' else ''
	}, ' ' )

/*
@output: Clinical judgement required Case 1
@pseudocode: Immunization recommendation status = 'Further evaluation needed'"
*/
define "Clinical judgement required Case 1":
	input."The client has history of anaphylactic reactions"

/*
@output: Clinical judgement required Case 2
@pseudocode: Immunization recommendation status = 'Further evaluation needed'"
*/
define "Clinical judgement required Case 2":
	input."The client has history of severe allergic reactions"

/*
@output: Clinical judgement required Case 3
@pseudocode: Immunization recommendation status = 'Further evaluation needed'"
*/
define "Clinical judgement required Case 3":
input."The client has a symptomatic HIV infection"

/*
@output: Clinical judgement required
@pseudocode: Immunization recommendation status = 'Further evaluation needed'"
*/
define "Clinical judgement required":
	"Clinical judgement required Case 1"
	or "Clinical judgement required Case 2"
	or "Clinical judgement required Case 3"

/*
@output: Clinical judgement required Guidance
@guidance: Check if previous anaphylactic reaction refers to components of the vaccine (e.g. neomycin or gelatin)
@guidance: Check if previous severe reaction refers to components of the vaccine (e.g. neomycin or gelatin) 
@guidance: Vaccination may be considered if the client is not severely immunosuppressed
*/
define "Clinical judgement required Guidance":
	Combine( {
		if "Clinical judgement required Case 1" then 'Check if previous anaphylactic reaction refers to components of the vaccine (e.g. neomycin or gelatin)' else '',
		if "Clinical judgement required Case 2" then 'Check if previous severe reaction refers to components of the vaccine (e.g. neomycin or gelatin)' else '',
		if "Clinical judgement required Case 3" then 'Vaccination may be considered if the client is not severely immunosuppressed' else ''
	}, ' ' )
