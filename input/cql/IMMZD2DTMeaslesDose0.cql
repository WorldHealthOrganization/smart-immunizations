/*
 * Library: IMMZD2DTMeaslesDose0 (IMMZ.D2.DT.Measles.Dose0)
 * Rule: Measles dose 0 (MCV0) administration 
 * Trigger: IMMZ.D2 Determine required vaccination(s) if any
 */
library IMMZD2DTMeaslesDose0
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
@dynamicValue: Guidance
*/
define "Guidance":
	case 
		when "Consider MCV0. Create a clinical note." then "Consider MCV0. Create a clinical note. Guidance"
		when "Client not due for MCV0" then "Client not due for MCV0 Guidance"
		else null
	end

/*
@output: Client not due for MCV0
@pseudocode: "Immunization recommendation status" = 'Not due'
*/
define "Client not due for MCV0":
	"Client not due for MCV0 Case 1" or "Client not due for MCV0 Case 2"
	or "Client not due for MCV0 Case 3" or "Client not due for MCV0 Case 4"

/*
@output: Client not due for MCV1 Guidance
*/
define "Client not due for MCV0 Guidance":
	case
	when "Client not due for MCV0 Case 1" then 'Should not vaccinate client for MCV0 as client is less than 6 months. Check for any vaccines due, and inform the caregiver of when to come back for MCV0.'
	when "Client not due for MCV0 Case 2" then 'Should not vaccinate client for MCV0 as live vaccine was administered in the last 4 weeks. Check for any vaccines due, and inform the caregiver of when to come back for MCV0.'
	when "Client not due for MCV0 Case 3" then 'Should not vaccinate client for MCV0 as client\'s age is more than 9 months. Check measles routine immunization schedule.'
	when "Client not due for MCV0 Case 4" then 'MCV0 was administered. Check measles routine immunization schedule.'
	else ''
	end

/*
@output: Client not due for MCV0 Case 0
@pseudocode: "Immunization recommendation status" = 'Not due'"
*/
define "Client not due for MCV0 Case 1":
	input."Client's age is less than 6 months"

/*
@output: Client not due for MCV0 Case 2
@pseudocode: "Immunization recommendation status" = 'Not due'	
*/
define "Client not due for MCV0 Case 2":
	input."MCV0 was not administered" 
	and input."Client's age is between 6 months and 9 months" 
	and input."Live vaccine was administered in the last 4 weeks"

/*
@output: Client not due for MCV0 Case 3
@pseudocode: "Immunization recommendation status" = 'Not due'"
*/
define "Client not due for MCV0 Case 3":
	input."Client's age is more than or equal to 9 months"

/*
@output: Client not due for MCV0 Case 4
@pseudocode: "Immunization recommendation status" = 'Not due'"
*/
define "Client not due for MCV0 Case 4":
	input."MCV0 was administered"

/*
@output: Consider MCV0. Create a clinical note.
@pseudocode: "Immunization recommendation status" = 'Further evaluation needed'
*/
define "Consider MCV0. Create a clinical note.":
	input."No measles primary series doses were administered" 
		and input."Client's age is between 6 months and 9 months" 
		and input."No live vaccine was administered in the last 4 weeks"

/*
@output: Consider MCV0. Create a clinical note. Guidance
@guidance: There is no MCV0 dose administered for the client. No live vaccine administered in the last 4 weeks. Check if one of the MCV0 dose specific scenarios is applicable. 
*/
define "Consider MCV0. Create a clinical note. Guidance":
	if "Consider MCV0. Create a clinical note." then 'May vaccinate client for MCV0 as client is within appropriate age range, MCV0 was not administered and no live vaccine was administered in the last 4 weeks. Check if one of the MCV0 specific scenarios is applicable.'
	else ''
