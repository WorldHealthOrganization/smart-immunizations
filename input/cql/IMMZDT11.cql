/*
 * Library: IMMZDT11 (IMMZ.DT.11.JapaneseEncephalitis)
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
// End Skeleton CQL
context Patient

/*
 * Rule: Should vaccinate patient for Japanese Encephalitis because no doses
 * Annotations:
 * 	 - Provide Japanese Encephalitis immunizations – using the "Japanese Encephalitis vaccine immunization – NO PREVIOUS" schedule (Scheme depends on antigen)
 * Outputs:
 * 	 - Immunize Patient for Japanese Encephalitis - No Doses
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ((((("Japanese Encephalitis vaccine immunization history" = "No-doses" = true) and ("Age" >= "6 months")) and ("Antigen" = "Inactivated Vero cell-derived")) or ((("Japanese Encephalitis vaccine immunization history" = "No-doses" = true) and ("Age" >= "8 months")) and ("Antigen" = "Live attentuated"))) or ((("Japanese Encephalitis vaccine immunization history" = "No-doses" = true) and ("Age" >= "9 months")) and ("Antigen" = "Live recombinant")))
 */
define "Should vaccinate patient for Japanese Encephalitis because no doses":
	IMMZCom."No JE Doses Administered to Patient" and (
		(
			IMMZCom."Current Patient Age In Months" >= 6
			and IMMZCon."JE Antigen Used in Country Classification" = IMMZc."Inactivated Vero cell-derived vaccine"
		)
		or (
			IMMZCom."Current Patient Age In Months" >= 8 
			and IMMZCon."JE Antigen Used in Country Classification" = IMMZc."Live attentuated virus vaccine"
			and not(IMMZCom."Pregnant")
		)
		or (
			IMMZCom."Current Patient Age In Months" >= 9
			and IMMZCon."JE Antigen Used in Country Classification" = IMMZc."Live recombinant virus vaccine"
			and not(IMMZCom."Pregnant")
		)
	)

/*
 * Rule: Should vaccinate patient for Japanese Encephalitis because 1 dose
 * Annotations:
 * 	 - Provide Japanese Encephalitis immunizations – using the "Japanese Encephalitis vaccine immunization – Inactivated Vero cell-derived" schedule (Scheme depends on antigen)
 * Outputs:
 * 	 - Immunize Patient for Japanese Encephalitis - 2nd dose
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ((("Japanese Encephalitis vaccine immunization history" = "1 dose" = true) and ("Previous dose" >= "4 weeks" = true)) and ("Antigen" = "Inactivated Vero cell-derived"))
 */
define "Should vaccinate patient for Japanese Encephalitis because 1 dose":
	IMMZCom."Number of JE Doses Administered to Patient" = 1
	and IMMZCom."Date Last JE Dose Administered to Patient" more than 4 'weeks' before Today()
	and IMMZCom."Type of Last JE Dose Administered to Patient" = IMMZc."Inactivated Vero cell-derived vaccine"

	// TODO: Add condition for type of previous dose
	// TODO: 

