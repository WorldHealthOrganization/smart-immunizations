/*
 * Library: IMMZDT18 (IMMZ.DT.18.Rabies)
 * Rule: If patient  has not been vaccinated, give Rabies vaccine 
 * Trigger: Patient has never been vaccinated and is at high risk of exposure to RABV and/or patient has been exposed to RABV
 */
library IMMZDT18
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
 * @dataElement Rabies vaccine immunization history
 */
define "Rabies vaccine immunization history":
	0 // TODO: Define this

/* 
 * @dataElement No-doses
 */
define "No-doses":
	0 // TODO: Define this

/* 
 * @dataElement Individual is at high risk of RABV exposure
 */
define "Individual is at high risk of RABV exposure":
	0 // TODO: Define this

/* 
 * @dataElement 1 dose
 */
define "1 dose":
	0 // TODO: Define this

/* 
 * @dataElement Date last Rabies dose given >= 7 days
 */
define "Date last Rabies dose given >= 7 days":
	0 // TODO: Define this

/*
 * Rule: Should vaccinate patient with Rabies vaccine (PrEP strategy) on 2 dose scheme
 * Annotations:
 * 	 - Provide Rabies immunizations – using the "PrEP vaccination strategy – NO PREVIOUS" schedule (2 dose scheme)
 * 	 - Provide Rabies immunizations – using the "PrEP vaccination strategy – 1 PREVIOUS" schedule (2 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Rabies (PrEP strategy) - No Doses
 * 	 - Immunize Patient for Rabies (PrEP strategy) - 1 Dose
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ((("Rabies vaccine immunization history" = "No-doses") and ("Individual is at high risk of RABV exposure" = true)) or (("Rabies vaccine immunization history" = "1 dose") and ("Date last Rabies dose given" >= "7 days" = true)))
 */
define "Should vaccinate patient with Rabies vaccine (PrEP strategy) on 2 dose scheme":
	((("Rabies vaccine immunization history" = "No-doses") and ("Individual is at high risk of RABV exposure" = true)) or (("Rabies vaccine immunization history" = "1 dose") and ("Date last Rabies dose given" >= "7 days" = true)))

/* 
 * @dataElement Individual has continual or frequent risk of exposure (i.e. occupational)
 */
define "Individual has continual or frequent risk of exposure (i.e. occupational)":
	0 // TODO: Define this

/* 
 * @dataElement VNA levels
 */
define "VNA levels":
	0 // TODO: Define this

/* 
 * @dataElement 0.5 IU/mL
 */
define "0.5 IU/mL":
	0 // TODO: Define this

/*
 * Rule: Should vaccinate patient with Rabies vaccine Booster (PrEP strategy)
 * Annotations:
 * 	 - Provide Rabies immunizations – using the "PrEP vaccination strategy – BOOSTER" schedule (1 dose booster)
 * Outputs:
 * 	 - Immunize Patient for Rabies vaccine Booster (PrEP strategy)
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (("Individual has continual or frequent risk of exposure (i.e. occupational)" = true) and ("VNA levels" < "0.5 IU/mL"))
 */
define "Should vaccinate patient with Rabies vaccine Booster (PrEP strategy)":
	(("Individual has continual or frequent risk of exposure (i.e. occupational)" = true) and ("VNA levels" < "0.5 IU/mL"))

