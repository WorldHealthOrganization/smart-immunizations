/*
 * Library: IMMZDT06 (IMMZ.DT.06.Pneumococcal)
 * Rule: If child or person has not been vaccinated, give Pneumococcal vaccine minimum age 6 weeks old 
 * Trigger: Patient has never received PCV vaccination
 */
library IMMZDT06
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
 * @dataElement Pneumococcal vaccine immunization history
 */
define "Pneumococcal vaccine immunization history":
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
 * @dataElement Country is following a 2 dose scheme
 */
define "Country is following a 2 dose scheme":
	true; // TODO: Define this

/*
 * Rule: Should vaccinate patient for Pneumococcal because no doses in a 2 dose scheme
 * Annotations:
 * 	 - Provide Pneumococcal immunizations – using the "PCV immunization 2p+1 schedule – NO PREVIOUS" schedule (2 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Pneumococcal - No Doses
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://w
ww.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ((("Pneumococcal vaccine immunization history" = "No-doses") and ("Current Patient Age in Weeks" >= 6 )) and ("Country is following a 2 dose scheme" = true))
 */
define "Should vaccinate patient for Pneumococcal because no doses in a 2 dose scheme":
	((("Pneumococcal vaccine immunization history" = "No-doses") and ("Age" >= "6 weeks")) and ("Country is following a 2 dose scheme" = true));
/* 
 * @dataElement 1 dose
 */
define "1 dose":
	true; // TODO: Define this

/* 
 * @dataElement Date last Pneumococcal dose given
 */
define "Date last Pneumococcal dose given":
	true; // TODO: Define this

/* 
 * @dataElement 8 weeks
 */
define "8 weeks":
	true; // TODO: Define this

/* 
 * @dataElement Country is using a 2 dose scheme
 */
define "Country is using a 2 dose scheme":
	true; // TODO: Define this

/* 
 * @dataElement Current Patient Age in Years
 */
define "Current Patient Age in Years":
	true; // TODO: Define this

/* 
 * @dataElement HIV Status
 */
define "HIV Status":
	true; // TODO: Define this

/* 
 * @dataElement Positive
 */
define "Positive":
	true; // TODO: Define this

/* 
 * @dataElement Patient has sickle-cell disease
 */
define "Patient has sickle-cell disease":
	true; // TODO: Define this

/*
 * Rule: Should vaccinate patient for Pneumococcal because 1 dose in a 2 dose scheme
 * Annotations:
 * 	 - Provide Pneumococcal immunizations – using the "PCV immunization 2p+1 schedule – 1 PREVIOUS" schedule (2 dose scheme)
 * 	 - Provide Pneumococcal immunizations – using the "PCV immunization – 1 PREVIOUS" schedule (2 dose scheme)
 * 	 - 
 * Outputs:
 * 	 - Immunize Patient for Pneumococcal - 1 Dose
 * 	 - Immunize Patient for Pneumococcal - 1 Doses
 * 	 - 
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://w
ww.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (((((("Pneumococcal vaccine immunization history" = "1 dose") and ("Date last Pneumococcal dose given" >= "8 weeks")) and ("Current Patient Age in Weeks" >= 6 )) and ("Country is using a 2 dose scheme" = true)) or (((("Pneumococcal vaccine immunization history" = "1 dose") and ("Current Patient Age in Years" >= 1)) and ("Current Patient Age in Years" <= 5)) and ("HIV Status" = "Positive"))) or (((("Pneumococcal vaccine immunization history" = "1 dose") and ("Current Patient Age in Years" >= 1)) and ("Current Patient Age in Years" <= 5)) and ("Patient has sickle-cell disease" = true)))
 */
define "Should vaccinate patient for Pneumococcal because 1 dose in a 2 dose scheme":
	(((("Pneumococcal vaccine immunization history" = "1 dose") and ("Last Pneumococcal Dose given" >= "8 weeks ago")) and ("Age" >= "6 weeks")) and ("Country is using a 2 dose scheme" = true));
/* 
 * @dataElement  No doses
 */
define " No doses":
	true; // TODO: Define this

/* 
 * @dataElement Country is following a 3 dose scheme
 */
define "Country is following a 3 dose scheme":
	true; // TODO: Define this

/*
 * Rule: Should vaccinate patient for Pneumococcal because No doses in a 3 dose scheme
 * Annotations:
 * 	 - Provide Pneumococcal immunizations – using the "PCV immunization 3p+0 schedule – NO PREVIOUS" schedule (3 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Pneumococcal - No Dose
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://w
ww.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ((("Pneumococcal vaccine immunization history" = " No doses") and ("Current Patient Age in Weeks" >= 6 )) and ("Country is following a 3 dose scheme" = true))
 */
