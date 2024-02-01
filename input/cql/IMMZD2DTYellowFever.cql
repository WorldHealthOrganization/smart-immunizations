/*
 * Library: IMMZD2DTYellowFever (IMMZ.D2.DT.Yellow fever)
 * Rule: Determine if the client is due for a yellow fever vaccination according to the national immunization protocol						
 * Trigger: IMMZ.D2 Determine required vaccination(s) if any
 */
library IMMZD2DTYellowFever
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
@dynamicValue: Due date of the dose
*/
define "Due date of the dose":
	Now()

/*
@dynamicValue: Guidance
*/
define "Guidance":
	case 
		when "Yellow fever immunization schedule is complete" then "Yellow fever immunization schedule is complete Guidance"
		when "Client is due for yellow fever vaccination" then "Client is due for yellow fever vaccination Guidance"
		when "Client is not due for yellow fever vaccination" then "Client is not due for yellow fever vaccination Guidance" 
		else null
	end

/*
@output: Client is not due for yellow fever vaccination
@pseudocode: "Immunization recommendation status" = 'Not due'
*/
define "Client is not due for yellow fever vaccination":
	"Client is not due for yellow fever vaccination Case 1" or "Client is not due for yellow fever vaccination Case 2"

/*
@output: Client is not due for yellow fever vaccination Guidance
@guidance: Should not vaccinate client for yellow fever dose as client's age is less than 9 months. Check for any vaccines due, and inform the caregiver of when to come back for the next dose.
@guidance: Should not vaccinate client for yellow fever dose as live vaccine was administered in the last 4 weeks. Check for any vaccines due, and inform the caregiver of when to come back for the first dose.
*/
define "Client is not due for yellow fever vaccination Guidance":
	case
		when "Client is not due for yellow fever vaccination Case 1" then 'Should not vaccinate client for yellow fever dose as client\'s age is less than 9 months. Check for any vaccines due, and inform the caregiver of when to come back for the next dose.'
		when "Client is not due for yellow fever vaccination Case 2" then 'Should not vaccinate client for yellow fever dose as live vaccine was administered in the last 4 weeks. Check for any vaccines due, and inform the caregiver of when to come back for the first dose.'
		else ''
	end

/*
@output: Client is not due for yellow fever vaccination Case 1
@pseudocode: "Immunization recommendation status" = 'Not due'
*/
define "Client is not due for yellow fever vaccination Case 1":
	input."No yellow fever primary series doses were administered" 
		and input."Client's age is less than 9 months"

/*
@output: Client is not due for yellow fever vaccination Case 2
@pseudocode: "Immunization recommendation status" = 'Not due'
*/
define "Client is not due for yellow fever vaccination Case 2":
	input."No yellow fever primary series doses were administered" 
		and input."Client's age is more than or equal to 9 months" 
		and input."Live vaccine was administered in the last 4 weeks"

/*
@output: Client is due for yellow fever vaccination
@pseudocode: "Immunization recommendation status" = "Due"
*/
define "Client is due for yellow fever vaccination":
		input."No yellow fever primary series doses were administered" 
		and input."Client's age is more than or equal to 9 months" 
		and input."No live vaccine was administered in the last 4 weeks"

/*
@output: Client is due for yellow fever vaccination Guidance
@guidance: Should vaccinate client for yellow fever dose as no yellow fever dose was administered, client is within appropriate age range and no live vaccine was administered in the last 4 weeks. Check for contraindications.
*/
define "Client is due for yellow fever vaccination Guidance":
	if "Client is due for yellow fever vaccination" then 'Should vaccinate client for yellow fever dose as no yellow fever dose was administered, client is within appropriate age range and no live vaccine was administered in the last 4 weeks. Check for contraindications.'
	else ''

/*
@output: Yellow fever immunization schedule is complete
@pseudocode: "Immunization recommendation status"" = 'Complete'
@pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Yellow fever containing vaccines")
*/
define "Yellow fever immunization schedule is complete":
	input."One yellow fever primary series dose was administered"

/*
@output: Yellow fever immunization schedule is complete Guidance
@guidance: Yellow fever immunization schedule is complete. One yellow fever primary series dose was administered. Check for any other vaccines due.
*/
define "Yellow fever immunization schedule is complete Guidance":
	if "Yellow fever immunization schedule is complete" then 'Yellow fever immunization schedule is complete. One yellow fever primary series dose was administered. Check for any other vaccines due.'
	else ''