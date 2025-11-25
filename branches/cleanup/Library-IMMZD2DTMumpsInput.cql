/*
 * Library: IMMZD2DTMumpsInput (IMMZ.D2.DT.MumpsInput)					
 */
library IMMZD2DTMumpsInput
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
@internal: Mumps containing Doses Administered to Patient
*/
define "Mumps Doses Administered to Patient":
  IMMZCom."Doses Administered to Patient" I
  where
    I.vaccineCode in IMMZc."Mumps Vaccine"

/*
@internal: Date of latest Mumps Vaccine
*/
define "Date of latest Mumps Vaccine":
	First("Mumps Doses Administered to Patient").occurrence as dateTime

/*
@input: No mumps primary series doses were administered
@pseudocode: Count of vaccines administered (where "Vaccine type" = 'Mumps containing vaccines' and "Type of dose" = "Primary series") = 0
*/
define "No mumps primary series doses were administered":
	not exists("Mumps Doses Administered to Patient")

/*
@input: One mumps primary series dose was administered
@pseudocode: Count of vaccines administered (where "Vaccine type" = 'Mumps containing vaccines' and "Type of dose" = "Primary series") = 1
*/
define "One mumps primary series dose was administered":
	Count("Mumps Doses Administered to Patient") = 1

/*
@input: Two mumps primary series doses were administered
@pseudocode: Count of vaccines administered (where "Vaccine type" = 'Mumps containing vaccines' and "Type of dose" = "Primary series") = 2
*/
define "Two mumps primary series doses were administered":
	Count("Mumps Doses Administered to Patient") >= 2

/*
@input: Client's age is less than 12 months
@pseudocode: 'Today's date - "Date of birth" < 12 'month'
*/
define "Client's age is less than 12 months":
	IMMZCom."Current Patient Age In Months" < 12

/*
@input: Client's age is more than or equal to 12 months
@pseudocode: 'Today's date - "Date of birth" ≥ 12 'month'
*/
define "Client's age is more than or equal to 12 months":
	not("Client's age is less than 12 months")

/*
@input: The latest mumps dose was administered less than 4 weeks ago
@pseudocode: 'Today's date - "Date and time of vaccination" (where "Vaccine type" = 'Mumps containing vaccines') < 4 'week'
*/
define "The latest mumps dose was administered less than 4 weeks ago":
	"Date of latest Mumps Vaccine" is not null and duration in weeks between "Date of latest Mumps Vaccine" and Now() < 4

/*
@input: The latest mumps dose was administered more than 4 weeks ago
@pseudocode: 'Today's date - "Date and time of vaccination" (where "Vaccine type" = 'Mumps containing vaccines') ≥ 4 'week'
*/
define "The latest mumps dose was administered more than 4 weeks ago":
	Not("The latest mumps dose was administered less than 4 weeks ago")

/*
@input: Live vaccine was administered in the last 4 weeks
@pseudocode: 'Today's date - latest "Date and time of vaccination" (where "Live vaccine" = TRUE) < 4 'week'
*/
define "Live vaccine was administered in the last 4 weeks":
	IMMZCom."Date of Latest Live Attenuated Vaccine" is not null and duration in weeks between IMMZCom."Date of Latest Live Attenuated Vaccine" and Now() < 4

/*
@input: No live vaccine was administered in the last 4 weeks
@pseudocode: 'Today's date - latest "Date and time of vaccination" (where "Live vaccine" = TRUE) ≥ 4 'week'
*/
define "No live vaccine was administered in the last 4 weeks":
	not("Live vaccine was administered in the last 4 weeks")


/*
@input: The client is currently pregnant
@pseudocode: "Potential contraindications" = "Currently pregnant"
*/
define "The client is currently pregnant":
	IMMZCom."Pregnant"

/*
@input: The client has allergy to vaccine components
@pseudocode: '"Potential contraindications" = 'Severe allergic reactions"
*/
define "The client has allergy to vaccine components":
		exists(IMMZCom."Severe Allergic Reactions Condition")

/*
@input: The client has immune deficiency
@pseudocode: '"Potential contraindications" = 'Immunodeficiency syndromes'
*/
define "The client has immune deficiency":
	exists(IMMZCom."Immunodeficiency syndromes Condition")

/*
@input: The client is severely immunosuppressed
@pseudocode: "Potential contraindications" = "Severely immunosuppressed"
*/
define "The client is severely immunosuppressed":
	exists(IMMZCom."Severely Immunosuppressed Condition")

