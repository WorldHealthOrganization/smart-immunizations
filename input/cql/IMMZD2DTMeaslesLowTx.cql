/*
 * Library: IMMZD2DTMeaslesLowTx (IMMZ.D2.DT.Measles.LowTx)
 * Rule: Countries with low levels of measles transmission
 * Trigger: IMMZ.D2 Determine required vaccination(s) if any
 */
library IMMZD2DTMeaslesLowTx
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
@dynamicValue: Due date of the dose
*/
define "Due date of the dose":
	Now()

/*
@dynamicValue: Guidance
*/
define "Guidance":
	case 
		when "Routine immunization schedule complete" then "Routine immunization schedule complete Guidance"
		when "Client is due for MCV1" then "Client is due for MCV1 Guidance"
		when "Client is due for MCV2" then "Client is due for MCV2 Guidance"
		when "Client is not due for MCV1" then "Client is not due for MCV1 Guidance"
		when "Client is not due for MCV2" then "Client is not due for MCV2 Guidance"
		else null
	end

/*
@output: Client is not due for MCV1
@pseudocode: "Immunization recommendation status" = 'Not due'"
*/
define "Client is not due for MCV1":
	"Client is not due for MCV1 Case 1" or "Client is not due for MCV1 Case 2"

/*
@output: Client is not due for MCV1 Guidance
@guidance: Should not vaccinate client for MCV1 as client's age is less than 12 months. Check for any vaccines due, and inform the caregiver of when to come back for MCV1.
@guidance: Should not vaccinate client for MCV1 as live vaccine was administered in the last 4 weeks. Check for any vaccines due, and inform the caregiver of when to come back for MCV1.
*/
define "Client is not due for MCV1 Guidance":
	case
	when "Client is not due for MCV1 Case 1" then 'Should not vaccinate client for MCV1 as client\'s age is less than 12 months. Check for any vaccines due, and inform the caregiver of when to come back for MCV1.'
	when "Client is not due for MCV1 Case 2" then 'Should not vaccinate client for MCV1 as live vaccine was administered in the last 4 weeks. Check for any vaccines due, and inform the caregiver of when to come back for MCV1.'
	else ''
	end

/*
@output: Client is not due for MCV1 Case 1
@pseudocode: "Immunization recommendation status" = 'Not due'"
*/
define "Client is not due for MCV1 Case 1":
	input."Client's age is less than 12 months"

/*
@output: Client is not due for MCV1 Case 2
@pseudocode: "Immunization recommendation status" = 'Not due'	
*/
define "Client is not due for MCV1 Case 2":
	input."No dose from primary MCV dose series administered" 
	and input."Client's age is more than 12 months" 
	and input."Live vaccine was administered in the last four weeks"

/*
@output: Client is due for MCV1  
@pseudocode: "Immunization recommendation status" = 'Due'	
*/
define "Client is due for MCV1":
	input."No dose from primary MCV dose series administered" 
		and input."Client's age is more than 12 months" 
		and input."No live vaccine was administered in the last four weeks"

/*
@output: Client is due for MCV1 Guidance
@guidance: Should vaccinate client for MCV1 as no measles doses were administered, client is within appropriate age range and no live vaccine was administered in the last 4 weeks. Check for contraindications.
*/
define "Client is due for MCV1 Guidance":
	if "Client is due for MCV1" then 'Should vaccinate client for MCV1 as no measles doses were administered, client is within appropriate age range and no live vaccine was administered in the last 4 weeks. Check for contraindications.'
	else ''

/*
@output: Client is not due for MCV2 Case 1
@pseudocode: "Immunization recommendation status" = 'Not due'	
*/
define "Client is not due for MCV2 Case 1":
	input."Client's age is less than 15 months"

/*
@output: Client is not due for MCV2
@pseudocode:  "Immunization recommendation status" = 'Not due'
*/
define "Client is not due for MCV2":
	"Client is not due for MCV2 Case 1" or "Client is not due for MCV2 Case 2"

/*
@output: Client is not due for MCV2 Guidance
@guidance: Should not vaccinate client for MCV2 as client's age is less than 15 months. Check for any vaccines due, and inform the caregiver of when to come back for MCV2.
@guidance: Should not vaccinate client for MCV2 as live vaccine was administered in the last 4 weeks. Check for any vaccines due, and inform the caregiver of when to come back for MCV2.
*/

define "Client is not due for MCV2 Guidance":
	case
		when "Client is not due for MCV2 Case 1" then 'Should not vaccinate client for MCV2 as client\'s age is less than 15 months. Check for any vaccines due, and inform the caregiver of when to come back for MCV2.'
		when "Client is not due for MCV2 Case 2" then 'Should not vaccinate client for MCV2 as live vaccine was administered in the last 4 weeks. Check for any vaccines due, and inform the caregiver of when to come back for MCV2.'
		else ''
	end

/*
@output: Client is due for MCV2  
@pseudocode: "Immunization recommendation status" = 'Due'	
@guidance: MCV2 was NOT administered for the client. No live vaccine administered in the last 4 weeks. Client is due for MCV2.
*/
define "Client is due for MCV2":
	input."One dose from primary MCV dose series administered Low Tx" 
		and input."Client's age is more than 15 months" 
		and input."No live vaccine was administered in the last four weeks"

/*
@output: Client is due for MCV2 Guidance
@guidance: Should vaccinate client for MCV2 as client is within appropriate age range and no live vaccine administered in the last 4 weeks. Check for contraindications.
*/

define "Client is due for MCV2 Guidance":
	if "Client is due for MCV2" then 'Should vaccinate client for MCV2 as client is within appropriate age range and no live vaccine administered in the last 4 weeks. Check for contraindications.'
	else ''

/*
@output: Client is not due for MCV2 Case 2
@pseudocode: "Immunization recommendation status" = 'Not due'	
*/
define "Client is not due for MCV2 Case 2":
	input."One dose from primary MCV dose series administered Low Tx" 
		and input."Client's age is more than 15 months" 
		and input."Live vaccine was administered in the last four weeks"

/*
@output: Routine immunization schedule complete  
@pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Measles containing vaccines")	
*/
define "Routine immunization schedule complete":
	input."Two doses from primary MCV dose series administered Low Tx"

/*
@output: Routine immunization schedule complete Guidance
@guidance: Measles primary series is complete. Two measles primary series doses were administered. Check if a measles supplementary dose is appropriate for the client.
*/
define "Routine immunization schedule complete Guidance":
	if "Routine immunization schedule complete" then 'Measles primary series is complete. Two measles primary series doses were administered. Check if a measles supplementary dose is appropriate for the client.'
	else ''
