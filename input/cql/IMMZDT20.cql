/*
 * Library: IMMZDT20 (IMMZ.DT.20.Mumps)
 * Rule: If child or person has not been vaccinated against Mumps, give Mumps vaccine 
 * Trigger: Patient has never had the Mumps vaccination
 */
library IMMZDT20
// Start Skeleton CQL
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1'
include IMMZCommon called IMMZCom
include IMMZConcepts called IMMZc
include IMMZConfig called IMMZCon
include IMMZStratifiers called IMMZStratifiers
include IMMZVaccineLibrary called IMMZvl
include FHIRCommon called FC
// End Skeleton CQL
context Patient

/* 
 * @dataElement MUMPS vaccine immunization history
 */
define "MUMPS vaccine immunization history":
	0 // TODO: Define this

/* 
 * @dataElement No-doses
 */
define "No-doses":
	0 // TODO: Define this

/* 
 * @dataElement Current Patient Age in Months
 */
define "Current Patient Age in Months":
	0 // TODO: Define this

/* 
 * @dataElement Country recognizes MUMPS reduction as a public health priority
 */
define "Country recognizes MUMPS reduction as a public health priority":
	0 // TODO: Define this

/*
 * Rule: Should vaccinate Patient for MUMPS because no doses on 2 dose scheme
 * Annotations:
 * 	 - Provide MUMPS immunizations - using the "MUMPS vaccine immunization - NO PREVIOUS" schedule (2 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for MUMPS - No Doses
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ((("MUMPS vaccine immunization history" = "No-doses") and ("Current Patient Age in Months" >= 12)) and ("Country recognizes MUMPS reduction as a public health priority" = true))
 */
define "Should vaccinate Patient for MUMPS because no doses on 2 dose scheme":
	((("MUMPS vaccine immunization history" = "No-doses") and ("Current Patient Age in Months" >= 12)) and ("Country recognizes MUMPS reduction as a public health priority" = true))

/* 
 * @dataElement 1 dose
 */
define "1 dose":
	0 // TODO: Define this

/* 
 * @dataElement Date last MUMPS dose given
 */
define "Date last MUMPS dose given":
	0 // TODO: Define this

/* 
 * @dataElement 1 months
 */
define "1 months":
	0 // TODO: Define this

/*
 * Rule: Should vaccinate Patient for MUMPS a second dose on a 2 dose scheme
 * Annotations:
 * 	 - Provide MUMPS immunizations - using the "MUMPS vaccine immunization - 1 PREVIOUS" schedule (2 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for MUMPS - 1 Dose given a month ago
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (("MUMPS vaccine immunization history" = "1 dose") and ("Date last MUMPS dose given" >= "1 months"))
 */
define "Should vaccinate Patient for MUMPS a second dose on a 2 dose scheme":
	(("MUMPS vaccine immunization history" = "1 dose") and ("Date last MUMPS dose given" >= "1 months"))

