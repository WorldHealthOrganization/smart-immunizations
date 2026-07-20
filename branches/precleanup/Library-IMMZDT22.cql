/*
 * Library: IMMZDT22 (IMMZ.DT.22.Varicella)
 * Rule: If child or person has not been vaccinated against Varicella 
 * Trigger: Patient has never had the Varicella vaccination or shows no evidence of Varciella immunity
 */
library IMMZDT22
// Start Skeleton CQL
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1'
include IMMZCommon called IMMZCom
include IMMZConcepts called IMMZc
include IMMZConfig called IMMZConf
include IMMZVaccineLibrary called IMMZvl
include FHIRCommon called FC
// End Skeleton CQL
context Patient

/*
 * Rule: Should vaccinate patient with Varicella vaccine because no doses in a 2 dose scheme
 * Annotations:
 * 	 - Provide Varicella immunizations – using the "Varicella vaccine immunization – NO PREVIOUS" schedule (2 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Varicella- No Doses
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (((("Varicella vaccine immunization history" = "No-doses") and ("Current Patient Age in Months" >= 12)) and ("Pregnancy Status" = false)) and ("Country recognizes Varicella an important public health burden" = true))
 */
define "Should vaccinate patient with Varicella vaccine because no doses in a 2 dose scheme":
	IMMZCom."No Varicella Doses Administered to Patient"
	and IMMZCom."Current Patient Age In Months" >= 12
	and not(IMMZCom."Pregnant")
	and IMMZConf."Country recognizes Varicella an important public health burden"

/*
 * Rule: Should vaccinate patient with Varicella vaccine because 1 dose given 4 weeks ago in a 2 dose scheme
 * Annotations:
 * 	 - Provide Varicella immunizations – using the "Varicella vaccine immunization – 1 PREVIOUS" schedule (2 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Varicella -  1st dose given between 4 weeks and 3 months ago
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ((("Varicella vaccine immunization history" = "1 dose") and ("Date last Varicella dose given" >= "4 weeks")) and ("Pregnancy Status" = false))
 */
define "Should vaccinate patient with Varicella vaccine because 1 dose given 4 weeks ago in a 2 dose scheme":
	IMMZCom."Number of Varicella Doses Administered to Patient" = 1
	and IMMZCom."Date Last Varicella Dose Administered to Patient" more than 4 weeks before Today()
	and not(IMMZCom."Pregnant")

