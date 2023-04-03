/*
 * Library: IMMZDT10 (IMMZ.DT.10.HPV)
 * Rule: If child or person has not been vaccinated, give HPV vaccine according to the defined schedule 
 * Trigger: Patient has never received HPV vaccination
 */
library IMMZDT10
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
 * @dataElement Should provision HPV Dose
 */
define "Provision of the HPV dose":
	IMMZCom."Patient Biological Sex" = 'female' and (
		"Second HPV Dose Administered to Patient" is null or (
			"Number of Required HPV Doses" = 3 and "Third HPV Dose Administered to Patient" is null
		)
	)

define "Schedule Due Date for HPV dose":
	if AgeInYearsAt(Now()) >= 15
	then Patient.birthDate + 15 years
	else Patient.birthDate + 9 years

define "HPV Next Dose Number":
	case
	when "No HPV Doses Administered to Patient"
		then 1
	when "Second HPV Dose Administered to Patient" is not null and "Number of Required HPV Doses" = 3
		then 3
	else 2
	end

define "Number of Required HPV Doses":
	if AgeInYearsAt(Now()) >= 15 or IMMZCom."Immunocompromised = True" or "Time between first and second HPV doses less than 5 months"
	then 3
	else 2

define "Expiration Date for HPV dose":
	null

define "Overdue Date for HPV dose":
	if AgeInYearsAt("Date First HPV Dose Administered to Patient") >= 15 and "Second HPV Dose Administered to Patient" is null
	then "Date First HPV Dose Administered to Patient" + 2 months
	else
		case 
		when "No HPV Doses Administered to Patient"
			then Patient.birthDate + 14 years
		when Patient.birthDate + 14 years < "Date Last Valid HPV Dose" + 12 months
			then Patient.birthDate + 14 years
		when Patient.birthDate + 14 years > "Date Last Valid HPV Dose" + 12 months
			then "Date Last Valid HPV Dose" + 12 months
		else null
		end

define "Should vaccinate patient for HPV":
	"Provision of the HPV dose" and ("Schedule Due Date for HPV dose" <= (Now()))


/**
 * @dataElement HPV containing Doses Administered to Patient
 */
define "HPV Doses Administered to Patient":
  IMMZCom."Doses Administered to Patient" I
  where
    I.vaccineCode in IMMZc."HPV Vaccine"

/** 
 * @dataElement No HPV doses have been administered to patient 
 */
define "No HPV Doses Administered to Patient":
  not exists("HPV Doses Administered to Patient")

/** 
 * @dataElement Number of HPV doses administered to patient
 */
define "Number of HPV Doses Administered to Patient":
  Count("HPV Doses Administered to Patient")

/**
 * @dataElement Date of HPV dose administered
 */
define "Date Last HPV Dose Administered to Patient":
  date from (First("HPV Doses Administered to Patient").occurrence as FHIR.dateTime)



define "Date Last Valid HPV Dose":
	case
		when "Third HPV Dose Administered to Patient" is not null 
			then "Date Third HPV Dose Administered to Patient"
		when "Second HPV Dose Administered to Patient" is not null 
			then "Date Second HPV Dose Administered to Patient"
		when "First HPV Dose Administered to Patient" is not null 
			then "Date First HPV Dose Administered to Patient"
		else null
	end

/**
 * @dataElement "First HPV Dose Administered to Patient"
 */
define "First HPV Dose Administered to Patient":
  Last("HPV Doses Administered to Patient" I 
		where I.occurrence after Patient.birthDate + 6 weeks)

/**
 * @dataElement Date First HPV dose administered
 */
define "Date First HPV Dose Administered to Patient":
  date from ("First HPV Dose Administered to Patient".occurrence as FHIR.dateTime)

/**
 * @dataElement "Second HPV Dose Administered to Patient"
 */
define "Second HPV Dose Administered to Patient":
	if AgeInYearsAt("Date First HPV Dose Administered to Patient") < 15
  then Last("HPV Doses Administered to Patient" I 
		where I.occurrence after "Date First HPV Dose Administered to Patient" + 6 months)
	else Last("HPV Doses Administered to Patient" I 
		where I.occurrence after "Date First HPV Dose Administered to Patient" + 1 month)

/**
 * @dataElement Date Second HPV dose administered
 */
