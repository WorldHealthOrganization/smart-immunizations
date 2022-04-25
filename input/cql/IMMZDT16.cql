/*
 * Library: IMMZDT16 (IMMZ.DT.16.Meningococcal)
 * Rule: If child or person has not been vaccinated, give Meningococcal vaccine according to the defined schedule 
 * Trigger: Patient has never received Meningococcal vaccination
 */
library IMMZDT16
// Start Skeleton CQL
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1'
include IMMZCommon called IMMZCom
include IMMZConcepts called IMMZc
include IMMZConfig called IMMZCon
include IMMZVaccineLibrary called IMMZvl
include FHIRCommon called FC
// End Skeleton CQL
context Patient

/* 
 * @dataElement Meningococcal vaccine immunization history
 */
define "Meningococcal vaccine immunization history":
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
 * @dataElement There is a compelling reason to vaccinate infants with Meningococcal between 3 to 9 months old
 */
define "There is a compelling reason to vaccinate infants with Meningococcal between 3 to 9 months old":
	0 // TODO: Define this

/*
 * Rule: Should vaccinate patient with MenA conjugate vaccine (5µg) because no doses on 2 dose scheme
 * Annotations:
 * 	 - Provide Meningococcal immunizations – using the "MenA conjugate vaccine (5µg) immunization – NO PREVIOUS" schedule (2 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Meningococcal - No Doses
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (((("Meningococcal vaccine immunization history" = "No-doses") and ("Current Patient Age in Months" >= 3)) and ("Current Patient Age in Months" < 9)) and ("There is a compelling reason to vaccinate infants with Meningococcal between 3 to 9 months old" = true))
 */
define "Should vaccinate patient with MenA conjugate vaccine (5µg) because no doses on 2 dose scheme":
	(((("Meningococcal vaccine immunization history" = "No-doses") and ("Current Patient Age in Months" >= 3)) and ("Current Patient Age in Months" < 9)) and ("There is a compelling reason to vaccinate infants with Meningococcal between 3 to 9 months old" = true))

/* 
 * @dataElement 1 dose
 */
define "1 dose":
	0 // TODO: Define this

/* 
 * @dataElement Date last Meningococcal dose given >= 8 weeks
 */
define "Date last Meningococcal dose given >= 8 weeks":
	0 // TODO: Define this

/* 
 * @dataElement Type of last Meningococcal dose
 */
define "Type of last Meningococcal dose":
	0 // TODO: Define this

/* 
 * @dataElement MenA conjugate vaccine (5µg)
 */
define "MenA conjugate vaccine (5µg)":
	0 // TODO: Define this

/*
 * Rule: Should vaccinate patient with MenA conjugate vaccine (5µg) because 1 dose on 2 dose scheme
 * Annotations:
 * 	 - Provide Meningococcal immunizations – using the "MenA conjugate vaccine (5µg) immunization – 1 PREVIOUS" schedule (2 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Meningococcal - 1 Dose
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (((((("Meningococcal vaccine immunization history" = "1 dose") and ("Current Patient Age in Months" >= 3)) and ("Current Patient Age in Months" < 9)) and ("Date last Meningococcal dose given" >= "8 weeks" = true)) and ("Type of last Meningococcal dose" = "MenA conjugate vaccine (5µg)")) and ("There is a compelling reason to vaccinate infants with Meningococcal between 3 to 9 months old" = true))
 */
define "Should vaccinate patient with MenA conjugate vaccine (5µg) because 1 dose on 2 dose scheme":
	(((((("Meningococcal vaccine immunization history" = "1 dose") and ("Current Patient Age in Months" >= 3)) and ("Current Patient Age in Months" < 9)) and ("Date last Meningococcal dose given" >= "8 weeks" = true)) and ("Type of last Meningococcal dose" = "MenA conjugate vaccine (5µg)")) and ("There is a compelling reason to vaccinate infants with Meningococcal between 3 to 9 months old" = true))

/* 
 * @dataElement Meningococcal vaccine immunization history = No-doses
 */
define "Meningococcal vaccine immunization history = No-doses":
	0 // TODO: Define this

/* 
 * @dataElement Region recommends Meningococcal vaccination
 */
define "Region recommends Meningococcal vaccination":
	0 // TODO: Define this

/*
 * Rule: Should vaccinate patient with MenA conjugate vaccine (5µg) on 1 dose scheme
 * Annotations:
 * 	 - Provide Meningococcal immunizations – using the "MenA conjugate vaccine (5µg) immunization – NO PREVIOUS" schedule (1 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Meningococcal - No Doses
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (((("Meningococcal vaccine immunization history" = "No-doses" = true) and ("Current Patient Age in Months" >= 9)) and ("Current Patient Age in Months" <= 24)) and ("Region recommends Meningococcal vaccination" = true))
 */
