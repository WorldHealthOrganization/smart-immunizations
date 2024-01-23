/*
 * Library: IMMZD2DTYellowFeverInput (IMMZ.D2.DT.YellowFeverInput)
 * Rule: Determine if the client is due for a yellow fever vaccination according to the national immunization protocol
 * Trigger: IMMZ.D2 Determine required vaccination(s) in any						
 */
library IMMZD2DTYellowFeverInput
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
@internal: Yellow Fever containing Doses Administered to Patient
*/
define "Yellow Fever Doses Administered to Patient":
  IMMZCom."Doses Administered to Patient" I
  where
    I.vaccineCode in IMMZc."Yellow Fever Vaccine"

/*
@input: No yellow fever primary series doses were administered
@pseudocode: Count of vaccines administered (where "Vaccine type" = "Yellow fever containing vaccines" and "Type of dose" = "Primary series" ) = 0
*/
define "No yellow fever primary series doses were administered":
	not exists("Yellow Fever Doses Administered to Patient" I where I.occurrence after Patient.birthDate + 9 months)

/*
@input: One yellow fever primary series dose was administered
@pseudocode: Count of vaccines administered (where "Vaccine type" = "Yellow fever containing vaccines" and "Type of dose" = "Primary series" ) = 1
*/
define "One yellow fever primary series dose was administered":
	Count("Yellow Fever Doses Administered to Patient" I where I.occurrence after Patient.birthDate + 9 months) >= 1

/*
@input: Client's age is less than 6 months
@pseudocode: Today's date - "Date of birth" < 6 'month'
*/
define "Client's age is less than 6 months":
	IMMZCom."Current Patient Age In Months" < 6

/*
@input: Client's age is between 6 to 9 months
@pseudocode: 6 'month' ≤ Today's date - "Date of birth" < 9 'month'
*/
define "Client's age is between 6 to 9 months":
	not("Client's age is less than 6 months") and "Client's age is less than 9 months"

/*
@input: Client's age is less than 9 months
@pseudocode: Today's date - "Date of birth" < 9 'month'"
*/
define "Client's age is less than 9 months":
	IMMZCom."Current Patient Age In Months" < 9

/*
@input: Client's age is more than or equal to 9 months 
@pseudocode: Today's date - "Date of birth" ≥ 9 'month'	
*/
define "Client's age is more than or equal to 9 months":
	not ("Client's age is less than 9 months")

/*
@input: Client's age is more than or equal to 60 years
@pseudocode: 'Today's date - ""Date of birth"" ≥ 60 'year'
*/
define "Client's age is more than or equal to 60 years":
	IMMZCom."Current Patient Age In Years" >= 60

/*
@input: Live vaccine was administered in the last 4 weeks 
@pseudocode: Today's date - latest "Date and time of vaccination" (where "Live vaccine" = TRUE) < 4 'week'	
*/
define "Live vaccine was administered in the last 4 weeks":
	IMMZCom."Date of Latest Live Attenuated Vaccine" is not null and IMMZCom."Date of Latest Live Attenuated Vaccine" + 4 weeks > Now()

/*
@input: No live vaccine was administered in the last 4 weeks 
@pseudocode: Today's date - latest "Date and time of vaccination" (where "Live vaccine" = TRUE) ≥ 4 'week'	
*/
define "No live vaccine was administered in the last 4 weeks":
	not("Live vaccine was administered in the last 4 weeks")

/*
@input: The client is currently pregnant
@pseudocode: "Potential contraindications" = 'Currently pregnant'
*/
define "The client is currently pregnant":
	IMMZCom."Pregnant"

/*
@input: The client has a history of severe allergic reactions
@pseudocode: "Potential contraindications" = 'Severe allergic reactions'
*/
define "The client has a history of severe allergic reactions":
		exists(IMMZCom."Severe Allergic Reactions Condition")

/*
@input: The client is severely immunocompromised
@psuedocode: "Potential contraindications" = "Severely immunocompromised"
*/
define "The client is severely immunocompromised":
		exists(IMMZCom."Severely immunocompromised Condition")

/*
@input: The client has a symptomatic HIV infection
@pseudocode: "Potential contraindications" = 'Symptomatic HIV infection'
*/
define "The client has a symptomatic HIV infection":
	exists(IMMZCom."Symptomatic HIV Infection Condition")

/*
@input: The client is lactating
@psuedocode: "Potential contraindications" = "Breastfeeding"
*/
define "The client is lactating":
		exists(IMMZCom."Breastfeeding Condition")