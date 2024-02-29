/*
 * Library: IMMZD2DTHepatitisBInput (IMMZ.D2.DT.HepatitisBInput)					
 */
library IMMZD2DTHepatitisBInput
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
@internal: Hepatitis B containing Doses Administered to Patient
*/
define "Hepatitis B Doses Administered to Patient":
  IMMZCom."Doses Administered to Patient" I
  where
    I.vaccineCode in IMMZc."Hepatitis B Vaccine"

/*
@internal: Date of latest Hepatitis B Vaccine
*/
define "Date of latest Hepatitis B Vaccine":
	First("Hepatitis B Doses Administered to Patient").occurrence as dateTime


/*
@input: No hepatitis B primary series doses were administered
@pseudocode: Count of vaccines administered (where "Vaccine type" = 'Hepatitis B containing vaccines' and "Type of dose" = 'Primary series' AND "Birth Dose" = TRUE) = 0
*/
define "No hepatitis B primary series doses were administered":
	not exists("Hepatitis B Doses Administered to Patient")

/*
@input: One hepatitis B primary series dose, a birth dose, was administered
@pseudocode: Count of vaccines administered (where "Vaccine type" = 'Hepatitis B containing vaccines' and "Type of dose" = 'Primary series' AND "Birth Dose" = TRUE) = 1
*/
define "One hepatitis B primary series dose, a birth dose, was administered":
	"One hepatitis B primary series dose was administered"

/*
@input: One hepatitis B primary series dose was administered
@pseudocode: Count of vaccines administered (where "Vaccine type" = 'Hepatitis B containing vaccines' and "Type of dose" = 'Primary series') = 1
*/
define "One hepatitis B primary series dose was administered":
	Count("Hepatitis B Doses Administered to Patient") = 1

/*
@input: Two hepatitis B primary series doses were administered
@pseudocode: Count of vaccines administered (where "Vaccine type" = 'Hepatitis B containing vaccines' and "Type of dose" = 'Primary series') = 2
*/
define "Two hepatitis B primary series doses were administered":
	Count("Hepatitis B Doses Administered to Patient") = 2

/*
@input: Three hepatitis B primary series doses were administered
@pseudocode: Count of vaccines administered (where "Vaccine type" = 'Hepatitis B containing vaccines' and "Type of dose" = 'Primary series') = 3
*/
define "Three hepatitis B primary series doses were administered":
	Count("Hepatitis B Doses Administered to Patient") = 3

/*
@input: Four hepatitis B primary series doses were administered
@pseudocode: Count of vaccines administered (where "Vaccine type" = 'Hepatitis B containing vaccines' and "Type of dose" = 'Primary series') = 4
*/
define "Four hepatitis B primary series doses were administered":
	Count("Hepatitis B Doses Administered to Patient") = 4

/*
@input: Client's age is less than 4 weeks
@pseudocode: Today's date - "Date of birth" < 4 'week'
*/
define "Client's age is less than 4 weeks":
	IMMZCom."Current Patient Age In Weeks" < 4

/*
@input: Client's age is more than 4 weeks
@pseudocode: Today's date - "Date of birth" ≥ 4 'week'
*/
define "Client's age is more than 4 weeks":
	not("Client's age is less than 4 weeks")

/*
@input: Client's weight at birth was over 2000g
@pseudocode: "Birth weight in grams"  ≥ 2000
*/
define "Client's weight at birth was over 2000g":
	not("Client's weight at birth was below 2000g")
/*
@input: Client's weight at birth was below 2000g
@pseudocode: "Birth weight in grams" < 2000
*/
define "Client's weight at birth was below 2000g":
	IMMZCom."Patient birth weight in grams" < 2000
/*
@input: Client was not a premature infant at birth
@pseudocode: "Preterm birth" ≠  TRUE
*/
define "Client was not a premature infant at birth":
	not("Client was a premature infant at birth")

/*
@input: Client was a premature infant at birth
@pseudocode: "Preterm birth" =  TRUE
*/
define "Client was a premature infant at birth":
	IMMZCom."Preterm Birth"

/*
@input: The latest hepatitis B dose was administered less than 4 weeks ago
@pseudocode: Today's date - latest "Date and time of vaccination" (where "Vaccine type" = 'Hepatitis B containing vaccines') < 4 'week'
*/
define "The latest hepatitis B dose was administered less than 4 weeks ago":
	"Date of latest Hepatitis B Vaccine" is not null and duration in weeks between "Date of latest Hepatitis B Vaccine" and Now() < 4 

/*
@input: The latest hepatitis B dose was administered more than 4 weeks ago
@pseudocode: Today's date - latest "Date and time of vaccination" (where "Vaccine type" = 'Hepatitis B containing vaccines') ≥ 4 'week'
*/
define "The latest hepatitis B dose was administered more than 4 weeks ago":
	"Date of latest Hepatitis B Vaccine" is not null and duration in weeks between "Date of latest Hepatitis B Vaccine" and Now() >= 4 

/*
@input: The first hepatitis B dose was administered less than 6 months ago
@pseudocode: Today's date - "Date and time of vaccination" (where "Vaccine type" = 'Hepatitis B containing vaccines' and "Dose number" = 1) < 6 'month'
*/
define "The first hepatitis B dose was administered less than 6 months ago":
	"Date of latest Hepatitis B Vaccine" is not null and duration in months between "Date of latest Hepatitis B Vaccine" and Now() < 6 

/*
@input: The first hepatitis B dose was administered more than 6 months ago
@pseudocode: Today's date - "Date and time of vaccination" (where "Vaccine type" = 'Hepatitis B containing vaccines' and "Dose number" = 1) ≥ 6 'month'
*/
define "The first hepatitis B dose was administered more than 6 months ago":
	"Date of latest Hepatitis B Vaccine" is not null and duration in months between "Date of latest Hepatitis B Vaccine" and Now() >= 6

/*
@input: The client has history of severe allergic reactions
@pseudocode: "Potential contraindications" = 'Severe allergic reactions'
*/
define "The client has history of severe allergic reactions":
		exists(IMMZCom."Severe Allergic Reactions Condition")
