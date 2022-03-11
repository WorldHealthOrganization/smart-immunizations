/*
 * Library: IMMZDT04 (IMMZ.DT.04.DTP)
 * Rule: If child or person has not been given DTP, start scheme 
 * Trigger: Patient requires a DTP vaccine
 */
library IMMZDT04
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
 * @dataElement DTP vaccine immunization history
 */
define "DTP vaccine immunization history":
	true; // TODO: Define this

/* 
 * @dataElement No-doses
 */
define "No-doses":
	true; // TODO: Define this

/*
 * Rule: Should vaccinate patient with DTP first dose
 * Annotations:
 * 	 - Provide DTP immunization 1st dose – using the "DTP vaccine immunization – NO PREVIOUS" schedule (3 dose scheme) if the patient is the older 6 weeks of age
 * Outputs:
 * 	 - Immunize Patient for DTP - No Doses
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ("DTP vaccine immunization history" = "No-doses")
 */
define "Should vaccinate patient with DTP first dose":
	("DTP vaccine immunization history" = "No-doses");

/* 
 * @dataElement 1 dose
 */
define "1 dose":
	true; // TODO: Define this

/*
 * Rule: Should vaccinate patient for DTP with 2nd dose
 * Annotations:
 * 	 - Provide DTP immunization 2nd dose – using the "DTP vaccine immunization – 3 dose scheme" if the patient is  4-8 weeks after their first dose
 * Outputs:
 * 	 - Immunize Patient for DTP - 1 Dose
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ("DTP vaccine immunization history" = "1 dose")
 */
define "Should vaccinate patient for DTP with 2nd dose":
	("DTP vaccine immunization history" = "1 dose");

/* 
 * @dataElement 2 dose
 */
define "2 dose":
	true; // TODO: Define this

/*
 * Rule: Should vaccinate patient for DTP with 3rd dose
 * Annotations:
 * 	 - Provide DTP immunizations – using the "DTP vaccine immunization – 3 dose scheme, provide the 3rd dose" if the patient is  4-8 weeks after their first dose
 * Outputs:
 * 	 - Immunize Patient for DTP - 2 Dose
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ("DTP vaccine immunization history" = "2 dose")
 */
define "Should vaccinate patient for DTP with 3rd dose":
	("DTP vaccine immunization history" = "2 dose");

/* 
 * @dataElement Interrupted primary series
 */
define "Interrupted primary series":
	true; // TODO: Define this

/*
 * Rule: Should vaccinate the patient is next appriopriate dose.
 * Annotations:
 * 	 - Provide the 2nd or 3rd dose without repeating the previous dose in the scheme, even if after the 8 week window
 * Outputs:
 * 	 - Immunize Patient for DTP - Missed Dose
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ("Interrupted primary series" = true)
 */
define "Should vaccinate the patient is next appriopriate dose.":
	("Interrupted primary series" = true);

/* 
 * @dataElement 3 doses
 */
define "3 doses":
	true; // TODO: Define this

/*
 * Rule: Should vaccinate patient for DTP with 1st booster
 * Annotations:
 * 	 - Provide booster at 12-23 months (DTP-containing vaccine) if patient has completed primary 3 dose scheme
 * Outputs:
 * 	 - Immunize Patient for DTP - Booster 1
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ("DTP vaccine immunization history" = "3 doses")
 */
define "Should vaccinate patient for DTP with 1st booster":
	("DTP vaccine immunization history" = "3 doses");

/* 
 * @dataElement 3 doses + 1 booster
 */
define "3 doses + 1 booster":
	true; // TODO: Define this

/*
 * Rule: Should vaccinate patient for DTP with 2nd booster
 * Annotations:
 * 	 - Provide booster at 4-7 years (Td/DT containing vaccine)  if patient has completed primary 3 dose scheme and 1 booster
 * Outputs:
 * 	 - Immunize Patient for DTP - Booster 2
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ("DTP vaccine immunization history" = "3 doses + 1 booster")
 */
define "Should vaccinate patient for DTP with 2nd booster":
	("DTP vaccine immunization history" = "3 doses + 1 booster");

/* 
 * @dataElement 3 doses + 2 boosters
 */
define "3 doses + 2 boosters":
	true; // TODO: Define this

/*
 * Rule: Should vaccinate patient for DTP with 3rd booster
 * Annotations:
 * 	 - Provide booster at 9-15 years (Td containing vaccine), if >7 years use only aP containing vaccine - if patient has completed primary 3 dose scheme and 2 boosters
 * Outputs:
 * 	 - Immunize Patient for DTP - Booster 3
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ("DTP vaccine immunization history" = "3 doses + 2 boosters")
 */
define "Should vaccinate patient for DTP with 3rd booster":
	("DTP vaccine immunization history" = "3 doses + 2 boosters");

/* 
 * @dataElement Patient started primary series >15 years of age
 */
define "Patient started primary series >15 years of age":
	true; // TODO: Define this

/*
 * Rule: Should vaccinate the patient in a 5 shot scheme
 * Annotations:
 * 	 - Provide the regular scheme, with only up to 5 tetanus shots if the patient is starting DTP scheme in adolescence/adulthood
 * Outputs:
 * 	 - Patient given first dose
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ("Patient started primary series >15 years of age" = true)
 */
define "Should vaccinate the patient in a 5 shot scheme":
	("Patient started primary series >15 years of age" = true);

