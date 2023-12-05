/*
 * Library: IMMZD2DTMeasles (IMMZ.D2.DT.Measles)
 * Rule: If the child or patient has not been given MCV1 (at 9 months) and MCV2 (between 15-18 months) vaccination 
 * Trigger: Patient has never received measles vaccination
 */
library IMMZD2DTMeasles
// Start Skeleton CQL
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1'
include IMMZCommon called IMMZCom
include IMMZConcepts called IMMZc
include IMMZConfig called IMMZCon
include IMMZVaccineLibrary called IMMZvl
include FHIRCommon called FC

// End Skeleton CQL
context Patient

/*
@internal: MCV containing Doses Administered to Patient
*/
define "MCV Doses Administered to Patient":
  IMMZCom."Doses Administered to Patient" I
  where
    I.vaccineCode in IMMZc."MCV Vaccine"

/*
@input: Client's age is less than 9 months
@pseudocode: Today's date - "Date of birth" < 9 'month'"
*/
define "Client's age is less than 9 months":
	IMMZCom."Current Patient Age In Months" < 9

/*
@output: Client is not due for MCV1
@pseudocode: "Immunization recommendation status" = 'Not due'"
*/
define "Client is not due for MCV1":
	"Client is not due for MCV1 Case 1" or "Client is not due for MCV1 Case 2"

/*
@output: Client is not due for MCV1 Guidance
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
	"Client's age is less than 9 months"

/*
@output: Client is not due for MCV1 Case 2
@pseudocode: "Immunization recommendation status" = 'Not due'	
*/
define "Client is not due for MCV1 Case 2":
	"No dose from primary MCV dose series administered" and "Client's age is more than 9 months" and "Live vaccine was administered in the last four weeks"

/*
@input: No dose from primary MCV dose series administered
@psuedocode: Count of vaccines administered (where "Vaccine type" = 'Measles containing vaccines' and "Type of dose" = "Primary series" ) = 0
*/
define "No dose from primary MCV dose series administered":
	not exists("MCV Doses Administered to Patient" I where I.occurrence after Patient.birthDate + 9 months)

/*
@input: Client's age is more than 9 months 
@pseudocode: Today's date - "Date of birth" ≥ 9 'month'	
*/
define "Client's age is more than 9 months":
	not ("Client's age is less than 9 months")

/*
@input: Live vaccine was administered in the last four weeks 
@pseudocode: Today's date - latest "Date and time of vaccination" (where "Live vaccine" = TRUE) < 4 'week'	
*/
define "Live vaccine was administered in the last four weeks":
	IMMZCom."Date of Latest Live Attenuated Vaccine" is not null and IMMZCom."Date of Latest Live Attenuated Vaccine" + 4 weeks > Now()

/*
@input: No live vaccine was administered in the last four weeks 
@pseudocode: Today's date - latest "Date and time of vaccination" (where "Live vaccine" = TRUE) ≥ 4 'week'	
*/
define "No live vaccine was administered in the last four weeks":
	not("Live vaccine was administered in the last four weeks")

/*
@output: Client is due for MCV1  
@pseudocode: "Immunization recommendation status" = 'Due'	
*/
define "Client is due for MCV1":
	"No dose from primary MCV dose series administered" and "Client's age is more than 9 months" and "No live vaccine was administered in the last four weeks"

/*
@output: Client is due for MCV1 Guidance
@guidance: There is no dose from the primary series administered for the client. No live vaccine administered in the last 4 weeks. Client is due for MCV1.
*/
define "Client is due for MCV1 Guidance":
	if "Client is due for MCV1" then 'There is no dose from the primary series administered for the client. No live vaccine administered in the last 4 weeks. Client is due for MCV1.'
	else ''

/*
@input: One dose from primary MCV dose series administered
@pseudocode: Count of vaccines administered (where "Vaccine type" = 'Measles containing vaccines' and "Type of dose" = "Primary series" ) = 1	
*/
define "One dose from primary MCV dose series administered":
	Count("MCV Doses Administered to Patient" I where I.occurrence after Patient.birthDate + 9 months) = 1

/*
@input: Client's age is less than 15 months 
@pseudocode: Today's date - "Date of birth" < 15 'month'	
*/

define "Client's age is less than 15 months":
		IMMZCom."Current Patient Age In Months" < 15

/*
@output: Client is not due for MCV2 Case 1
@pseudocode: "Immunization recommendation status" = 'Not due'	
*/
define "Client is not due for MCV2 Case 1":
	"Client's age is less than 15 months"

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
@input: Client's age is more than 15 months 
@psuedocode: Today's date - "Date of birth" ≥ 15 'month'	
*/
define "Client's age is more than 15 months":
	not("Client's age is less than 15 months")

/*
@output: Client is due for MCV2  
@pseudocode: "Immunization recommendation status" = 'Due'	
@guidance: MCV2 was NOT administered for the client. No live vaccine administered in the last 4 weeks. Client is due for MCV2.
*/
define "Client is due for MCV2":
	"One dose from primary MCV dose series administered" and "Client's age is more than 15 months" and "No live vaccine was administered in the last four weeks"

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
	"One dose from primary MCV dose series administered" and "Client's age is more than 15 months" and "Live vaccine was administered in the last four weeks"


/*
@input: Two doses from primary MCV dose series administered 
@pseudocode: Count of vaccines administered (where "Vaccine type" = 'Measles containing vaccines' and "Type of dose" = "Primary series" ) = 2		
*/
define "Two doses from primary MCV dose series administered":
	Count("MCV Doses Administered to Patient" I where I.occurrence after Patient.birthDate + 9 months) >= 2 
	and Count("MCV Doses Administered to Patient" I where I.occurrence after Patient.birthDate + 15 months) >= 1

/*
@output: Routine immunization schedule complete  
@pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Measles containing vaccines")	
*/
define "Routine immunization schedule complete":
	"Two doses from primary MCV dose series administered"

/*
@output: Routine immunization schedule complete Guidance
@guidance: Measles routine immunization schedule is complete. Check if a measles supplementary dose is appropriate for the client.
*/
define "Routine immunization schedule complete Guidance":
	if "Routine immunization schedule complete" then 'Measles routine immunization schedule is complete. Check if a measles supplementary dose is appropriate for the client.'
	else ''