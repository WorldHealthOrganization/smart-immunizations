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
 * @dataElement Age
 */
define "Age":
	true; // TODO: Define this

/* 
 * @dataElement 6 weeks
 */
define "6 weeks":
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
 *	 (("Rotavirus vaccine immunization history" = "No-doses") and ("Age" <= "6 weeks"))
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
 * Rule: Should vaccinate patient with Rotavirus 2nd dose
 * Annotations:
 * 	 - Provide Rotavirus immunizations – using the "Rotavirus vaccine immunization schedule" – minimum of 4 weeks after previous dose assuming 2 dose scheme
 * Outputs:
 * 	 - Immunize Patient for Rotavirus - 1 Rotavirus dose previously given 2 dose scheme
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (("Rotavirus vaccine given 1 dose in immunization history" = "1 Rotavirus dose") and ("Scheme" = "2 dose"))
 */
define "Should vaccinate patient with Rotavirus 2nd dose":
	(("Rotavirus vaccine given 1 dose in immunization history" = "1 Rotavirus dose") and ("Scheme" = "2 dose"));

