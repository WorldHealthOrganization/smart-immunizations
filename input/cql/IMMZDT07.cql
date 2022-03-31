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
include IMMZStratifiers called IMMZStratifiers
include IMMZVaccineLibrary called IMMZvl
// End Skeleton CQL
context Patient

/* 
 * @dataElement Rotavirus vaccine immunization history
 */
define "Rotavirus vaccine immunization history":
	true; // TODO: Define this

/* 
 * @dataElement No-doses
 */
define "No-doses":
	true; // TODO: Define this

/* 
 * @dataElement Current Patient Age in Weeks
 */
define "Current Patient Age in Weeks":
	true; // TODO: Define this

/*
 * Rule: Should vaccinate patient for Rotavirus 1st dose
 * Annotations:
 * 	 - Provide Rotavirus immunizations – using the "Rotavirus vaccine immunization – NO PREVIOUS" schedule (2-3 scheme depends on product)
 * Outputs:
 * 	 - Immunize Patient for Rotavirus - No Doses
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (("Rotavirus vaccine immunization history" = "No-doses") and ("Current Patient Age in Weeks" >= 6))
 */
define "Should vaccinate patient for Rotavirus 1st dose":
	(("Rotavirus vaccine immunization history" = "No-doses") and ("Age" <= "6 weeks"));
/* 
 * @dataElement Rotavirus vaccine given 1 dose in immunization history
 */
define "Rotavirus vaccine given 1 dose in immunization history":
	true; // TODO: Define this

/* 
 * @dataElement 1 Rotavirus dose
 */
define "1 Rotavirus dose":
	true; // TODO: Define this

/* 
 * @dataElement Scheme
 */
define "Scheme":
	true; // TODO: Define this

/* 
 * @dataElement 2 dose
 */
define "2 dose":
	true; // TODO: Define this

/* 
 * @dataElement 3 dose
 */
define "3 dose":
	true; // TODO: Define this

/*
 * Rule: Should vaccinate patient with Rotavirus 2nd dose
 * Annotations:
 * 	 - Provide Rotavirus immunizations – using the "Rotavirus vaccine immunization schedule" – minimum of 4 weeks after previous dose assuming 2 dose scheme
 * 	 - Provide Rotavirus immunizations – using the "Rotavirus vaccine immunization schedule" – minimum of 4 weeks after previous dose assuming 3 dose scheme
 * Outputs:
 * 	 - Immunize Patient for Rotavirus - 1 Rotavirus dose previously given 2 dose scheme
 * 	 - Immunize Patient for Rotavirus - 1 Rotavirus dose previously given 3 dose scheme
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ((("Rotavirus vaccine given 1 dose in immunization history" = "1 Rotavirus dose") and ("Scheme" = "2 dose")) or (("Rotavirus vaccine given 1 dose in immunization history" = "1 Rotavirus dose") and ("Scheme" = "3 dose")))
 */
define "Should vaccinate patient with Rotavirus 2nd dose":
	((("Rotavirus vaccine given 1 dose in immunization history" = "1 Rotavirus dose") and ("Scheme" = "2 dose")) or (("Rotavirus vaccine given 1 dose in immunization history" = "1 Rotavirus dose") and ("Scheme" = "3 dose")));
/* 
 * @dataElement Rotavirus vaccine given 2 dose in immunization history
 */
define "Rotavirus vaccine given 2 dose in immunization history":
	true; // TODO: Define this

/* 
 * @dataElement 3 Rotavirus dose
 */
define "3 Rotavirus dose":
	true; // TODO: Define this

/*
 * Rule: Should vaccinate patient with Rotavirus 3rd dose
 * Annotations:
 * 	 - Provide Rotavirus immunizations – using the "Rotavirus vaccine immunization schedule" – minimum of 4 weeks after previous dose assuming 3 dose scheme
 * Outputs:
 * 	 - Immunize Patient for Rotavirus - 2 Rotavirus dose previously given 3 dose scheme
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ("Rotavirus vaccine given 2 dose in immunization history" = "3 Rotavirus dose")
 */
define "Should vaccinate patient with Rotavirus 3rd dose":
	("Rotavirus vaccine given 2 dose in immunization history" = "3 Rotavirus dose");
/* 
 * @dataElement Interrupted primary series
 */
define "Interrupted primary series":
	true; // TODO: Define this

/*
 * Rule: Should vaccinate the patient is next appriopriate dose.
 * Annotations:
 * 	 - Provide the 2nd or 3rd dose without repeating the previous dose in the scheme, even if after the 4 week window
 * Outputs:
 * 	 - Immunize Patient for Rotavirus - Missed Dose
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ("Interrupted primary series" = true)
 */
define "Should vaccinate the patient is next appriopriate dose.":
	("Interrupted primary series" = true);
/* 
 * @dataElement Rotavirus vaccine unknown history
 */
define "Rotavirus vaccine unknown history":
	true; // TODO: Define this

/* 
 * @dataElement Resume 3 dose scheme
 */
define "Resume 3 dose scheme":
	true; // TODO: Define this

/*
 * Rule: Should resume 3 dose scheme
 * Annotations:
 * 	 - Provide the 2nd or 3rd dose without repeating the previous dose in the scheme, even if after the 4 week window
 * Outputs:
 * 	 - Resume 3 dose scheme if known or unavailable previous 2 dose product
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ("Rotavirus vaccine unknown history" = "Resume 3 dose scheme")
 */
define "Should resume 3 dose scheme":
	("Rotavirus vaccine unknown history" = "Resume 3 dose scheme");
