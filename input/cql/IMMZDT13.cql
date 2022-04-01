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
 * @dataElement Age
 */
define "Age":
	0 // TODO: Define this

/* 
 * @dataElement 1 year
 */
define "1 year":
	0 // TODO: Define this

/*
 * Rule: Should vaccinate patient for Tick-Borne Encephalitis because No dose  on 3 dose scheme
 * Annotations:
 * 	 - Provide Tick-Borne Encephalitis immunizations – using the "FSME-Immun and Encepur vaccine immunization – NO PREVIOUS" schedule (3 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Tick-Borne Encephalitis  - No Doses
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://w
ww.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (("Tick-Borne Encephalitis immunization history" = "No-doses") and ("Age" >= "1 year"))
 */
define "Should vaccinate patient for Tick-Borne Encephalitis because No dose  on 3 dose scheme":
	(("Tick-Borne Encephalitis immunization history" = "No-doses") and ("Age" >= "1 year"))

/* 
 * @dataElement 1-dose
 */
define "1-dose":
	0 // TODO: Define this

/*
 * Rule: Should vaccinate patient for Tick-Borne Encephalitis because 1st  dose given 1 to 3 months ago on 3 dose scheme
 * Annotations:
 * 	 - Provide Tick-Borne Encephalitis immunizations – using the "FSME-Immun and Encepur vaccine immunization – 1 PREVIOUS" schedule (3 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Tick-Borne Encephalitis  - 1st Dose given 1 to 3 months ago
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://w
ww.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (("Tick-Borne Encephalitis immunization history" = "1-dose") and ("Age" >= "1 year"))
 */
define "Should vaccinate patient for Tick-Borne Encephalitis because 1st  dose given 1 to 3 months ago on 3 dose scheme":
	(("Tick-Borne Encephalitis immunization history" = "1-dose") and ("Age" >= "1 year"))

/* 
 * @dataElement  2 doses 
 */
define " 2 doses ":
	0 // TODO: Define this

/*
 * Rule: Should vaccinate patient for Tick-Borne Encephalitis because 2nd doses given 5 months to 12 months ago on 3 dose scheme
 * Annotations:
 * 	 - Provide Tick-Borne Encephalitis immunizations – using the "FSME-Immun and Encepur vaccine immunization – 2 PREVIOUS" schedule (3 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Tick-Borne Encephalitis  - 2nd Dose given between 5 months to 12 months ago
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://w
ww.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (("Tick-Borne Encephalitis immunization history" = " 2 doses ") and ("Age" > "1 year"))
 */
define "Should vaccinate patient for Tick-Borne Encephalitis because 2nd doses given 5 months to 12 months ago on 3 dose scheme":
	(("Tick-Borne Encephalitis immunization history" = " 2 doses ") and ("Age" > "1 year"))

/* 
 * @dataElement No-doses 
 */
define "No-doses ":
	0 // TODO: Define this

/* 
 * @dataElement 3 years
 */
define "3 years":
	0 // TODO: Define this

/*
 * Rule: Should vaccinate patient for Tick-Borne Encephalitis because no doses on 3 dose scheme
 * Annotations:
 * 	 - Provide Tick-Borne Encephalitis immunizations – using the "TBE-Moscow and EnceVir vaccine immunization – NO PREVIOUS" schedule (3 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Tick-Borne Encephalitis  - No Doses
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://w
ww.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (("Tick-Borne Encephalitis immunization history" = "No-doses ") and ("Age" >= "3 years"))
 */
define "Should vaccinate patient for Tick-Borne Encephalitis because no doses on 3 dose scheme":
	(("Tick-Borne Encephalitis immunization history" = "No-doses ") and ("Age" >= "3 years"))

/* 
 * @dataElement 1 dose
 */
define "1 dose":
	0 // TODO: Define this

/* 
 * @dataElement Last TBE-Moscow and EnceVir vaccine given
 */
define "Last TBE-Moscow and EnceVir vaccine given":
	0 // TODO: Define this

/* 
 * @dataElement 1 month
 */
define "1 month":
	0 // TODO: Define this

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
 * 	- WHO recommendations for routine immunization - summary tables: https://w
ww.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (((("Tick-Borne Encephalitis immunization history" = "1 dose") and ("Age" >= "3 years")) and ("Last TBE-Moscow and EnceVir vaccine given" >= "1 month")) and ("Last TBE-Moscow and EnceVir vaccine given" <= "7 months"))
 */
define "Should vaccinate patient for Tick-Borne Encephalitis because 1st dose given 1 month to 7 months ago on 3 dose scheme":
	(((("Tick-Borne Encephalitis immunization history" = "1 dose") and ("Age" >= "3 years")) and ("Last TBE-Moscow and EnceVir vaccine given" >= "1 month")) and ("Last TBE-Moscow and EnceVir vaccine given" <= "7 months"))

/* 
 * @dataElement 2 doses
 */
define "2 doses":
	0 // TODO: Define this

/* 
 * @dataElement TBE-Moscow and EnceVir vaccine given  12 months
 */
define "TBE-Moscow and EnceVir vaccine given 12 months":
	true // TODO: Define this

/*
 * Rule: Should vaccinate patient for Tick-Borne Encephalitis because 2nd dose given 12 months ago on 3 dose scheme
 * Annotations:
 * 	 - Provide Tick-Borne Encephalitis immunizations – using the "TBE-Moscow and EnceVir vaccine immunization – 2 PREVIOUS" schedule (3 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Tick-Borne Encephalitis  - 2nd Dose given 12 months ago
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://w
ww.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ((("Tick-Borne Encephalitis immunization history" = "2 doses") and ("Age" >= "3 years")) and ("TBE-Moscow and EnceVir vaccine given"  "12 months" = true))
 */
