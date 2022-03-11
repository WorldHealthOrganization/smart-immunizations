/*
 * Library: IMMZDT20 (IMMZ.DT.20.Mumps)
 * Rule: If child or person has not been vaccinated against Mumps, give Mumps vaccine 
 * Trigger: Patient has never had the Mumps vaccination, or missing doses in the vaccination schedule
 */
library IMMZDT20
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
 * @dataElement MUMPS vaccine history
 */
define "MUMPS vaccine history":
	true; // TODO: Define this

/* 
 * @dataElement No-doses
 */
define "No-doses":
	true; // TODO: Define this

/* 
 * @dataElement Age
 */
define "Age":
	true; // TODO: Define this

/* 
 * @dataElement 19 months
 */
define "19 months":
	true; // TODO: Define this

/* 
 * @dataElement 11 months
 */
define "11 months":
	true; // TODO: Define this

/*
 * Rule: Should vaccinate Patient for MUMPS because no doses on 2 dose scheme
 * Annotations:
 * 	 - Provide MUMPS immunizations - using the "MUMPS vaccine immunization - NO PREVIOUS" schedule (2 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for MUMPS - No Doses
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ((("MUMPS vaccine history" = "No-doses") and ("Age" < "19 months")) and ("Age" > "11 months"))
 */
define "Should vaccinate Patient for MUMPS because no doses on 2 dose scheme":
	((("MUMPS vaccine history" = "No-doses") and ("Age" < "19 months")) and ("Age" > "11 months"));

/* 
 * @dataElement Month since last dose is greater than one
 */
define "Month since last dose is greater than one":
	true; // TODO: Define this

/*
 * Rule: Should vaccinate Patient for MUMPS a second dose on a 2 dose scheme
 * Annotations:
 * 	 - Provide MUMPS immunizations - using the "MUMPS vaccine immunization - ONE PREVIOUS" schedule (2 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for MUMPS - One Dose
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ((("MUMPS vaccine history" = "Month since last dose is greater than one") and ("Age" < "19 months")) and ("Age" > "11 months"))
 */
define "Should vaccinate Patient for MUMPS a second dose on a 2 dose scheme":
	((("MUMPS vaccine history" = "Month since last dose is greater than one") and ("Age" < "19 months")) and ("Age" > "11 months"));

