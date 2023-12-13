/*
 * Library: IMMZD2DTMeaslesHighTx (IMMZ.D2.DT.Measles.HighTx)
 * Rule: Countries with ongoing transmission in which the risk of measles mortality remains high
 * Trigger: IMMZ.D2 Determine required vaccination(s) if any
 */
library IMMZD2DTMeaslesHighTx
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
@guidance: Client is less than 9 months. Check for any vaccines due, and inform the caregiver of when to come back for MCV1 administration.
@guidance: Live vaccine was administered in the last four weeks. Check for any vaccines due, and inform the caregiver of when to come back for MCV1 administration.

*/
define "Client is not due for MCV1 Guidance":
	case
	when "Client is not due for MCV1 Case 1" then 'Client is less than 9 months. Check for any vaccines due, and inform the caregiver of when to come back for MCV1 administration.'
	when "Client is not due for MCV1 Case 2" then 'Live vaccine was administered in the last four weeks. Check for any vaccines due, and inform the caregiver of when to come back for MCV1 administration.'
	else ''
	end

/*
@output: Client is not due for MCV1 Case 1
@pseudocode: "Immunization recommendation status" = 'Not due'"
*/
define "Client is not due for MCV1 Case 1":
	input."Client's age is less than 9 months"

/*
@output: Client is not due for MCV1 Case 2
@pseudocode: "Immunization recommendation status" = 'Not due'	
*/
define "Client is not due for MCV1 Case 2":
	input."No dose from primary MCV dose series administered" 
	and input."Client's age is more than 9 months" 
	and input."Live vaccine was administered in the last four weeks"

/*
@output: Client is due for MCV1  
@pseudocode: "Immunization recommendation status" = 'Due'	
*/
define "Client is due for MCV1":
	input."No dose from primary MCV dose series administered" 
		and input."Client's age is more than 9 months" 
		and input."No live vaccine was administered in the last four weeks"

/*
@output: Client is due for MCV1 Guidance
@guidance: There is no dose from the primary series administered for the client. No live vaccine administered in the last 4 weeks. Client is due for MCV1.
*/
define "Client is due for MCV1 Guidance":
	if "Client is due for MCV1" then 'There is no dose from the primary series administered for the client. No live vaccine administered in the last 4 weeks. Client is due for MCV1.'
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
@guidance: Client is less than 15 months.  Check for any vaccines due, and inform the caregiver of when to come back for MCV2 administration
@guidance: Live vaccine was administered in the last four weeks. Check for any vaccines due, and inform the caregiver of when to come back for MCV2 administration.
*/

define "Client is not due for MCV2 Guidance":
	case
		when "Client is not due for MCV2 Case 1" then 'Client is less than 15 months.  Check for any vaccines due, and inform the caregiver of when to come back for MCV2 administration.'
		when "Client is not due for MCV2 Case 2" then 'Live vaccine was administered in the last four weeks. Check for any vaccines due, and inform the caregiver of when to come back for MCV2 administration.'
		else ''
	end

/*
@output: Client is due for MCV2  
@pseudocode: "Immunization recommendation status" = 'Due'	
@guidance: MCV2 was NOT administered for the client. No live vaccine administered in the last 4 weeks. Client is due for MCV2.
*/
define "Client is due for MCV2":
	input."One dose from primary MCV dose series administered High Tx" 
		and input."Client's age is more than 15 months" 
		and input."No live vaccine was administered in the last four weeks"

/*
@output: Client is due for MCV2 Guidance
@guidance: MCV2 was NOT administered for the client. No live vaccine administered in the last 4 weeks. Client is due for MCV2.
*/

define "Client is due for MCV2 Guidance":
	if "Client is due for MCV2" then 'MCV2 was NOT administered for the client. No live vaccine administered in the last 4 weeks. Client is due for MCV2.'
	else ''

/*
@output: Client is not due for MCV2 Case 2
@pseudocode: "Immunization recommendation status" = 'Not due'	
*/
define "Client is not due for MCV2 Case 2":
	input."One dose from primary MCV dose series administered High Tx" 
		and input."Client's age is more than 15 months" 
		and input."Live vaccine was administered in the last four weeks"

/*
@output: Routine immunization schedule complete  
@pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Measles containing vaccines")	
*/
define "Routine immunization schedule complete":
	input."Two doses from primary MCV dose series administered High Tx"

/*
@output: Routine immunization schedule complete Guidance
@guidance: Measles routine immunization schedule is complete. Check if a measles supplementary dose is appropriate for the client.
*/
define "Routine immunization schedule complete Guidance":
	if "Routine immunization schedule complete" then 'Measles routine immunization schedule is complete. Check if a measles supplementary dose is appropriate for the client.'
	else ''