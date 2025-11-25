/*
 * Library: IMMZD2DTDTPInput (IMMZ.D2.DT.DTPInput)					
 */
library IMMZD2DTDTPInput
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
@internal: DTP containing Doses Administered to Patient
*/
define "DTP Doses Administered to Patient":
  IMMZCom."Doses Administered to Patient" I
  where
    I.vaccineCode in IMMZc."DTP Vaccine"

/*
@internal: Date of latest DTP Vaccine
*/
define "Date of latest DTP Vaccine":
	First("DTP Doses Administered to Patient").occurrence as dateTime

/*
@internal: Tetanus and Diphtheria containing Doses Administered to Patient
*/
define "Tetanus and Diphtheria containing Doses Administered to Patient":
  IMMZCom."Doses Administered to Patient" I where I.vaccineCode in IMMZc."Tetanus and Diphtheria Vaccine"

/*
@internal: Tetanus and Diphtheria containing Booster Doses Administered to Patient
*/
define "Tetanus and Diphtheria Booster Doses Administered to Patient":
  Take( "Tetanus and Diphtheria containing Doses Administered to Patient", Count("Tetanus and Diphtheria containing Doses Administered to Patient") - 3 )

/*
@internal: Date of latest Tetanus and Diphtheria Vaccine
*/
define "Date of latest Tetanus and Diphtheria Vaccine":
	First("Tetanus and Diphtheria containing Doses Administered to Patient").occurrence as dateTime

/*
@internal: Pertussis containing Doses Administered to Patient
*/
define "Pertussis Doses Administered to Patient":
  IMMZCom."Doses Administered to Patient" I where I.vaccineCode in IMMZc."Pertussis Vaccine"

/*
@internal: Pertussis containing Booster Doses Administered to Patient
*/
define "Pertussis Booster Doses Administered to Patient":
  Take( "Pertussis Doses Administered to Patient", Count("Pertussis Doses Administered to Patient") - 3 )

/*
@input: No DTP primary series doses were administered
@pseudocode: Count of vaccines administered (where "Vaccine type" = "'Diphtheria-tetanus-pertussis containing vaccines" and "Type of dose" = "Primary series") = 0
*/
define "No DTP primary series doses were administered":
	not exists("DTP Doses Administered to Patient")

/*
@input: One DTP primary series dose was administered
@pseudocode: Count of vaccines administered (where "Vaccine type" = "'Diphtheria-tetanus-pertussis containing vaccines" and "Type of dose" = "Primary series") = 1
*/
define "One DTP primary series dose was administered":
	Count("DTP Doses Administered to Patient") = 1

/*
@input: Two DTP primary series doses were administered
@pseudocode: Count of vaccines administered (where "Vaccine type" = 'Diphtheria-tetanus-pertussis containing vaccines' and "Type of dose" = 'Primary series') = 2
*/
define "Two DTP primary series doses were administered":
	Count("DTP Doses Administered to Patient") = 2

/*
@input: Three DTP primary series doses were administered
@pseudocode: Count of vaccines administered (where "Vaccine type" = 'Diphtheria-tetanus-pertussis containing vaccines' and "Type of dose" = 'Primary series') = 3
*/
define "Three DTP primary series doses were administered":
	Count("DTP Doses Administered to Patient") >= 3

/*
@input: No tetanus and diphtheria booster doses were administered
@pseudocode: Count of vaccines administered (where "Vaccine type" = "Tetanus and diphtheria containing vaccines" and "Type of dose" = "Booster dose") = 0
*/
define "No tetanus and diphtheria booster doses were administered":
	not exists( "Tetanus and Diphtheria Booster Doses Administered to Patient" )

/*
@input: No tetanus and diphtheria booster dose was administered
@pseudocode: Count of vaccines administered (where "Vaccine type" = "Tetanus and diphtheria containing vaccines" and "Type of dose" = "Booster dose") = 0
*/
define "No tetanus and diphtheria booster dose was administered":
  "No tetanus and diphtheria booster doses were administered"

/*
@input: One tetanus and diphtheria booster dose was administered
@pseudocode: Count of vaccines administered where "Vaccine type" = "Tetanus and diphtheria containing vaccines" and "Type of dose" = "Booster dose" ) = 1
*/
define "One tetanus and diphtheria booster dose was administered":
	Count("Tetanus and Diphtheria Booster Doses Administered to Patient") = 1

