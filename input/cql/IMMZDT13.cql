/*
 * Library: IMMZDT13 (IMMZ.DT.13.Tick-BorneEncephalitis)
 * Rule: If child or person has not been vaccinated, give Tick-Borne Encephalitis vaccine according to the defined schedule 
 * Trigger: Patient has not been vaccinated for Tick-Borne Encephalitis and is greater than 1 year old
 */
library IMMZDT13
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
 * @dataElement Tick-Borne Encephalitis immunization history
 */
define "Tick-Borne Encephalitis immunization history":
	0 // TODO: Define this

/* 
 * @dataElement No-doses
 */
define "No-doses":
	0 // TODO: Define this

/* 
 * @dataElement Current Patient Age in Years
 */
define "Current Patient Age in Years":
	0 // TODO: Define this

/* 
 * @dataElement Country recognizes TBE as a priority and is administering FSME-Immun and Encepur
 */
define "Country recognizes TBE as a priority and is administering FSME-Immun and Encepur":
	0 // TODO: Define this

/* 
 * @dataElement Country recognizes TBE as a priority and is administering TBE-Moscow and EnceVir
 */
define "Country recognizes TBE as a priority and is administering TBE-Moscow and EnceVir":
	0 // TODO: Define this

/*
 * Rule: Should vaccinate patient for Tick-Borne Encephalitis because no doses on 3 dose scheme
 * Annotations:
 * 	 - Provide Tick-Borne Encephalitis immunizations – using the "FSME-Immun and Encepur vaccine immunization – NO PREVIOUS" schedule (3 dose scheme)
 * 	 - Provide Tick-Borne Encephalitis immunizations – using the "TBE-Moscow and EnceVir vaccine immunization – NO PREVIOUS" schedule (3 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Tick-Borne Encephalitis  - No Doses
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (((("Tick-Borne Encephalitis immunization history" = "No-doses") and ("Current Patient Age in Years" >= 1)) and ("Country recognizes TBE as a priority and is administering FSME-Immun and Encepur" = true)) or ((("Tick-Borne Encephalitis immunization history" = "No-doses") and ("Current Patient Age in Years" >= 3)) and ("Country recognizes TBE as a priority and is administering TBE-Moscow and EnceVir" = true)))
 */
define "Should vaccinate patient for Tick-Borne Encephalitis because no doses on 3 dose scheme":
	(((("Tick-Borne Encephalitis immunization history" = "No-doses") and ("Current Patient Age in Years" >= 1)) and ("Country recognizes TBE as a priority and is administering FSME-Immun and Encepur" = true)) or ((("Tick-Borne Encephalitis immunization history" = "No-doses") and ("Current Patient Age in Years" >= 3)) and ("Country recognizes TBE as a priority and is administering TBE-Moscow and EnceVir" = true)))

/* 
 * @dataElement 1 dose
 */
define "1 dose":
	0 // TODO: Define this

/* 
 * @dataElement Date last FSME-Immun and Encepur dose given
 */
define "Date last FSME-Immun and Encepur dose given":
	0 // TODO: Define this

/* 
 * @dataElement 1 month
 */
define "1 month":
	0 // TODO: Define this

/* 
 * @dataElement 3 months
 */
define "3 months":
	0 // TODO: Define this

/* 
 * @dataElement 1 weeks
 */
define "1 weeks":
	0 // TODO: Define this

/* 
 * @dataElement 2 weeks
 */
define "2 weeks":
	0 // TODO: Define this

/* 
 * @dataElement Rapid protection is required
 */
define "Rapid protection is required":
	0 // TODO: Define this