define "Date Second HPV Dose Administered to Patient":
  date from ("Second HPV Dose Administered to Patient".occurrence as FHIR.dateTime)

/**
 * @dataElement "Third HPV Dose Administered to Patient"
 */
define "Third HPV Dose Administered to Patient":
	if AgeInYearsAt("Date First HPV Dose Administered to Patient") < 15 and "Time between first and second HPV doses less than 5 months"
	then Last("HPV Doses Administered to Patient" I 
		where I.occurrence after "Date First HPV Dose Administered to Patient" + 6 weeks)
	else Last("HPV Doses Administered to Patient" I 
		where I.occurrence after "Date Second HPV Dose Administered to Patient" + 6 months)

/**
 * @dataElement Date Third HPV dose administered
 */
define "Date Third HPV Dose Administered to Patient":
  date from ("Third HPV Dose Administered to Patient".occurrence as FHIR.dateTime)

/*
 * Rule: Should vaccinate Patient for HPV because no doses on a two-dose schedule
 * Annotations:
 * 	 - Provide HPV immunizations - using the "HPV vaccine immunization - NO PREVIOUS" schedule (2 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for HPV - No Doses
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (((("HPV vaccine history" = "No-doses") and ("Sex" = "Female")) and ("Current Patient Age in Years" >= 9)) and ("Current Patient Age in Years" <= 14))
 */
 /*
define "Should vaccinate Patient for HPV because no doses on a two-dose schedule":
	IMMZCom."No HPV Doses Administered to Patient"
	and IMMZCom."Patient Biological Sex" = 'female'
	and IMMZCom."Current Patient Age In Years" between 9 and 14
*/

/*
 * Rule: Should vaccinate Patient for HPV a second time on a two-dose schedule
 * Annotations:
 * 	 - Provide HPV immunizations - using "HPV vaccine immunization - 1 PREVIOUS" schedule (2 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for HPV - 1 Dose
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (((((("HPV vaccine history" = "1 dose") and ("Sex" = "Female")) and ("Current Patient Age in Years" >=  9)) and ("Current Patient Age in Years" <= 14)) and ("Date last HPV dose given" >= "6 months")) and ("Date last HPV dose given" <= "12 months"))
 */
 /*
define "Should vaccinate Patient for HPV a second time on a two-dose schedule":
	IMMZCom."Number of HPV Doses Administered to Patient" = 1
	and IMMZCom."Patient Biological Sex" = 'female'
	and IMMZCom."Current Patient Age In Years" between 9 and 14 
	and IMMZCom."Date Last HPV Dose Administered to Patient" more than 6 month before Today() 
	and IMMZCom."Date Last HPV Dose Administered to Patient" less than 12 month before Today()
*/

/* 
 * @dataElement Time between first and second HPV doses in Months
 */
define "Time between first and second HPV doses less than 5 months":
	First("HPV Doses Administered to Patient" I where (singleton from I.protocolApplied).doseNumber = 2 return IMMZCom.ToDate(I.occurrence)) 
	less than 5 month after 
	First("HPV Doses Administered to Patient" I where (singleton from I.protocolApplied).doseNumber = 1 return IMMZCom.ToDate(I.occurrence))

/* 
 * @dataElement Time since initial HPV dose in Months
 */
 /*
define "Time since initial HPV dose more than 6 months":
	First(IMMZCom."HPV Doses Administered to Patient" I where (singleton from I.protocolApplied).doseNumber = 1 return IMMZCom.ToDate(I.occurrence)) 
	more than 6 months before Today()
*/

/*
 * Rule: Should vaccinate Patient for HPV Dose 3 - due to short interval between first and second dose
 * Annotations:
 * 	 - Provide additional HPV immunizations - using "HPV vaccination immunization - 2 PREVIOUS" schedule (2+1 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for HPV - 2 Doses
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (((((("HPV vaccine history" = "2 doses") and ("Sex" = "Female")) and ("Time between first and second HPV doses in Months" < 5)) and ("Time since initial HPV dose in Months" >= 6)) and ("Current Patient Age in Years" >= 9)) and ("Current Patient Age in Years" <= 14))
 */
 /*
define "Should vaccinate Patient for HPV Dose 3 - due to short interval between first and second dose":
	IMMZCom."Number of HPV Doses Administered to Patient" = 2
	and IMMZCom."Patient Biological Sex" = 'female'
	and "Time between first and second HPV doses less than 5 months"
	and "Time since initial HPV dose more than 6 months"
	and IMMZCom."Current Patient Age In Years" between 9 and 14
*/

