/*
 * Library: IMMZDT15 (IMMZ.DT.15.Cholera)
 * Rule: If child or person has not been vaccinated, give the Cholera vaccine to child greater than or equal to 1 year old and adults 
 * Trigger: Patient has never received cholera vaccination and/or resides/is from an endemic region and/or there is an outbreak
 */
library IMMZDT15
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
 * @dataElement Cholera vaccine immunization history = No-doses
 */
define "Cholera vaccine immunization history = No-doses":
	0 // TODO: Define this

/* 
 * @dataElement Current Patient Age in Years
 */
define "Current Patient Age in Years":
	0 // TODO: Define this

/* 
 * @dataElement Region recommends Cholera vaccination
 */
define "Region recommends Cholera vaccination":
	0 // TODO: Define this

/* 
 * @dataElement Cholera vaccine immunization history = 1 dose
 */
define "Cholera vaccine immunization history = 1 dose":
	0 // TODO: Define this

/* 
 * @dataElement Date last Cholera dose given
 */
define "Date last Cholera dose given":
	0 // TODO: Define this

/* 
 * @dataElement 2 weeks
 */
define "2 weeks":
	0 // TODO: Define this

/* 
 * @dataElement Type of last Cholera dose
 */
define "Type of last Cholera dose":
	0 // TODO: Define this

/* 
 * @dataElement WC vaccines
 */
define "WC vaccines":
	0 // TODO: Define this

/*
 * Rule: Should vaccinate patient with a WC vaccines (Shanchol, Euvchol, and mORCVAX)
 * Annotations:
 * 	 - Provide Cholera immunizations – using the "WC vaccines (Shanchol, Euvchol, and mORCVAX) immunization – NO PREVIOUS" schedule (2 dose scheme)
 * 	 - Provide Cholera immunizations – using the "WC vaccines (Shanchol, Euvchol, and mORCVAX) immunization –1 PREVIOUS" schedule (2 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Cholera - No Doses
 * 	 - Immunize Patient for Cholera - 1 Dose
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (((("Cholera vaccine immunization history" = "No-doses" = true) and ("Current Patient Age in Years" >= 1)) and ("Region recommends Cholera vaccination" = true)) or ((("Cholera vaccine immunization history" = "1 dose" = true) and ("Date last Cholera dose given" >= "2 weeks")) and ("Type of last Cholera dose" = "WC vaccines")))
 */
define "Should vaccinate patient with a WC vaccines (Shanchol, Euvchol, and mORCVAX)":
	(((("Cholera vaccine immunization history" = "No-doses" = true) and ("Current Patient Age in Years" >= 1)) and ("Region recommends Cholera vaccination" = true)) or ((("Cholera vaccine immunization history" = "1 dose" = true) and ("Date last Cholera dose given" >= "2 weeks")) and ("Type of last Cholera dose" = "WC vaccines")))

/* 
 * @dataElement Patient has completed Cholera primary series
 */
define "Patient has completed Cholera primary series":
	0 // TODO: Define this

/* 
 * @dataElement 3 years
 */
define "3 years":
	0 // TODO: Define this

/*
 * Rule: Should Re-vaccinate patient with a WC vaccines (Shanchol, Euvchol, and mORCVAX) on a 2 dose scheme
 * Annotations:
 * 	 - Provide Cholera revaccination – using the "WC vaccines (Shanchol, Euvchol, and mORCVAX) immunization – Revaccination every 3 years" schedule (2 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Cholera - Last dose given 3 years ago
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (((("Patient has completed Cholera primary series" = true) and ("Date last Cholera dose given" >= "3 years")) and ("Type of last Cholera dose" = "WC vaccines")) and ("Region recommends Cholera vaccination" = true))
 */
define "Should Re-vaccinate patient with a WC vaccines (Shanchol, Euvchol, and mORCVAX) on a 2 dose scheme":
	(((("Patient has completed Cholera primary series" = true) and ("Date last Cholera dose given" >= "3 years")) and ("Type of last Cholera dose" = "WC vaccines")) and ("Region recommends Cholera vaccination" = true))

/* 
 * @dataElement Date last Cholera dose given >= 1 week
 */
define "Date last Cholera dose given >= 1 week":
	0 // TODO: Define this

/* 
 * @dataElement 6 months
 */
define "6 months":
	0 // TODO: Define this

/* 
 * @dataElement WC-rBS vaccine
 */
define "WC-rBS vaccine":
	0 // TODO: Define this

