/*
 * Library: IMMZD2DTMeasles (IMMZ.D2.DT.Measles)
 * Rule: If the child or patient has not been given MCV1 (at 9 months) and MCV2 (between 15-18 months) vaccination 
 * Trigger: Patient has never received measles vaccination
 */
library IMMZD2DTMeaslesInput
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
@input: No dose from primary MCV dose series administered
@psuedocode: Count of vaccines administered (where "Vaccine type" = 'Measles containing vaccines' and "Type of dose" = "Primary series" ) = 0
*/
define "No dose from primary MCV dose series administered":
	not exists("MCV Doses Administered to Patient" I where I.occurrence after Patient.birthDate + 9 months)

/*
@input: MCV0 dose was administered
@pseudocode: Count of vaccines administered (where "Vaccine type" = 'Measles containing vaccines' and "Type of dose" = "Dose 0") = 1
*/
define "MCV0 dose was administered":
	Count("MCV Doses Administered to Patient" I where I.occurrence between Patient.birthDate + 6 months and Patient.birthDate + 9 months) >= 1

/*
@input: MCV0 dose was NOT administered
@psuedocode: Count of vaccines administered (where "Vaccine type" = 'Measles containing vaccines' and "Type of dose" = "Dose 0") = 0
*/
define "MCV0 dose was NOT administered":
	Not("MCV0 dose was administered")

/*
@input: One dose from primary MCV dose series administered High Tx
@pseudocode: Count of vaccines administered (where "Vaccine type" = 'Measles containing vaccines' and "Type of dose" = "Primary series" ) = 1	
*/
define "One dose from primary MCV dose series administered High Tx":
	Count("MCV Doses Administered to Patient" I where I.occurrence after Patient.birthDate + 9 months) = 1

/*
@input: Two doses from primary MCV dose series administered High Tx
@pseudocode: Count of vaccines administered (where "Vaccine type" = 'Measles containing vaccines' and "Type of dose" = "Primary series" ) = 2		
*/
define "Two doses from primary MCV dose series administered High Tx":
	Count("MCV Doses Administered to Patient" I where I.occurrence after Patient.birthDate + 9 months) >= 2 
	and Count("MCV Doses Administered to Patient" I where I.occurrence after Patient.birthDate + 15 months) >= 1

/*
@input: One dose from primary MCV dose series administered Low Tx
@pseudocode: Count of vaccines administered (where "Vaccine type" = 'Measles containing vaccines' and "Type of dose" = "Primary series" ) = 1	
*/
define "One dose from primary MCV dose series administered Low Tx":
	Count("MCV Doses Administered to Patient" I where I.occurrence after Patient.birthDate + 12 months) = 1

/*
@input: Two doses from primary MCV dose series administered Low Tx
@pseudocode: Count of vaccines administered (where "Vaccine type" = 'Measles containing vaccines' and "Type of dose" = "Primary series" ) = 2		
*/
define "Two doses from primary MCV dose series administered Low Tx":
	Count("MCV Doses Administered to Patient" I where I.occurrence after Patient.birthDate + 12 months) >= 2 
	and Count("MCV Doses Administered to Patient" I where I.occurrence after Patient.birthDate + 15 months) >= 1

/*
@input: Measles supplementary dose was administered
@pseudocode: Count of vaccines administered (where "Vaccine type" = 'Measles containing vaccines' and "Type of dose" = "Supplementary dose") = 1
*/
define "Measles supplementary dose was administered":
	Count("MCV Doses Administered to Patient" I where I.occurrence after Patient.birthDate + 9 months) >= 3

/*
@input: Measles supplementary dose was NOT administered
@pseudocode: Count of vaccines administered (where "Vaccine type" = 'Measles containing vaccines' and "Type of dose" = "Supplementary dose") = 0
*/
define "Measles supplementary dose was NOT administered":
	Not("Measles supplementary dose was administered")

/*
@input: Measles routine immunization schedule is complete High Tx
@pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Measles containing vaccines")
*/
define "Measles routine immunization schedule is complete High Tx":
	"Two doses from primary MCV dose series administered High Tx"

/*
@input: Measles routine immunization schedule is complete Low Tx
@pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Measles containing vaccines")
*/
define "Measles routine immunization schedule is complete Low Tx":
	"Two doses from primary MCV dose series administered Low Tx"

/*
@input: Client's age is less than 6 months
@pseudocode: Today's date - "Date of birth" < 6 'month'
*/
define "Client's age is less than 6 months":
	IMMZCom."Current Patient Age In Months" < 6

/*
@input: Client's age is between 6 months and 9 months
@pseudocode: 6 'month' ≤ Today's date - "Date of birth" < 9 'month'
*/
define "Client's age is between 6 months and 9 months":
	not("Client's age is less than 6 months") and "Client's age is less than 9 months"

/*
@input: Client's age is less than 9 months
@pseudocode: Today's date - "Date of birth" < 9 'month'"
*/
define "Client's age is less than 9 months":
	IMMZCom."Current Patient Age In Months" < 9

/*
@input: Client's age is more than 9 months 
@pseudocode: Today's date - "Date of birth" ≥ 9 'month'	
*/
define "Client's age is more than 9 months":
	not ("Client's age is less than 9 months")

/*
@input: Client's age is less than 12 months
@pseudocode: Today's date - ""Date of birth"" < 12 'month'
*/
define "Client's age is less than 12 months":
	IMMZCom."Current Patient Age In Months" < 12

/*
@input: Client's age is more than 12 months
Today's date - ""Date of birth"" ≥ 12 'month'
*/
define "Client's age is more than 12 months":
	not("Client's age is less than 12 months")

/*
@input: Client's age is less than 15 months 
@pseudocode: Today's date - "Date of birth" < 15 'month'	
*/

define "Client's age is less than 15 months":
		IMMZCom."Current Patient Age In Months" < 15

/*
@input: Client's age is more than 15 months 
@psuedocode: Today's date - "Date of birth" ≥ 15 'month'	
*/
define "Client's age is more than 15 months":
	not("Client's age is less than 15 months")

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
@input: The client is pregnant
@pseudocode: "Potential contraindications" = 'Currently pregnant'
*/
define "The client is pregnant":
	IMMZCom."Pregnant"

/*
@input: The client has history of anaphylactic reactions
@pseudocode: "Potential contraindications" = 'History of anaphylactic reactions'
*/
define "The client has history of anaphylactic reactions":
	exists(IMMZCom."History of Anaphylactic Reactions Condition")

/*
@input: The client has history of severe allergic reactions
@pseudocode: "Potential contraindications" = 'Severe allergic reactions'
*/
define "The client has history of severe allergic reactions":
		exists(IMMZCom."Severe Allergic Reactions Condition")

/*
@input: The client is severely immunosuppressed
@pseudocode: "Potential contraindications" = 'Severely immunosuppressed'
*/
define "The client is severely immunosuppressed":
	exists(IMMZCom."Severely Immunosuppressed Condition")

/*
@input: The client has a symptomatic HIV infection
@pseudocode: "Potential contraindications" = 'Symptomatic HIV infection'
*/
define "The client has a symptomatic HIV infection":
	exists(IMMZCom."Symptomatic HIV Infection Condition")
