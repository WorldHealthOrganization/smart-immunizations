/*
 * Library: IMMZDT05 (IMMZ.DT.05.Hib)
 * Rule: if child or person has not been vaccinated, give Hib vaccine between 6 weeks and 59 months 
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
 * @dataElement Current Patient Age in Months
 */
define "Current Patient Age in Months":
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
 *	 (("Hib vaccine immunization history" = "No-doses" = true) and ("Current Patient Age in Months" > 12))
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
 * @dataElement Current Patient Age in Weeks
 */
define "Current Patient Age in Weeks":
	true; // TODO: Define this

/* 
 * @dataElement In a country where the peak burden of severe Hib disease occurs in young infants
 */
define "In a country where the peak burden of severe Hib disease occurs in young infants":
	true; // TODO: Define this

/*
 * Rule: Should vaccinate patient for Hib because no doses on 3p dose scheme
 * Annotations:
 * 	 - Provide Hib immunizations – using the "Hib Vaccine immunization 3p schedule – NO PREVIOUS" schedule (3 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Hib - No Doses
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://w
ww.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ((("Hib vaccine immunization history" = "No-doses") and ("Current Patient Age in Weeks" >= 6 )) and ("In a country where the peak burden of severe Hib disease occurs in young infants" = true))
 */
define "Should vaccinate patient for Hib because no doses on 3p dose scheme":
	((("Hib vaccine immunization history" = "No-doses") and ("Current Patient Age in Weeks" >= 6 )) and ("In a country where the peak burden of severe Hib disease occurs in young infants" = true));
/* 
 * @dataElement Hib vaccine immunization history = 1-dose
 */
define "Hib vaccine immunization history = 1-dose":
	true; // TODO: Define this

/* 
 * @dataElement Date last Hib dose given
 */
define "Date last Hib dose given":
	true; // TODO: Define this

/* 
 * @dataElement 4 weeks
 */
define "4 weeks":
	true; // TODO: Define this

/* 
 * @dataElement Age when patient received 1st dose
 */
define "Age when patient received 1st dose":
	true; // TODO: Define this

/* 
 * @dataElement 12 months
 */
define "12 months":
	true; // TODO: Define this

/*
 * Rule: Should vaccinate patient for Hib because 1 dose on 3p dose scheme
 * Annotations:
 * 	 - Provide Hib immunizations – using the "Hib Vaccine immunization 3p schedule – 1 PREVIOUS" schedule (3 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Hib - 1 Dose
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://w
ww.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (((("Hib vaccine immunization history" = "1-dose" = true) and ("Date last Hib dose given" >= "4 weeks")) and ("In a country where the peak burden of severe Hib disease occurs in young infants" = true)) and ("Age when patient received 1st dose" <= "12 months"))
 */
define "Should vaccinate patient for Hib because 1 dose on 3p dose scheme":
	(((("Hib vaccine immunization history" = "1-dose" = true) and ("Date last Hib dose given" >= "4 weeks")) and ("In a country where the peak burden of severe Hib disease occurs in young infants" = true)) and ("Age when patient received 1st dose" <= "12 months"));
/* 
 * @dataElement 2-doses
 */
define "2-doses":
	true; // TODO: Define this

/*
 * Rule: Should vaccinate patient for Hib because 2 doses on 3p dose scheme
 * Annotations:
 * 	 - Provide Hib immunizations – using the "Hib Vaccine immunization 3p schedule – 2 PREVIOUS" schedule (3 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Hib - 2 Doses
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://w
ww.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ((("Hib vaccine immunization history" = "2-doses") and ("Date last Hib dose given" >= "4 weeks")) and ("In a country where the peak burden of severe Hib disease occurs in young infants" = true))
 */
define "Should vaccinate patient for Hib because 2 doses on 3p dose scheme":
	((("Hib vaccine immunization history" = "2-doses") and ("Date last Hib dose given" >= "4 weeks")) and ("In a country where the peak burden of severe Hib disease occurs in young infants" = true));