/* 
 * @dataElement Cholera vaccine immunization history
 */
define "Cholera vaccine immunization history":
	0 // TODO: Define this

/* 
 * @dataElement 2 doses
 */
define "2 doses":
	0 // TODO: Define this

/* 
 * @dataElement 6 weeks
 */
define "6 weeks":
	0 // TODO: Define this

/*
 * Rule: Should vaccinate patient with WC-rBS vaccine (Dukoral)
 * Annotations:
 * 	 - Provide Cholera immunizations – using the "WC-rBS vaccine (Dukoral) immunization – NO PREVIOUS" schedule (3 dose scheme)
 * 	 - Provide Cholera immunizations – using the "WC-rBS vaccine (Dukoral) immunization – 1 PREVIOUS" schedule (3 dose scheme), doses to be given in an interval of
 * 	 - Provide Cholera immunizations – using the "WC-rBS vaccine (Dukoral) immunization – 2 PREVIOUS" schedule (3 dose scheme)
 * 	 - Provide Cholera immunizations – using the "WC-rBS vaccine (Dukoral) immunization – NO PREVIOUS" schedule (2 dose scheme)
 * 	 - Provide Cholera immunizations – using the "WC-rBS vaccine (Dukoral) immunization – 1 PREVIOUS" schedule (2 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Cholera - No Doses
 * 	 - Immunize Patient for Cholera - 1 dose
 * 	 - Immunize Patient for Cholera - 2 doses
 * 	 - Immunize Patient for Cholera - No doses
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (((((((("Cholera vaccine immunization history" = "No-doses" = true) and ("Current Patient Age in Years" >= 2)) and ("Current Patient Age in Years" <= 5)) and ("Region recommends Cholera vaccination" = true)) or (((("Cholera vaccine immunization history" = "1 dose" = true) and ("Date last Cholera dose given" >= "1 week" = true)) and ("Date last Cholera dose given" <= "6 months")) and ("Type of last Cholera dose" = "WC-rBS vaccine"))) or (((("Cholera vaccine immunization history" = "2 doses") and ("Date last Cholera dose given" >= "1 week" = true)) and ("Date last Cholera dose given" <= "6 months")) and ("Type of last Cholera dose" = "WC-rBS vaccine"))) or ((("Cholera vaccine immunization history" = "No-doses" = true) and ("Current Patient Age in Years" >= 6)) and ("Region recommends Cholera vaccination" = true))) or (((("Cholera vaccine immunization history" = "1 dose" = true) and ("Date last Cholera dose given" >= "1 week" = true)) and ("Date last Cholera dose given" <= "6 weeks")) and ("Type of last Cholera dose" = "WC-rBS vaccine")))
 */
define "Should vaccinate patient with WC-rBS vaccine (Dukoral)":
	(((((((("Cholera vaccine immunization history" = "No-doses" = true) and ("Current Patient Age in Years" >= 2)) and ("Current Patient Age in Years" <= 5)) and ("Region recommends Cholera vaccination" = true)) or (((("Cholera vaccine immunization history" = "1 dose" = true) and ("Date last Cholera dose given" >= "1 week" = true)) and ("Date last Cholera dose given" <= "6 months")) and ("Type of last Cholera dose" = "WC-rBS vaccine"))) or (((("Cholera vaccine immunization history" = "2 doses") and ("Date last Cholera dose given" >= "1 week" = true)) and ("Date last Cholera dose given" <= "6 months")) and ("Type of last Cholera dose" = "WC-rBS vaccine"))) or ((("Cholera vaccine immunization history" = "No-doses" = true) and ("Current Patient Age in Years" >= 6)) and ("Region recommends Cholera vaccination" = true))) or (((("Cholera vaccine immunization history" = "1 dose" = true) and ("Date last Cholera dose given" >= "1 week" = true)) and ("Date last Cholera dose given" <= "6 weeks")) and ("Type of last Cholera dose" = "WC-rBS vaccine")))

/* 
 * @dataElement Date last Cholera dose given <= 6 months
 */
define "Date last Cholera dose given <= 6 months":
	0 // TODO: Define this

/* 
 * @dataElement Date last Cholera dose given <= 2 years
 */
define "Date last Cholera dose given <= 2 years":
	0 // TODO: Define this

