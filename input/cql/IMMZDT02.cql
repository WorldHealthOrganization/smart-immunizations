/*
 * Library: IMMZDT02 (IMMZ.DT.02.HepatitisB)
 * Rule: If child or person has not been vaccinated, give Hepatitis B vaccine as soon as possible after birth 
 * Trigger: Patient has never had Hepatitis B vaccination, or missing doses in the vaccination schedule
 */
library IMMZDT02
// Start Skeleton CQL
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1'
include IMMZCommon called IMMZCom
include IMMZConcepts called IMMZc
include IMMZConfig called IMMZCon
include IMMZVaccineLibrary called IMMZvl

// End Skeleton CQL
context Patient

define "testing":
 'ok'

/**
 * @dataElement HepB containing Doses Administered to Patient
 */
define "HepB Doses Administered to Patient":
  IMMZCom."Doses Administered to Patient" I
  where
    I.vaccineCode in IMMZc."HepB Vaccine"

/**
 * @dataElement Number of HepB Doses Administered to Patient
 */
define "Number of HepB Doses Administered to Patient":
  Count("HepB Doses Administered to Patient" O)


/**
 * @dataElement No HepB containing Birth Dose Administered to Patient
 */
define "No HepB Dose Administered to Patient":
  not exists("HepB Doses Administered to Patient" I)

//Date last administered HepB
define "Date Last HepB Dose Administered to Patient":
  date from (First("HepB Doses Administered to Patient").occurrence as FHIR.dateTime)

/**
 * @dataElement First HepB dose given to Patient
 */
define "First HepB Dose Administered to Patient":
	Last("HepB Doses Administered to Patient")

/**
 * @dataElement Date first HepB dose administered
 */
define "Date First HepB Dose Administered to Patient":
  date from ("First HepB Dose Administered to Patient".occurrence as FHIR.dateTime)

/**
 * @dataElement If the birth dose has been administered to the Patient
 * given for low weight or premature birth within the first 2 weeks
 */
define "HepB Birth Dose Administered to Patient":
	AgeInWeeksAt("Date First HepB Dose Administered to Patient") < 2 and
	(
		"Patient birth weight observation value" < "2000g" or
		exists(IMMZCom."Preterm Birth")
	)

/**
 * @dataElement Number of doses required for this patient
 * 4 is a birth dose was given for premature birth or low birth weight, 3 if not.
 */
 define "Number of Required HepB Doses":
	if "HepB Birth Dose Administered to Patient" or
	(
		IMMZCom."Current Patient Age In Weeks" < 2 and
		(
			"Patient birth weight observation value" < "2000g" or
			exists(IMMZCom."Preterm Birth")
		)
	)
	then 4 
	else 3

/**
 * @dataElement "Second HepB Dose Administered to Patient"
 * only valid if 4 weeks after first dose
 */
define "Second HepB Dose Administered to Patient":
  Last("HepB Doses Administered to Patient" I where I.occurrence after "Date First HepB Dose Administered to Patient" + 4 weeks)

/**
 * @dataElement Date second HepB dose administered
 */
define "Date Second HepB Dose Administered to Patient":
  date from ("Second HepB Dose Administered to Patient".occurrence as FHIR.dateTime)

/**
 * @dataElement "Third HepB Dose Administered to Patient"
 * only valid if 4 weeks after second dose
 */
define "Third HepB Dose Administered to Patient":
  Last("HepB Doses Administered to Patient" I where I.occurrence after "Date Second HepB Dose Administered to Patient" + 4 weeks)

/**
 * @dataElement Date third HepB dose administered
 */
define "Date Third HepB Dose Administered to Patient":
  date from ("Third HepB Dose Administered to Patient".occurrence as FHIR.dateTime)

/**
 * @dataElement "Fourth HepB Dose Administered to Patient"
 * only valid if 4 weeks after third dose
 */
define "Fourth HepB Dose Administered to Patient":
  Last("HepB Doses Administered to Patient" I where I.occurrence after "Date Third HepB Dose Administered to Patient" + 4 weeks)

/**
 * @dataElement Date third HepB dose administered
 */
