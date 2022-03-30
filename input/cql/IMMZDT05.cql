/*
 * Library: IMMZDT05 (IMMZ.DT.05.Hib)
 * Rule: if child or person has not been vaccinated, give Hib vaccine between 4 and 18 months 
 * Trigger: Patient has never received Hib vaccination
 */
library IMMZDT05
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
 * @dataElement Hib vaccine immunization history = No-doses
 */
define "Hib vaccine immunization history = No-doses":
	true; // TODO: Define this

/* 
 * @dataElement Age > 12 months
 */
define "Age > 12 months":
	true; // TODO: Define this

/* 
 * @dataElement No known allergies to any component of the vaccine
 */
define "No known allergies to any component of the vaccine":
	true; // TODO: Define this

/*
 * Rule: Should vaccinate patient for Hib because no doses on 1 dose scheme
 * Annotations:
 * 	 - Provide Hib immunizations – using the "Hib Vaccine immunization – NO PREVIOUS" schedule (1 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Hib - No Doses
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://w
ww.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ((("Hib vaccine immunization history" = "No-doses" = true) and ("Age > 12 months" = true)) and ("No known allergies to any component of the vaccine" = true))
 */
define "Should vaccinate patient for Hib because no doses on 1 dose scheme":
	((("Hib vaccine immunization history" = "No-doses") and ("Age > 12 months" = true)) and ("No known allergies to any component of the vaccine" = true));
/* 
 * @dataElement Hib vaccine immunization history
 */
define "Hib vaccine immunization history":
	true; // TODO: Define this

/* 
 * @dataElement No-doses
 */
define "No-doses":
	true; // TODO: Define this

/* 
 * @dataElement Age >= 6 weeks
 */
define "Age >= 6 weeks":
	true; // TODO: Define this

/* 
 * @dataElement No known allergies to any componentof the vaccine
 */
define "No known allergies to any componentof the vaccine":
	true; // TODO: Define this

/* 
 * @dataElement In a country where the peak burden of severe Hib disease occurs in young infants
 */
define "In a country where the peak burden of severe Hib disease occurs in young infants":
	true; // TODO: Define this

/*
 * Rule: Should vaccinate patient for Hib because no doses on 3 dose scheme
 * Annotations:
 * 	 - Provide Hib immunizations – using the "Hib Vaccine immunization 3p schedule – NO PREVIOUS" schedule (3 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Hib - No Doses
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://w
ww.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (((("Hib vaccine immunization history" = "No-doses") and ("Age >= 6 weeks" = true)) and ("No known allergies to any componentof the vaccine" = true)) and ("In a country where the peak burden of severe Hib disease occurs in young infants" = true))
 */
define "Should vaccinate patient for Hib because no doses on 3 dose scheme":
	((("Hib vaccine immunization history" = "No-doses") and ("Age >= 6 weeks" = true)) and ("No known allergies to any componentof the vaccine" = true));
/* 
 * @dataElement Hib vaccine immunization history = 1-dose
 */
define "Hib vaccine immunization history = 1-dose":
	true; // TODO: Define this

/* 
 * @dataElement Last Hib vaccine immunization dose given
 */
define "Last Hib vaccine immunization dose given":
	true; // TODO: Define this

/* 
 * @dataElement 4 weeks ago
 */
define "4 weeks ago":
	true; // TODO: Define this

/* 
 * @dataElement Age>= 6 weeks
 */
define "Age>= 6 weeks":
	true; // TODO: Define this

/* 
 * @dataElement 1-dose given 4 weeks ago
 */
define "1-dose given 4 weeks ago":
	true; // TODO: Define this

/* 
 * @dataElement Last Hib Vaccine immunization dose given
 */
define "Last Hib Vaccine immunization dose given":
	true; // TODO: Define this

/* 
 * @dataElement Age>= 6 weeks 
 */
define "Age>= 6 weeks ":
	true; // TODO: Define this

/* 
 * @dataElement In a setting (e.g. where the greatest disease morbidity and mortality occur later, or whererate reductions of disease are not fully sustained after the routine use of Hib vaccine)
 */
