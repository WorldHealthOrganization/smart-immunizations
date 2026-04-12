/*
 * Library: IMMZD2DTPolioInput (IMMZ.D2.DT.PolioInput)						
 */
library IMMZD2DTPolioInput
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
@internal: Polio containing Doses Administered to Patient
*/
define "Polio Doses Administered to Patient":
  IMMZCom."Doses Administered to Patient" I
  where
    I.vaccineCode in IMMZc."Polio Vaccine"

/*
@internal: Primary series polio containing doses administered to patient
*/
define "Primary Series Polio Doses Administered to Patient":
		"Polio Doses Administered to Patient" I where duration in days between I.occurrence and Patient.birthDate + 6 weeks <= 0

/*
@internal: Polio containing bOPV Doses Administered to Patient
*/
define "bOPV Polio Doses Administered to Patient":
  "Primary Series Polio Doses Administered to Patient" I
  where
    I.vaccineCode in IMMZc."Polio Vaccine - bOPV"

/*
@internal: Polio containing IPV Doses Administered to Patient
*/
define "IPV Polio Doses Administered to Patient":
  "Primary Series Polio Doses Administered to Patient" I
  where
    I.vaccineCode in IMMZc."Polio Vaccine - IPV"

/*
@internal: Date of latest primary series Polio Vaccine
*/
define "Date of latest Primary Series Polio Vaccine":
	First("Primary Series Polio Doses Administered to Patient").occurrence as dateTime

/*
@internal: Date of first primary series Polio Vaccine
*/
define "Date of first Primary Series Polio Vaccine":
	Last("Primary Series Polio Doses Administered to Patient").occurrence as dateTime

/*
@internal: Date of latest bOPV Polio Vaccine
*/
define "Date of latest bOPV Polio Vaccine":
  First("bOPV Polio Doses Administered to Patient").occurrence as dateTime

/*
@internal: Date of latest bIPVOPV Polio Vaccine
*/
define "Date of latest IPV Polio Vaccine":
  First("IPV Polio Doses Administered to Patient").occurrence as dateTime

/*
@input: bOPV birth dose (a zero dose) was not administered
@pseudocode: Count of vaccines administered (where "Vaccine type" = 'Polio containing vaccines' and "Type of dose" = 'Dose 0' AND "Birth Dose" = TRUE) = 0 
*/
define "bOPV birth dose (a zero dose) was not administered":
	not "bOPV birth dose (a zero dose) was administered"

/*
@input: bOPV birth dose (a zero dose) was administered
@pseudocode: Count of vaccines administered (where "Vaccine type" = 'Polio containing vaccines' and "Type of dose" = 'Dose 0' AND "Birth Dose" = TRUE) = 1
*/
define "bOPV birth dose (a zero dose) was administered":
	exists("Polio Doses Administered to Patient" I where duration in days between I.occurrence and Patient.birthDate + 1 week > 0) 

/*
@input: No polio primary series doses were administered
@pseudocode: Count of vaccines administered (where "Vaccine type" = 'Polio containing vaccines' and "Type of dose" = "Primary series") = 0
*/
define "No polio primary series doses were administered":
	not exists("Primary Series Polio Doses Administered to Patient")

/*
@input: One polio primary series dose was administered
@pseudocode: Count of vaccines administered (where "Vaccine type" = 'Polio containing vaccines' and "Type of dose" = "Primary series") = 1
*/
define "One polio primary series dose was administered":
	Count("Primary Series Polio Doses Administered to Patient") = 1

/*
@input: Two polio primary series doses were administered
@pseudocode: Count of vaccines administered (where "Vaccine type" = 'Polio containing vaccines' and "Type of dose" = "Primary series") = 2
*/
define "Two polio primary series doses were administered":
	Count("Primary Series Polio Doses Administered to Patient") = 2

/*
@input: Three polio primary series doses were administered
@pseudocode: Count of vaccines administered (where "Vaccine type" = 'Polio containing vaccines' and "Type of dose" = "Primary series") = 3
*/
define "Three polio primary series doses were administered":
	Count("Primary Series Polio Doses Administered to Patient") = 3

/*
@input: Four polio primary series doses were administered
@pseudocode: Count of vaccines administered (where "Vaccine type" = 'Polio containing vaccines' and "Type of dose" = "Primary series") = 4
*/
define "Four polio primary series doses were administered":
	Count("Primary Series Polio Doses Administered to Patient") = 4