define "Date Fourth HepB Dose Administered to Patient":
  date from ("Fourth HepB Dose Administered to Patient".occurrence as FHIR.dateTime)

/*
 * Rule: Should vaccinate patient for Hepatitis B because no doses and (low birth weight or premature infant)
 * Annotations:
 * 	 - Provide Hepatitis B immunizations – using the "Hepatitis B vaccine immunization – Birth dose" schedule (Birth dose)
 * 	 - 
 * Outputs:
 * 	 - Immunize Patient for Hepatitis B - No Doses and Premature birth or low birth weight
 * 	 - 
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * 	- 
 * Logic:
 *	 (("Hepatitis B vaccine immunization history" = "No-doses") and (("Patient birth weight observation value" < 2000g) or ("Patient mother's prenancy outcome observation" = "preterm")) and ("Current Patient Age in Weeks" < 2))
 */
define "Should vaccinate patient for Hepatitis B because no doses and (low birth weight or premature infant)":
	"No HepB Dose Administered to Patient" and
	IMMZCom."Current Patient Age In Weeks" < 2 and
	(
		"Patient birth weight observation value" < "2000g" or
		exists(IMMZCom."Preterm Birth")
	)

/* 
 * @dataElement Hepatitis B vaccine immunization history
 
define "Hepatitis B vaccine immunization history":
	"HepB Doses Administered to Patient"
*/

/* 
 * @dataElement No-doses
 
define "No-doses of HepB vaccine administered to patient":
	"Number of HepB Doses Administered to Patient" = 0
*/

/*
 * Rule: Should vaccinate patient for Hepatitis B because no doses
 * Annotations:
 * 	 - Provide Hepatitis B immunizations – using the "Hepatitis B vaccine immunization – NO PREVIOUS" schedule (3 doses scheme)
 * Outputs:
 * 	 - Immunize Patient for Hepatitis B - No Doses
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ("Hepatitis B vaccine immunization history" = "No-doses")
 */
define "Should vaccinate patient for Hepatitis B because no doses":
	("No HepB Dose Administered to Patient")

/* 
 * @dataElement 1 dose
 
define "1 dose":
	"Number of HepB Doses Administered to Patient" = 1
*/

/*
 * Rule: Should vaccinate patient for Hepatitis B because 1 dose
 * Annotations:
 * 	 - Provide Hepatitis B immunizations – using the "Hepatitis B vaccine immunization – 1 PREVIOUS" schedule (3 doses scheme)
 * Outputs:
 * 	 - Immunize Patient for Hepatitis B - 1 Dose
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ("Hepatitis B vaccine immunization history" = "1 dose")
 */
define "Should vaccinate patient for Hepatitis B because 1 dose":
	(("First HepB Dose Administered to Patient") is not null and ("Second HepB Dose Administered to Patient") is null and ("Date Last HepB Dose Administered to Patient" more than 4 'weeks' before Today()))

/* 
 * @dataElement 2 doses
 
define "2 doses":
	"Number of HepB Doses Administered to Patient" = 2
*/

/*
 * Rule: Should vaccinate patient for Hepatitis B because 2 doses
 * Annotations:
 * 	 - Provide Hepatitis B immunizations – using the "Hepatitis B vaccine immunization – 2 PREVIOUS" schedule (3 doses scheme)
 * Outputs:
 * 	 - Immunize Patient for Hepatitis B - 2 Doses
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ("Hepatitis B vaccine immunization history" = "2 doses")
 */
define "Should vaccinate patient for Hepatitis B because 2 doses":
	(("Second HepB Dose Administered to Patient") is not null and ("Third HepB Dose Administered to Patient") is null and ("Date Last HepB Dose Administered to Patient" more than 4 'weeks' before Today()))

/*
 * Rule: Should vaccinate patient for Hepatitis B because 3 doses with one being birth dose
 * Annotations:
 * 	 - Provide Hepatitis B immunizations – using the "Hepatitis B vaccine immunization – birth dose plus 2 PREVIOUS" schedule (4 doses scheme)
 * Outputs:
 * 	 - Immunize Patient for Hepatitis B - birth plus 2 Doses
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ("Hepatitis B vaccine immunization history" = "3 doses")
 */
