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
 * @dataElement >= 12 months
 */
define ">= 12 months":
	true; // TODO: Define this

/* 
 * @dataElement <=18 months
 */
define "<=18 months":
	true; // TODO: Define this

/* 
 * @dataElement Varicella vaccine immunization history = 1 doses given 4 weeks to 3 months ago
 */
define "Varicella vaccine immunization history = 1 doses given 4 weeks to 3 months ago":
	true; // TODO: Define this

/* 
 * @dataElement No doses greater
 */
define "No doses greater":
	true; // TODO: Define this

/* 
 * @dataElement >= 15 years old (adults and adolescents)
 */
define ">= 15 years old (adults and adolescents)":
	true; // TODO: Define this

/* 
 * @dataElement Not pregnant
 */
define "Not pregnant":
	true; // TODO: Define this

/* 
 * @dataElement 1 doses
 */
define "1 doses":
	true; // TODO: Define this

/* 
 * @dataElement Potentially susceptible health-care worker (i.e.unvaccinated and with no history of varicella)
 */
define "Potentially susceptible health-care worker (i.e.unvaccinated and with no history of varicella)":
	true; // TODO: Define this

/* 
 * @dataElement 1 doses and potentially susceptible health-care worker (i.e.unvaccinated and with no history of varicella) and not pregnant
 */
define "1 doses and potentially susceptible health-care worker (i.e.unvaccinated and with no history of varicella) and not pregnant":
	true; // TODO: Define this

/*
 * Rule: Should vaccinate patient with Varicella vaccine
 * Annotations:
 * 	 - Provide Varicella immunizations – using the "Varicella vaccine immunization – NO PREVIOUS" schedule (2 dose scheme)
 * 	 - Provide Varicella immunizations – using the "Varicella vaccine immunization – 1 PREVIOUS" schedule (2 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Varicella- No Doses
 * 	 - Immunize Patient for Varicella- 1 Doses
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://w ww.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (((((((("Varicella vaccine immunization history" = "No doses") and (">= 12 months" = true)) and ("<=18 months" = true)) or ((("Varicella vaccine immunization history" = "1 doses given 4 weeks to 3 months ago" = true) and (">= 12 months" = true)) and ("<=18 months" = true))) or ((("Varicella vaccine immunization history" = "No doses greater") and (">= 15 years old (adults and adolescents)" = true)) and ("Not pregnant" = true))) or ((("Varicella vaccine immunization history" = "1 doses") and (">= 15 years old (adults and adolescents)" = true)) and ("Not pregnant" = true))) or ((("Varicella vaccine immunization history" = "No doses") and ("Potentially susceptible health-care worker (i.e.unvaccinated and with no history of varicella)" = true)) and ("Not pregnant" = true))) or ((("Varicella vaccine immunization history" = "1 doses and potentially susceptible health-care worker (i.e.unvaccinated and with no history of varicella) and not pregnant") and ("Potentially susceptible health-care worker (i.e.unvaccinated and with no history of varicella)" = true)) and ("Not pregnant" = true)))
 */
define "Should vaccinate patient with Varicella vaccine":
	(((((((("Varicella vaccine immunization history" = "No doses") and (">= 12 months" = true)) and ("<=18 months" = true)) or ((("Varicella vaccine immunization history" = "1 doses given 4 weeks to 3 months ago") and (">= 12 months" = true)) and ("<=18 months" = true))) or ((("Varicella vaccine immunization history" = "No doses greater") and (">= 15 years old (adults and adolescents)" = true)) and ("Not pregnant" = true))) or ((("Varicella vaccine immunization history" = "1 doses") and (">= 15 years old (adults and adolescents)" = true)) and ("Not pregnant" = true))) or ((("Varicella vaccine immunization history" = "No doses") and ("Potentially susceptible health-care worker (i.e.unvaccinated and with no history of varicella)" = true)) and ("Not pregnant" = true))) or ((("Varicella vaccine immunization history" = "1 doses and potentially susceptible health-care worker (i.e.unvaccinated and with no history of varicella) and not pregnant") and ("Potentially susceptible health-care worker (i.e.unvaccinated and with no history of varicella)" = true)) and ("Not pregnant" = true)));