/*
 * Rule: Should vaccinate patient for Tick-Borne Encephalitis because 1st dose given 1 to 3 months ago on 3 dose scheme
 * Annotations:
 * 	 - Provide Tick-Borne Encephalitis immunizations – using the "FSME-Immun and Encepur vaccine immunization – 1 PREVIOUS" schedule (3 dose scheme)
 * 	 - 
 * Outputs:
 * 	 - Immunize Patient for Tick-Borne Encephalitis  - 1st Dose given 1 to 3 months ago
 * 	 - 
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * 	- 
 * Logic:
 *	 ((((("Tick-Borne Encephalitis immunization history" = "1 dose") and ("Date last FSME-Immun and Encepur dose given" >= "1 month")) and ("Date last FSME-Immun and Encepur dose given" <= "3 months")) and ("Country recognizes TBE as a priority and is administering FSME-Immun and Encepur" = true)) or ((((("Tick-Borne Encephalitis immunization history" = "1 dose") and ("Date last FSME-Immun and Encepur dose given" >= "1 weeks")) and ("Date last FSME-Immun and Encepur dose given" <= "2 weeks")) and ("Rapid protection is required" = true)) and ("Country recognizes TBE as a priority and is administering FSME-Immun and Encepur" = true)))
 */
define "Should vaccinate patient for Tick-Borne Encephalitis because 1st dose given 1 to 3 months ago on 3 dose scheme":
	((((("Tick-Borne Encephalitis immunization history" = "1 dose") and ("Date last FSME-Immun and Encepur dose given" >= "1 month")) and ("Date last FSME-Immun and Encepur dose given" <= "3 months")) and ("Country recognizes TBE as a priority and is administering FSME-Immun and Encepur" = true)) or ((((("Tick-Borne Encephalitis immunization history" = "1 dose") and ("Date last FSME-Immun and Encepur dose given" >= "1 weeks")) and ("Date last FSME-Immun and Encepur dose given" <= "2 weeks")) and ("Rapid protection is required" = true)) and ("Country recognizes TBE as a priority and is administering FSME-Immun and Encepur" = true)))

/* 
 * @dataElement 2 doses 
 */
define "2 doses ":
	0 // TODO: Define this

/* 
 * @dataElement 5 months
 */
define "5 months":
	0 // TODO: Define this

/* 
 * @dataElement 12 months
 */
define "12 months":
	0 // TODO: Define this

/*
 * Rule: Should vaccinate patient for Tick-Borne Encephalitis because 2nd doses given 5 months to 12 months ago on 3 dose scheme
 * Annotations:
 * 	 - Provide Tick-Borne Encephalitis immunizations – using the "FSME-Immun and Encepur vaccine immunization – 2 PREVIOUS" schedule (3 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Tick-Borne Encephalitis  - 2nd Dose given between 5 months to 12 months ago
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (((("Tick-Borne Encephalitis immunization history" = "2 doses ") and ("Date last FSME-Immun and Encepur dose given" >= "5 months")) and ("Date last FSME-Immun and Encepur dose given" <= "12 months")) and ("Country recognizes TBE as a priority and is administering FSME-Immun and Encepur" = true))
 */
define "Should vaccinate patient for Tick-Borne Encephalitis because 2nd doses given 5 months to 12 months ago on 3 dose scheme":
	(((("Tick-Borne Encephalitis immunization history" = "2 doses ") and ("Date last FSME-Immun and Encepur dose given" >= "5 months")) and ("Date last FSME-Immun and Encepur dose given" <= "12 months")) and ("Country recognizes TBE as a priority and is administering FSME-Immun and Encepur" = true))

/* 
 * @dataElement Number of Tick-Borne Encephalitis doses administered
 */
define "Number of Tick-Borne Encephalitis doses administered":
	0 // TODO: Define this

/* 
 * @dataElement 3 years
 */
define "3 years":
	0 // TODO: Define this

/* 
 * @dataElement Date last TBE-Moscow and EnceVir dose given
 */
define "Date last TBE-Moscow and EnceVir dose given":
	0 // TODO: Define this

