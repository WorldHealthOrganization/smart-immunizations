/*
 * Library: IMMZDT15 (IMMZ.DT.15.Cholera)
 * Rule: If child or person has not been vaccinated, give the Cholera vaccine to child greater than or equal to 1 year old and adults 
 * Trigger: Patient has never received cholera vaccination and/or resides/is from an endemic region and/or there is an outbreak
 * Implementation Note: This CQL logic includes restarts for vaccination. Restarts require that the implementer properly set the protocolApplied.doseNumber
 *						  to accurately reflect the dosing numbers where 1-3 are primary series and 4+ are boosters. For example, consider a 2 year old child:
 *							25 months -> Dose 1
 *                          27 months -> Dose 2 (Within 6w - 6m of first)
 *                          29 months -> Dose 3  (Within 6w - 6m of first)
 *                          32 months -> Dose 4 (Booster within appropriate time range)
 *                         If the child were late for Dose 5 the series here should restart:
 *                          40 months -> Dose 1 (not within time frame for boosting and must receive primary series again)
 */
library IMMZDT15
// Start Skeleton CQL
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1'
include IMMZCommon called IMMZCom
include IMMZConcepts called IMMZc
include IMMZConfig called IMMZConf
include IMMZVaccineLibrary called IMMZvl
include FHIRCommon called FC
// End Skeleton CQL
context Patient


/*
 * Rule: Should vaccinate patient with a WC vaccines (Shanchol, Euvchol, and mORCVAX)
 * Annotations:
 * 	 - Provide Cholera immunizations – using the "WC vaccines (Shanchol, Euvchol, and mORCVAX) immunization – NO PREVIOUS" schedule (2 dose scheme)
 * 	 - Provide Cholera immunizations – using the "WC vaccines (Shanchol, Euvchol, and mORCVAX) immunization –1 PREVIOUS" schedule (2 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Cholera - No Doses
 * 	 - Immunize Patient for Cholera - 1 Dose
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (((("Cholera vaccine immunization history" = "No-doses" = true) and ("Current Patient Age in Years" >= 1)) and ("Region recommends Cholera vaccination" = true)) or ((("Cholera vaccine immunization history" = "1 dose" = true) and ("Date last Cholera dose given" >= "2 weeks")) and ("Type of last Cholera dose" = "WC vaccines")))
 * Assumption:
 * 	vaccineCode will contain a specific classification of the antigen given (or a future version of FHIR will have a product link)
 */
define "Should vaccinate patient with a WC vaccines (Shanchol, Euvchol, and mORCVAX)":
	(
		IMMZCom."No Cholera Doses Administered to Patient"
		and IMMZCom."Current Patient Age In Years" >= 1 
		and IMMZConf."Region recommends Cholera vaccination"
	) or (
		IMMZCom."Highest Sequence of Cholera Doses Administered to Patient" = 1
		and IMMZCom."Date Last Cholera Dose Administered to Patient" more than 2 week before Today()
		and IMMZCom."Type of Last Cholera Dose Administered to Patient" in IMMZc."WC Class Cholera Vaccine"
	)

/* 
 * @dataElement Patient has completed Cholera primary series
 */
define "Patient has completed Cholera primary series":
	// If administrations are WC-rBS should be 3 doses for < 6 or 2 doses for > 5
	IMMZCom."Type of Last Cholera Dose Administered to Patient" in IMMZc."WC-rBS Class Cholera Vaccine"
	and 
	(
		(
			IMMZCom."Current Patient Age In Years" between 2 and 5 
			and IMMZCom."Most Recent Dose Sequence of Cholera Doses Administered to Patient" >= 3 
		)
		or 
		(
			IMMZCom."Current Patient Age In Years" >= 6 
			and IMMZCom."Most Recent Dose Sequence of Cholera Doses Administered to Patient" >= 2
		)
	)
	or 
	(	
		IMMZCom."Type of Last Cholera Dose Administered to Patient" in IMMZc."WC Class Cholera Vaccine"
		and IMMZCom."Most Recent Dose Sequence of Cholera Doses Administered to Patient" >= 2
	)

