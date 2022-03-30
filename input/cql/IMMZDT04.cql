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
include IMMZConfig called IMMZCon
include IMMZStratifiers called IMMZStratifiers
include IMMZVaccineLibrary called IMMZvl
// End Skeleton CQL
context Patient

/* 
 * @dataElement DTP vaccine immunization history
 */
define "DTP vaccine immunization history":
	0 // TODO: Define this

/* 
 * @dataElement No-doses
 */
define "No-doses":
	0 // TODO: Define this

/* 
 * @dataElement Current Patient Age in Weeks
 */
define "Current Patient Age in Weeks":
	0 // TODO: Define this

/* 
 * @dataElement Current Patient Age in Years
 */
define "Current Patient Age in Years":
	0 // TODO: Define this

/*
 * Rule: Should vaccinate patient with DTP first dose
 * Annotations:
 * 	 - Provide DTP immunization 1st dose – using the "DTP vaccine immunization – NO PREVIOUS" schedule (3 dose scheme) if the patient is the older 6 weeks of age
 * 	 - Provide DTP immunization 1st dose – using the "DTP vaccine immunization – NO PREVIOUS" schedule (5 dose scheme) if the patient is 15 years of age or more
 * Outputs:
 * 	 - Immunize Patient for DTP - No Doses
 * 	 - Immunize Patient for DTP - No Doses at 15 years or older
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ((("DTP vaccine immunization history" = "No-doses") and ("Current Patient Age in Weeks" >= 6)) or (("DTP vaccine immunization history" = "No-doses") and ("Current Patient Age in Years" >= 15)))
 */
define "Should vaccinate patient with DTP first dose":
	((("DTP vaccine immunization history" = "No-doses") and ("Current Patient Age in Weeks" >= 6)) or (("DTP vaccine immunization history" = "No-doses") and ("Current Patient Age in Years" >= 15)))

/* 
 * @dataElement 1 dose
 */
define "1 dose":
	0 // TODO: Define this

/* 
 * @dataElement Date last DTP dose given
 */
define "Date last DTP dose given":
	0 // TODO: Define this

/* 
 * @dataElement 4 weeks
 */
define "4 weeks":
	0 // TODO: Define this

/* 
 * @dataElement 8 weeks
 */
define "8 weeks":
	0 // TODO: Define this

/*
 * Rule: Should vaccinate patient for DTP with 2nd dose
 * Annotations:
 * 	 - Provide DTP immunization 2nd dose – using the "DTP vaccine immunization – 3 dose scheme" if the patient is  4-8 weeks after their first dose
 * 	 - Provide DTP immunization 2nd dose – using the "DTP vaccine immunization – 1 PREVIOUS" schedule (5 dose scheme) if the patient is 15 years of age or more and is 4-8 weeks after their first dose
 * Outputs:
 * 	 - Immunize Patient for DTP - 1 Dose
 * 	 - Immunize Patient for DTP - 1 Dose at 15 years or older
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ((("DTP vaccine immunization history" = "1 dose") and ("Date last DTP dose given" >= "4 weeks")) or (((("DTP vaccine immunization history" = "1 dose") and ("Current Patient Age in Years" >= 15)) and ("Date last DTP dose given" >= "4 weeks")) and ("Date last DTP dose given" <= "8 weeks")))
 */
define "Should vaccinate patient for DTP with 2nd dose":
	((("DTP vaccine immunization history" = "1 dose") and ("Date last DTP dose given" >= "4 weeks")) or (((("DTP vaccine immunization history" = "1 dose") and ("Current Patient Age in Years" >= 15)) and ("Date last DTP dose given" >= "4 weeks")) and ("Date last DTP dose given" <= "8 weeks")))

/* 
 * @dataElement 2 doses
 */
define "2 doses":
	0 // TODO: Define this

/* 
 * @dataElement 6 months
 */
define "6 months":
	0 // TODO: Define this

/* 
 * @dataElement Age when patient received 1st dose
 */
define "Age when patient received 1st dose":
	0 // TODO: Define this

/* 
 * @dataElement 1 year
 */
define "1 year":
	0 // TODO: Define this

/* 
 * @dataElement 7 years
 */
define "7 years":
	0 // TODO: Define this

/*
 * Rule: Should vaccinate patient for DTP with 3rd dose
 * Annotations:
 * 	 - Provide DTP immunizations – using the "DTP vaccine immunization – 3 dose scheme, provide the 3rd dose" if the patient is  4-8 weeks after their first dose
 * 	 - 
 * 	 - Provide DTP immunization 3rd dose – using the "DTP vaccine immunization – 2 PREVIOUS" schedule (5 dose scheme) if the patient is 15 years of age or more and is 4-8 weeks after their second dose
 * Outputs:
 * 	 - Immunize Patient for DTP - 2 Doses
 * 	 - 
 * 	 - Immunize Patient for DTP - 2 Doses at 15 years or older
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * 	- 
 * Logic:
 *	 (((("DTP vaccine immunization history" = "2 doses") and ("Date last DTP dose given" >= "4 weeks")) or (((("DTP vaccine immunization history" = "2 doses") and ("Date last DTP dose given" >= "6 months")) and ("Age when patient received 1st dose" >= "1 year")) and ("Age when patient received 1st dose" < "7 years"))) or (((("DTP vaccine immunization history" = "2 doses") and ("Current Patient Age in Years" >= 15)) and ("Date last DTP dose given" >= "4 weeks")) and ("Date last DTP dose given" <= "8 weeks")))
 */