define "Should vaccinate patient with MenA conjugate vaccine (5µg) on 1 dose scheme":
	(((("Meningococcal vaccine immunization history" = "No-doses" = true) and ("Current Patient Age in Months" >= 9)) and ("Current Patient Age in Months" <= 24)) and ("Region recommends Meningococcal vaccination" = true))

/* 
 * @dataElement Patient has completed Meningococcal primary series
 */
define "Patient has completed Meningococcal primary series":
	0 // TODO: Define this

/* 
 * @dataElement Date last Meningococcal dose given >= 3 years
 */
define "Date last Meningococcal dose given >= 3 years":
	0 // TODO: Define this

/* 
 * @dataElement Date last Meningococcal dose given <= 5 years
 */
define "Date last Meningococcal dose given <= 5 years":
	0 // TODO: Define this

/* 
 * @dataElement Individual has a continued high risk of exposure (including health workers)
 */
define "Individual has a continued high risk of exposure (including health workers)":
	0 // TODO: Define this

/*
 * Rule: Should vaccinate patient with MenA conjugate vaccine (5µg) non-recurring booster 3-5 years after last shot
 * Annotations:
 * 	 - Provide Meningococcal immunizations – using the "MenA conjugate vaccine (5µg) immunization – Single non-recurring BOOSTER" schedule (1 dose booster)
 * Outputs:
 * 	 - Immunize Patient for Meningococcal - Non-recurring Booster
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (((((("Patient has completed Meningococcal primary series" = true) and ("Date last Meningococcal dose given" >= "3 years" = true)) and ("Date last Meningococcal dose given" <= "5 years" = true)) and ("Type of last Meningococcal dose" = "MenA conjugate vaccine (5µg)")) and ("Individual has a continued high risk of exposure (including health workers)" = true)) and ("Region recommends Meningococcal vaccination" = true))
 */
define "Should vaccinate patient with MenA conjugate vaccine (5µg) non-recurring booster 3-5 years after last shot":
	(((((("Patient has completed Meningococcal primary series" = true) and ("Date last Meningococcal dose given" >= "3 years" = true)) and ("Date last Meningococcal dose given" <= "5 years" = true)) and ("Type of last Meningococcal dose" = "MenA conjugate vaccine (5µg)")) and ("Individual has a continued high risk of exposure (including health workers)" = true)) and ("Region recommends Meningococcal vaccination" = true))

/*
 * Rule: Should vaccinate patient with monovalent MenC conjugate vaccine because no dose on 1 dose scheme
 * Annotations:
 * 	 - Provide Meningococcal immunizations – using the "monovalent MenC conjugate vaccine immunization – NO PREVIOUS" schedule (1 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Meningococcal - No Doses
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ((("Meningococcal vaccine immunization history" = "No-doses") and ("Current Patient Age in Months" >= 12)) and ("Region recommends Meningococcal vaccination" = true))
 */
define "Should vaccinate patient with monovalent MenC conjugate vaccine because no dose on 1 dose scheme":
	((("Meningococcal vaccine immunization history" = "No-doses") and ("Current Patient Age in Months" >= 12)) and ("Region recommends Meningococcal vaccination" = true))

/*
 * Rule: Should vaccinate patient with monovalent MenC conjugate vaccine because no dose on 2 dose scheme
 * Annotations:
 * 	 - Provide Meningococcal immunizations – using the "monovalent MenC conjugate vaccine immunization – NO PREVIOUS" schedule (2 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Meningococcal - No Doses
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (((("Meningococcal vaccine immunization history" = "No-doses") and ("Current Patient Age in Months" >= 2)) and ("Current Patient Age in Months" <= 11)) and ("Region recommends Meningococcal vaccination" = true))
 */
define "Should vaccinate patient with monovalent MenC conjugate vaccine because no dose on 2 dose scheme":
	(((("Meningococcal vaccine immunization history" = "No-doses") and ("Current Patient Age in Months" >= 2)) and ("Current Patient Age in Months" <= 11)) and ("Region recommends Meningococcal vaccination" = true))

/* 
 * @dataElement monovalent MenC conjugate
 */
define "monovalent MenC conjugate":
	0 // TODO: Define this

