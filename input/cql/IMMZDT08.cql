/*
 * Library: IMMZDT08 (IMMZ.DT.08.Measles)
 * Rule: If the child or patient has not been given MCV1 (at 9 months) and MCV2 (between 15-18 months) vaccination 
 * Trigger: Patient has never received measles vaccination
 */
library IMMZDT08
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
 * @dataElement Measles vaccine immunization history = No-doses
 */
define "Measles vaccine immunization history = No-doses":
	true; // TODO: Define this

/* 
 * @dataElement Age
 */
define "Age":
	true; // TODO: Define this

/* 
 * @dataElement 9 months
 */
define "9 months":
	true; // TODO: Define this

/* 
 * @dataElement 15 months
 */
define "15 months":
	true; // TODO: Define this

/* 
 * @dataElement 18 months
 */
define "18 months":
	true; // TODO: Define this

/*
 * Rule: Should vaccinate patient for measles because no doses
 * Annotations:
 * 	 - Provide measles immunization 1st dose - Using the "MCV1 Vaccine immunization - NO Previous" schedule (2 doses scheme)
 * 	 - Provide measles immunization 1st dose - Using the "MCV2 Vaccine immunization - NO Previous" schedule (2 doses scheme)
 * 	 - Provide measles immunization 1st dose - Using the "MCV0 Vaccine immunization - NO Previous" schedule (2 doses scheme)
 * Outputs:
 * 	 - Immunize patient for Measles - No doses
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ((((("Measles vaccine immunization history" = "No-doses" = true) and ("Age" >= "9 months")) and ("Age" <= "15 months")) or ((("Measles vaccine immunization history" = "No-doses" = true) and ("Age" >= "15 months")) and ("Age" <= "18 months"))) or (("Measles vaccine immunization history" = "No-doses" = true) and ("Age" > "9 months")))
 */
define "Should vaccinate patient for measles because no doses":
	((((("Measles vaccine immunization history" = "No-doses") and ("Age" >= "9 months")) and ("Age" <= "15 months")) or ((("Measles vaccine immunization history" = "No-doses") and ("Age" >= "15 months")) and ("Age" <= "18 months"))) or (("Measles vaccine immunization history" = "No-doses") and ("Age" > "9 months")));
