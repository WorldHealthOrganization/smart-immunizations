/*
 * Library: IMMZDT14 (IMMZ.DT.14.Typhoid)
 * Rule: If child or person has not been vaccinated, give the Typhoid vaccine between age 6 months - 45 years old 
 * Trigger: Patient has never received Typhoid vaccination and/or is in an outbreak area
 */
library IMMZDT14
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
 * @dataElement Typhoid vaccine immunization history
 */
define "Typhoid vaccine immunization history":
	true; // TODO: Define this

/* 
 * @dataElement No-doses 
 */
define "No-doses ":
	true; // TODO: Define this

/* 
 * @dataElement Age
 */
define "Age":
	true; // TODO: Define this

/* 
 * @dataElement 2 years
 */
define "2 years":
	true; // TODO: Define this

/*
 * Rule: Should vaccinate patient with ViPS vaccine
 * Annotations:
 * 	 - Provide Typhoid immunizations – using the "ViPS vaccine immunization – NO PREVIOUS" schedule (1 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Typhoid - No Doses
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://w ww.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (("Typhoid vaccine immunization history" = "No-doses ") and ("Age" >= "2 years"))
 */
define "Should vaccinate patient with ViPS vaccine":
	(("Typhoid vaccine immunization history" = "No-doses ") and ("Age" >= "2 years"));

/* 
 * @dataElement 6 years
 */
define "6 years":
	true; // TODO: Define this

/* 
 * @dataElement Pregnant
 */
define "Pregnant":
	true; // TODO: Define this

/* 
 * @dataElement False
 */
define "False":
	true; // TODO: Define this

/* 
 * @dataElement Dose Given
 */
define "Dose Given":
	true; // TODO: Define this

/* 
 * @dataElement 2 Days Ago
 */
define "2 Days Ago":
	true; // TODO: Define this

/* 
 * @dataElement 2 doses
 */
define "2 doses":
	true; // TODO: Define this

/* 
 * @dataElement 2nd dose given
 */
define "2nd dose given":
	true; // TODO: Define this

/* 
 * @dataElement 2 days ago
 */
define "2 days ago":
	true; // TODO: Define this

/* 
 * @dataElement 6 Years old
 */
define "6 Years old":
	true; // TODO: Define this

/*
 * Rule: Should vaccinate patient with Ty21a vaccine
 * Annotations:
 * 	 - Provide Typhoid immunizations – using the "Ty21a vaccine immunization – NO PREVIOUS" schedule (3 dose scheme)
 * 	 - Provide Typhoid immunizations – using the "Ty21a vaccine immunization – 1 PREVIOUS" schedule (3 dose scheme)
 * 	 - Provide Typhoid immunizations – using the "Ty21a vaccine immunization – 2 PREVIOUS" schedule (3 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Typhoid - No Doses
 * 	 - Immunize Patient for Typhoid -  1 dose
 * 	 - Immunize Patient for Typhoid -  2 doses
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://w ww.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (((("Age" > "6 years") and ("Pregnant" = "False")) or ((("Dose Given" = "2 Days Ago") and ("Age" > "6 years")) and ("Pregnant" = "False"))) or (((("Typhoid vaccine immunization history" = "2 doses") and ("2nd dose given" = "2 days ago")) and ("Age" > "6 Years old")) and ("Pregnant" = "False")))
 */
define "Should vaccinate patient with Ty21a vaccine":
	(((("Age" > "6 years") and ("Pregnant" = "False")) or ((("Dose Given" = "2 Days Ago") and ("Age" > "6 years")) and ("Pregnant" = "False"))) or (((("Typhoid vaccine immunization history" = "2 doses") and ("2nd dose given" = "2 days ago")) and ("Age" > "6 Years old")) and ("Pregnant" = "False")));

/* 
 * @dataElement 6 Months
 */
define "6 Months":
	true; // TODO: Define this

/* 
 * @dataElement 45 Years
 */
define "45 Years":
	true; // TODO: Define this

/*
 * Rule: Should vaccinate patient with TCV vaccine
 * Annotations:
 * 	 - Provide Typhoid immunizations – using the "TCV vaccine immunization – NO PREVIOUS" schedule (1 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Typhoid -  No doses
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://w ww.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (("Age" >= "6 Months") and ("Age" <= "45 Years"))
 */
define "Should vaccinate patient with TCV vaccine":
	(("Age" >= "6 Months") and ("Age" <= "45 Years"));