/*
 * Rule: Should re-vaccinate patient with WC-rBS vaccine (Dukoral)
 * Annotations:
 * 	 - Provide Cholera revaccination – using the "WC-rBS vaccine (Dukoral) immunization – Revaccination every 6 months" schedule (1 dose scheme)
 * 	 - Provide Cholera revaccination – using the "WC-rBS vaccine (Dukoral) immunization – Revaccination every 2 years" schedule (1 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Cholera - revaccination for ages 2-5 within 6 months of last WC-rBS dose
 * 	 - Immunize Patient for Cholera - revaccination for ages 6+ within 2 years of last WC-rBS dose
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ((((((("Patient has completed Cholera primary series" = true) and ("Current Patient Age in Years" >= 2)) and ("Current Patient Age in Years" <= 5)) and ("Date last Cholera dose given" <= "6 months" = true)) and ("Type of last Cholera dose" = "WC-rBS vaccine")) and ("Region recommends Cholera vaccination" = true)) or ((((("Patient has completed Cholera primary series" = true) and ("Current Patient Age in Years" >= 6)) and ("Date last Cholera dose given" <= "2 years" = true)) and ("Type of last Cholera dose" = "WC-rBS vaccine")) and ("Region recommends Cholera vaccination" = true)))
 */
define "Should re-vaccinate patient with WC-rBS vaccine (Dukoral)":
	((((((("Patient has completed Cholera primary series" = true) and ("Current Patient Age in Years" >= 2)) and ("Current Patient Age in Years" <= 5)) and ("Date last Cholera dose given" <= "6 months" = true)) and ("Type of last Cholera dose" = "WC-rBS vaccine")) and ("Region recommends Cholera vaccination" = true)) or ((((("Patient has completed Cholera primary series" = true) and ("Current Patient Age in Years" >= 6)) and ("Date last Cholera dose given" <= "2 years" = true)) and ("Type of last Cholera dose" = "WC-rBS vaccine")) and ("Region recommends Cholera vaccination" = true)))

/* 
 * @dataElement Date last Cholera dose given >= 6 months
 */
define "Date last Cholera dose given >= 6 months":
	0 // TODO: Define this

/*
 * Rule: Should Re-vaccinate patient with WC-rBS vaccine (Dukoral) on a 3 dose scheme
 * Annotations:
 * 	 - Provide Cholera revaccination – using the "WC-rBS vaccine (Dukoral) immunization – Revaccination" schedule (3 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Cholera - revaccination for ages 2-5 where last WC-rBS dose was given more than 6 months ago
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (((((("Patient has completed Cholera primary series" = true) and ("Current Patient Age in Years" >= 2)) and ("Current Patient Age in Years" <= 5)) and ("Date last Cholera dose given" >= "6 months" = true)) and ("Type of last Cholera dose" = "WC-rBS vaccine")) and ("Region recommends Cholera vaccination" = true))
 */
define "Should Re-vaccinate patient with WC-rBS vaccine (Dukoral) on a 3 dose scheme":
	(((((("Patient has completed Cholera primary series" = true) and ("Current Patient Age in Years" >= 2)) and ("Current Patient Age in Years" <= 5)) and ("Date last Cholera dose given" >= "6 months" = true)) and ("Type of last Cholera dose" = "WC-rBS vaccine")) and ("Region recommends Cholera vaccination" = true))

/* 
 * @dataElement Date last Cholera dose given >= 2 years
 */
define "Date last Cholera dose given >= 2 years":
	0 // TODO: Define this

/*
 * Rule: Should Re-vaccinate patient with WC-rBS vaccine (Dukoral) on a 2 dose scheme
 * Annotations:
 * 	 - Provide Cholera revaccination – using the "WC-rBS vaccine (Dukoral) immunization – Revaccination" schedule (2 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Cholera - revaccination for ages 6+ where last WC-rBS dose was given more than 2 years ago
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ((((("Patient has completed Cholera primary series" = true) and ("Current Patient Age in Years" >= 6)) and ("Date last Cholera dose given" >= "2 years" = true)) and ("Type of last Cholera dose" = "WC-rBS vaccine")) and ("Region recommends Cholera vaccination" = true))
 */
define "Should Re-vaccinate patient with WC-rBS vaccine (Dukoral) on a 2 dose scheme":
	((((("Patient has completed Cholera primary series" = true) and ("Current Patient Age in Years" >= 6)) and ("Date last Cholera dose given" >= "2 years" = true)) and ("Type of last Cholera dose" = "WC-rBS vaccine")) and ("Region recommends Cholera vaccination" = true))