/*
 * Rule: Should vaccinate Patient for HPV because no doses on a three-dose schedule
 * Annotations:
 * 	 - Provide HPV immunizations - using the "HPV vaccine immunization - NO PREVIOUS" schedule (3 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for HPV - No Doses
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (((("HPV vaccine history" = "No-doses") and ("Sex" = "Female")) and ("Current Patient Age in Years" >= 15)) or (((("HPV vaccine history" = "No-doses") and ("Sex" = "Female")) and ("Current Patient Age in Years" < 15)) and ("Immunocompromised" = "True")))
 */
 /*
define "Should vaccinate Patient for HPV because no doses on a three-dose schedule":
	IMMZCom."No HPV Doses Administered to Patient"
	and IMMZCom."Patient Biological Sex" = 'female'
	and 
	(
		IMMZCom."Current Patient Age In Years" >= 15
		or 
		(
			IMMZCom."Current Patient Age In Years" < 15
			and IMMZCom."Immunocompromised = True"
		)
	)
*/

/*
 * Rule: Should vaccinate Patient for HPV because one dose on a three-dose schedule
 * Annotations:
 * 	 - Provide HPV immunizations - using the "HPV vaccine immunization -  ONE PREVIOUS" schedule (3 dose scheme)
 * 	 - 
 * Outputs:
 * 	 - Immunize Patient for HPV - 1 Dose
 * 	 - 
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * 	- 
 * Logic:
 *	 (((((("HPV vaccine history" = "1 dose") and ("Sex" = "Female")) and ("Current Patient Age in  Years" >= 15)) and ("Date last HPV dose given" >= "1 month")) and ("Date last HPV does given" <= "2 months")) or (((((("HPV vaccine history" = "1 dose") and ("Sex" = "Female")) and ("Current Patient Age in Years" < 15)) and ("Immunocompromised" = "True")) and ("Date last HPV dose given" >= "1 month")) and ("Date last HPV dose given" <= "2 months")))
 */
 /*
define "Should vaccinate Patient for HPV because one dose on a three-dose schedule":
	IMMZCom."Number of HPV Doses Administered to Patient" = 1
	and IMMZCom."Patient Biological Sex" = 'female'
	and IMMZCom."Date Last HPV Dose Administered to Patient" more than 1 month before Today() 
	and IMMZCom."Date Last HPV Dose Administered to Patient" less than 2 month before Today()
	and 
	(
		IMMZCom."Current Patient Age In Years" >= 15
		or (
			IMMZCom."Current Patient Age In Years" < 15
			and IMMZCom."Immunocompromised = True"
		)
	)
	*/
/*
 * Rule: Should vaccinate Patient for HPV because two doses on a three-dose schedule
 * Annotations:
 * 	 - Provide HPV immunizations - using the "HPV vaccine immunization -  TWO PREVIOUS" schedule (3 dose scheme)
 * 	 - 
 * Outputs:
 * 	 - Immunize Patient for HPV - 2 Doses
 * 	 - 
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * 	- 
 * Logic:
 *	 ((((("HPV vaccine history" = "2 doses") and ("Sex" = "Female")) and ("Current Patient Age in Years" >= 15)) and ("Date last HPV dose given" >= "6 months")) or ((((("HPV vaccine history" = "2 doses") and ("Sex" = "Female")) and ("Current Patient Age in Years" < 15)) and ("Immunocompromised" = "True")) and ("Date last HPV dose given" >= "6 months")))
 */
 /*
define "Should vaccinate Patient for HPV because two doses on a three-dose schedule":
	IMMZCom."Number of HPV Doses Administered to Patient" = 2
	and IMMZCom."Patient Biological Sex" = 'female'
	and IMMZCom."Date Last HPV Dose Administered to Patient" more than 6 month before Today()
	and 
	(
		IMMZCom."Current Patient Age In Years" >= 15
		or (
			IMMZCom."Current Patient Age In Years" < 15
			and IMMZCom."Immunocompromised = True"
		)
	)
	*/