/*
 * Rule: Should Re-vaccinate patient with a WC vaccines (Shanchol, Euvchol, and mORCVAX) on a 2 dose scheme
 * Annotations:
 * 	 - Provide Cholera revaccination – using the "WC vaccines (Shanchol, Euvchol, and mORCVAX) immunization – Revaccination every 3 years" schedule (2 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Cholera - Last dose given 3 years ago
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (((("Patient has completed Cholera primary series" = true) and ("Date last Cholera dose given" >= "3 years")) and ("Type of last Cholera dose" = "WC vaccines")) and ("Region recommends Cholera vaccination" = true))
 */
define "Should Re-vaccinate patient with a WC vaccines (Shanchol, Euvchol, and mORCVAX) on a 2 dose scheme":
	"Patient has completed Cholera primary series" 
	and IMMZCom."Date Last Cholera Dose Administered to Patient" more than 3 year before Today()
	and IMMZCom."Type of Last Cholera Dose Administered to Patient" in IMMZc."WC Class Cholera Vaccine"
	and IMMZConf."Region recommends Cholera vaccination" 


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
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (((((((("Cholera vaccine immunization history" = "No-doses" = true) and ("Current Patient Age in Years" >= 2)) and ("Current Patient Age in Years" <= 5)) and ("Region recommends Cholera vaccination" = true)) or (((("Cholera vaccine immunization history" = "1 dose" = true) and ("Date last Cholera dose given" >= "1 week" = true)) and ("Date last Cholera dose given" <= "6 months")) and ("Type of last Cholera dose" = "WC-rBS vaccine"))) or (((("Cholera vaccine immunization history" = "2 doses") and ("Date last Cholera dose given" >= "1 week" = true)) and ("Date last Cholera dose given" <= "6 months")) and ("Type of last Cholera dose" = "WC-rBS vaccine"))) or ((("Cholera vaccine immunization history" = "No-doses" = true) and ("Current Patient Age in Years" >= 6)) and ("Region recommends Cholera vaccination" = true))) or (((("Cholera vaccine immunization history" = "1 dose" = true) and ("Date last Cholera dose given" >= "1 week" = true)) and ("Date last Cholera dose given" <= "6 weeks")) and ("Type of last Cholera dose" = "WC-rBS vaccine")))
 */
define "Should vaccinate patient with WC-rBS vaccine (Dukoral)":
	(
		IMMZCom."Current Patient Age In Years" between 2 and 5
		and 
		(
			IMMZCom."No Cholera Doses Administered to Patient"
			and IMMZConf."Region recommends Cholera vaccination"
		)
		or (
			IMMZCom."Most Recent Dose Sequence of Cholera Doses Administered to Patient" between 1 and 2
			and IMMZCom."Type of Last Cholera Dose Administered to Patient" in IMMZc."WC-rBS Class Cholera Vaccine"
			and IMMZCom."Date Last Cholera Dose Administered to Patient" more than 1 week before Today()
			and IMMZCom."Date Last Cholera Dose Administered to Patient" less than 6 month before Today()
		) 
	)
	or (
		IMMZCom."Current Patient Age In Years" >= 6
		and
		(
			IMMZCom."No Cholera Doses Administered to Patient"
			and IMMZConf."Region recommends Cholera vaccination"
		)
		or (
			IMMZCom."Most Recent Dose Sequence of Cholera Doses Administered to Patient" = 1
			and IMMZCom."Type of Last Cholera Dose Administered to Patient" in IMMZc."WC-rBS Class Cholera Vaccine"
			and IMMZCom."Date Last Cholera Dose Administered to Patient" more than 1 week before Today()
			and IMMZCom."Date Last Cholera Dose Administered to Patient" less than 6 week before Today()
		)
	)