/*
@input: Five polio primary series doses were administered
@pseudocode: Count of vaccines administered (where "Vaccine type" = 'Polio containing vaccines' and "Type of dose" = "Primary series") = 5
*/
define "Five polio primary series doses were administered":
	Count("Primary Series Polio Doses Administered to Patient") = 5

/*
@input: The polio dose administered is bOPV 
@pseudocode: Count of vaccines administered (where "Type of polio dose" = 'bOPV' and "Type of dose" = "Primary series") = 1
*/
define "The polio dose administered is bOPV":
	Count("bOPV Polio Doses Administered to Patient") = 1

/*
@input: The polio dose administered is IPV 
@pseudocode: Count of vaccines administered (where "Type of polio dose" = 'bOPV' and "Type of dose" = "Primary series") = 0
*/
define "The polio dose administered is IPV":
	Count("IPV Polio Doses Administered to Patient") = 1

/*
@input: The two doses administered are bOPV
@pseudocode: Count of vaccines administered (where "Type of polio dose" = 'bOPV' and "Type of dose" = "Primary series") = 2
*/
define "The two doses administered are bOPV":
	Count("bOPV Polio Doses Administered to Patient") = 2

/*
@input: From the two doses administered one is bOPV and one is IPV
@pseudocode: Count of vaccines administered (where "Type of polio dose" = 'bOPV' and "Type of dose" = "Primary series") = 1
*/
define "From the two doses administered one is bOPV and one is IPV":
	Count("bOPV Polio Doses Administered to Patient") = 1 and Count("IPV Polio Doses Administered to Patient") = 1

/*
@input: The two doses administered are IPV
@pseudocode: Count of vaccines administered (where "Type of polio dose" = 'bOPV' and "Type of dose" = "Primary series") = 0
*/
define "The two doses administered are IPV":
		Count("IPV Polio Doses Administered to Patient") = 2

/*
@input: The three doses administered are bOPV
@pseudocode: Count of vaccines administered (where "Type of polio dose" = 'bOPV' and "Type of dose" = "Primary series") = 3
*/
define "The three doses administered are bOPV":
	Count("bOPV Polio Doses Administered to Patient") = 3

/*
@input: From the three doses administered one is IPV and two are bOPV
@pseudocode: Count of vaccines administered (where "Type of polio dose" = 'bOPV' and "Type of dose" = "Primary series") = 2
*/
define "From the three doses administered one is IPV and two are bOPV":
		Count("IPV Polio Doses Administered to Patient") = 1 and Count("bOPV Polio Doses Administered to Patient") = 2

/*
@input: From the three doses administered one is bOPV and two are IPV
@pseudocode: Count of vaccines administered (where "Type of polio dose" = 'bOPV' and "Type of dose" = "Primary series") = 1
*/
define "From the three doses administered one is bOPV and two are IPV":
		Count("bOPV Polio Doses Administered to Patient") = 1 and Count("IPV Polio Doses Administered to Patient") = 2

/*
@input: From the four doses administered one is IPV and three are bOPV
@pseudocode: Count of vaccines administered (where "Type of polio dose" = 'bOPV' and "Type of dose" = "Primary series") = 3
*/
define "From the four doses administered one is IPV and three are bOPV":
		Count("IPV Polio Doses Administered to Patient") = 1 and Count("bOPV Polio Doses Administered to Patient") = 3

/*
@input: From the four doses administered two are IPV and two are bOPV
@pseudocode: Count of vaccines administered (where "Type of polio dose" = 'bOPV' and "Type of dose" = "Primary series") = 2
*/
define "From the four doses administered two are IPV and two are bOPV":
		Count("IPV Polio Doses Administered to Patient") = 2 and Count("bOPV Polio Doses Administered to Patient") = 2

/*
@input: Client's age is less than 1 week
@pseudocode: Today's date - "Date of birth" < 1 'week' 
*/
define "Client's age is less than 1 week":
	IMMZCom."Current Patient Age In Weeks" < 1

/*
@input: Client's age is more or equal to 1 week
@pseudocode: Today's date - "Date of birth" ≥ 1 'week' 
*/
define "Client's age is more or equal to 1 week":
	not "Client's age is less than 1 week"

/*
@input: Client's age is less than 6 weeks
@pseudocode: Today's date - "Date of birth" < 6 'week' 
*/
define "Client's age is less than 6 weeks":
	IMMZCom."Current Patient Age In Weeks" < 6

