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
 * Rule: Should vaccinate patient for Rubella because no doses on 1 dose scheme
 * Annotations:
 * 	 - Provide Rubella immunizations – using the "MR Vaccine immunization – NO PREVIOUS" schedule (1 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Rubella- No Doses
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://w
ww.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ("Rubella vaccine immunization history" = "No-doses")
 */
define "Should vaccinate patient for Rubella because no doses on 1 dose scheme":
	("Rubella vaccine immunization history" = "No-doses");