/*
@input: Two tetanus and diphtheria booster doses were administered
@pseudocode: Count of vaccines administered where "Vaccine type" = "Tetanus and diphtheria containing vaccines" and "Type of dose" = "Booster dose" ) = 2
*/
define "Two tetanus and diphtheria booster doses were administered":
	Count("Tetanus and Diphtheria Booster Doses Administered to Patient") = 2

/*
@input: Three tetanus and diphtheria booster doses were administered
@pseudocode: Count of vaccines administered where "Vaccine type" = "Tetanus and diphtheria containing vaccines" and "Type of dose" = "Booster dose" ) = 3
*/
define "Three tetanus and diphtheria booster doses were administered":
	Count("Tetanus and Diphtheria Booster Doses Administered to Patient") >= 3

/*
@input: No pertussis booster doses were administered
@pseudocode: Count of vaccines administered where "Vaccine type" = "Pertussis containing vaccines" and "Type of dose" = "Booster dose" ) = 0
*/
define "No pertussis booster doses were administered":
	not exists( "Pertussis Booster Doses Administered to Patient" )

/*
@input: One pertussis booster dose was administered
@pseudocode: Count of vaccines administered where "Vaccine type" = "Pertussis containing vaccines" and "Type of dose" = "Booster dose" =1
*/
define "One pertussis booster dose was administered":
	Count("Pertussis Booster Doses Administered to Patient") = 1

/*
@input: Client's age is less than 6 weeks
@pseudocode: Today's date - "Date of birth" < 6 'week'
*/
define "Client's age is less than 6 weeks":
	IMMZCom."Current Patient Age In Weeks" < 6

/*
@input: Client's age is between 6 weeks and 1 year
@pseudocode: 6 'week' ≤ Today's date - "Date of birth" < 1 'year'
*/
define "Client's age is between 6 weeks and 1 year":
	not("Client's age is less than 6 weeks") and "Client's age is less than 1 year"

/*
@input: Client's age is less than 12 months
@pseudocode: Today's date - "Date of birth" < 12 'month'
*/
define "Client's age is less than 12 months":
	IMMZCom."Current Patient Age In Months" < 12

/*
@input: Client's age is more than or equal to 12 months
@pseudocode: Today's date - "Date of birth" ≥ 12 'month'
*/
define "Client's age is more than or equal to 12 months":
	not("Client's age is less than 12 months")

/*
@input: Client's age is less than 4 years
@pseudocode: Today's date - "Date of birth" < 4 'year'
*/
define "Client's age is less than 4 years":
	IMMZCom."Current Patient Age In Years" < 4

/*
@input: Client's age is more than or equal to 4 years
@pseudocode: Today's date - "Date of birth" ≥ 4 'year'
*/
define "Client's age is more than or equal to 4 years":
	not("Client's age is less than 4 years")

/*
@input: Client's age is less than 9 years
@pseudocode: Today's date - "Date of birth" < 9 'year'
*/
define "Client's age is less than 9 years":
	IMMZCom."Current Patient Age In Years" < 9

/*
@input: Client's age is more than or equal to 9 years
@pseudocode: Today's date - "Date of birth" ≥ 9 'year'
*/
define "Client's age is more than or equal to 9 years":
	not("Client's age is less than 9 years")

/*
@input: Client's age is less than 1 year
@pseudocode: Today's date - "Date of birth" < 1 'year'
*/
define "Client's age is less than 1 year":
	IMMZCom."Current Patient Age In Years" < 1

/*
@input: Client's age is more than 1 year
@pseudocode: Today's date - "Date of birth" > 1 year
*/
define "Client's age is more than 1 year":
	not( "Client's age is less than 1 year" )

/*
@input: Client's age is between 1 year and 6 years
@pseudocode: 1 'year' ≤  Today's date - "Date of birth" ≤  6 'year'
*/
define "Client's age is between 1 year and 6 years":
	not("Client's age is less than 1 year") and not("Client's age is more than 6 years")

/*
@input: Client's age is between 1 year and 6 years old
@pseudocode: 1 year ≤  Today's date - "Date of birth" ≤  6 years
*/
define "Client's age is between 1 year and 6 years old":
  "Client's age is between 1 year and 6 years"

/*
@input: Client's age is more than 6 years
@pseudocode: Today's date - "Date of birth" >  6 'year'
*/
define "Client's age is more than 6 years":
	IMMZCom."Current Patient Age In Years" > 6

/*
@input: The latest DTP dose was administered less than 4 weeks ago
@pseudocode: Today's date - latest "Date and time of vaccination" (where "Vaccine type" = 'Diphtheria-tetanus-pertussis containing vaccines') < 4 'week'
*/
define "The latest DTP dose was administered less than 4 weeks ago":
	"Date of latest DTP Vaccine" is not null and duration in weeks between "Date of latest DTP Vaccine" and Now() < 4
