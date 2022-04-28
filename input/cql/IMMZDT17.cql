/*
 * Library: IMMZDT17 (IMMZ.DT.17.HepatitisA)
 * Rule: If child or person has not been vaccinated, give Hepatitis A vaccine at 1 year of age 
 * Trigger: Patient has never had Hepatits A vaccination
 */
library IMMZDT17
// Start Skeleton CQL
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1'
// End Skeleton CQL
context Patient

/* 
 * @dataElement Hepatitis A vaccine immunization history
 */
define "Hepatitis A vaccine immunization history":
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
 * @dataElement Country is not highly endemic
 */
define "Country is not highly endemic":
	0 // TODO: Define this

/* 
 * @dataElement Pregnancy Status
 */
define "Pregnancy Status":
	0 // TODO: Define this

/* 
 * @dataElement Immunocompromised
 */
define "Immunocompromised":
	0 // TODO: Define this

/* 
 * @dataElement Country is administering a Live attenuated HAV vaccine
 */
define "Country is administering a Live attenuated HAV vaccine":
	0 // TODO: Define this

/*
 * Rule: Should vaccinate patient for Hepatitis A because no doses at 1 year old in a 1 dose scheme
 * Annotations:
 * 	 - Provide Hepatitis A immunization – using the "Hepatitis A vaccine immunization – NO PREVIOUS" Live attenuated HAV vaccine schedule (1 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Hepatitis A - No Doses
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (((((("Hepatitis A vaccine immunization history" = "No-doses") and ("Current Patient Age in Years" >= 1)) and ("Country is not highly endemic" = true)) and ("Pregnancy Status" = false)) and ("Immunocompromised" = false)) and ("Country is administering a Live attenuated HAV vaccine" = true))
 */
define "Should vaccinate patient for Hepatitis A because no doses at 1 year old in a 1 dose scheme":
	(((((("Hepatitis A vaccine immunization history" = "No-doses") and ("Current Patient Age in Years" >= 1)) and ("Country is not highly endemic" = true)) and ("Pregnancy Status" = false)) and ("Immunocompromised" = false)) and ("Country is administering a Live attenuated HAV vaccine" = true))

/* 
 * @dataElement Country is administering an Inactivated HAV vaccine
 */
define "Country is administering an Inactivated HAV vaccine":
	0 // TODO: Define this

/*
 * Rule: Should vaccinate patient for Hepatitis A because no doses at 1 year old in a 2 dose scheme
 * Annotations:
 * 	 - Provide Hepatitis A immunization – using the "Hepatitis A vaccine immunization – NO PREVIOUS" Inactivated HAV vaccine schedule (2 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Hepatitis A - No Doses
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (((("Hepatitis A vaccine immunization history" = "No-doses") and ("Current Patient Age in Years" >= 1)) and ("Country is not highly endemic" = true)) and ("Country is administering an Inactivated HAV vaccine" = true))
 */
define "Should vaccinate patient for Hepatitis A because no doses at 1 year old in a 2 dose scheme":
	(((("Hepatitis A vaccine immunization history" = "No-doses") and ("Current Patient Age in Years" >= 1)) and ("Country is not highly endemic" = true)) and ("Country is administering an Inactivated HAV vaccine" = true))

/* 
 * @dataElement 1 dose
 */
define "1 dose":
	0 // TODO: Define this

/* 
 * @dataElement Date last Hepatitis A dose given >= 6 months
 */
define "Date last Hepatitis A dose given >= 6 months":
	0 // TODO: Define this

/* 
 * @dataElement Date last Hepatitis A dose given <= 5 years
 */
define "Date last Hepatitis A dose given <= 5 years":
	0 // TODO: Define this

/* 
 * @dataElement Type of last Hepatits A dose
 */
define "Type of last Hepatits A dose":
	0 // TODO: Define this

/* 
 * @dataElement Inactivated HAV
 */
define "Inactivated HAV":
	0 // TODO: Define this

/* 
 * @dataElement Individual has a substantial risk of contracting Hepatitis A
 */
define "Individual has a substantial risk of contracting Hepatitis A":
	0 // TODO: Define this

/*
 * Rule: Should vaccinate patient for Hepatitis A because 1 dose given 6 months to 5 years ago in a 2 dose scheme due to high risk or immunocompromised
 * Annotations:
 * 	 - Provide Hepatitis A immunization – using the "Hepatitis A vaccine immunization – 1 PREVIOUS" Inactivated HAV vaccine schedule (2 dose scheme)
 * 	 - 
 * Outputs:
 * 	 - Immunize Patient for Hepatitis A - 1 Dose of Inactivated HAV (high risk or immunocompromised)
 * 	 - 
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * 	- 
 * Logic:
 *	 (((((("Hepatitis A vaccine immunization history" = "1 dose") and ("Date last Hepatitis A dose given" >= "6 months" = true)) and ("Date last Hepatitis A dose given" <= "5 years" = true)) and ("Type of last Hepatits A dose" = "Inactivated HAV")) and ("Individual has a substantial risk of contracting Hepatitis A" = true)) or ((((("Hepatitis A vaccine immunization history" = "1 dose") and ("Date last Hepatitis A dose given" >= "6 months" = true)) and ("Date last Hepatitis A dose given" <= "5 years" = true)) and ("Type of last Hepatits A dose" = "Inactivated HAV")) and ("Immunocompromised" = true)))
 */
define "Should vaccinate patient for Hepatitis A because 1 dose given 6 months to 5 years ago in a 2 dose scheme due to high risk or immunocompromised":
	(((((("Hepatitis A vaccine immunization history" = "1 dose") and ("Date last Hepatitis A dose given" >= "6 months" = true)) and ("Date last Hepatitis A dose given" <= "5 years" = true)) and ("Type of last Hepatits A dose" = "Inactivated HAV")) and ("Individual has a substantial risk of contracting Hepatitis A" = true)) or ((((("Hepatitis A vaccine immunization history" = "1 dose") and ("Date last Hepatitis A dose given" >= "6 months" = true)) and ("Date last Hepatitis A dose given" <= "5 years" = true)) and ("Type of last Hepatits A dose" = "Inactivated HAV")) and ("Immunocompromised" = true)))

