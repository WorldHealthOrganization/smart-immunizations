/*
 * Library: IMMZDT21 (IMMZ.DT.21.SeasonalInfluenza)
 * Rule: If child or person has not been vaccinated, give Seasonal Influenza vaccine at 6 months of age, and then once a year. 
 * Trigger: Patient has never had Seasonal Influenza vaccination, or missing doses in the vaccination schedule (once a year)
 */
library IMMZDT21
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
 * @dataElement Seasonal influenza vaccine immunization history
 */
define "Seasonal influenza vaccine immunization history":
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
 * @dataElement 6 months
 */
define "6 months":
	0 // TODO: Define this

/*
 * Rule: Should vaccinate patient for Seasonal influenza because no doses at 6 months old in a 2 dose scheme
 * Annotations:
 * 	 - Provide Seasonal influenza immunizations – using the "Seasonal influenza vaccine immunization – NO PREVIOUS"
 * Outputs:
 * 	 - Immunize Patient for Seasonal influenza - No Doses at 6 months old
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (("Seasonal influenza vaccine immunization history" = "No-doses") and ("Age" >= "6 months"))
 */
define "Should vaccinate patient for Seasonal influenza because no doses at 6 months old in a 2 dose scheme":
	(("Seasonal influenza vaccine immunization history" = "No-doses") and ("Age" >= "6 months"))

/* 
 * @dataElement 1 dose
 */
define "1 dose":
	0 // TODO: Define this

/* 
 * @dataElement Last dose given
 */
define "Last dose given":
	0 // TODO: Define this

/* 
 * @dataElement 4 weeks ago
 */
define "4 weeks ago":
	0 // TODO: Define this

/* 
 * @dataElement 9 years
 */
define "9 years":
	0 // TODO: Define this

/*
 * Rule: Should vaccinate patient for Seasonal influenza because 1st dose was given 4 weeks ago in a 2 dose scheme
 * Annotations:
 * 	 - Provide Seasonal influenza immunizations – using the "Seasonal influenza vaccine immunization – 1 PREVIOUS"
 * Outputs:
 * 	 - Immunize Patient for Seasonal influenza - 1st Dose given 4 weeks ago
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ((("Seasonal influenza vaccine immunization history" = "1 dose") and ("Last dose given" >= "4 weeks ago")) and ("Age" < "9 years"))
 */
define "Should vaccinate patient for Seasonal influenza because 1st dose was given 4 weeks ago in a 2 dose scheme":
	((("Seasonal influenza vaccine immunization history" = "1 dose") and ("Last dose given" >= "4 weeks ago")) and ("Age" < "9 years"))

/* 
 * @dataElement Seasonal influenza vaccine immunization last dose given
 */
define "Seasonal influenza vaccine immunization last dose given":
	0 // TODO: Define this

/* 
 * @dataElement 1 year ago
 */
define "1 year ago":
	0 // TODO: Define this

/*
 * Rule: Should vaccinate patient for Seasonal influenza - Yearly booster dose
 * Annotations:
 * 	 - Provide Seasonal influenza immunizations – using the "Seasonal influenza vaccine immunization – Yearly booster dose"
 * Outputs:
 * 	 - Immunize Patient for Seasonal influenza - Yearly booster dose
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ("Seasonal influenza vaccine immunization last dose given" >= "1 year ago")
 */
define "Should vaccinate patient for Seasonal influenza - Yearly booster dose":
	("Seasonal influenza vaccine immunization last dose given" >= "1 year ago")

