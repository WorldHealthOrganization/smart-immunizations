/*
 * Library: IMMZDT11 (IMMZ.DT.11.JapaneseEncephalitis)
 * Rule: If child or person has not been vaccinated, give Japanese Encephalitis vaccine according to the defined schedule 
 * Trigger: Patient has never received Japanese Encephalitis vaccination
 */
library IMMZDT11
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
 * @dataElement Japanese Encephalitis vaccine immunization history = No-doses
 */
define "Japanese Encephalitis vaccine immunization history = No-doses":
	true // TODO: Define this

/* 
 * @dataElement Age
 */
define "Age":
	0 // TODO: Define this

/* 
 * @dataElement 6 months
 */
define "6 months":
	0 // TODO: Define this

/* 
 * @dataElement Antigen
 */
define "Antigen":
	0 // TODO: Define this

/* 
 * @dataElement Inactivated Vero cell-derived
 */
define "Inactivated Vero cell-derived":
	0 // TODO: Define this

/* 
 * @dataElement 8 months
 */
define "8 months":
	0 // TODO: Define this

/* 
 * @dataElement Live attentuated
 */
define "Live attentuated":
	0 // TODO: Define this

/* 
 * @dataElement 9 months
 */
define "9 months":
	0 // TODO: Define this

/* 
 * @dataElement Live recombinant
 */
define "Live recombinant":
	0 // TODO: Define this

/*
 * Rule: Should vaccinate patient for Japanese Encephalitis because no doses
 * Annotations:
 * 	 - Provide Japanese Encephalitis immunizations – using the "Japanese Encephalitis vaccine immunization – NO PREVIOUS" schedule (Scheme depends on antigen)
 * Outputs:
 * 	 - Immunize Patient for Japanese Encephalitis - No Doses
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ((((("Japanese Encephalitis vaccine immunization history" = "No-doses" = true) and ("Age" >= "6 months")) and ("Antigen" = "Inactivated Vero cell-derived")) or ((("Japanese Encephalitis vaccine immunization history" = "No-doses" = true) and ("Age" >= "8 months")) and ("Antigen" = "Live attentuated"))) or ((("Japanese Encephalitis vaccine immunization history" = "No-doses" = true) and ("Age" >= "9 months")) and ("Antigen" = "Live recombinant")))
 */
define "Should vaccinate patient for Japanese Encephalitis because no doses":
	((((("Japanese Encephalitis vaccine immunization history = No-doses" = true) and ("Age" >= "6 months")) and ("Antigen" = "Inactivated Vero cell-derived")) or ((("Japanese Encephalitis vaccine immunization history = No-doses" = true) and ("Age" >= "8 months")) and ("Antigen" = "Live attentuated"))) or ((("Japanese Encephalitis vaccine immunization history = No-doses" = true) and ("Age" >= "9 months")) and ("Antigen" = "Live recombinant")))

/* 
 * @dataElement Japanese Encephalitis vaccine immunization history = 1 dose
 */
define "Japanese Encephalitis vaccine immunization history = 1 dose":
	true // TODO: Define this

/* 
 * @dataElement Previous dose >= 4 weeks
 */
define "Previous dose >= 4 weeks":
	true // TODO: Define this

/*
 * Rule: Should vaccinate patient for Japanese Encephalitis because 1 dose
 * Annotations:
 * 	 - Provide Japanese Encephalitis immunizations – using the "Japanese Encephalitis vaccine immunization – Inactivated Vero cell-derived" schedule (Scheme depends on antigen)
 * Outputs:
 * 	 - Immunize Patient for Japanese Encephalitis - 2nd dose
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ((("Japanese Encephalitis vaccine immunization history" = "1 dose" = true) and ("Previous dose" >= "4 weeks" = true)) and ("Antigen" = "Inactivated Vero cell-derived"))
 */
define "Should vaccinate patient for Japanese Encephalitis because 1 dose":
	((("Japanese Encephalitis vaccine immunization history = 1 dose" = true) and ("Previous dose >= 4 weeks" = true)) and ("Antigen" = "Inactivated Vero cell-derived"))