define "Should vaccinate patient for DTP with 3rd dose":
	(((("DTP vaccine immunization history" = "2 doses") and ("Date last DTP dose given" >= "4 weeks")) or (((("DTP vaccine immunization history" = "2 doses") and ("Date last DTP dose given" >= "6 months")) and ("Age when patient received 1st dose" >= "1 year")) and ("Age when patient received 1st dose" < "7 years"))) or (((("DTP vaccine immunization history" = "2 doses") and ("Current Patient Age in Years" >= 15)) and ("Date last DTP dose given" >= "4 weeks")) and ("Date last DTP dose given" <= "8 weeks")))

/* 
 * @dataElement 3 doses
 */
define "3 doses":
	0 // TODO: Define this

/* 
 * @dataElement Current Patient Age in Months
 */
define "Current Patient Age in Months":
	0 // TODO: Define this

/*
 * Rule: Should vaccinate patient for DTP with 1st booster
 * Annotations:
 * 	 - Provide booster at 12-23 months (DTP-containing vaccine) if patient has completed primary 3 dose scheme
 * Outputs:
 * 	 - Immunize Patient for DTP - Booster 1
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (("DTP vaccine immunization history" = "3 doses") and ("Current Patient Age in Months" >= 12))
 */
define "Should vaccinate patient for DTP with 1st booster":
	(("DTP vaccine immunization history" = "3 doses") and ("Current Patient Age in Months" >= 12))

/* 
 * @dataElement 4 doses
 */
define "4 doses":
	0 // TODO: Define this

/*
 * Rule: Should vaccinate patient for DTP with 2nd booster
 * Annotations:
 * 	 - Provide booster at 4-7 years (Td/DT containing vaccine)  if patient has completed primary 3 dose scheme and 1 booster
 * Outputs:
 * 	 - Immunize Patient for DTP - Booster 2
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (("DTP vaccine immunization history" = "4 doses") and ("Current Patient Age in Years" >= 4))
 */
define "Should vaccinate patient for DTP with 2nd booster":
	(("DTP vaccine immunization history" = "4 doses") and ("Current Patient Age in Years" >= 4))

/* 
 * @dataElement 5 doses
 */
define "5 doses":
	0 // TODO: Define this

/*
 * Rule: Should vaccinate patient for DTP with 3rd booster
 * Annotations:
 * 	 - Provide booster at 9-15 years (Td containing vaccine), if >7 years use only aP containing vaccine - if patient has completed primary 3 dose scheme and 2 boosters
 * Outputs:
 * 	 - Immunize Patient for DTP - Booster 3
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (("DTP vaccine immunization history" = "5 doses") and ("Current Patient Age in Years" >= 9))
 */
define "Should vaccinate patient for DTP with 3rd booster":
	(("DTP vaccine immunization history" = "5 doses") and ("Current Patient Age in Years" >= 9))

/*
 * Rule: Should vaccinate patient for DTP with 4th dose
 * Annotations:
 * 	 - Provide DTP immunization 4th dose – using the "DTP vaccine immunization – 3 PREVIOUS" schedule (5 dose scheme) if the patient is 15 years of age or more and is 4-8 weeks after their second dose
 * Outputs:
 * 	 - Immunize Patient for DTP - 3 Doses at 15 years or older
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (((("DTP vaccine immunization history" = "3 doses") and ("Current Patient Age in Years" >= 15)) and ("Date last DTP dose given" >= "4 weeks")) and ("Date last DTP dose given" <= "8 weeks"))
 */
define "Should vaccinate patient for DTP with 4th dose":
	(((("DTP vaccine immunization history" = "3 doses") and ("Current Patient Age in Years" >= 15)) and ("Date last DTP dose given" >= "4 weeks")) and ("Date last DTP dose given" <= "8 weeks"))

/*
 * Rule: Should vaccinate patient for DTP with 5th dose
 * Annotations:
 * 	 - Provide DTP immunization 5th dose – using the "DTP vaccine immunization – 4 PREVIOUS" schedule (5 dose scheme) if the patient is 15 years of age or more and is 4-8 weeks after their second dose
 * Outputs:
 * 	 - Immunize Patient for DTP - 4 Doses at 15 years or older
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (((("DTP vaccine immunization history" = "4 doses") and ("Current Patient Age in Years" >= 15)) and ("Date last DTP dose given" >= "4 weeks")) and ("Date last DTP dose given" <= "8 weeks"))
 */
define "Should vaccinate patient for DTP with 5th dose":
	(((("DTP vaccine immunization history" = "4 doses") and ("Current Patient Age in Years" >= 15)) and ("Date last DTP dose given" >= "4 weeks")) and ("Date last DTP dose given" <= "8 weeks"))