define "Should vaccinate patient for Tick-Borne Encephalitis because 2nd dose given 12 months ago on 3 dose scheme":
	((("Tick-Borne Encephalitis immunization history" = "2 doses") and ("Age" >= "3 years")) and ("TBE-Moscow and EnceVir vaccine given 12 months" = true))

/* 
 * @dataElement  No doses
 */
define " No doses":
	0 // TODO: Define this

/* 
 * @dataElement In the endemic area
 */
define "In the endemic area":
	true // TODO: Define this

/* 
 * @dataElement Travelling to the endemic area
 */
define "Travelling to the endemic area":
	true // TODO: Define this

/*
 * Rule: Should vaccinate patient for Tick-Borne Encephalitis because No doses on 3 dose scheme
 * Annotations:
 * 	 - Provide Tick-Borne Encephalitis immunizations – using the "FSME-Immun and Encepur vaccine immunization – NO PREVIOUS" schedule (3 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Tick-Borne Encephalitis - No Doses
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://w
ww.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ((("Tick-Borne Encephalitis immunization history" = " No doses") and ("In the endemic area" = true)) and ("Travelling to the endemic area" = true))
 */
define "Should vaccinate patient for Tick-Borne Encephalitis because No doses on 3 dose scheme":
	((("Tick-Borne Encephalitis immunization history" = " No doses") and ("In the endemic area" = true)) and ("Travelling to the endemic area" = true))

/* 
 * @dataElement  1 dose given 1 to 2 weeks before and in/travelling to endemic area
 */
define " 1 dose given 1 to 2 weeks before and in/travelling to endemic area":
	0 // TODO: Define this

/* 
 * @dataElement FSME-Immun and Encepur vaccine given
 */
define "FSME-Immun and Encepur vaccine given":
	0 // TODO: Define this

/* 
 * @dataElement 1 week
 */
define "1 week":
	0 // TODO: Define this

/* 
 * @dataElement FSME-Immun and Encepur vaccine
 */
define "FSME-Immun and Encepur vaccine":
	0 // TODO: Define this

/* 
 * @dataElement 2 weeks
 */
define "2 weeks":
	0 // TODO: Define this

/* 
 * @dataElement  In the endemic area
 */
define " In the endemic area":
	0 // TODO: Define this

/*
 * Rule: Should vaccinate patient for Tick-Borne Encephalitis because 1 dose given 1 week to 2 weeks ago on 3 dose scheme
 * Annotations:
 * 	 - Provide Tick-Borne Encephalitis immunizations – using the "FSME-Immun and Encepur vaccine immunization – 1 PREVIOUS" schedule (3 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Tick-Borne Encephalitis - 1 Dose
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://w
ww.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ((((("Tick-Borne Encephalitis immunization history" = " 1 dose given 1 to 2 weeks before and in/travelling to endemic area") and ("FSME-Immun and Encepur vaccine given" >= "1 week")) and ("FSME-Immun and Encepur vaccine" <= "2 weeks")) and (" In the endemic area" = true)) and ("Travelling to the endemic area" = true))
 */
define "Should vaccinate patient for Tick-Borne Encephalitis because 1 dose given 1 week to 2 weeks ago on 3 dose scheme":
	((((("Tick-Borne Encephalitis immunization history" = " 1 dose given 1 to 2 weeks before and in/travelling to endemic area") and ("FSME-Immun and Encepur vaccine given" >= "1 week")) and ("FSME-Immun and Encepur vaccine" <= "2 weeks")) and ("In the endemic area" = true)) and ("Travelling to the endemic area" = true))

/* 
 * @dataElement Tick-BorneEnce phalitis immunization history
 */
define "Tick-BorneEnce phalitis immunization history":
	0 // TODO: Define this

/* 
 * @dataElement  2 doses given 5 to 12 months before and in/travelling to endemic area
 */
define " 2 doses given 5 to 12 months before and in/travelling to endemic area":
	0 // TODO: Define this

/* 
 * @dataElement Last FSME-Immun and Encepur vaccine given >= 5 months
 */
define "Last FSME-Immun and Encepur vaccine given":
	0 // TODO: Define this

define "5 months":
	0

/* 
 * @dataElement Last FSME-Immun and Encepur vaccine given <= 12 months
 */
define "12 months":
	0 // TODO: Define this

/*
 * Rule: Should vaccinate patient for Tick-Borne Encephalitis because 2nd dose given 5 months to 12 months ago on 3 dose scheme
 * Annotations:
 * 	 - Provide Tick-Borne Encephalitis immunizations – using the "FSME-Immun and Encepur vaccine immunization – 2 PREVIOUS" schedule (3 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Tick-Borne Encephalitis - 2nd Dose given 5 months to 12 months ago
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://w
ww.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ((((("Tick-BorneEnce phalitis immunization history" = " 2 doses given 5 to 12 months before and in/travelling to endemic area") and ("In the endemic area" = true)) and ("Travelling to the endemic area" = true)) and ("Last FSME-Immun and Encepur vaccine given" >= "5 months" = true)) and ("Last FSME-Immun and Encepur vaccine given" <= "12 months" = true))
 */
define "Should vaccinate patient for Tick-Borne Encephalitis because 2nd dose given 5 months to 12 months ago on 3 dose scheme":
	((((("Tick-BorneEnce phalitis immunization history" = " 2 doses given 5 to 12 months before and in/travelling to endemic area") and ("In the endemic area" = true)) and ("Travelling to the endemic area" = true)) and ("Last FSME-Immun and Encepur vaccine given" >= "5 months")) and ("Last FSME-Immun and Encepur vaccine given" <= "12 months"))

