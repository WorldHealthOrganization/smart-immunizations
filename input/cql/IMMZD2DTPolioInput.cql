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
birth - Birth dose administration as part of "bOPV plus IPV" schedule (In countries that are polio-endemic countries 
	or countries at high risk for importation and subsequent spread of poliovirus, that follow the combined 
	bOPV-IPV schedule)								
bOPVIPV - bOPV plus IPV schedule (applicable for all countries)
sequential - Sequential IPV–bOPV schedule (in countries with high vaccination coverage (e.g. 90–95%) and low importation 
	risk (where neighbouring countries and/or countries that share substantial population movement have a 
	similarly high coverage))
IPVonly - IPV-only (in countries, in polio-free regions, with a very low risk of importation and sustained high routine 
	immunization coverage (DTP3 >90%)
*/
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
	exists("Polio Doses Administered to Patient" I where I.occurrence before Patient.birthDate + 1 week) 

/*
@input: No polio primary series doses were administered
@pseudocode: Count of vaccines administered (where "Vaccine type" = 'Polio containing vaccines' and "Type of dose" = "Primary series") = 0
*/
define "No polio primary series doses were administered":
	not exists("Polio Doses Administered to Patient" I where I.occurrence after Patient.birthDate + 6 weeks)

/*
@input: One polio primary series dose was administered
@pseudocode: Count of vaccines administered (where "Vaccine type" = 'Polio containing vaccines' and "Type of dose" = "Primary series") = 1
*/
define "One polio primary series dose was administered":
	null

/*
@input: Two polio primary series doses were administered
@pseudocode: Count of vaccines administered (where "Vaccine type" = 'Polio containing vaccines' and "Type of dose" = "Primary series") = 2
*/
define "Two polio primary series doses were administered":
	null


/*
@input: Three polio primary series doses were administered
@pseudocode: Count of vaccines administered (where "Vaccine type" = 'Polio containing vaccines' and "Type of dose" = "Primary series") = 3
*/
define "Three polio primary series doses were administered":
	null


/*
@input: The polio dose administered is bOPV 
@pseudocode: Count of vaccines administered (where "Type of polio dose" = 'bOPV' and "Type of dose" = "Primary series") = 1
*/
define "The polio dose administered is bOPV ":
	null


/*
@input: The polio dose administered is IPV 
@pseudocode: Count of vaccines administered (where "Type of polio dose" = 'bOPV' and "Type of dose" = "Primary series") = 0
*/
define "The polio dose administered is IPV ":
	null


/*
@input: The two doses administered are bOPV
@pseudocode: Count of vaccines administered (where "Type of polio dose" = 'bOPV' and "Type of dose" = "Primary series") = 2
*/
define "The two doses administered are bOPV":
	null


/*
@input: From the two doses administered one is bOPV and one is IPV
@pseudocode: Count of vaccines administered (where "Type of polio dose" = 'bOPV' and "Type of dose" = "Primary series") = 1
*/
define "From the two doses administered one is bOPV and one is IPV":
	null


/*
@input: The two doses administered are IPV
@pseudocode: Count of vaccines administered (where "Type of polio dose" = 'bOPV' and "Type of dose" = "Primary series") = 0
*/
define "The two doses administered are IPV":

	null

/*
@input: The three doses administered are bOPV
@pseudocode: Count of vaccines administered (where "Type of polio dose" = 'bOPV' and "Type of dose" = "Primary series") = 3
*/
define "The three doses administered are bOPV":
	null


/*
@input: From the three doses administered one is IPV and two are bOPV
@pseudocode: Count of vaccines administered (where "Type of polio dose" = 'bOPV' and "Type of dose" = "Primary series") = 2
*/
define "From the three doses administered one is IPV and two are bOPV":
	null

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
	null


/*
@input: Client's age is between 6 weeks and 3 months
@pseudocode: 6 'week' ≤ Today's date - "Date of birth" ≤ 3 'month'
*/
define "Client's age is between 6 weeks and 3 months":
	null


/*
@input: Client's age is more than 3 months
@pseudocode: Today's date - "Date of birth" > 3 'month'
*/
define "Client's age is more than 3 months":
	null


/*
@input: Client's age is between 6 weeks and 14 weeks
@pseudocode: 6 'week'  '≤ 'Today's date - "Date of birth" < 14 'week'
*/
define "Client's age is between 6 weeks and 14 weeks":
	null


/*
@input: Client's age is more than or equal to 14 weeks
@pseudocode: Today's date - "Date of birth" ≥ 14 'week' 
*/
define "Client's age is more than or equal to 14 weeks":
	null

/*
@input: Client's age is less than 14 weeks
@pseudocode: Today's date - "Date of birth" < 14 'week' 
*/
define "Client's age is less than 14 weeks":
	null

/*
@input: The latest bOPV dose was administered less than 4 weeks ago
@pseudocode: Today's date - Latest "Date and time of vaccination" (where "Vaccine type" = 'Polio containing vaccines' and "Type of Polio dose" = 'bOPV') < 4 'week'
*/
define "The latest bOPV dose was administered less than 4 weeks ago":
	null


/*
@input: The latest bOPV dose was administered more than 4 weeks ago
@pseudocode: Today's date - Latest "Date and time of vaccination" (where "Vaccine type" = 'Polio containing vaccines' and "Type of Polio dose" = 'bOPV') ≥ 4 'week'
*/
define "The latest bOPV dose was administered more than 4 weeks ago":
	null


/*
@input: The latest IPV dose was administered less than 4 months ago
@pseudocode: Today's date - Latest "Date and time of vaccination" (where "Vaccine type" = 'Polio containing vaccines' and "Type of polio dose" = 'IPV') < 4 'month'
*/
define "The latest IPV dose was administered less than 4 months ago":
	null


/*
@input: The latest IPV dose was administered more than 4 months ago
@pseudocode: Today's date - Latest "Date and time of vaccination" (where "Vaccine type" = 'Polio containing vaccines' and "Type of polio dose" = 'IPV') ≥ 4 'month' 
*/
define "The latest IPV dose was administered more than 4 months ago":
	null

