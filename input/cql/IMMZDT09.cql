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
include IMMZConfig called IMMZCon
include IMMZVaccineLibrary called IMMZvl
// End Skeleton CQL
context Patient

/**
 * @dataElement Should provision Rubella Dose
 */
define "Provision of the Rubella dose":
	not(IMMZCom."Pregnant") and
	"No Rubella Doses Administered to Patient"

define "Schedule Due Date for Rubella dose":
	Patient.birthDate + 9 months


define "Rubella Next Dose Number":
	1

define "Number of Required Rubella Doses":
	1

define "Expiration Date for Rubella dose":
	null

define "Overdue Date for Rubella dose":
	null

define "Should vaccinate patient for Rubella":
	"Provision of the Rubella dose" and ("Schedule Due Date for Rubella dose" <= (Now()))

/**
 * @dataElement Rubella containing Doses Administered to Patient
 */
define "Rubella Doses Administered to Patient":
  IMMZCom."Doses Administered to Patient" I
  where
    I.vaccineCode in IMMZc."Rubella Vaccine"

/**
 * @dataElement Rubella containing doses administered
 */
define "No Rubella Doses Administered to Patient":
  not exists("Rubella Doses Administered to Patient")

/*
 * Rule: Should vaccinate patient for Rubella because no doses on 1 dose scheme
 * Annotations:
 * 	 - Provide Rubella immunizations – using the "Rubella Vaccine immunization – NO PREVIOUS" schedule (1 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Rubella- No Doses
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (("Rubella vaccine immunization history" = "No-doses") and ("Current Patient Age in Months" >= 9))
 */
 /*
define "Should vaccinate patient for Rubella because no doses on 1 dose scheme":
	not(IMMZCom."Pregnant") and
	IMMZCom."No Rubella Doses Administered to Patient" and 
	IMMZCom."Current Patient Age In Months" >= 9
*/