/* 
 * @dataElement In a setting where the greatest disease morbidity and mortality occur later, or whererate reductions of disease are not fully sustained after the routine use of Hib vaccine
 */
define "In a setting where the greatest disease morbidity and mortality occur later, or whererate reductions of disease are not fully sustained after the routine use of Hib vaccine":
	true; // TODO: Define this

/*
 * Rule: Should vaccinate patient for Hib because No dose on 3p+1 dose scheme
 * Annotations:
 * 	 - Provide Hib immunizations – using the "Hib Vaccine immunization 3p + 1 schedule – NO PREVIOUS" schedule (3p+1 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Hib - No Doses
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://w
ww.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ((("Hib vaccine immunization history" = "No-doses") and ("Current Patient Age in Weeks" >= 6 )) and ("In a setting where the greatest disease morbidity and mortality occur later, or whererate reductions of disease are not fully sustained after the routine use of Hib vaccine" = true))
 */
define "Should vaccinate patient for Hib because No dose on 3p+1 dose scheme":
	((("Hib vaccine immunization history" = "No-doses") and ("Current Patient Age in Weeks" >= 6 )) and ("In a setting where the greatest disease morbidity and mortality occur later, or whererate reductions of disease are not fully sustained after the routine use of Hib vaccine" = true));
/* 
 * @dataElement 1-dose
 */
define "1-dose":
	true; // TODO: Define this

/*
 * Rule: Should vaccinate patient for Hib because 1 dose on 3p+1 dose scheme
 * Annotations:
 * 	 - Provide Hib immunizations – using the "Hib Vaccine immunization 3p + 1 schedule – 1 PREVIOUS" schedule (3p+1 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Hib - 1 Dose
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://w
ww.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (((("Hib vaccine immunization history" = "1-dose") and ("Date last Hib dose given" >= "4 weeks")) and ("In a setting where the greatest disease morbidity and mortality occur later, or whererate reductions of disease are not fully sustained after the routine use of Hib vaccine" = true)) and ("Age when patient received 1st dose" <= "12 months"))
 */
define "Should vaccinate patient for Hib because 1 dose on 3p+1 dose scheme":
	(((("Hib vaccine immunization history" = "1-dose") and ("Date last Hib dose given" >= "4 weeks")) and ("In a setting where the greatest disease morbidity and mortality occur later, or whererate reductions of disease are not fully sustained after the routine use of Hib vaccine" = true)) and ("Age when patient received 1st dose" <= "12 months"));
/*
 * Rule: Should vaccinate patient for Hib because 2 doses on 3p+1 dose scheme
 * Annotations:
 * 	 - Provide Hib immunizations – using the "Hib Vaccine immunization 3p + 1 schedule – 2 PREVIOUS" schedule (3p+1 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Hib - 2 Doses
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://w
ww.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ((("Hib vaccine immunization history" = "2-doses") and ("Date last Hib dose given" >= "4 weeks")) and ("In a setting where the greatest disease morbidity and mortality occur later, or whererate reductions of disease are not fully sustained after the routine use of Hib vaccine" = true))
 */
define "Should vaccinate patient for Hib because 2 doses on 3p+1 dose scheme":
	((("Hib vaccine immunization history" = "2-doses") and ("Date last Hib dose given" >= "4 weeks")) and ("In a setting where the greatest disease morbidity and mortality occur later, or whererate reductions of disease are not fully sustained after the routine use of Hib vaccine" = true));
/* 
 * @dataElement 3-doses
 */
define "3-doses":
	true; // TODO: Define this

/* 
 * @dataElement 6 months
 */
define "6 months":
	true; // TODO: Define this