/*
 * Rule: Should vaccinate patient for Tick-Borne Encephalitis Booster because last dose given 3 years ago
 * Annotations:
 * 	 - Provide Tick-Borne Encephalitis immunizations – using the "FSME-Immun and Encepur vaccine immunization – BOOSTER" schedule (1 every 3 years)
 * 	 - Provide Tick-Borne Encephalitis immunizations – using the "TBE-Moscow and EnceVir vaccine immunization – BOOSTER" schedule (1 every 3 years)
 * Outputs:
 * 	 - Immunize Patient for Tick-Borne Encephalitis  - Last dose given 3 years ago
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (((("Number of Tick-Borne Encephalitis doses administered" >= 3) and ("Date last FSME-Immun and Encepur dose given" >= "3 years")) and ("Country recognizes TBE as a priority and is administering FSME-Immun and Encepur" = true)) or ((("Number of Tick-Borne Encephalitis doses administered" >= 3) and ("Date last TBE-Moscow and EnceVir dose given" >= "3 years")) and ("Country recognizes TBE as a priority and is administering TBE-Moscow and EnceVir" = true)))
 */
define "Should vaccinate patient for Tick-Borne Encephalitis Booster because last dose given 3 years ago":
	(((("Number of Tick-Borne Encephalitis doses administered" >= 3) and ("Date last FSME-Immun and Encepur dose given" >= "3 years")) and ("Country recognizes TBE as a priority and is administering FSME-Immun and Encepur" = true)) or ((("Number of Tick-Borne Encephalitis doses administered" >= 3) and ("Date last TBE-Moscow and EnceVir dose given" >= "3 years")) and ("Country recognizes TBE as a priority and is administering TBE-Moscow and EnceVir" = true)))

/* 
 * @dataElement 7 months
 */
define "7 months":
	0 // TODO: Define this

/*
 * Rule: Should vaccinate patient for Tick-Borne Encephalitis because 1st dose given 1 month to 7 months ago on 3 dose scheme
 * Annotations:
 * 	 - Provide Tick-Borne Encephalitis immunizations – using the "TBE-Moscow and EnceVir  vaccine immunization – 1 PREVIOUS" schedule (3 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Tick-Borne Encephalitis  - 1st Dose given 1 month to 7 months ago
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (((("Tick-Borne Encephalitis immunization history" = "1 dose") and ("Date last TBE-Moscow and EnceVir dose given" >= "1 month")) and ("Date last TBE-Moscow and EnceVir dose given" <= "7 months")) and ("Country recognizes TBE as a priority and is administering TBE-Moscow and EnceVir" = true))
 */
define "Should vaccinate patient for Tick-Borne Encephalitis because 1st dose given 1 month to 7 months ago on 3 dose scheme":
	(((("Tick-Borne Encephalitis immunization history" = "1 dose") and ("Date last TBE-Moscow and EnceVir dose given" >= "1 month")) and ("Date last TBE-Moscow and EnceVir dose given" <= "7 months")) and ("Country recognizes TBE as a priority and is administering TBE-Moscow and EnceVir" = true))

/* 
 * @dataElement 2 doses
 */
define "2 doses":
	0 // TODO: Define this

/*
 * Rule: Should vaccinate patient for Tick-Borne Encephalitis because 2nd dose given 12 months ago on 3 dose scheme
 * Annotations:
 * 	 - Provide Tick-Borne Encephalitis immunizations – using the "TBE-Moscow and EnceVir vaccine immunization – 2 PREVIOUS" schedule (3 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Tick-Borne Encephalitis  - 2nd Dose given 12 months ago
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ((("Tick-Borne Encephalitis immunization history" = "2 doses") and ("Date last TBE-Moscow and EnceVir dose given" >= "12 months")) and ("Country recognizes TBE as a priority and is administering TBE-Moscow and EnceVir" = true))
 */
define "Should vaccinate patient for Tick-Borne Encephalitis because 2nd dose given 12 months ago on 3 dose scheme":
	((("Tick-Borne Encephalitis immunization history" = "2 doses") and ("Date last TBE-Moscow and EnceVir dose given" >= "12 months")) and ("Country recognizes TBE as a priority and is administering TBE-Moscow and EnceVir" = true))