define "Should vaccinate patient for Hepatitis B because birth plus 2 doses":
	(("Third HepB Dose Administered to Patient") is not null and ("HepB Birth Dose Administered to Patient") is not null and ("Fourth HepB Dose Administered to Patient") is null and ("Date Last HepB Dose Administered to Patient" more than 4 'weeks' before Today()))


/* 
 * @dataElement Patient birth weight observation value
 */
define "Patient birth weight observation value":
	First(IMMZCom."Patient birth weight observation value")

/* 

 * @dataElement Patient mother's pregnancy outcome observation
 
define "Patient mother's pregnancy outcome observation":
	IMMZCom."Patient mother's pregnancy outcome observation"
*/

/* 
 * @dataElement preterm
 
define "preterm":
    IMMZCom."Preterm Birth"
*/

define "2000g":
	2000 'g'


/*
 * Rule: Provision of the Hep B birth dose (dose zero)
 * Trigger Event:
 * 	 - Hepatitis B vaccine immunization history = No-Birth-dose
 * Trigger Date:
 *   - Date of birth
 * 	 
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * 	- 

define "Schedule HepB Birth Dose":
	"No HepB Dose Administered to Patient" and
	IMMZCom."Current Patient Age In Weeks" < 2 and
	(
		"Patient birth weight observation value" < "2000g" or
		exists(IMMZCom."Preterm Birth")
	)

define "Schedule HepB Birth Dose Date":
	if "Schedule HepB Birth Dose" then Now() else null
*/

/*
 * Rule: Provision of the Hep B dose 1
 * Trigger Event:
 * 	 - "Hep B vaccine immunization history" = "No-doses"  OR '"Hep B vaccine immunization history" = "Birth Dose"
 * Trigger Date:
 *   - Date of birth
 * 	 
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ("Hepatitis B vaccine immunization history" = "No-doses")
 */
define "Schedule HepB Dose One":
	("No HepB Dose Administered to Patient")

define "Schedule HepB Dose One Date":
	if "Schedule HepB Dose One" 
	then Now() 
	else null

/*
 * Rule: Provision of the Hep B dose 2
 * Trigger Event:
 * 	 - "Hep B vaccine immunization history" = "Dose 1"
 * Trigger Date:
 *   - "Date when Hepatitis B dose 1 provided"
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ("Hepatitis B vaccine immunization history" = "1 dose")
 */
define "Schedule HepB Dose Two":
	(("First HepB Dose Administered to Patient") is not null and ("Second HepB Dose Administered to Patient") is null)

define "Schedule HepB Dose Two Date":
	if "Schedule HepB Dose Two" 
	then "Date First HepB Dose Administered to Patient" + 4 weeks
	else null

/*
 * Rule: Provision of the Hep B dose 3
 * Trigger Event:
 * 	 - "Hep B vaccine immunization history" = "Dose 2"
 * Trigger Date:
 *   - "Date when Hepatitis B dose 2 provided"
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ("Hepatitis B vaccine immunization history" = "2 doses")
 */
define "Schedule HepB Dose Three":
	(("Second HepB Dose Administered to Patient") is not null and ("Third HepB Dose Administered to Patient") is null)

define "Schedule HepB Dose Three Date":
	if "Schedule HepB Dose Three" 
	then "Date Second HepB Dose Administered to Patient" + 4 weeks
	else null

/*
 * Rule: Provision of the Hep B dose 4
 * Trigger Event:
 * 	 - "Hep B vaccine immunization history" = "Dose 3" and preterm/low-weight birth dose given
 * Trigger Date:
 *   - "Date when Hepatitis B dose 3 provided"
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ("Hepatitis B vaccine immunization history" = "3 doses") and (("Patient birth weight observation value" < 2000g) or ("Patient mother's prenancy outcome observation" = "preterm")))
 */

define "Schedule HepB Dose Four":
	(("Third HepB Dose Administered to Patient") is not null and ("HepB Birth Dose Administered to Patient") is not null and ("Fourth HepB Dose Administered to Patient") is null)

define "Schedule HepB Dose Four Date":
	if "Schedule HepB Dose Four" 
	then "Date Third HepB Dose Administered to Patient" + 4 weeks
	else null