define "In a setting (e.g. where the greatest disease morbidity and mortality occur later, or whererate reductions of disease are not fully sustained after the routine use of Hib vaccine)":
	true; // TODO: Define this

/*
 * Rule: Should vaccinate patient for Hib because 1 dose on 3 dose scheme
 * Annotations:
 * 	 - Provide Hib immunizations – using the "Hib Vaccine immunization 3p schedule – 1 PREVIOUS" schedule (3 dose scheme)
 * 	 - Provide Hib immunizations – using the "Hib Vaccine immunization 3p + 1 schedule – 1 PREVIOUS" schedule (3 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Hib - 1 Dose
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://w
ww.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (((((("Hib vaccine immunization history" = "1-dose" = true) and ("Last Hib vaccine immunization dose given" >= "4 weeks ago")) and ("Age>= 6 weeks" = true)) and ("No known allergies to any componentof the vaccine" = true)) and ("In a country where the peak burden of severe Hib disease occurs in young infants"" = true)) or ((((("Hib vaccine immunization history" = "1-dose given 4 weeks ago") and ("Last Hib Vaccine immunization dose given" >= "4 weeks ago")) and ("Age>= 6 weeks " = true)) and ("No known allergies to any componentof the vaccine" = true)) and ("In a setting (e.g. where the greatest disease morbidity and mortality occur later, or whererate reductions of disease are not fully sustained after the routine use of Hib vaccine)" = true)))
 */