define "Should vaccinate patient for Pneumococcal because No doses in a 3 dose scheme":
	((("Pneumococcal vaccine immunization history" = " No doses") and ("Age" >= "6 weeks")) and ("Country is following a 3 dose scheme" = true));
/* 
 * @dataElement  1 dose
 */
define " 1 dose":
	true; // TODO: Define this

/* 
 * @dataElement 4 weeks
 */
define "4 weeks":
	true; // TODO: Define this

/*
 * Rule: Should vaccinate patient for Pneumococcal because 1 dose in a 3 dose scheme
 * Annotations:
 * 	 - Provide Pneumococcal immunizations – using the "PCV immunization 3p+0 schedule – 1 PREVIOUS" schedule (3 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Pneumococcal - 1 Dose
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://w
ww.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (((("Pneumococcal vaccine immunization history" = " 1 dose") and ("Date last Pneumococcal dose given" >= "4 weeks")) and ("Current Patient Age in Weeks" >= 6 )) and ("Country is following a 3 dose scheme" = true))
 */
define "Should vaccinate patient for Pneumococcal because 1 dose in a 3 dose scheme":
	(((("Pneumococcal vaccine immunization history" = " 1 dose") and ("Last Pneumococcal Dose given" >= "4 weeks ago")) and ("Age" >= "6 weeks")) and ("Country is following a 3 dose scheme" = true));
/* 
 * @dataElement  2 doses
 */
define " 2 doses":
	true; // TODO: Define this

/* 
 * @dataElement Date Last Pneumococcal Dose given
 */
define "Date Last Pneumococcal Dose given":
	true; // TODO: Define this

/*
 * Rule: Should vaccinate patient for Pneumococcal because 2 doses in a 3 dose scheme
 * Annotations:
 * 	 - Provide Pneumococcal immunizations – using the "PCV immunization 3p+0 schedule – 2 PREVIOUS" schedule (3 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Pneumococcal - 2 Doses
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://w
ww.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (((("Pneumococcal vaccine immunization history" = " 2 doses") and ("Date Last Pneumococcal Dose given" >= "4 weeks")) and ("Current Patient Age in Weeks" >= 6 )) and ("Country is following a 3 dose scheme" = true))
 */
define "Should vaccinate patient for Pneumococcal because 2 doses in a 3 dose scheme":
	(((("Pneumococcal vaccine immunization history" = " 2 doses") and ("Last Pneumococcal Dose given" >= "4 weeks ago")) and ("Age" >= "6 weeks")) and ("Country is following a 3 dose scheme" = true));
/* 
 * @dataElement No doses
 */
define "No doses":
	true; // TODO: Define this

/*
 * Rule: Should vaccinate patient for Pneumococcal because No doses in a 2 dose scheme
 * Annotations:
 * 	 - Provide Pneumococcal immunizations – using the "PCV immunization – NO PREVIOUS" schedule (2 dose scheme)
 * 	 - 
 * Outputs:
 * 	 - Immunize Patient for Pneumococcal - No Doses
 * 	 - 
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://w
ww.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ((((("Pneumococcal vaccine immunization history" = "No doses") and ("Current Patient Age in Years" >= 1)) and ("Current Patient Age in Years" <= 5)) and ("HIV Status" = "Positive")) or (((("Pneumococcal vaccine immunization history" = "No doses") and ("Current Patient Age in Years" >= 1)) and ("Current Patient Age in Years" <= 5)) and ("Patient has sickle-cell disease" = true)))
 */
define "Should vaccinate patient for Pneumococcal because No doses in a 2 dose scheme":
	((((("Pneumococcal vaccine immunization history" = "No doses") and ("Age" >= "1 years")) and ("Age" <= "5 years")) and ("Patient is HIV+" = true)) or (((("Pneumococcal vaccine immunization history" = "No doses") and ("Age" >= "1 years")) and ("Age" <= "5 years")) and ("Patient has sickle-cell disease" = true)));
/* 
 * @dataElement In a setting with a high disease burden and mortality
 */
define "In a setting with a high disease burden and mortality":
	true; // TODO: Define this

/*
 * Rule: Should vaccinate patient for Pneumococcal because No doses in a 1 dose scheme
 * Annotations:
 * 	 - Provide Pneumococcal immunizations – using the "Catch-up PCV immunization – NO PREVIOUS" schedule (1 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Pneumococcal - No Doses
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://w
ww.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (((("Pneumococcal vaccine immunization history" = " No doses") and ("Current Patient Age in Years" >= 1)) and ("Current Patient Age in Years" <= 5)) and ("In a setting with a high disease burden and mortality" = true))
 */
define "Should vaccinate patient for Pneumococcal because No doses in a 1 dose scheme":
	(((("Pneumococcal vaccine immunization history" = " No doses") and ("Age" >= "1 years")) and ("Age" <= "5 years")) and ("In a setting with a high disease burden and mortality" = true));
