/*
 * Library: IMMZDT12 (IMMZ.DT.12.YellowFever)
 * Rule: If child or person has not been vaccinated, give Yellow Fever vaccine between age 9-12 months 
 * Trigger: Patient has never received Yellow Fever vaccination and/or resides/is from an endemic region
 */
library IMMZDT12
// Start Skeleton CQL
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1'
include IMMZCommon called IMMZCom
include IMMZConcepts called IMMZc
include IMMZConfig called IMMZCon
include IMMZVaccineLibrary called IMMZvl

parameter "Patient is travelling to and from a Yellow Fever endemic area" Boolean default false
// End Skeleton CQL
context Patient

/* 
 * @dataElement Yellow Fever vaccine immunization history
 */
define "Yellow Fever vaccine immunization history":
	IMMZCom."Yellow Fever Doses Administered to Patient"


/* 
 * @dataElement No-doses
 */
define "No-doses of Yellow Fever vaccine administered to patient":
	not exists("Yellow Fever vaccine immunization history")

/* 
 * @dataElement Age
 */
define "Age":
	IMMZCom."Current Patient Age In Months"

/* 
 * @dataElement 9 months
 */
define "9 months":
	9 months

/*
 * Rule: Should vaccinate patient for Yellow Fever because no doses on 1 dose scheme
 * Annotations:
 * 	 - Provide Yellow Fever immunizations – using the "Yellow Fever vaccine immunization – NO PREVIOUS" schedule (1 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Yellow Fever - No Doses
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (("Yellow Fever vaccine immunization history" = "No-doses") and ("Age" >= "9 months"))
 */
define "Should vaccinate patient for Yellow Fever because no doses on 1 dose scheme":
	(("No-doses of Yellow Fever vaccine administered to patient") and ("Age" >= "9 months")) and 
	(IMMZCon."Country has Yellow Fever Endemic" or "Patient is travelling to and from a Yellow Fever endemic area")