/*
 * Rule: Should vaccinate patient with monovalent MenC conjugate vaccine because 1 dose on 2 dose scheme
 * Annotations:
 * 	 - Provide Meningococcal immunizations – using the "monovalent MenC conjugate vaccine immunization – 1 PREVIOUS" schedule (2 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Meningococcal - 1 Dose
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ((((("Meningococcal vaccine immunization history" = "1 dose") and ("Current Patient Age in Months" >= 2)) and ("Current Patient Age in Months" <= 11)) and ("Date last Meningococcal dose given" >= "8 weeks" = true)) and ("Type of last Meningococcal dose" = "monovalent MenC conjugate"))
 */
define "Should vaccinate patient with monovalent MenC conjugate vaccine because 1 dose on 2 dose scheme":
	((((("Meningococcal vaccine immunization history" = "1 dose") and ("Current Patient Age in Months" >= 2)) and ("Current Patient Age in Months" <= 11)) and ("Date last Meningococcal dose given" >= "8 weeks" = true)) and ("Type of last Meningococcal dose" = "monovalent MenC conjugate"))

/* 
 * @dataElement 2 doses
 */
define "2 doses":
	0 // TODO: Define this

/* 
 * @dataElement Date last Meningococcal dose given >= 1 year
 */
define "Date last Meningococcal dose given >= 1 year":
	0 // TODO: Define this

/* 
 * @dataElement Age when patient received 1st dose
 */
define "Age when patient received 1st dose":
	0 // TODO: Define this

/* 
 * @dataElement 2 months
 */
define "2 months":
	0 // TODO: Define this

/* 
 * @dataElement 11 months
 */
define "11 months":
	0 // TODO: Define this

/*
 * Rule: Should vaccinate patient with monovalent MenC conjugate vaccine non-recurring booster because 1 year after last shot
 * Annotations:
 * 	 - Provide Meningococcal immunizations – using the "monovalent MenC conjugate vaccine immunization – Single non-recurring BOOSTER" schedule (1 dose booster)
 * Outputs:
 * 	 - Immunize Patient for Meningococcal - Non-recurring Booster
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (((((("Meningococcal vaccine immunization history" = "2 doses") and ("Date last Meningococcal dose given" >= "1 year" = true)) and ("Type of last Meningococcal dose" = "monovalent MenC conjugate")) and ("Age when patient received 1st dose" >= "2 months")) and ("Age when patient received 1st dose" <= "11 months")) and ("Region recommends Meningococcal vaccination" = true))
 */
define "Should vaccinate patient with monovalent MenC conjugate vaccine non-recurring booster because 1 year after last shot":
	(((((("Meningococcal vaccine immunization history" = "2 doses") and ("Date last Meningococcal dose given" >= "1 year" = true)) and ("Type of last Meningococcal dose" = "monovalent MenC conjugate")) and ("Age when patient received 1st dose" >= "2 months")) and ("Age when patient received 1st dose" <= "11 months")) and ("Region recommends Meningococcal vaccination" = true))

/*
 * Rule: Should vaccinate patient with monovalent MenC conjugate non-recurring booster 3-5 years after last shot
 * Annotations:
 * 	 - Provide Meningococcal immunizations – using the "monovalent MenC conjugate immunization – Single non-recurring BOOSTER" schedule (1 dose booster)
 * Outputs:
 * 	 - Immunize Patient for Meningococcal - Non-recurring Booster
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (((((("Patient has completed Meningococcal primary series" = true) and ("Date last Meningococcal dose given" >= "3 years" = true)) and ("Date last Meningococcal dose given" <= "5 years" = true)) and ("Type of last Meningococcal dose" = "monovalent MenC conjugate")) and ("Individual has a continued high risk of exposure (including health workers)" = true)) and ("Region recommends Meningococcal vaccination" = true))
 */
define "Should vaccinate patient with monovalent MenC conjugate non-recurring booster 3-5 years after last shot":
	(((((("Patient has completed Meningococcal primary series" = true) and ("Date last Meningococcal dose given" >= "3 years" = true)) and ("Date last Meningococcal dose given" <= "5 years" = true)) and ("Type of last Meningococcal dose" = "monovalent MenC conjugate")) and ("Individual has a continued high risk of exposure (including health workers)" = true)) and ("Region recommends Meningococcal vaccination" = true))

/* 
 * @dataElement Current Patient Age in Years
 */
define "Current Patient Age in Years":
	0 // TODO: Define this

