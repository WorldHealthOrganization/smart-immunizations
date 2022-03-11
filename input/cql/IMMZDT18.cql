/*
 * Library: IMMZDT18 (IMMZ.DT.18.Rabies)
 * Rule: If patient  has not been vaccinated, give Rabies vaccine 
 * Trigger: Patient has never been vaccinated and is at high risk of exposure to RABV and/or patient has been exposed to RABV
 */
library IMMZDT18
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
 * @dataElement Rabies vaccine immunization history
 */
define "Rabies vaccine immunization history":
	true; // TODO: Define this

/* 
 * @dataElement No-doses
 */
define "No-doses":
	true; // TODO: Define this

/* 
 * @dataElement Exposed to RABV
 */
define "Exposed to RABV":
	true; // TODO: Define this

/* 
 * @dataElement Category II exposure
 */
define "Category II exposure":
	true; // TODO: Define this

/*
 * Rule: Should vaccinate patient with PEP Vaccine on 1 dose scheme
 * Annotations:
 * 	 - Provide Rabies immunizations – using the "PEP immunization – NO PREVIOUS" schedule (1 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Rabies - No Doses
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ((("Rabies vaccine immunization history" = "No-doses") and ("Exposed to RABV" = true)) and ("Category II exposure" = true))
 */
define "Should vaccinate patient with PEP Vaccine on 1 dose scheme":
	((("Rabies vaccine immunization history" = "No-doses") and ("Exposed to RABV" = true)) and ("Category II exposure" = true));
/*
 * Rule: Should vaccinate patient with PEP Vaccine and RIG if indicated on 1 dose scheme
 * Annotations:
 * 	 - Provide Rabies immunizations – using the "PEP immunization – NO PREVIOUS" schedule (1 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Rabies - No Doses
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ((("Rabies vaccine immunization history" = "No-doses") and ("Exposed to RABV" = true)) and ("Category II exposure" = true))
 */
define "Should vaccinate patient with PEP Vaccine and RIG if indicated on 1 dose scheme":
	((("Rabies vaccine immunization history" = "No-doses") and ("Exposed to RABV" = true)) and ("Category II exposure" = true));
/* 
 * @dataElement High risk of RABV exposure
 */
define "High risk of RABV exposure":
	true; // TODO: Define this

/*
 * Rule: Should vaccinate patient with PrEP Vaccine - ID route
 * Annotations:
 * 	 - Provide Rabies immunizations – using the "PrEP- ID route immunization – NO PREVIOUS" schedule : 
2-site ID vaccine administered on days 0 and 7
 * Outputs:
 * 	 - Immunize Patient for Rabies - No Doses
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (("Rabies vaccine immunization history" = "No-doses") and ("High risk of RABV exposure" = true))
 */
define "Should vaccinate patient with PrEP Vaccine - ID route":
	(("Rabies vaccine immunization history" = "No-doses") and ("High risk of RABV exposure" = true));
/*
 * Rule: Should vaccinate patient with PrEP Vaccine - IM route
 * Annotations:
 * 	 - Provide Rabies immunizations – using the "PrEP- IM route immunization – NO PREVIOUS" schedule 
 1-site IM vaccine administration on days 0 and 7
 * Outputs:
 * 	 - Immunize Patient for Rabies - No Doses
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (("Rabies vaccine immunization history" = "No-doses") and ("High risk of RABV exposure" = true))
 */
define "Should vaccinate patient with PrEP Vaccine - IM route":
	(("Rabies vaccine immunization history" = "No-doses") and ("High risk of RABV exposure" = true));
/* 
 * @dataElement vaccinated
 */
define "vaccinated":
	true; // TODO: Define this

/* 
 * @dataElement At frequent risk of exposure 
 */
define "At frequent risk of exposure ":
	true; // TODO: Define this

/* 
 * @dataElement VNA levels fall to <0.5 IU/mL
 */
define "VNA levels fall to <0.5 IU/mL":
	true; // TODO: Define this

/*
 * Rule: Should vaccinate patient with PrEP Vaccine - IM OR ID route
 * Annotations:
 * 	 - Provide Rabies immunizations – using the "PrEP- IM or ID route immunization – VACCINATED" schedule 
1-site ID or a 1-site IM PrEP booster vaccination
 * Outputs:
 * 	 - Immunize Patient for Rabies - VNA levels  <0.5 IU/mL
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ((("Rabies vaccine immunization history" = "vaccinated") and ("At frequent risk of exposure " = true)) and ("VNA levels fall to <0.5 IU/mL" = true))
 */
define "Should vaccinate patient with PrEP Vaccine - IM OR ID route":
	((("Rabies vaccine immunization history" = "vaccinated") and ("At frequent risk of exposure " = true)) and ("VNA levels fall to <0.5 IU/mL" = true));
