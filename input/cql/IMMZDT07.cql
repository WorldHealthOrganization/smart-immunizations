/*
 * Library: IMMZDT07 (IMMZ.DT.07.Rotavirus)
 * Rule: If child or person has not been vaccinated, give Rotavirus vaccine according to the defined schedule 
 * Trigger: Patient has never received rotavirus vaccination
 */
library IMMZDT07
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

/**
 * @dataElement Should provision Rotavirus Dose
 */
define "Provision of the Rotavirus dose":
	AgeInMonthsAt(Now()) <= 24 and 
		if "Number of Required Rotavirus Doses" = 3 
		then "Third Rotavirus Dose Administered to Patient" is null 
		else "Second Rotavirus Dose Administered to Patient" is null

define "Schedule Due Date for Rotavirus dose":
	ToDateTime(
		if "No Rotavirus Doses Administered to Patient"
		then Patient.birthDate + 6 weeks
		else "Date Last Valid Rotavirus Dose" + 4 weeks
	)

define "Rotavirus Next Dose Number":
	case 
	when "Third Rotavirus Dose Administered to Patient" is not null then null
	when "Second Rotavirus Dose Administered to Patient" is not null then if "Number of Required Rotavirus Doses" = 3 then 3 else null
	when "First Rotavirus Dose Administered to Patient" is not null then 2
	else 1
	end

define "Number of Required Rotavirus Doses":
	if (IMMZCon."Country is using a 3 dose series ROTA product") or
			("All previous doses were not the same product" = true)
	then 3
	else 2

define "Expiration Date for Rotavirus dose":
	Patient.birthDate + 24 months

define "Overdue Date for Rotavirus dose":
	null

define "Date Last Valid Rotavirus Dose":
	case 
	when "Third Rotavirus Dose Administered to Patient" is not null then "Date Third Rotavirus Dose Administered to Patient"
	when "Second Rotavirus Dose Administered to Patient" is not null then "Date Second Rotavirus Dose Administered to Patient"
	when "First Rotavirus Dose Administered to Patient" is not null then "Date First Rotavirus Dose Administered to Patient"
	else null
	end

define "Should vaccinate patient for Rotavirus":
	"Provision of the Rotavirus dose" and ("Schedule Due Date for Rotavirus dose" <= (Now()))

/**
 * @dataElement Rotavirus containing Doses Administered to Patient
 */
define "Rotavirus Doses Administered to Patient":
  IMMZCom."Doses Administered to Patient" I
  where
    I.vaccineCode in IMMZc."Rotavirus Vaccine"

/**
 * @dataElement 
 */
define "No Rotavirus Doses Administered to Patient":
  not exists("Rotavirus Doses Administered to Patient")


//Date last administered Rotavirus
define "Date Last Rotavirus Dose Administered to Patient":
  date from (First("Rotavirus Doses Administered to Patient").occurrence as FHIR.dateTime)

/**
 * @dataElement First Rotavirus dose given to Patient
 */
define "First Rotavirus Dose Administered to Patient":
	Last("Rotavirus Doses Administered to Patient" I where I.occurrence after Patient.birthDate + 6 weeks)

/**
 * @dataElement Date first Rotavirus dose administered
 */
define "Date First Rotavirus Dose Administered to Patient":
  date from ("First Rotavirus Dose Administered to Patient".occurrence as FHIR.dateTime)

/**
 * @dataElement "Second Rotavirus Dose Administered to Patient"
 * only valid if 4 weeks after first dose
 */
define "Second Rotavirus Dose Administered to Patient":
  Last("Rotavirus Doses Administered to Patient" I where I.occurrence after "Date First Rotavirus Dose Administered to Patient" + 4 weeks)

/**
 * @dataElement Date second Rotavirus dose administered
 */
define "Date Second Rotavirus Dose Administered to Patient":
  date from ("Second Rotavirus Dose Administered to Patient".occurrence as FHIR.dateTime)

/**
 * @dataElement "Third Rotavirus Dose Administered to Patient"
 * only valid if 4 weeks after second dose
 */
define "Third Rotavirus Dose Administered to Patient":
	Last("Rotavirus Doses Administered to Patient" I where I.occurrence after "Date Second Rotavirus Dose Administered to Patient" + 4 weeks)

/**
 * @dataElement Date third Rotavirus dose administered
 */
define "Date Third Rotavirus Dose Administered to Patient":
  date from ("Third Rotavirus Dose Administered to Patient".occurrence as FHIR.dateTime)

/* 
 * @dataElement Patient has no history of intussusception
 */
 /*
define "Patient has no history of intussusception":
	not(exists([Condition: code in IMMZc."Intussusception"]))
*/

