/*
 * Library: IMMZDT10 (IMMZ.DT.10.HPV)
 * Rule: If child or person has not been vaccinated, give HPV vaccine according to the defined schedule 
 * Trigger: Patient has never received HPV vaccination
 */
library IMMZDT10
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
 * @dataElement Sex
 */
define "Sex":
	true; // TODO: Define this

/* 
 * @dataElement Female
 */
define "Female":
	true; // TODO: Define this

/*
 * Rule: Should vaccinate Patient for HPV because no doses on a two-dose schedule
 * Annotations:
 * 	 - Provide HPV immunizations - using the "HPV vaccine immunization - NO PREVIOUS" schedule (2 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for HPV - No Doses
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ("Sex" = "Female")
 */
define "Should vaccinate Patient for HPV because no doses on a two-dose schedule":
	("Sex" = "Female");
/* 
 * @dataElement Patient Age >= 9 years
 */
define "Patient Age >= 9 years":
	true; // TODO: Define this

/* 
 * @dataElement Patient Age <= 14 years
 */
define "Patient Age <= 14 years":
	true; // TODO: Define this

/*
 * Rule: Should vaccinate Patient for HPV a second time on a two-dose schedule
 * Annotations:
 * 	 - Provide HPV immunizations - using "HPV vaccine immunization - ONE PREVIOUS" schedule (2 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for HPV - One Dose
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ((("Sex" = "Female") and ("Patient Age" >= "9 years" = true)) and ("Patient Age <= "14 years" = true))
 */
define "Should vaccinate Patient for HPV a second time on a two-dose schedule":
	(((("HPV vaccine history" = "One-dose") and ("Sex" = "Female")) and ("Patient Age" >= "9 years")) and ("Patient Age <= "14 years" = true));
/*
 * Rule: Should vaccinate Patient for HPV a third time due to short interval between first and second dose
 * Annotations:
 * 	 - Provide additional HPV immunizations - using "HPV vaccination immunization - ONE PREVIOUS" schedule (2 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for HPV - Two Doses
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ("Sex" = "Female")
 */
define "Should vaccinate Patient for HPV a third time due to short interval between first and second dose":
	("Sex" = "Female");
/* 
 * @dataElement HPV vaccine history
 */
define "HPV vaccine history":
	true; // TODO: Define this

/* 
 * @dataElement No-doses
 */
define "No-doses":
	true; // TODO: Define this

/* 
 * @dataElement Immunocompromised
 */
define "Immunocompromised":
	true; // TODO: Define this

/* 
 * @dataElement True
 */
define "True":
	true; // TODO: Define this

/*
 * Rule: Should vaccinate Patient for HPV because no doses on a three-dose schedule
 * Annotations:
 * 	 - Provide HPV immunizations - using the "HPV vaccine immunization - NO PREVIOUS" schedule (3 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for HPV - No Doses
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ((("HPV vaccine history" = "No-doses") and ("Sex" = "Female")) or ((("HPV vaccine history" = "No-doses") and ("Sex" = "Female")) and ("Immunocompromised" = "True")))
 */
define "Should vaccinate Patient for HPV because no doses on a three-dose schedule":
	((("HPV vaccine history" = "No-doses") and ("Sex" = "Female")) or ((("HPV vaccine history" = "No-doses") and ("Sex" = "Female")) and ("Immunocompromised" = "True")));

/* 
 * @dataElement One-dose
 */
define "One-dose":
	true; // TODO: Define this

/* 
 * @dataElement 1-2 months after 1st dose
 */
define "1-2 months after 1st dose":
	true; // TODO: Define this

/*
 * Rule: Should vaccinate Patient for HPV because one dose on a three-dose schedule
 * Annotations:
 * 	 - Provide HPV immunizations - using the "HPV vaccine immunization -  ONE PREVIOUS" schedule (3 dose scheme)
 * 	 - 
 * Outputs:
 * 	 - Immunize Patient for HPV - One Dose
 * 	 - 
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * 	- 
 * Logic:
 *	 (((("HPV vaccine history" = "One-dose") and ("Sex" = "Female")) and ("1-2 months after 1st dose" = true)) or (((("HPV vaccine history" = "One-dose") and ("Sex" = "Female")) and ("Immunocompromised" = "True")) and ("1-2 months after 1st dose" = true)))
 */
define "Should vaccinate Patient for HPV because one dose on a three-dose schedule":
	(((("HPV vaccine history" = "One-dose") and ("Sex" = "Female")) and ("1-2 months after 1st dose" = true)) or (((("HPV vaccine history" = "One-dose") and ("Sex" = "Female")) and ("Immunocompromised" = "True")) and ("1-2 months after 1st dose" = true)));

/* 
 * @dataElement Two-doses
 */
define "Two-doses":
	true; // TODO: Define this

/* 
 * @dataElement 6 months after 1st dose
 */
define "6 months after 1st dose":
	true; // TODO: Define this

/*
 * Rule: Should vaccinate Patient for HPV because two doses on a three-dose schedule
 * Annotations:
 * 	 - Provide HPV immunizations - using the "HPV vaccine immunization -  TWO PREVIOUS" schedule (3 dose scheme)
 * 	 - 
 * Outputs:
 * 	 - Immunize Patient for HPV - Two Doses
 * 	 - 
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * 	- 
 * Logic:
 *	 (((("HPV vaccine history" = "Two-doses") and ("Sex" = "Female")) and ("6 months after 1st dose" = true)) or (((("HPV vaccine history" = "Two-doses") and ("Sex" = "Female")) and ("Immunocompromised" = "True")) and ("6 months after 1st dose" = true)))
 */
define "Should vaccinate Patient for HPV because two doses on a three-dose schedule":
	(((("HPV vaccine history" = "Two-doses") and ("Sex" = "Female")) and ("6 months after 1st dose" = true)) or (((("HPV vaccine history" = "Two-doses") and ("Sex" = "Female")) and ("Immunocompromised" = "True")) and ("6 months after 1st dose" = true)));

