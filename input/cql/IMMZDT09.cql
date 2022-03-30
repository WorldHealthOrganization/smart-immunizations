/*
 * Library: IMMZDT09 (IMMZ.DT.09.Rubella)
 * Rule: If child or patient has not received the Rubella vaccination and is greater than or equal to 9 months 
 * Trigger: Patient has never received Rubella vaccination
 */
library IMMZDT09
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
 * @dataElement Rubella vaccine immunization history
 */
define "Rubella vaccine immunization history":
	true; // TODO: Define this

/* 
 * @dataElement No-doses
 */
define "No-doses":
	true; // TODO: Define this

/* 
 * @dataElement  Age
 */
define " Age":
	true; // TODO: Define this

/* 
 * @dataElement 9 months 
 */
define "9 months ":
	true; // TODO: Define this

/* 
 * @dataElement depending on level of measles virus transmissions
 */
define "depending on level of measles virus transmissions":
	true; // TODO: Define this

/*
 * Rule: Should vaccinate patient for Rubella because no doses on 1 dose scheme
 * Annotations:
 * 	 - Provide Rubella immunizations – using the "MR Vaccine immunization – NO PREVIOUS" schedule (1 dose scheme)
 * 	 - Provide Rubella immunizations – using the "RCV Vaccine immunization – NO PREVIOUS" schedule (1 dose scheme)
 * 	 - 
 * Outputs:
 * 	 - Immunize Patient for Rubella- No Doses
 * 	 - 
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://w
ww.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * 	- 
 * Logic:
 *	 ((("Rubella vaccine immunization history" = "No-doses") or ((("Rubella vaccine immunization history" = "No-doses") and (" Age" = "9 months ")) and ("depending on level of measles virus transmissions" = true))) or (("Rubella vaccine immunization history" = "No-doses") and ("depending on level of measles virus transmissions" = true)))
 */
define "Should vaccinate patient for Rubella because no doses on 1 dose scheme":
	((("Rubella vaccine immunization history" = "No-doses") or ((("Rubella vaccine immunization history" = "No-doses") and (" Age" = "9 months ")) and ("depending on level of measles virus transmissions" = true))) or (("Rubella vaccine immunization history" = "No-doses") and ("depending on level of measles virus transmissions" = true)));

