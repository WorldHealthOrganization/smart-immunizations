/*
 * Library: IMMZD5DTYellowFeverCI (IMMZ.D5.DT.YellowFever.CI)
 * Rule: Check for contraindications before administering the vaccine(s) due	 	 	  
 * Trigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications
 */
library IMMZD5DTYellowFeverCI
// Start Skeleton CQL
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1'
include IMMZCommon called IMMZCom
include IMMZConcepts called IMMZc
include IMMZConfig called IMMZCon
include IMMZVaccineLibrary called IMMZvl
include FHIRCommon called FC
include IMMZD2DTYellowFeverInput called input

// End Skeleton CQL
context Patient

/*
@internal: Draft Medication Request for MCV dose
*/
define "Draft Medication Request for Yellow Fever dose":
	[MedicationRequest: IMMZc."Yellow Fever Vaccine"] MR where MR.status = 'draft' and MR.intent = 'proposal'
	sort by date from (authoredOn as FHIR.dateTime) desc

/*
@dynamicValue: Draft Medication Request ID for MCV dose
*/
define "Draft Medication Request ID for Yellow Fever dose":
	First("Draft Medication Request for Yellow Fever dose").id

/*
@dynamicValue: Guidance
*/
define "Guidance":
	Combine( { 
		if "Yellow fever vaccination is contraindicated" then "Yellow fever vaccination is contraindicated Guidance" else '',
		if "Clinical judgement is required. Create a clinical note." then "Clinical judgement is required. Create a clinical note. Guidance" else '',
				if "Yellow fever vaccination could be contraindicated. Clinical judgement is required. Create a clinical note." then "Yellow fever vaccination could be contraindicated. Clinical judgement is required. Create a clinical note. Guidance" else ''
	}, ' ' )

/*
@output: Yellow fever vaccination is contraindicated Case 1
@pseudocode: "Immunization recommendation status" = 'Contraindicated'
*/
define "Yellow fever vaccination is contraindicated Case 1":
	input."Client's age is less than 6 months"

/*
@output: Yellow fever vaccination is contraindicated Case 2
@pseudocode: "Immunization recommendation status" = 'Contraindicated'
*/
define "Yellow fever vaccination is contraindicated Case 2":
	input."The client is severely immunocompromised"

/*
@output: Yellow fever vaccination is contraindicated
@pseudocode: "Immunization recommendation status" = 'Contraindicated'
*/
define "Yellow fever vaccination is contraindicated":
	"Yellow fever vaccination is contraindicated Case 1" or "Yellow fever vaccination is contraindicated Case 2"

/*
@output: Yellow fever vaccination is contraindicated Guidance
@guidance: Do not vaccinate client for yellow fever as yellow fever vaccination is contraindicated in client's aged less than 6 months
@guidance: Do not vaccinate client for yellow fever as yellow fever vaccination is contraindicated in severely immunocompromised clients.
*/
define "Yellow fever vaccination is contraindicated Guidance":
	Combine( {
		if "Yellow fever vaccination is contraindicated Case 1" then 'Do not vaccinate client for yellow fever as yellow fever vaccination is contraindicated in client\'s aged less than 6 months' else '',
		if "Yellow fever vaccination is contraindicated Case 2" then 'Do not vaccinate client for yellow fever as yellow fever vaccination is contraindicated in severely immunocompromised clients.' else ''
	}, ' ' )

/*
@output: Clinical judgement is required. Create a clinical note. Case 1
@pseudocode: Immunization recommendation status = 'Further evaluation needed'"
*/
define "Clinical judgement is required. Create a clinical note. Case 1":
	input."Client's age is between 6 to 9 months"

/*
@output: Clinical judgement is required. Create a clinical note. Case 2
@pseudocode: Immunization recommendation status = 'Further evaluation needed'"
*/
define "Clinical judgement is required. Create a clinical note. Case 2":
	input."Client's age is more than or equal to 60 years"

/*
@output: Clinical judgement is required. Create a clinical note. Case 3
@pseudocode: Immunization recommendation status = 'Further evaluation needed'"
*/
define "Clinical judgement is required. Create a clinical note. Case 3":
	input."The client is currently pregnant"

/*
@output: Clinical judgement is required. Create a clinical note. Case 4
@pseudocode: Immunization recommendation status = 'Further evaluation needed'"
*/
define "Clinical judgement is required. Create a clinical note. Case 4":
	input."The client is lactating"

/*
@output: Clinical judgement is required. Create a clinical note.
@pseudocode: Immunization recommendation status = 'Further evaluation needed'"
*/
define "Clinical judgement is required. Create a clinical note.":
	"Clinical judgement is required. Create a clinical note. Case 1"
	or "Clinical judgement is required. Create a clinical note. Case 2"
	or "Clinical judgement is required. Create a clinical note. Case 3"
	or "Clinical judgement is required. Create a clinical note. Case 4"

/*
@output: Clinical judgement is required. Create a clinical note. Guidance
@guidance: Check if exceptions to age range is being met, consider risks of vaccination and make a clinical judgement. Vaccine is not recommended for those aged 6-8 months, except during epidemics when the risk of infection with the yellow fever virus is very high.
@guidance: Conduct a risk-benefit assessment taking into account the risk of acquiring YF disease, consider risks of potential adverse events following immunization and make a clinical judgement. 
@guidance: Conduct a risk-benefit assessment since yellow fever is a live vaccine and make a clinical judgement. Pregnant women may be vaccinated during epidemics at the direction of local health authorities.
@guidance: Conduct a risk-benefit assessment since yellow fever is a live vaccine and make a clinical judgement. Lactating women should be advised that the benefits of breastfeeding far outweigh alternatives.
*/
define "Clinical judgement is required. Create a clinical note. Guidance":
	Combine( {
		if "Clinical judgement is required. Create a clinical note. Case 1" then 'Check if exceptions to age range is being met, consider risks of vaccination and make a clinical judgement. Vaccine is not recommended for those aged 6-8 months, except during epidemics when the risk of infection with the yellow fever virus is very high.' else '',
		if "Clinical judgement is required. Create a clinical note. Case 2" then 'Conduct a risk-benefit assessment taking into account the risk of acquiring YF disease, consider risks of potential adverse events following immunization and make a clinical judgement.' else '',
		if "Clinical judgement is required. Create a clinical note. Case 3" then 'Conduct a risk-benefit assessment since yellow fever is a live vaccine and make a clinical judgement. Pregnant women may be vaccinated during epidemics at the direction of local health authorities.' else '',
		if "Clinical judgement is required. Create a clinical note. Case 4" then 'Conduct a risk-benefit assessment since yellow fever is a live vaccine and make a clinical judgement. Lactating women should be advised that the benefits of breastfeeding far outweigh alternatives.' else ''
	}, ' ' )


/*
@output: Yellow fever vaccination could be contraindicated. Clinical judgement is required. Create a clinical note.
@pseudocode: "Immunization recommendation status" = 'Further evaluation needed'
*/
define "Yellow fever vaccination could be contraindicated. Clinical judgement is required. Create a clinical note.":
	input."The client has a history of severe allergic reactions"

/*
@output: Yellow fever vaccination could be contraindicated. Clinical judgement is required. Create a clinical note. Guidance
@guidance: Do not vaccinate client for yellow fever if client has severe hypersensitivity to egg antigens
*/
define "Yellow fever vaccination could be contraindicated. Clinical judgement is required. Create a clinical note. Guidance":
	if "Yellow fever vaccination could be contraindicated. Clinical judgement is required. Create a clinical note." then 'Do not vaccinate client for yellow fever if client has severe hypersensitivity to egg antigens'
	else ''