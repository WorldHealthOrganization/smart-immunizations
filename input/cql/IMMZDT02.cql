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
include IMMZStratifiers called IMMZStratifiers
include IMMZVaccineLibrary called IMMZvl

// End Skeleton CQL
context Patient

/* 
 * @dataElement Hepatitis B vaccine immunization history
 */
define "Hepatitis B vaccine immunization history":
	IMMZCom."HepB Doses Administered to Patient"



/* 
 * @dataElement No-doses
 */
define "No-doses of HepB vaccine administered to patient":
	not exists("Hepatitis B vaccine immunization history")

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
	("No-doses of HepB vaccine administered to patient")

/* 
 * @dataElement 1 dose
 */
define "1 dose":
	IMMZCom."Number of HepB Doses Administered to Patient" = 1

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
	(("1 dose") and (IMMZCom."Date Last HepB Dose Administered to Patient" more than 4 'weeks' before Today()))

/* 
 * @dataElement 2 doses
 */
define "2 doses":
	IMMZCom."Number of HepB Doses Administered to Patient" = 2

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
	(("2 doses") and (IMMZCom."Date Last HepB Dose Administered to Patient" more than 4 'weeks' before Today()))

/* 
 * @dataElement 3 doses
 */
define "3 doses":
	IMMZCom."Number of HepB Doses Administered to Patient" = 3

/* 
 * @dataElement Patient birth weight observation value
 */
define "Patient birth weight observation value":
	First(IMMZCom."Patient birth weight observation value")

/* 

 * @dataElement Patient mother's pregnancy outcome observation
 */
define "Patient mother's pregnancy outcome observation":
	IMMZCom."Patient mother's pregnancy outcome observation"
	 // TODO: Define this

/* 
 * @dataElement preterm
 */
define "preterm":
    IMMZCom."Preterm"
	 // TODO: Define this

define "2000g":
	2000 'gm'

/* 
 * @dataElement 4 weeks
 */
define "4 weeks":
	Today() - 4 weeks


/*
 * Rule: Should vaccinate patient for Hepatitis B because 3 doses and (low birth weight or premature infant)
 * Annotations:
 * 	 - Provide Hepatitis B immunizations – using the "Hepatitis B vaccine immunization – 3 PREVIOUS" schedule (4 doses scheme)
 * 	 - 
 * Outputs:
 * 	 - Immunize Patient for Hepatitis B - 3 Doses and Premature birth/low birth weight
 * 	 - 
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * 	- 
 * Logic:
 *	 ((("Hepatitis B vaccine immunization history" = "3 doses") and ("Patient birth weight observation value" < 2000g)) or (("Hepatitis B vaccine immunization history" = "3 doses") and ("Patient mother's prenancy outcome observation" = "preterm")))
 */
define "Should vaccinate patient for Hepatitis B because 3 doses and (low birth weight or premature infant)":
	(((("3 doses") and ("Patient birth weight observation value" < "2000g")) and (IMMZCom."Date Last HepB Dose Administered to Patient" >= "4 weeks")) or ((("3 doses") and ("Patient mother's pregnancy outcome observation" = "preterm")) and (IMMZCom."Date Last HepB Dose Administered to Patient" >= "4 weeks")))