/*
@input: Client's age is more than or equal to 6 weeks
@pseudocode: Today's date - "Date of birth" ≥ 6 'week'
*/
define "Client's age is more than or equal to 6 weeks":
	Not( "Client's age is less than 6 weeks" )

/*
@input: Client's age is between 6 weeks and 3 months
@pseudocode: 6 'week' ≤ Today's date - "Date of birth" ≤ 3 'month'
*/
define "Client's age is between 6 weeks and 3 months":
	not( "Client's age is less than 6 weeks" ) and not( "Client's age is more than 3 months" )

/*
@input: Client's age is less than 8 weeks
@pseudocode: Today's date - "Date of birth" < 8 'week'
*/
define "Client's age is less than 8 weeks":
	IMMZCom."Current Patient Age In Weeks" < 8

/*
@input: Client's age is more than or equal to 8 weeks
@pseudocode: Today's date - "Date of birth" ≥ 8 'week'
*/
define "Client's age is more than or equal to 8 weeks":
	not("Client's age is less than 8 weeks")

/*
@input: Client's age is more than 3 months
@pseudocode: Today's date - "Date of birth" > 3 'month'
*/
define "Client's age is more than 3 months":
	IMMZCom."Current Patient Age In Months" > 3

/*
@input: Client's age is between 6 weeks and 14 weeks
@pseudocode: 6 'week'  '≤ 'Today's date - "Date of birth" < 14 'week'
*/
define "Client's age is between 6 weeks and 14 weeks":
	not( "Client's age is less than 6 weeks" ) and "Client's age is less than 14 weeks"

/*
@input: Client's age is more than or equal to 14 weeks
@pseudocode: Today's date - "Date of birth" ≥ 14 'week' 
*/
define "Client's age is more than or equal to 14 weeks":
	not( "Client's age is less than 14 weeks" )

/*
@input: Client's age is less than 14 weeks
@pseudocode: Today's date - "Date of birth" < 14 'week' 
*/
define "Client's age is less than 14 weeks":
	IMMZCom."Current Patient Age In Weeks" < 14

/*
@input: Client's age was more than 6 weeks when the primary series was started
@pseudocode: "Date and time of vaccination" (where "Vaccine type" = 'Polio containing vaccines' AND "Dose number" = 1) - "Date of birth" > 6 'week'
*/
define "Client's age was more than 6 weeks when the primary series was started":
	AgeInWeeksAt("Date of first Primary Series Polio Vaccine") > 6

/*
@input: Client's age was 6 weeks when the primary series was started
@pseudocode: "Date and time of vaccination" (where "Vaccine type" = 'Polio containing vaccines' AND "Dose number" = 1) - "Date of birth" = 6 'week'
*/
define "Client's age was 6 weeks when the primary series was started":
	AgeInWeeksAt("Date of first Primary Series Polio Vaccine") = 6

/*
@input: The latest bOPV dose was administered less than 4 weeks ago
@pseudocode: Today's date - Latest "Date and time of vaccination" (where "Vaccine type" = 'Polio containing vaccines' and "Type of Polio dose" = 'bOPV') < 4 'week'
*/
define "The latest bOPV dose was administered less than 4 weeks ago":
	//"Date of latest bOPV Polio Vaccine" is not null and "Date of latest bOPV Polio Vaccine" + 4 weeks > Now()
	"Date of latest bOPV Polio Vaccine" is not null and duration in weeks between "Date of latest bOPV Polio Vaccine" and Now() < 4 

/*
@input: The latest bOPV dose was administered more than 4 weeks ago
@pseudocode: Today's date - Latest "Date and time of vaccination" (where "Vaccine type" = 'Polio containing vaccines' and "Type of Polio dose" = 'bOPV') ≥ 4 'week'
*/
define "The latest bOPV dose was administered more than 4 weeks ago":
	//"Date of latest bOPV Polio Vaccine" is not null and "Date of latest bOPV Polio Vaccine" + 4 weeks <= Now()
	"Date of latest bOPV Polio Vaccine" is not null and duration in weeks between "Date of latest bOPV Polio Vaccine" and Now() >= 4

/*
@input: The latest IPV dose was administered less than 4 months ago
@pseudocode: Today's date - Latest "Date and time of vaccination" (where "Vaccine type" = 'Polio containing vaccines' and "Type of polio dose" = 'IPV') < 4 'month'
*/
define "The latest IPV dose was administered less than 4 months ago":
	//"Date of latest IPV Polio Vaccine" is not null and "Date of latest IPV Polio Vaccine" + 4 months > Now()
	"Date of latest IPV Polio Vaccine" is not null and duration in months between "Date of latest IPV Polio Vaccine" and Now() <  4