/*
 * Rule: Should re-vaccinate patient with WC-rBS vaccine (Dukoral)
 * Annotations:
 * 	 - Provide Cholera revaccination – using the "WC-rBS vaccine (Dukoral) immunization – Revaccination every 6 months" schedule (1 dose scheme)
 * 	 - Provide Cholera revaccination – using the "WC-rBS vaccine (Dukoral) immunization – Revaccination every 2 years" schedule (1 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Cholera - revaccination for ages 2-5 within 6 months of last WC-rBS dose
 * 	 - Immunize Patient for Cholera - revaccination for ages 6+ within 2 years of last WC-rBS dose
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ((((((("Patient has completed Cholera primary series" = true) and ("Current Patient Age in Years" >= 2)) and ("Current Patient Age in Years" <= 5)) and ("Date last Cholera dose given" <= "6 months" = true)) and ("Type of last Cholera dose" = "WC-rBS vaccine")) and ("Region recommends Cholera vaccination" = true)) or ((((("Patient has completed Cholera primary series" = true) and ("Current Patient Age in Years" >= 6)) and ("Date last Cholera dose given" <= "2 years" = true)) and ("Type of last Cholera dose" = "WC-rBS vaccine")) and ("Region recommends Cholera vaccination" = true)))
 * Example:
 * 	Assume patient is 3 yo
 *		Month 1: Dukoral Dose #1 
 * 		Month 2: Dukoral Dose #2
 * 		Month 3: Dukoral Dose #3 <-- Completed primary series
 * 		Month 6: Dukoral Dose #4 <-- This booster
 *		Month 9: Dukoral Dose #5
 *		Month 12: Dukoral Dose #6
 *		Month 20: Dukoral Dose #1
 */
define "Should re-vaccinate patient with WC-rBS vaccine (Dukoral)":
	"Patient has completed Cholera primary series"
	and IMMZCom."Type of Last Cholera Dose Administered to Patient" in IMMZc."WC-rBS Class Cholera Vaccine"
	and IMMZConf."Region recommends Cholera vaccination"
	and (
		(
			IMMZCom."Current Patient Age In Years" between 2 and 5
			and IMMZCom."Date Last Cholera Dose Administered to Patient" less than 6 month before Today()
		) or (
			IMMZCom."Current Patient Age In Years" > 6
			and IMMZCom."Date Last Cholera Dose Administered to Patient" less than 2 year before Today()
		)
	)

/*
 * Rule: Should Re-vaccinate patient with WC-rBS vaccine (Dukoral) on a 3 dose scheme
 * Annotations:
 * 	 - Provide Cholera revaccination – using the "WC-rBS vaccine (Dukoral) immunization – Revaccination" schedule (3 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Cholera - revaccination for ages 2-5 where last WC-rBS dose was given more than 6 months ago
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (((((("Patient has completed Cholera primary series" = true) and ("Current Patient Age in Years" >= 2)) and ("Current Patient Age in Years" <= 5)) and ("Date last Cholera dose given" >= "6 months" = true)) and ("Type of last Cholera dose" = "WC-rBS vaccine")) and ("Region recommends Cholera vaccination" = true))
 */
define "Should Re-vaccinate patient with WC-rBS vaccine (Dukoral) on a 3 dose scheme":
	"Patient has completed Cholera primary series"
	and IMMZCom."Current Patient Age In Years" between 2 and 5
	and IMMZCom."Date Last Cholera Dose Administered to Patient" more than 6 month before Today() 
	and IMMZCom."Type of Last Cholera Dose Administered to Patient" in IMMZc."WC-rBS Class Cholera Vaccine"
	and IMMZConf."Region recommends Cholera vaccination" = true


/*
 * Rule: Should Re-vaccinate patient with WC-rBS vaccine (Dukoral) on a 2 dose scheme
 * Annotations:
 * 	 - Provide Cholera revaccination – using the "WC-rBS vaccine (Dukoral) immunization – Revaccination" schedule (2 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Cholera - revaccination for ages 6+ where last WC-rBS dose was given more than 2 years ago
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ((((("Patient has completed Cholera primary series" = true) and ("Current Patient Age in Years" >= 6)) and ("Date last Cholera dose given" >= "2 years" = true)) and ("Type of last Cholera dose" = "WC-rBS vaccine")) and ("Region recommends Cholera vaccination" = true))
 */
define "Should Re-vaccinate patient with WC-rBS vaccine (Dukoral) on a 2 dose scheme":
	"Patient has completed Cholera primary series"
	and IMMZCom."Current Patient Age In Years" >= 6
	and IMMZCom."Date Last Cholera Dose Administered to Patient" more than 2 year before Today()
	and IMMZCom."Type of Last Cholera Dose Administered to Patient" in IMMZc."WC-rBS Class Cholera Vaccine"
	and IMMZConf."Region recommends Cholera vaccination" = true
