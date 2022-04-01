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
include IMMZConfig called IMMZCon
include IMMZStratifiers called IMMZStratifiers
include IMMZVaccineLibrary called IMMZvl
// End Skeleton CQL
context Patient

/* 
 * @dataElement Typhoid vaccine immunization history
 */
define "Typhoid vaccine immunization history":
	0 // TODO: Define this

/* 
 * @dataElement No-doses
 */
define "No-doses":
	0 // TODO: Define this

/* 
 * @dataElement Age
 */
define "Age":
	0 // TODO: Define this

/* 
 * @dataElement 2 years
 */
define "2 years":
	0 // TODO: Define this

/*
 * Rule: Should vaccinate patient with ViPS vaccine
 * Annotations:
 * 	 - Provide Typhoid immunizations – using the "ViPS vaccine immunization – NO PREVIOUS" schedule (1 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Typhoid - No Doses
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://w ww.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (("Typhoid vaccine immunization history" = "No-doses") and ("Age" >= "2 years"))
 */
define "Should vaccinate patient with ViPS vaccine":
	(("Typhoid vaccine immunization history" = "No-doses") and ("Age" >= "2 years"))

/* 
 * @dataElement 6 years
 */
define "6 years":
	0 // TODO: Define this

/* 
 * @dataElement Pregnant
 */
define "Pregnant":
	0 // TODO: Define this

/* 
 * @dataElement False
 */
define "False":
	0 // TODO: Define this

/* 
 * @dataElement 1 dose
 */
define "1 dose":
	0 // TODO: Define this

/* 
 * @dataElement Previous dose date
 */
define "Previous dose date":
	0 // TODO: Define this

/* 
 * @dataElement 2 days
 */
define "2 days":
	0 // TODO: Define this

define "2 doses":
	0

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
 *	 ((((("Typhoid vaccine immunization history" = "No-doses") and ("Age" > "6 years")) and ("Pregnant" = "False")) or (((("Typhoid vaccine immunization history" = "1 dose") and ("Previous dose date" = "2 days")) and ("Age" > "6 years")) and ("Pregnant" = "False"))) or (((("Typhoid vaccine immunization history" = "2 doses" = true) and ("Previous dose date" = "2 days")) and ("Age" > "6 years")) and ("Pregnant" = "False")))
 */
define "Should vaccinate patient with Ty21a vaccine":
	((((("Typhoid vaccine immunization history" = "No-doses") and ("Age" > "6 years")) and ("Pregnant" = "False")) or (((("Typhoid vaccine immunization history" = "1 dose") and ("Previous dose date" = "2 days")) and ("Age" > "6 years")) and ("Pregnant" = "False"))) or (((("Typhoid vaccine immunization history" = "2 doses" = true) and ("Previous dose date" = "2 days")) and ("Age" > "6 years")) and ("Pregnant" = "False")))

/* 
 * @dataElement No doses
 */
define "No doses":
	0 // TODO: Define this

define "6 months":
	0

/* 
 * @dataElement 45 years
 */
define "45 years":
	0 // TODO: Define this

/*
 * Rule: Should vaccinate patient with TCV vaccine
 * Annotations:
 * 	 - Provide Typhoid immunizations – using the "TCV vaccine immunization – NO PREVIOUS" schedule (1 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Typhoid -  No doses
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://w ww.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ((("Typhoid vaccine immunization history" = "No doses") and ("Age" >= "6 months" = true)) and ("Age" <= "45 years"))
 */
define "Should vaccinate patient with TCV vaccine":
	((("Typhoid vaccine immunization history" = "No doses") and ("Age" >= "6 months" = true)) and ("Age" <= "45 years"))

