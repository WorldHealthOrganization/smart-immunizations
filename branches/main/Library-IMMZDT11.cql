/*
 * Library: IMMZDT11 (IMMZ.DT.11.JE)
 * Rule: If child or person has not been vaccinated, give Japanese Encephalitis vaccine according to the defined schedule 
 * Trigger: Patient has never received Japanese Encephalitis vaccination
 */
library IMMZDT11
// Start Skeleton CQL
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1'
include IMMZCommon called IMMZCom
include IMMZConcepts called IMMZc
include IMMZConfig called IMMZCon
include IMMZVaccineLibrary called IMMZvl
include FHIRCommon called FC
// End Skeleton CQL
context Patient

/*
 * Rule: Should vaccinate patient for Japanese Encephalitis because no doses in a 2 dose scheme
 * Annotations:
 * 	 - Provide Japanese Encephalitis immunizations – using the "Japanese Encephalitis vaccine immunization – NO PREVIOUS" schedule (2 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Japanese Encephalitis - No Doses
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (((("Japanese Encephalitis vaccine immunization history" = "No-doses" = true) and ("Current Patient Age in Months" >= 6)) and ("Country is administering Inactivated Vero cell-derived antigen" = true)) and ("Country recognizes JE as a health priority" = true))
 */
define "Should vaccinate patient for Japanese Encephalitis because no doses in a 2 dose scheme":
	IMMZCom."No JE Doses Administered to Patient"
	and IMMZCom."Current Patient Age In Months" >= 6
	and IMMZCon."Country is administering Inactivated Vero cell-derived JE antigen"
	and IMMZCon."Country recognizes JE as a health priority"

/*
 * Rule: Should vaccinate patient for Japanese Encephalitis because 1 dose in a 2 dose scheme
 * Annotations:
 * 	 - Provide Japanese Encephalitis immunizations – using the "Japanese Encephalitis vaccine immunization – Inactivated Vero cell-derived" schedule (2 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Japanese Encephalitis - 2nd dose
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (((("Japanese Encephalitis vaccine immunization history" = "1 dose" = true) and ("Date last JE dose given" >= "4 weeks" = true)) and ("Type of last JE dose" = "Inactivated Vero cell-derived")) and ("Country recognizes JE as a health priority" = true))
 */
define "Should vaccinate patient for Japanese Encephalitis because 1 dose in a 2 dose scheme":
	IMMZCom."Number of JE Doses Administered to Patient" = 1
	and IMMZCom."Date Last JE Dose Administered to Patient" more than 4 week before Today()
	and IMMZCom."Type of Last JE Dose Administered to Patient" in IMMZc."Inactivated Vero cell-derived Japanese Encephalitis vaccines"
	and IMMZCon."Country recognizes JE as a health priority"

/*
 * Rule: Should vaccinate patient for Japanese Encephalitis because no doses in a 1 dose scheme
 * Annotations:
 * 	 - Provide Japanese Encephalitis immunizations – using the "Japanese Encephalitis vaccine immunization – NO PREVIOUS" schedule (1 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Japanese Encephalitis - No Doses
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (((((("Japanese Encephalitis vaccine immunization history" = "No-doses" = true) and ("Current Patient Age in Months" >= 8)) and ("Country is administering Live attentuated antigen" = true)) and ("Country recognizes JE as a health priority" = true)) and ("Pregnancy Status" = false)) or ((((("Japanese Encephalitis vaccine immunization history" = "No-doses" = true) and ("Current Patient Age in Months" >= 9)) and ("Country is administering Live recombinant antigen" = true)) and ("Country recognizes JE as a health priority" = true)) and ("Pregnancy Status" = false)))
 */
define "Should vaccinate patient for Japanese Encephalitis because no doses in a 1 dose scheme":
	IMMZCom."No JE Doses Administered to Patient"
	and IMMZCon."Country recognizes JE as a health priority"
	and not(IMMZCom."Pregnant")
	and (
		(
			IMMZCom."Current Patient Age In Months" >= 8
			and IMMZCon."Country is administering Live attentuated JE antigen" 
		)
		or 
		(
			IMMZCom."Current Patient Age In Months" >= 9
			and IMMZCon."Country is administering Live recombinant JE antigen"
		)
	)

