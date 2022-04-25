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
include IMMZConfig called IMMZCon
include IMMZVaccineLibrary called IMMZvl
// End Skeleton CQL

context Patient

/*
 * Rule: Should vaccinate Patient for HPV because no doses on a two-dose schedule
 * Annotations:
 * 	 - Provide HPV immunizations - using the "HPV vaccine immunization - NO PREVIOUS" schedule (2 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for HPV - No Doses
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (((("HPV vaccine history" = "No-doses") and ("Sex" = "Female")) and ("Age" >= "9 years")) and ("Age" <= "14 years"))
 */
define "Should vaccinate Patient for HPV because no doses on a two-dose schedule":
	IMMZCom."No HPV Doses Administered to Patient" and 
	IMMZCom."Current Patient Age in Years" between 9 and 14
	IMMZCom."Patient Gender Is Female"
	(((("HPV vaccine history" = "No-doses") and ("Sex" = "Female")) and ("Age" >= "9 years")) and ("Age" <= "14 years"))

/* 
 * @dataElement 1-dose
 */
define "1-dose":
	0 // TODO: Define this

/* 
 * @dataElement Age <= 14 years
 */
define "Age <= 14 years":
	true // TODO: Define this

/* 
 * @dataElement Previous dose date
 */
define "Previous dose date":
	0 // TODO: Define this

/* 
 * @dataElement 6 months
 */
define "6 months":
	0 // TODO: Define this

/* 
 * @dataElement 12 months
 */
define "12 months":
	0 // TODO: Define this

/*
 * Rule: Should vaccinate Patient for HPV a second time on a two-dose schedule
 * Annotations:
 * 	 - Provide HPV immunizations - using "HPV vaccine immunization - ONE PREVIOUS" schedule (2 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for HPV - One Dose
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (((((("HPV vaccine history" = "1-dose") and ("Sex" = "Female")) and ("Age" >= "9 years")) and ("Age <= "14 years" = true)) and ("Previous dose date" >= "6 months")) and ("Previous dose date" <= "12 months"))
 */
define "Should vaccinate Patient for HPV a second time on a two-dose schedule":
	(((((("HPV vaccine history" = "1-dose") and ("Sex" = "Female")) and ("Age" >= "9 years")) and ("Age <= 14 years" = true)) and ("Previous dose date" >= "6 months")) and ("Previous dose date" <= "12 months"))

/* 
 * @dataElement Interval between first and second dose shorter than 5 months and at least six months after intitial dose
 */
define "Interval between first and second dose shorter than 5 months and at least six months after intitial dose":
	true // TODO: Define this

/*
 * Rule: Should vaccinate Patient for HPV a third time due to short interval between first and second dose
 * Annotations:
 * 	 - Provide additional HPV immunizations - using "HPV vaccination immunization - ONE PREVIOUS" schedule (2 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for HPV - Two Doses
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ((((("HPV vaccine history" = "1-dose") and ("Sex" = "Female")) and ("Interval between first and second dose shorter than 5 months and "at least six months after intitial dose" = true)) and ("Age" >= "9 years")) and ("Age" <= "14 years"))
 */
define "Should vaccinate Patient for HPV a third time due to short interval between first and second dose":
	((((("HPV vaccine history" = "1-dose") and ("Sex" = "Female")) and ("Interval between first and second dose shorter than 5 months and at least six months after intitial dose" = true)) and ("Age" >= "9 years")) and ("Age" <= "14 years"))

/* 
 * @dataElement 15 years
 */
define "15 years":
	0 // TODO: Define this

/* 
 * @dataElement Immunocompromised
 */
define "Immunocompromised":
	0 // TODO: Define this

/* 
 * @dataElement True
 */
define "True":
	0 // TODO: Define this

/*
 * Rule: Should vaccinate Patient for HPV because no doses on a three-dose schedule
 * Annotations:
 * 	 - Provide HPV immunizations - using the "HPV vaccine immunization - NO PREVIOUS" schedule (3 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for HPV - No Doses
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (((("HPV vaccine history" = "No-doses") and ("Sex" = "Female")) and ("Age" >= "15 years")) or (((("HPV vaccine history" = "No-doses") and ("Sex" = "Female")) and ("Age" < "15 years")) and ("Immunocompromised" = "True")))
 */
define "Should vaccinate Patient for HPV because no doses on a three-dose schedule":
	(((("HPV vaccine history" = "No-doses") and ("Sex" = "Female")) and ("Age" >= "15 years")) or (((("HPV vaccine history" = "No-doses") and ("Sex" = "Female")) and ("Age" < "15 years")) and ("Immunocompromised" = "True")))

/* 
 * @dataElement 1 month
 */
define "1 month":
	0 // TODO: Define this

/* 
 * @dataElement 2 months
 */
define "2 months":
	0 // TODO: Define this

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
 *	 (((((("HPV vaccine history" = "1-dose") and ("Sex" = "Female")) and ("Age" >= "15 years")) and ("Previous dose date" >= "1 month")) and ("Previous dose date" <= "2 months")) or (((((("HPV vaccine history" = "1-dose") and ("Sex" = "Female")) and ("Age" < "15 years")) and ("Immunocompromised" = "True")) and ("Previous dose date" >= "1 month")) and ("Previous dose date" <= "2 months")))
 */
define "Should vaccinate Patient for HPV because one dose on a three-dose schedule":
	(((((("HPV vaccine history" = "1-dose") and ("Sex" = "Female")) and ("Age" >= "15 years")) and ("Previous dose date" >= "1 month")) and ("Previous dose date" <= "2 months")) or (((((("HPV vaccine history" = "1-dose") and ("Sex" = "Female")) and ("Age" < "15 years")) and ("Immunocompromised" = "True")) and ("Previous dose date" >= "1 month")) and ("Previous dose date" <= "2 months")))

/* 
 * @dataElement 2-doses
 */
define "2-doses":
	0 // TODO: Define this

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
 *	 ((((("HPV vaccine history" = "2-doses") and ("Sex" = "Female")) and ("Age" >= "15 years")) and ("Previous dose date" >= "6 months")) or ((((("HPV vaccine history" = "2-doses") and ("Sex" = "Female")) and ("Age" < "15 years")) and ("Immunocompromised" = "True")) and ("Previous dose date" >= "6 months")))
 */
define "Should vaccinate Patient for HPV because two doses on a three-dose schedule":
	((((("HPV vaccine history" = "2-doses") and ("Sex" = "Female")) and ("Age" >= "15 years")) and ("Previous dose date" >= "6 months")) or ((((("HPV vaccine history" = "2-doses") and ("Sex" = "Female")) and ("Age" < "15 years")) and ("Immunocompromised" = "True")) and ("Previous dose date" >= "6 months")))

