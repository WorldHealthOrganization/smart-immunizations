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
include IMMZConfig called IMMZConf
include IMMZVaccineLibrary called IMMZvl
include FHIRCommon called FC

// End Skeleton CQL
context Patient

/*
 * Rule: Should vaccinate patient for Pneumococcal because no doses in a 2 dose scheme
 * Annotations:
 * 	 - Provide Pneumococcal immunizations – using the "PCV immunization 2p+1 schedule – NO PREVIOUS" schedule (2 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Pneumococcal - No Doses
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ((("Pneumococcal vaccine immunization history" = "No-doses") and ("Current Patient Age in Weeks" >= 6 )) and ("Country is following a 2 dose scheme" = true))
 */
define "Should vaccinate patient for Pneumococcal because no doses in a 2 dose scheme":
	IMMZCom."No Pneumococcal Doses Administered to Patient"
	and IMMZCom."Current Patient Age In Weeks" >= 6
	and IMMZConf."Country is following a 2 dose scheme for Pneumococcal"

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
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (((((("Pneumococcal vaccine immunization history" = "1 dose") and ("Date last Pneumococcal dose given" >= "8 weeks")) and ("Current Patient Age in Weeks" >= 6 )) and ("Country is using a 2 dose scheme" = true)) or ((((("Pneumococcal vaccine immunization history" = "1 dose") and ("Current Patient Age in Years" >= 1)) and ("Current Patient Age in Years" <= 5)) and ("HIV Status" = "Positive")) and ("Date last Pneumococcal Dose given" >= "8 weeks"))) or ((((("Pneumococcal vaccine immunization history" = "1 dose") and ("Current Patient Age in Years" >= 1)) and ("Current Patient Age in Years" <= 5)) and ("Patient has sickle-cell disease" = true)) and ("Date last Pneumococcal Dose given" >= "8 weeks")))
 */
define "Should vaccinate patient for Pneumococcal because 1 dose in a 2 dose scheme":
	IMMZCom."Number of Pneumococcal Doses Administered to Patient" = 1
	and IMMZCom."Date Last Pneumococcal Dose Administered to Patient" more than 8 week before Today()
	and (
		(
			IMMZConf."Country is following a 2 dose scheme for Pneumococcal"
			and IMMZCom."Current Patient Age In Weeks" >= 6
		)
		 or (
			IMMZCom."Current Patient Age In Years" between 1 and 5
			and (
				(IMMZCom."HIV Status" in IMMZc."HIV status - HIV positive Choices")
				or 
				(IMMZCom."Patient Has Active Sickle-cell disease")
			)
		)
	)
	

/*
 * Rule: Should vaccinate patient for Pneumococcal booster because 2 doses in a 2+1 dose scheme
 * Annotations:
 * 	 - Provide Pneumococcal immunizations – using the "PCV immunization 2p+1 schedule – 2 PREVIOUS" schedule (2 dose scheme + booster)
 * Outputs:
 * 	 - Immunize Patient for Pneumococcal - Booster
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (((("Pneumococcal vaccine immunization history" = "2 dose") and ("Current Patient Age in Months" >= 9 )) and ("Current Patient Age in Months" <= 18 )) and ("Country is using a 2 dose scheme" = true))
 */
define "Should vaccinate patient for Pneumococcal booster because 2 doses in a 2+1 dose scheme":
	IMMZCom."Number of Pneumococcal Doses Administered to Patient" = 2
	and IMMZCom."Current Patient Age In Months" between 9 and 18 
	and IMMZConf."Country is following a 2 dose scheme for Pneumococcal"

/*
 * Rule: Should vaccinate patient for Pneumococcal because No doses in a 3 dose scheme
 * Annotations:
 * 	 - Provide Pneumococcal immunizations – using the "PCV immunization 3p+0 schedule – NO PREVIOUS" schedule (3 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Pneumococcal - No Dose
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ((("Pneumococcal vaccine immunization history" = " No-doses") and ("Current Patient Age in Weeks" >= 6 )) and ("Country is following a 3 dose scheme" = true))
 */
define "Should vaccinate patient for Pneumococcal because No doses in a 3 dose scheme":
	IMMZCom."No Pneumococcal Doses Administered to Patient"
	and IMMZCom."Current Patient Age In Weeks" >= 6
	and IMMZConf."Country is following a 3 dose scheme for Pneumococcal"

/*
 * Rule: Should vaccinate patient for Pneumococcal because 1 dose in a 3 dose scheme
 * Annotations:
 * 	 - Provide Pneumococcal immunizations – using the "PCV immunization 3p+0 schedule – 1 PREVIOUS" schedule (3 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Pneumococcal - 1 Dose
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (((("Pneumococcal vaccine immunization history" = " 1 dose") and ("Date last Pneumococcal dose given" >= "4 weeks")) and ("Current Patient Age in Weeks" >= 6 )) and ("Country is following a 3 dose scheme" = true))
 */