/*
 * Rule: Should vaccinate patient for Hib because 3 doses on 3p+1 dose scheme
 * Annotations:
 * 	 - Provide Hib immunizations – using the "Hib Vaccine immunization 3p + 1 schedule – 3 PREVIOUS" schedule (3p+1 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Hib - Booster
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://w
ww.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ((("Hib vaccine immunization history" = "3-doses") and ("Date last Hib dose given" >= "6 months")) and ("In a setting where the greatest disease morbidity and mortality occur later, or whererate reductions of disease are not fully sustained after the routine use of Hib vaccine" = true))
 */
define "Should vaccinate patient for Hib because 3 doses on 3p+1 dose scheme":
	((("Hib vaccine immunization history" = "3-doses") and ("Date last Hib dose given" >= "6 months")) and ("In a setting where the greatest disease morbidity and mortality occur later, or whererate reductions of disease are not fully sustained after the routine use of Hib vaccine" = true));
/*
 * Rule: Should vaccinate patient for Hib because No dose on 2p+1 dose scheme
 * Annotations:
 * 	 - Provide Hib immunizations – using the "Hib Vaccine immunization 2p + 1 schedule – NO PREVIOUS" schedule (2p+1 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Hib - No Doses
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://w
ww.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ((("Hib vaccine immunization history" = "No-doses") and ("Current Patient Age in Weeks" >= 6 )) and ("In a setting where the greatest disease morbidity and mortality occur later, or whererate reductions of disease are not fully sustained after the routine use of Hib vaccine" = true))
 */
define "Should vaccinate patient for Hib because No dose on 2p+1 dose scheme":
	((("Hib vaccine immunization history" = "No-doses") and ("Current Patient Age in Weeks" >= 6 )) and ("In a setting where the greatest disease morbidity and mortality occur later, or whererate reductions of disease are not fully sustained after the routine use of Hib vaccine" = true));
/* 
 * @dataElement 8 weeks
 */
define "8 weeks":
	true; // TODO: Define this

/*
 * Rule: Should vaccinate patient for Hib because 1 dose on 2p+1 dose scheme
 * Annotations:
 * 	 - Provide Hib immunizations – using the "Hib Vaccine immunization 2p + 1 schedule – 1 PREVIOUS" schedule (2p+1 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Hib - 1 Dose
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://w
ww.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (((("Hib vaccine immunization history" = "1-dose") and ("Date last Hib dose given" >= "8 weeks")) and ("In a setting where the greatest disease morbidity and mortality occur later, or whererate reductions of disease are not fully sustained after the routine use of Hib vaccine" = true)) and ("Age when patient received 1st dose" <= "12 months"))
 */
define "Should vaccinate patient for Hib because 1 dose on 2p+1 dose scheme":
	(((("Hib vaccine immunization history" = "1-dose") and ("Date last Hib dose given" >= "8 weeks")) and ("In a setting where the greatest disease morbidity and mortality occur later, or whererate reductions of disease are not fully sustained after the routine use of Hib vaccine" = true)) and ("Age when patient received 1st dose" <= "12 months"));
/* 
 * @dataElement 2-dose
 */
define "2-dose":
	true; // TODO: Define this

/*
 * Rule: Should vaccinate patient for Hib because 2 dose on 2p+1 dose scheme
 * Annotations:
 * 	 - Provide Hib immunizations – using the "Hib Vaccine immunization 2p + 1 schedule – 2 PREVIOUS" schedule (2p+1 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Hib - Booster
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://w
ww.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ((("Hib vaccine immunization history" = "2-dose") and ("Date last Hib dose given" >= "6 months")) and ("In a setting where the greatest disease morbidity and mortality occur later, or whererate reductions of disease are not fully sustained after the routine use of Hib vaccine" = true))
 */
define "Should vaccinate patient for Hib because 2 dose on 2p+1 dose scheme":
	((("Hib vaccine immunization history" = "2-dose") and ("Date last Hib dose given" >= "6 months")) and ("In a setting where the greatest disease morbidity and mortality occur later, or whererate reductions of disease are not fully sustained after the routine use of Hib vaccine" = true));