/*
@input: The latest IPV dose was administered more than 4 months ago
@pseudocode: Today's date - Latest "Date and time of vaccination" (where "Vaccine type" = 'Polio containing vaccines' and "Type of polio dose" = 'IPV') ≥ 4 'month' 
*/
define "The latest IPV dose was administered more than 4 months ago":
	//"Date of latest IPV Polio Vaccine" is not null and "Date of latest IPV Polio Vaccine" + 4 months <= Now()
	"Date of latest IPV Polio Vaccine" is not null and duration in months between "Date of latest IPV Polio Vaccine" and Now() >= 4

/*
@input: The latest polio dose was administered less than 4 weeks ago
@pseudocode: Today's date - latest "Date and time of vaccination" (where "Vaccine type" = 'Polio containing vaccines') < 4 'week'
*/
define "The latest polio dose was administered less than 4 weeks ago":
	//"Date of latest Polio Vaccine" is not null and "Date of latest Polio Vaccine" + 4 weeks > Now()
	"Date of latest Primary Series Polio Vaccine" is not null and duration in weeks between "Date of latest Primary Series Polio Vaccine" and Now() < 4

/*
@input: The latest polio dose was administered more than 4 weeks ago
@pseudocode: Today's date - Latest "Date and time of vaccination" (where "Vaccine type" = 'Polio containing vaccines') ≥ 4 'week'
*/
define "The latest polio dose was administered more than 4 weeks ago":
	//"Date of latest Polio Vaccine" is not null and "Date of latest Polio Vaccine" + 4 weeks <= Now()
	"Date of latest Primary Series Polio Vaccine" is not null and duration in weeks between "Date of latest Primary Series Polio Vaccine" and Now() >= 4

/*
@input: The latest polio dose was administered less than 6 months ago
@pseudocode: Today's date - Latest "Date and time of vaccination" (where "Vaccine type" = 'Polio containing vaccines') < 6 'month'
*/
define "The latest polio dose was administered less than 6 months ago":
	//"Date of latest Polio Vaccine" is not null and "Date of latest Polio Vaccine" + 6 months > Now()
	"Date of latest Primary Series Polio Vaccine" is not null and duration in months between "Date of latest Primary Series Polio Vaccine" and Now() < 6

/*
@input: The latest polio dose was administered more than 6 months ago
@pseudocode: Today's date - Latest "Date and time of vaccination" (where "Vaccine type" = 'Polio containing vaccines') ≥ 6 'month'
*/
define "The latest polio dose was administered more than 6 months ago":
	//"Date of latest Polio Vaccine" is not null and "Date of latest Polio Vaccine" + 6 months <= Now()
	"Date of latest Primary Series Polio Vaccine" is not null and duration in months between "Date of latest Primary Series Polio Vaccine" and Now() >= 6

/*
@input: No polio booster dose was administered
@pseudocode: Count of vaccines administered (where "Vaccine type" = 'Polio containing vaccines' and "Type of dose" = 'Booster dose') = 0
*/
define "No polio booster dose was administered":
	Not( "Polio booster dose was administered" )

/*
@input: Polio booster dose was administered
@pseudocode: Count of vaccines administered (where "Vaccine type" = 'Polio containing vaccines' and "Type of dose" = 'Booster dose') = 1
*/
define "Polio booster dose was administered":
	Count("Polio Doses Administered to Patient") > 3 or exists("Polio Doses Administered to Patient" I where (First(I.protocolApplied.doseNumber) as string) = 'booster')

/*
@input: The client has history of severe allergic reactions
@pseudocode: "Potential contraindications" = 'Severe allergic reactions'
*/
define "The client has history of severe allergic reactions":
		exists(IMMZCom."Severe Allergic Reactions Condition")

/*
@input: The client is severely immunocompromised
@pseudocode: "Potential contraindications" = 'Severely immunocompromised'
*/
define "The client is severely immunocompromised":
		exists(IMMZCom."Severely immunocompromised Condition")

/*
@input: The client has immunodeficiency syndromes
@pseudocode: "Potential contraindications" = 'Immunodeficiency syndromes'
*/
define "The client has immunodeficiency syndromes":
		exists(IMMZCom."Immunodeficiency syndromes Condition")

