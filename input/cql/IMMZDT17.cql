/*
 * Library: IMMZDT17 (IMMZ.DT.17.HepatitisA)
 * Rule: If child or person has not been vaccinated, give Hepatitis A vaccine at 1 year of age 
 * Trigger: Patient has never had Hepatits A vaccination
 */
library IMMZDT17
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
 * @dataElement Hepatitis A vaccine immunization history
 */
define "Hepatitis A vaccine immunization history":
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
 * @dataElement 1 year
 */
define "1 year":
	0 // TODO: Define this

/* 
 * @dataElement Country is not highly endemic
 */
define "Country is not highly endemic":
	true // TODO: Define this

/*
 * Rule: Should vaccinate patient for Hepatitis A because no doses at 1 year old in a 1 dose scheme
 * Annotations:
 * 	 - Provide Hepatitis A immunization – using the "Hepatitis A vaccine immunization – NO PREVIOUS" schedule (1 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Hepatitis A - No Doses at 1 year old
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ((("Hepatitis A vaccine immunization history" = "No-doses") and ("Age" >= "1 year")) and ("Country is not highly endemic" = true))
 */
define "Should vaccinate patient for Hepatitis A because no doses at 1 year old in a 1 dose scheme":
	((("Hepatitis A vaccine immunization history" = "No-doses") and ("Age" >= "1 year")) and ("Country is not highly endemic" = true))