define "Should vaccinate patient for Hib because 1 dose on 3 dose scheme":
	(((((("Hib vaccine immunization history" = "1-dose") and ("Last Hib vaccine immunization dose given" >= "4 weeks ago")) and ("Age>= 6 weeks" = true)) and ("No known allergies to any componentof the vaccine" = true)) and ("In a country where the peak burden of severe Hib disease occurs in young infants"" = true)) or ((((("Hib vaccine immunization history" = "1-dose given 4 weeks ago") and ("Last Hib Vaccine immunization dose given" >= "4 weeks ago")) and ("Age>= 6 weeks " = true)) and ("No known allergies to any componentof the vaccine" = true)) and ("In a setting (e.g. where the greatest disease morbidity and mortality occur later, or whererate reductions of disease are not fully sustained after the routine use of Hib vaccine)" = true)));
/* 
 * @dataElement 2-doses
 */
define "2-doses":
	true; // TODO: Define this

/* 
 * @dataElement Age >= 6 weeks 
 */
define "Age >= 6 weeks ":
	true; // TODO: Define this

/* 
 * @dataElement 2-doses given 4 weeks ago
 */
define "2-doses given 4 weeks ago":
	true; // TODO: Define this

/* 
 * @dataElement Age
 */
define "Age":
	true; // TODO: Define this

/* 
 * @dataElement 6 weeks
 */
define "6 weeks":
	true; // TODO: Define this

/*
 * Rule: Should vaccinate patient for Hib because 2 doses on 3 dose scheme
 * Annotations:
 * 	 - Provide Hib immunizations – using the "Hib Vaccine immunization 3p schedule – 2 PREVIOUS" schedule (3 dose scheme)
 * 	 - Provide Hib immunizations – using the "Hib Vaccine immunization 3p + 1 schedule – 2 PREVIOUS" schedule (3 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Hib - 2 Doses
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://w
ww.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (((((("Hib vaccine immunization history" = "2-doses") and ("Last Hib vaccine immunization dose given" >= "4 weeks ago")) and ("Age >= 6 weeks " = true)) and ("No known allergies to any componentof the vaccine" = true)) and ("In a country where the peak burden of severe Hib disease occurs in young infants"" = true)) or ((((("Hib vaccine immunization history" = "2-doses given 4 weeks ago") and ("Last Hib Vaccine immunization dose given" >= "4 weeks ago")) and ("Age" >= "6 weeks")) and ("No known allergies to any componentof the vaccine" = true)) and ("In a setting (e.g. where the greatest disease morbidity and mortality occur later, or whererate reductions of disease are not fully sustained after the routine use of Hib vaccine)" = true)))
 */
define "Should vaccinate patient for Hib because 2 doses on 3 dose scheme":
	(((((("Hib vaccine immunization history" = "2-doses") and ("Last Hib vaccine immunization dose given" >= "4 weeks ago")) and ("Age >= 6 weeks " = true)) and ("No known allergies to any componentof the vaccine" = true)) and ("In a country where the peak burden of severe Hib disease occurs in young infants"" = true)) or ((((("Hib vaccine immunization history" = "2-doses given 4 weeks ago") and ("Last Hib Vaccine immunization dose given" >= "4 weeks ago")) and ("Age" >= "6 weeks")) and ("No known allergies to any componentof the vaccine" = true)) and ("In a setting (e.g. where the greatest disease morbidity and mortality occur later, or whererate reductions of disease are not fully sustained after the routine use of Hib vaccine)" = true)));
/*
 * Rule: Should vaccinate patient for Hib because No dose on 3 dose scheme
 * Annotations:
 * 	 - Provide Hib immunizations – using the "Hib Vaccine immunization 3p + 1 schedule – NO PREVIOUS" schedule (3 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Hib - No Doses
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://w
ww.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (((("Hib vaccine immunization history" = "No-doses") and ("Age >= 6 weeks " = true)) and ("No known allergies to any componentof the vaccine" = true)) and ("In a setting (e.g. where the greatest disease morbidity and mortality occur later, or whererate reductions of disease are not fully sustained after the routine use of Hib vaccine)" = true))
 */
define "Should vaccinate patient for Hib because No dose on 3 dose scheme":
	(((("Hib vaccine immunization history" = "No-doses") and ("Age >= 6 weeks " = true)) and ("No known allergies to any componentof the vaccine" = true)) and ("In a setting (e.g. where the greatest disease morbidity and mortality occur later, or whererate reductions of disease are not fully sustained after the routine use of Hib vaccine)" = true));
/*
 * Rule: Should vaccinate patient for Hib because No dose on 2 dose scheme
 * Annotations:
 * 	 - Provide Hib immunizations – using the "Hib Vaccine immunization 2p + 1 schedule – NO PREVIOUS" schedule (2 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Hib - No Doses
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://w
ww.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ((("Hib vaccine immunization history" = "No-doses") and ("Age" >= "6 weeks")) and ("No known allergies to any componentof the vaccine" = true))
 */
define "Should vaccinate patient for Hib because No dose on 2 dose scheme":
	((("Hib vaccine immunization history" = "No-doses") and ("Age" >= "6 weeks")) and ("No known allergies to any componentof the vaccine" = true));
/* 
 * @dataElement 1-dose
 */
define "1-dose":
	true; // TODO: Define this

/* 
 * @dataElement 8 weeks ago
 */
define "8 weeks ago":
	true; // TODO: Define this

/*
 * Rule: Should vaccinate patient for Hib because 1 dose on 2 dose scheme
 * Annotations:
 * 	 - Provide Hib immunizations – using the "Hib Vaccine immunization 2p + 1 schedule – 1 PREVIOUS" schedule (2 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Hib - 1 Dose
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://w
ww.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ((((("Hib vaccine immunization history" = "1-dose") and ("Last Hib Vaccine immunization dose given" >= "8 weeks ago")) and ("Age" >= "6 weeks" = true)) and ("No known allergies to any componentof the vaccine" = true)) and ("In a setting (e.g. where the greatest disease morbidity and mortality occur later, or whererate reductions of disease are not fully sustained after the routine use of Hib vaccine)" = true))
 */
define "Should vaccinate patient for Hib because 1 dose on 2 dose scheme":
	((((("Hib vaccine immunization history" = "1-dose") and ("Last Hib Vaccine immunization dose given" >= "8 weeks ago")) and ("Age" >= "6 weeks")) and ("No known allergies to any componentof the vaccine" = true)) and ("In a setting (e.g. where the greatest disease morbidity and mortality occur later, or whererate reductions of disease are not fully sustained after the routine use of Hib vaccine)" = true));
