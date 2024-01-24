/*
 * Library: IMMZD2DTMeaslesSupp (IMMZ.D2.DT.Measles.Supp)
 * Rule: Measles supplementary dose administration
 * Trigger: IMMZ.D2 Determine required vaccination(s) if any
 */
library IMMZD2DTMeaslesSupp
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
		when "Measles schedule complete" then "Measles schedule complete Guidance"
		when "Consider measles supplementary dose. Create a clinical note." then "Consider measles supplementary dose. Create a clinical note. Guidance"
		when "Client not due for measles supplementary dose" then "Client not due for measles supplementary dose Guidance"
		else null
	end

/*
@output: Client not due for measles supplementary dose
@pseudocode: "Immunization recommendation status" = 'Not due'
*/
define "Client not due for measles supplementary dose":
	input."Measles supplementary dose was not administered" 
	and input."Measles routine immunization schedule is complete High Tx"
	and input."Live vaccine was administered in the last 4 weeks"

/*
@output: Client not due for measles supplementary dose Guidance
@guidance: Should not vaccinate client for measles supplementary dose as live vaccine was administered in the last 4 weeks. Check for any vaccines due, and inform the caregiver of when to come back for supplementary dose.
*/
define "Client not due for measles supplementary dose Guidance":
  'Should not vaccinate client for measles supplementary dose as live vaccine was administered in the last 4 weeks. Check for any vaccines due, and inform the caregiver of when to come back for supplementary dose.'

/*
@output: Consider measles supplementary dose. Create a clinical note.
@pseudocode: "Immunization recommendation status" = 'Further evaluation needed'	
*/
define "Consider measles supplementary dose. Create a clinical note.":
  input."Measles supplementary dose was not administered" 
	and input."Measles routine immunization schedule is complete High Tx"
	and input."No live vaccine was administered in the last 4 weeks"
/*
@input: Consider measles supplementary dose. Create a clinical note. Guidance
@guidance: May vaccinate client for measles supplementary dose as supplementary dose was not administered, measles routine immunization schedule is complete and no live vaccine administered in the last 4 weeks. Check if one of the measles supplementary dose specific scenarios is applicable.  
*/
define "Consider measles supplementary dose. Create a clinical note. Guidance":
	'May vaccinate client for measles supplementary dose as supplementary dose was not administered, measles routine immunization schedule is complete and no live vaccine administered in the last 4 weeks. Check if one of the measles supplementary dose specific scenarios is applicable.'

/*
@output: Measles schedule complete
@pseudocode: "Immunization recommendation status" = 'Complete'	
*/
define "Measles schedule complete":
	input."Measles supplementary dose was administered"

/*
@output: Measles schedule complete Guidance
@guidance: Measles immunization schedule is complete. Measles supplementary dose was administered.
*/
define "Measles schedule complete Guidance":
	'Measles immunization schedule is complete. Measles supplementary dose was administered.'