define "Should vaccinate patient for Pneumococcal because 1 dose in a 3 dose scheme":
	IMMZCom."No Pneumococcal Doses Administered to Patient"
	and IMMZCom."Date Last Pneumococcal Dose Administered to Patient" more than 4 week before Today() 
	and IMMZCom."Current Patient Age In Weeks" >= 6
	and IMMZConf."Country is following a 3 dose scheme for Pneumococcal"

/*
 * Rule: Should vaccinate patient for Pneumococcal because 2 doses in a 3 dose scheme
 * Annotations:
 * 	 - Provide Pneumococcal immunizations – using the "PCV immunization 3p+0 schedule – 2 PREVIOUS" schedule (3 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Pneumococcal - 2 Doses
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (((("Pneumococcal vaccine immunization history" = " 2 doses") and ("Date last Pneumococcal Dose given" >= "4 weeks")) and ("Current Patient Age in Weeks" >= 6 )) and ("Country is following a 3 dose scheme" = true))
 */
define "Should vaccinate patient for Pneumococcal because 2 doses in a 3 dose scheme":
	IMMZCom."Number of Pneumococcal Doses Administered to Patient" = 2
	and IMMZCom."Date Last Pneumococcal Dose Administered to Patient" more than 4 week before Today() 
	and IMMZCom."Current Patient Age In Weeks" >= 6
	and IMMZConf."Country is following a 3 dose scheme for Pneumococcal"

/*
 * Rule: Should vaccinate patient for Pneumococcal because No doses in a 2 dose scheme
 * Annotations:
 * 	 - Provide Pneumococcal immunizations – using the "PCV immunization – NO PREVIOUS" schedule (2 dose scheme)
 * 	 - 
 * Outputs:
 * 	 - Immunize Patient for Pneumococcal - No Doses
 * 	 - 
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ((((("Pneumococcal vaccine immunization history" = "No-doses") and ("Current Patient Age in Years" >= 1)) and ("Current Patient Age in Years" <= 5)) and ("HIV Status" = "Positive")) or (((("Pneumococcal vaccine immunization history" = "No-doses") and ("Current Patient Age in Years" >= 1)) and ("Current Patient Age in Years" <= 5)) and ("Patient has sickle-cell disease" = true)))
 */
define "Should vaccinate patient for Pneumococcal because No doses in a 2 dose scheme":
	IMMZCom."No Pneumococcal Doses Administered to Patient" 
	and IMMZCom."Current Patient Age In Years" between 1 and 5
	and	(
		(IMMZCom."HIV Status" in IMMZc."HIV status - HIV positive Choices")
		or 
		(IMMZCom."Patient Has Active Sickle-cell disease")
	)

/*
 * Rule: Should vaccinate patient for Pneumococcal because No doses in a 1 dose scheme
 * Annotations:
 * 	 - Provide Pneumococcal immunizations – using the "Catch-up PCV immunization – NO PREVIOUS" schedule (1 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Pneumococcal - No Doses (Catch-up)
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ((("Pneumococcal vaccine immunization history" = " No-doses") and ("Current Patient Age in Months" >= 24)) and ("In a setting with a high disease burden and mortality" = true))
 */
define "Should vaccinate patient for Pneumococcal because No doses in a 1 dose scheme":
	IMMZCom."No Pneumococcal Doses Administered to Patient"
	and IMMZCom."Current Patient Age In Months" >= 24
	and IMMZConf."In a setting with a high disease burden and mortality"

/*
 * Rule: Should vaccinate patient for Pneumococcal Booster in second year of life because HIV infected or preterm who completed 3-dose series before 12 months of age
 * Annotations:
 * 	 - Provide Pneumococcal immunizations – using the "PCV immunization – Booster for HIV+ and preterm" schedule (1 booster dose in second year of life)
 * Outputs:
 * 	 - Immunize Patient for Pneumococcal - HIV positive and preterm who received their 3 doses before 12 months of age
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (((((("Pneumococcal vaccine immunization history" = "3 doses") and ("HIV Status" = "Positive")) and ("Patient mother's pregnancy outcome observation" = "preterm")) and ("Age when Patient received 3rd dose in Months" < 12)) and ("Current Patient Age in Months" >= 12)) and ("Current Patient Age in Months" <= 24))
 */
define "Should vaccinate patient for Pneumococcal Booster in second year of life because HIV infected or preterm who completed 3-dose series before 12 months of age":
	IMMZCom."Number of Pneumococcal Doses Administered to Patient" = 3
	and // todo: validate with WHO this is supposed to be an OR even though the sheet says AND
	(
		(IMMZCom."HIV Status" in IMMZc."HIV status - HIV positive Choices")
		or exists(IMMZCom."Preterm")
	)
	and IMMZCom."Patient Age at 1st Dose of Pneumococcal in Months" < 12
	and IMMZCom."Current Patient Age In Months" between 12 and 24