/*
@input: The latest DTP dose was administered more than 4 weeks ago
@pseudocode: Today's date - latest "Date and time of vaccination" (where "Vaccine type" = 'Diphtheria-tetanus-pertussis containing vaccines') ≥ 4 'week'
*/
define "The latest DTP dose was administered more than 4 weeks ago":
	not("The latest DTP dose was administered less than 4 weeks ago")

/*
@input: The latest DTP dose was administered less than 6 months ago
@pseudocode: Today's date - latest "Date and time of vaccination" (where "Vaccine type" = 'Diphtheria-tetanus-pertussis containing vaccines') < 6 'month'
*/
define "The latest DTP dose was administered less than 6 months ago":
	"Date of latest DTP Vaccine" is not null and duration in months between "Date of latest DTP Vaccine" and Now() < 6

/*
@input: The latest DTP dose was administered more than 6 months ago
@pseudocode: Today's date - latest "Date and time of vaccination" (where "Vaccine type" = 'Diphtheria-tetanus-pertussis containing vaccines') ≥ 6 'month'
*/
define "The latest DTP dose was administered more than 6 months ago":
	not("The latest DTP dose was administered less than 6 months ago")

/*
@input: The latest DTP dose was administered less than 1 year ago
@pseudocode: Today's date - latest "Date and time of vaccination" (where "Vaccine type" = "Diphtheria-tetanus-pertussis containing vaccines") < 1 year
*/
define "The latest DTP dose was administered less than 1 year ago":
	"Date of latest DTP Vaccine" is not null and duration in years between "Date of latest DTP Vaccine" and Now() < 1

/*
@input: The latest DTP dose was administered more than 1 year ago
@pseudocode: Today's date - latest "Date and time of vaccination" (where "Vaccine type" = "Diphtheria-tetanus-pertussis containing vaccines") ≥ 1 year
*/
define "The latest DTP dose was administered more than 1 year ago":
	not("The latest DTP dose was administered less than 1 year ago")

/*
@input: The latest tetanus and diphtheria dose was administered less than 4 weeks ago
@pseudocode: Today's date - Latest "Date and time of vaccination" (where "Vaccine type" = "Tetanus and diphtheria containing vaccines") < 4 weeks
*/
define "The latest tetanus and diphtheria dose was administered less than 4 weeks ago":
  "Date of latest Tetanus and Diphtheria Vaccine" is not null and duration in weeks between "Date of latest Tetanus and Diphtheria Vaccine" and Now() < 4

/*
@input: The latest tetanus and diphtheria dose was administered more than 4 weeks ago
@pseudocode: Today's date - Latest "Date and time of vaccination" (where "Vaccine type" = "Tetanus and diphtheria containing vaccines") > 4 weeks
*/
define "The latest tetanus and diphtheria dose was administered more than 4 weeks ago":
	not("The latest tetanus and diphtheria dose was administered less than 4 weeks ago")

/*
@input: The latest tetanus and diphtheria dose was administered less than 1 year ago
@pseudocode: Today's date - Latest "Date and time of vaccination" (where "Vaccine type" = "Tetanus and diphtheria containing vaccines") < 1 year
*/
define "The latest tetanus and diphtheria dose was administered less than 1 year ago":
  "Date of latest Tetanus and Diphtheria Vaccine" is not null and duration in years between "Date of latest Tetanus and Diphtheria Vaccine" and Now() < 1

/*
@input: The latest tetanus and diphtheria dose was administered more than 1 year ago
@pseudocode: Today's date - Latest "Date and time of vaccination" (where "Vaccine type" = "Tetanus and diphtheria containing vaccines") ≥ 1 year
*/
define "The latest tetanus and diphtheria dose was administered more than 1 year ago":
	not("The latest tetanus and diphtheria dose was administered less than 1 year ago")

/*
@input: Client is currently pregnant
@pseudocode: "Currently pregnant" = TRUE
*/
define "Client is currently pregnant":
	IMMZCom."Pregnant"

/*
@input: The client has a history of anaphylactic reactions
@pseudocode: "Potential contraindications" = "History of anaphylactic reactions"
*/
define "The client has a history of anaphylactic reactions":
	exists(IMMZCom."History of Anaphylactic Reactions Condition")

/*
@input: The client currently has a severe acute illness
@pseudocode: "Potential contraindications" = "Severe acute illness"
*/
define "The client currently has a severe acute illness":
	exists(IMMZCom."Severe Acute Illness Condition")
