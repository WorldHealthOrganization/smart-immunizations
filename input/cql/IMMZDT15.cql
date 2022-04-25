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
include IMMZVaccineLibrary called IMMZvl
// End Skeleton CQL
context Patient

/* 
 * @dataElement Cholera vaccine immunization history
 */
define "Cholera vaccine immunization history":
	0 // TODO: Define this

/* 
 * @dataElement No doses
 */
define "No doses":
	0 // TODO: Define this

/* 
 * @dataElement Age
 */
define "Age":
	0 // TODO: Define this

/* 
 * @dataElement 1 Year
 */
define "1 Year":
	0 // TODO: Define this

/* 
 * @dataElement Cholera vaccine immunization history = 1 dose given
 */
define "Cholera vaccine immunization history = 1 dose given":
	true // TODO: Define this

/* 
 * @dataElement Dose Given
 */
define "Dose Given":
	0 // TODO: Define this

/* 
 * @dataElement 2 Weeks Ago
 */
define "2 Weeks Ago":
	0 // TODO: Define this

/*
 * Rule: Should vaccinate patient with WC vaccines(Shanchol, Euvchol, and mORCVAX)
 * Annotations:
 * 	 - Provide Cholera immunizations – using the "WC vaccines(Shanchol, Euvchol, and mORCVAX) immunization – NO PREVIOUS" schedule (2 dose scheme)
 * 	 - Provide Cholera immunizations – using the "WC vaccines(Shanchol, Euvchol, and mORCVAX) immunization –1 PREVIOUS" schedule (2 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Cholera - No Doses
 * 	 - Immunize Patient for Cholera - 1 Dose
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://w ww.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ((("Cholera vaccine immunization history" = "No doses") and ("Age" >= "1 Year")) or ((("Cholera vaccine immunization history" = "1 dose given" = true) and ("Dose Given" = "2 Weeks Ago")) and ("Age" >= "1 Year")))
 */
define "Should vaccinate patient with WC vaccines(Shanchol, Euvchol, and mORCVAX)":
	((("Cholera vaccine immunization history" = "No doses") and ("Age" >= "1 Year")) or ((("Cholera vaccine immunization history = 1 dose given" = true) and ("Dose Given" = "2 Weeks Ago")) and ("Age" >= "1 Year")))

/* 
 * @dataElement No doses given
 */
define "No doses given":
	0 // TODO: Define this

/* 
 * @dataElement 2 Years
 */
define "2 Years":
	0 // TODO: Define this

/* 
 * @dataElement 5 Years
 */
define "5 Years":
	0 // TODO: Define this

/* 
 * @dataElement 1 dose given
 */
define "1 dose given":
	0 // TODO: Define this

/* 
 * @dataElement Dose given >= 1 week
 */
define "Dose given >= 1 week":
	true // TODO: Define this

/* 
 * @dataElement Dose given
 */
define "Dose given":
	0 // TODO: Define this

/* 
 * @dataElement 6 weeks
 */
define "6 weeks":
	0 // TODO: Define this

/* 
 * @dataElement 2 doses given
 */
define "2 doses given":
	0 // TODO: Define this

/* 
 * @dataElement 6 Years
 */
define "6 Years":
	0 // TODO: Define this

/* 
 * @dataElement 1 dose given 1-6 weeks before and greater than or equal to 6 years old and adults
 */
define "1 dose given 1-6 weeks before and greater than or equal to 6 years old and adults":
	0 // TODO: Define this

/* 
 * @dataElement 6 week
 */
define "6 week":
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
 * 	- WHO recommendations for routine immunization - summary tables: https://w ww.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ((((((("Cholera vaccine immunization history" = "No doses given") and ("Age" >= "2 Years")) and ("Age" <= "5 Years")) or ((((("Cholera vaccine immunization history" = "1 dose given") and ("Dose given" >= "1 week" = true)) and ("Dose given" <= "6 weeks")) and ("Age" >= "2 Years")) and ("Age" <= "5 Years"))) or ((((("Cholera vaccine immunization history" = "2 doses given") and ("Dose given" >= "1 week" = true)) and ("Dose given" <= "6 weeks")) and ("Age" >= "2 Years")) and ("Age" <= "5 Years"))) or (("Cholera vaccine immunization history" = "No doses") and ("Age" > "6 Years"))) or (((("Cholera vaccine immunization history" = "1 dose given 1-6 weeks before and greater than or equal to 6 years old and adults") and ("Dose given" >= "1 week" = true)) and ("Dose given" <= "6 week")) and ("Age" >= "6 Years")))
 */
define "Should vaccinate patient with WC-rBS vaccine (Dukoral)":
	((((((("Cholera vaccine immunization history" = "No doses given") and ("Age" >= "2 Years")) and ("Age" <= "5 Years")) or ((((("Cholera vaccine immunization history" = "1 dose given") and ("Dose given >= 1 week" = true)) and ("Dose given" <= "6 weeks")) and ("Age" >= "2 Years")) and ("Age" <= "5 Years"))) or ((((("Cholera vaccine immunization history" = "2 doses given") and ("Dose given >= 1 week" = true)) and ("Dose given" <= "6 weeks")) and ("Age" >= "2 Years")) and ("Age" <= "5 Years"))) or (("Cholera vaccine immunization history" = "No doses") and ("Age" > "6 Years"))) or (((("Cholera vaccine immunization history" = "1 dose given 1-6 weeks before and greater than or equal to 6 years old and adults") and ("Dose given >= 1 week" = true)) and ("Dose given" <= "6 week")) and ("Age" >= "6 Years")))


/* 
 * @dataElement Cholera vaccine immunization history = No dose
 */
define "Cholera vaccine immunization history = No dose":
	true // TODO: Define this

/* 
 * @dataElement cholera outbreaks
 */
define "cholera outbreaks":
	0 // TODO: Define this

/* 
 * @dataElement True
 */
define "True":
	0 // TODO: Define this

/*
 * Rule: Should vaccinate patient with WC vaccines (Shanchol,
Euvchol or mORCVAX)
 * Annotations:
 * 	 - Provide Cholera immunizations – using the "WC vaccines (Shanchol,
Euvchol or mORCVAX) immunization – NO PREVIOUS" schedule (1 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Cholera - No doses
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://w ww.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (("Cholera vaccine immunization history" = "No dose" = true) and ("cholera outbreaks" = "True"))
 */
define "Should vaccinate patient with WC vaccines (Shanchol, Euvchol or mORCVAX)":
	(("Cholera vaccine immunization history = No dose") and ("cholera outbreaks" = "True"))

/* 
 * @dataElement Humanitarian emergency with a risk of cholera
 */
define "Humanitarian emergency with a risk of cholera":
	0 // TODO: Define this

/*
 * Rule: Should vaccinate patient with OCV
 * Annotations:
 * 	 - Provide Cholera immunizations – using the OCV immunization – NO PREVIOUS" schedule (1 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Cholera - No doses
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://w ww.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (("Cholera vaccine immunization history" = "No dose" = true) and ("Humanitarian emergency with a risk of cholera" = "True"))
 */
define "Should vaccinate patient with OCV":
	(("Cholera vaccine immunization history = No dose") and ("Humanitarian emergency with a risk of cholera" = "True"))