/*
 * Rule: Should vaccinate patient with Quadrivalent conjugate vaccines (A,C,W135,Y-D and A,C,W135,Y-CRM) because no dose on 1 dose scheme
 * Annotations:
 * 	 - Provide Meningococcal immunizations – using the "Quadrivalent conjugate vaccines (A,C,W135,Y-D and A,C,W135,Y-CRM) immunization – NO PREVIOUS" schedule (1 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Meningococcal - No Doses
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ((("Meningococcal vaccine immunization history" = "No-doses") and ("Current Patient Age in Years" >= 2)) and ("Region recommends Meningococcal vaccination" = true))
 */
define "Should vaccinate patient with Quadrivalent conjugate vaccines (A,C,W135,Y-D and A,C,W135,Y-CRM) because no dose on 1 dose scheme":
	((("Meningococcal vaccine immunization history" = "No-doses") and ("Current Patient Age in Years" >= 2)) and ("Region recommends Meningococcal vaccination" = true))

/*
 * Rule: Should vaccinate patient with Quadrivalent conjugate vaccines (A,C,W135,Y-D) because no dose on 2 dose scheme
 * Annotations:
 * 	 - Provide Meningococcal immunizations – using the "Quadrivalent conjugate vaccines (A,C,W135,Y-D) immunization – NO PREVIOUS" schedule (2 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Meningococcal - No Doses
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (((("Meningococcal vaccine immunization history" = "No-doses") and ("Current Patient Age in Months" >= 9)) and ("Current Patient Age in Months" <= 23)) and ("Region recommends Meningococcal vaccination" = true))
 */
define "Should vaccinate patient with Quadrivalent conjugate vaccines (A,C,W135,Y-D) because no dose on 2 dose scheme":
	(((("Meningococcal vaccine immunization history" = "No-doses") and ("Current Patient Age in Months" >= 9)) and ("Current Patient Age in Months" <= 23)) and ("Region recommends Meningococcal vaccination" = true))

/* 
 * @dataElement Date last Meningococcal dose given 
 */
define "Date last Meningococcal dose given ":
	0 // TODO: Define this

/* 
 * @dataElement 12 weeks
 */
define "12 weeks":
	0 // TODO: Define this

/* 
 * @dataElement Quadrivalent conjugate
 */
define "Quadrivalent conjugate":
	0 // TODO: Define this

/*
 * Rule: Should vaccinate patient with Quadrivalent conjugate vaccines (A,C,W135,Y-D) on 2 dose scheme
 * Annotations:
 * 	 - Provide Meningococcal immunizations – using the "Quadrivalent conjugate vaccines (A,C,W135,Y-D) immunization – 1 PREVIOUS" schedule (2 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Meningococcal - 1 Dose
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ((("Meningococcal vaccine immunization history" = "1 dose") and ("Date last Meningococcal dose given " >= "12 weeks")) and ("Type of last Meningococcal dose" = "Quadrivalent conjugate"))
 */
define "Should vaccinate patient with Quadrivalent conjugate vaccines (A,C,W135,Y-D) on 2 dose scheme":
	((("Meningococcal vaccine immunization history" = "1 dose") and ("Date last Meningococcal dose given " >= "12 weeks")) and ("Type of last Meningococcal dose" = "Quadrivalent conjugate"))

/*
 * Rule: Should vaccinate patient with Quadrivalent conjugate vaccines (A,C,W135,Y-D) non-recurring booster 3-5 years after last shot
 * Annotations:
 * 	 - Provide Meningococcal immunizations – using the "Quadrivalent conjugate vaccines (A,C,W135,Y-D) immunization – Single non-recurring BOOSTER" schedule (1 dose booster)
 * Outputs:
 * 	 - Immunize Patient for Meningococcal - Non-recurring Booster
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (((((("Patient has completed Meningococcal primary series" = true) and ("Date last Meningococcal dose given" >= "3 years" = true)) and ("Date last Meningococcal dose given" <= "5 years" = true)) and ("Type of last Meningococcal dose" = "Quadrivalent conjugate")) and ("Individual has a continued high risk of exposure (including health workers)" = true)) and ("Region recommends Meningococcal vaccination" = true))
 */
define "Should vaccinate patient with Quadrivalent conjugate vaccines (A,C,W135,Y-D) non-recurring booster 3-5 years after last shot":
	(((((("Patient has completed Meningococcal primary series" = true) and ("Date last Meningococcal dose given" >= "3 years" = true)) and ("Date last Meningococcal dose given" <= "5 years" = true)) and ("Type of last Meningococcal dose" = "Quadrivalent conjugate")) and ("Individual has a continued high risk of exposure (including health workers)" = true)) and ("Region recommends Meningococcal vaccination" = true))