/*
 * Rule: Should vaccinate patient for Rotavirus 1st dose
 * Annotations:
 * 	 - Provide Rotavirus immunizations – using the "Rotavirus vaccine immunization – NO PREVIOUS" schedule (2-3 scheme depends on product)
 * Outputs:
 * 	 - Immunize Patient for Rotavirus - No Doses
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (((("Rotavirus immunization history" = "No-doses") and ("Current Patient Age in Weeks" >= 6)) and ("Current Patient Age in Months" <= 24)) and ("Patient has no history of intussusception" = true))
 */
 /*
define "Should vaccinate patient for Rotavirus 1st dose":
	(
		(Count(IMMZCom."Rotavirus Doses Administered to Patient") = 0) and 
		(IMMZCom."Current Patient Age In Weeks" >= 6) and 
		(IMMZCom."Current Patient Age In Months" <= 24) and 
		("Patient has no history of intussusception" = true)
	)
	*/

/* 
 * @dataElement Date last Rotavirus dose given
 */
 /*
define "Date last Rotavirus dose given":
	(Last(IMMZCom."Rotavirus Doses Administered to Patient" O sort by (occurrence as FHIR.dateTime)).occurrence as FHIR.dateTime)
*/

/*
 * Rule: Should vaccinate patient with Rotavirus 2nd dose
 * Annotations:
 * 	 - Provide Rotavirus immunizations – using the "Rotavirus vaccine immunization schedule" – minimum of 4 weeks after previous dose
 * Outputs:
 * 	 - Immunize Patient for Rotavirus - 1 Rotavirus dose previously given 2 dose scheme
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (((("Rotavirus immunization history" = "1-dose") and ("Date last Rotavirus dose given" >= "4 weeks")) and ("Current Patient Age in Months" <= 24)) and ("Patient has no history of intussusception" = true))
 */
 /*
define "Should vaccinate patient with Rotavirus 2nd dose":
	(
		(Count(IMMZCom."Rotavirus Doses Administered to Patient") = 1) and 
		("Date last Rotavirus dose given" more than 4 'weeks' before Today()) and 
		(IMMZCom."Current Patient Age In Months" <= 24) and 
		("Patient has no history of intussusception" = true)
	)
*/

/* 
 * @dataElement All previous doses were not the same product
 */
define "All previous doses were not the same product":
	exists(
		from
			"Rotavirus Doses Administered to Patient" RVOne,
			"Rotavirus Doses Administered to Patient" RVTwo 
		where RVOne.vaccineCode != RVTwo.vaccineCode
	)

/*
 * Rule: Should vaccinate patient with Rotavirus 3rd dose
 * Annotations:
 * 	 - Provide Rotavirus immunizations – using the "Rotavirus vaccine immunization schedule" – minimum of 4 weeks after previous dose assuming 3 dose scheme
 * 	 - 
 * Outputs:
 * 	 - Immunize Patient for Rotavirus - 2 Rotavirus dose previously given 3 dose scheme
 * 	 - 
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * 	- 
 * Logic:
 *	 ((((((("Rotavirus immunization history" = "2-doses") and ("Date last Rotavirus dose given" >= "4 weeks")) and ("All previous doses given with a 3 dose series product" = true)) and ("Patient has no history of intussusception" = true)) and ("Current Patient Age in Months" <= 24)) or ((((("Rotavirus immunization history" = "2-doses") and ("Date last Rotavirus dose given" >= "4 weeks")) and ("All previous doses were not the same product" = true)) and ("Patient has no history of intussusception" = true)) and ("Current Patient Age in Months" <= 24))) or ((((("Rotavirus immunization history" = "2-doses") and ("Date last Rotavirus dose given" >= "4 weeks")) and ("Any of the previous doses was administered with an unknown product" = true)) and ("Patient has no history of intussusception" = true)) and ("Current Patient Age in Months" <= 24)))
 */
 /*
define "Should vaccinate patient with Rotavirus 3rd dose":
	(
		(Count(IMMZCom."Rotavirus Doses Administered to Patient") = 2) and
		("Date last Rotavirus dose given" more than 4 'weeks' before Today()) and
		(
			(IMMZCon."Country is using a 3 dose series ROTA product") or
			("All previous doses were not the same product" = true) //or
			// Implementation Constraint: There is no way to know this with the current immunization resource
			// or ("Any previous doses administered with unknown schedule" = true)
		) and
		("Patient has no history of intussusception" = true) and
		(IMMZCom."Current Patient Age In Months" <= 24)
	)
	*/
