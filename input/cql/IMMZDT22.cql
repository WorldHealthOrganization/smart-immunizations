/*
 * Library: IMMZDT22 (IMMZ.DT.22.Varicella)
 * Rule: If child or person has not been vaccinated against Varicella, give Varciella vaccine 
 * Trigger: Patient has never had the Varicella vaccination or shows no evidence of Varciella immunity
 */
library IMMZDT22
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
 * @dataElement Varicella vaccine immunization history
 */
define "Varicella vaccine immunization history":
	true; // TODO: Define this

/* 
 * @dataElement No doses
 */
define "No doses":
	true; // TODO: Define this

/* 
 * @dataElement Age
 */
define "Age":
	true; // TODO: Define this

/* 
 * @dataElement 12 months
 */
define "12 months":
	true; // TODO: Define this

/* 
 * @dataElement 18 months
 */
define "18 months":
	true; // TODO: Define this

/* 
 * @dataElement 15 years
 */
define "15 years":
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
 * @dataElement Potentially susceptible health-care worker (i.e.unvaccinated and with no history of varicella)
 */
define "Potentially susceptible health-care worker (i.e.unvaccinated and with no history of varicella)":
	true; // TODO: Define this

/*
 * Rule: Should vaccinate patient with Varicella vaccine because no doses
 * Annotations:
 * 	 - Provide Varicella immunizations – using the "Varicella vaccine immunization – NO PREVIOUS" schedule (2 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Varicella- No Doses
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://w ww.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ((((("Varicella vaccine immunization history" = "No doses") and ("Age" >= "12 months")) and ("Age" <= "18 months")) or ((("Varicella vaccine immunization history" = "No doses") and ("Age" >= "15 years")) and ("Pregnant" = "False"))) or ((("Varicella vaccine immunization history" = "No doses") and ("Potentially susceptible health-care worker (i.e.unvaccinated and with no history of varicella)" = true)) and ("Pregnant" = "False")))
 */
define "Should vaccinate patient with Varicella vaccine because no doses":
	((((("Varicella vaccine immunization history" = "No doses") and ("Age" >= "12 months")) and ("Age" <= "18 months")) or ((("Varicella vaccine immunization history" = "No doses") and ("Age" >= "15 years")) and ("Pregnant" = "False"))) or ((("Varicella vaccine immunization history" = "No doses") and ("Potentially susceptible health-care worker (i.e.unvaccinated and with no history of varicella)" = true)) and ("Pregnant" = "False")));
/* 
 * @dataElement Varicella vaccine immunization history = 1 doses given 4 weeks to 3 months ago
 */
define "Varicella vaccine immunization history = 1 doses given 4 weeks to 3 months ago":
	true; // TODO: Define this

/*
 * Rule: Should vaccinate patient with Varicella vaccine because 1 dose given 4 weeks ago
 * Annotations:
 * 	 - Provide Varicella immunizations – using the "Varicella vaccine immunization – 1 PREVIOUS" schedule (2 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Varicella- 1 Doses
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://w ww.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ((("Varicella vaccine immunization history" = "1 doses given 4 weeks to 3 months ago" = true) and ("Age" >= "12 months")) and ("Age" <= "18 months"))
 */
define "Should vaccinate patient with Varicella vaccine because 1 dose given 4 weeks ago":
	((("Varicella vaccine immunization history" = "1 doses given 4 weeks to 3 months ago" = true) and ("Age" >= "12 months")) and ("Age" <= "18 months"));
/* 
 * @dataElement 1 dose
 */
define "1 dose":
	true; // TODO: Define this

/* 
 * @dataElement 1 doses and potentially susceptible health-care worker (i.e.unvaccinated and with no history of varicella) and not pregnant
 */
define "1 doses and potentially susceptible health-care worker (i.e.unvaccinated and with no history of varicella) and not pregnant":
	true; // TODO: Define this

/*
 * Rule: Should vaccinate patient with Varicella vaccine because 1 dose  given
 * Annotations:
 * 	 - Provide Varicella immunizations – using the "Varicella vaccine immunization – 1 PREVIOUS" schedule (2 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Varicella- 1 Doses
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://w ww.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (((("Varicella vaccine immunization history" = "1 dose") and ("Age" >= "15 years")) and ("Pregnant" = "False")) or ((("Varicella vaccine immunization history" = "1 doses and potentially susceptible health-care worker (i.e.unvaccinated and with no history of varicella) and not pregnant") and ("Potentially susceptible health-care worker (i.e.unvaccinated and with no history of varicella)" = true)) and ("Pregnant" = "False")))
 */
define "Should vaccinate patient with Varicella vaccine because 1 dose  given":
	(((("Varicella vaccine immunization history" = "1 dose") and ("Age" >= "15 years")) and ("Pregnant" = "False")) or ((("Varicella vaccine immunization history" = "1 doses and potentially susceptible health-care worker (i.e.unvaccinated and with no history of varicella) and not pregnant") and ("Potentially susceptible health-care worker (i.e.unvaccinated and with no history of varicella)" = true)) and ("Pregnant" = "False")));
