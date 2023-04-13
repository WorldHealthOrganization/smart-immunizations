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

/**
 * @dataElement Should provision Yellow Fever Dose
 */
define "Provision of the Yellow Fever dose":
	"No doses of Yellow Fever vaccine administered to patient" 
	and (
		IMMZCon."Country has Yellow Fever Endemic"
		or "Patient is travelling to and from a Yellow Fever endemic area"
	)

define "Schedule Due Date for Yellow Fever dose":
	ToDateTime(
		Patient.birthDate + 9 months
	)

define "Yellow Fever Next Dose Number":
	1

define "Number of Required Yellow Fever Doses":
	1

define "Expiration Date for Yellow Fever dose":
	null

define "Overdue Date for Yellow Fever dose":
	Patient.birthDate + 12 months

define "Should vaccinate patient for Yellow Fever":
	"Provision of the Yellow Fever dose" and ("Schedule Due Date for Yellow Fever dose" <= (Now()))

/**
 * @dataElement Yellow Fever containing Doses Administered to Patient
 */
define "Yellow Fever Doses Administered to Patient":
  IMMZCom."Doses Administered to Patient" I
  where
    I.vaccineCode in IMMZc."Yellow Fever Vaccine"



/* 
 * @dataElement Yellow Fever vaccine immunization history
 */
define "Yellow Fever vaccine immunization history":
	"Yellow Fever Doses Administered to Patient"


/* 
 * @dataElement No-doses
 */
define "No doses of Yellow Fever vaccine administered to patient":
	not exists("Yellow Fever vaccine immunization history")

/* 
 * @dataElement Age
 */
 /*
define "Age":
	IMMZCom."Current Patient Age In Months"
*/

/* 
 * @dataElement 9 months
 */
 /*
define "9 months":
	9 months
*/
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
 /*
define "Should vaccinate patient for Yellow Fever because no doses on 1 dose scheme":
	(("No-doses of Yellow Fever vaccine administered to patient") and ("Age" >= "9 months")) and 
	(IMMZCon."Country has Yellow Fever Endemic" or "Patient is travelling to and from a Yellow Fever endemic area")
	*/