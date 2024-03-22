/*
 * Library: IMMZD2DTRubellaInput (IMMZ.D2.DT.RubellaInput)					
 */
library IMMZD2DTRubellaInput
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
@internal: Rubella containing Doses Administered to Patient
*/
define "Rubella Doses Administered to Patient":
  IMMZCom."Doses Administered to Patient" I
  where
    I.vaccineCode in IMMZc."All Rubella Vaccine"

/*
@input: No rubella primary series dose was administered
@pseudocode: Count of vaccines administered (where "Vaccine type" = 'Rubella containing vaccines' and "Type of dose" = "Primary series") = 0
*/
define "No rubella primary series dose was administered":
	not exists("Rubella Doses Administered to Patient")
/*
@input: One rubella primary series dose was administered
@pseudocode: Count of vaccines administered (where "Vaccine type" = 'Rubella containing vaccines' and "Type of dose" = "Primary series") = 1
*/
define "One rubella primary series dose was administered":
	Count("Rubella Doses Administered to Patient") >= 1

/*
@input: Client's age is less than 9 months
@pseudocode: 'Today's date - "Date of birth" < 9 'month'
*/
define "Client's age is less than 9 months":
	IMMZCom."Current Patient Age In Months" < 9

/*
@input: Client's age is more than or equal to 9 months
@pseudocode: 'Today's date - "Date of birth" ≥ 9 'month'
*/
define "Client's age is more than or equal to 9 months":
	not ("Client's age is less than 9 months")

/*
@input: Client's age is less than 12 months
@pseudocode: 'Today's date - "Date of birth" < 12 'month'
*/
define "Client's age is less than 12 months":
	IMMZCom."Current Patient Age In Months" < 12

/*
@input: Client's age is more than or equal to 12 months
@pseudocode: Today's date - "Date of birth" ≥ 12 'month'
*/
define "Client's age is more than or equal to 12 months":
	not ("Client's age is less than 12 months")

/*
@input: No live vaccine was administered in the last 4 weeks
@pseudocode: 'Today's date - latest "Date and time of vaccination" (where "Live vaccine" = TRUE) ≥ 4 'week'
*/
define "No live vaccine was administered in the last 4 weeks":
	not("Live vaccine was administered in the last 4 weeks")

/*
@input: Live vaccine was administered in the last 4 weeks
@pseudocode: 'Today's date - latest "Date and time of vaccination" (where "Live vaccine" = TRUE) < 4 'week'
*/
define "Live vaccine was administered in the last 4 weeks":
	IMMZCom."Date of Latest Live Attenuated Vaccine" is not null and duration in weeks between IMMZCom."Date of Latest Live Attenuated Vaccine" and Now() < 4

/*
@input: The client is currently pregnant
@pseudocode: '"Potential contraindications" = 'Currently pregnant'
*/
define "The client is currently pregnant":
	IMMZCom."Pregnant"

/*
@input: The client is planning to get pregnant in next month
@pseudocode: '"Potential contraindications" = 'Planning to get pregnant in the next month'
*/
define "The client is planning to get pregnant in next month":
	exists(IMMZCom."Planning to get pregnant in the next month Condition")

/*
@input: The client is receiving blood products
@pseudocode: '"Potential contraindications" = 'Receiving blood products'
*/
define "The client is receiving blood products":
	exists(IMMZCom."Receiving blood products Condition")

/*
@input: The client has history of severe allergic reactions
@pseudocode: '"Potential contraindications" = 'Severe allergic reactions'
*/
define "The client has history of severe allergic reactions":
		exists(IMMZCom."Severe Allergic Reactions Condition")

/*
@input: The client has symptomatic HIV infection
@pseudocode: '"Potential contraindications" = 'Symptomatic HIV infection'
*/
define "The client has symptomatic HIV infection":
	exists(IMMZCom."Symptomatic HIV Infection Condition")

/*
@input: The client has TB disease
@pseudocode: '"Potential contraindications" = 'TB disease'
*/
define "The client has TB disease":
	exists(IMMZCom."TB disease Condition")

/*
@input: The client has immunodeficiency syndromes
@pseudocode: "Potential contraindications" = 'Immunodeficiency syndromes'
*/
define "The client has immunodeficiency syndromes":
	exists(IMMZCom."Immunodeficiency syndromes Condition")

/*
@input: The client is exposed to immunosuppressive treatment
@pseudocode: ''"Potential contraindications" = 'Exposed to immunosuppressive treatment'
*/
define "The client is exposed to immunosuppressive treatment":
	exists(IMMZCom."Exposed to immunosuppressive treatment Condition")
