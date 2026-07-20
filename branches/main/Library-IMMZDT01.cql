/*
 * Library: IMMZDT01 (IMMZ.DT.01.BCG)
 * Rule: If child or person has not been vaccinated, give BCG vaccine as soon as possible after birth 
 * Trigger: Patient has never had BCG vaccination
 */
library IMMZDT01
// Start Skeleton CQL
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1'
include IMMZCommon called IMMZCom
include IMMZConcepts called IMMZc
include IMMZVaccineLibrary called IMMZvl
include IMMZConfig called IMMZConf
// End Skeleton CQL
context Patient

/*
 * Determine if the patient has risk of occupational exposure in low and high TB incidence areas (e.g. health
 * workers, laboratory workers, medical students, prison workers, other individuals with occupational exposure).
 * 
 * The logic for determine this still needs to be determined.  Defaulting to true until this can be done.
 */
define "Risk of occupational exposure in low and high TB areas": true


/*
 * Rule: Should vaccinate patient for BCG
 * Annotations:
 * 	 - Provide BCG immunizations – using the "BCG vaccine immunization – NO PREVIOUS" schedule (1 dose scheme)
 * 	 - 
 * 	 - Provide BCG immunizations – using the "BCG vaccine immunization – NO PREVIOUS" schedule (1 dose scheme) if CD4% >25% for children aged <5 years or CD4 count ≥200 if aged >5  years
 * Outputs:
 * 	 - Immunize Patient for BCG - TST-negative
 * 	 - Immunize Patient for BCG - IGRA-negative
 * 	 - Immunize Patient for BCG - No Doses
 * 	 - Immunize Patient for BCG - History Unknown
 * 	 - Immunize Patient for BCG - No Doses and HIV Status Positive and immunicologically stable
 * 	 - 
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * 	- 
 * Logic:
 *	 ((((((("TST Test Result" = "TST-negative") and ("High incidence of TB and/or high leprosy burden" = true)) or (("IGRA Test Result" = "IGRA-negative") and ("High incidence of TB and/or high leprosy burden" = true))) or (("BCG vaccine immunization history" = "No-doses") and ("High incidence of TB and/or high leprosy burden" = true))) or (("BCG vaccine immunization history" = "Unknown") and ("High incidence of TB and/or high leprosy burden" = true))) or ((((("BCG vaccine immunization history" = "No-doses" = true) and ("HIV Status" = "Positive" = true)) and ("CD4%" >"25%" = true)) and ("Current Patient Age in Years" < 5)) and ("High incidence of TB and/or high leprosy burden" = true))) or ((((("BCG vaccine immunization history" = "No-doses" = true) and ("HIV Status" = "Positive" = true)) and ("CD4 count" ≥ "200" = true)) and ("Current Patient Age in Years" > 5)) and ("High incidence of TB and/or high leprosy burden" = true)))
 * SHARING SCHEDULE LOGIC, KEEPING THIS FOR NOW IN CASE THAT DECISION CHANGES.
define "Should vaccinate patient for BCG":
	IMMZConf."High incidence of TB and/or high leprosy burden" = true and (
		Coalesce((IMMZCom."Most Recent TST Test Result" in IMMZc."Negative Result"), false) or 
		Coalesce((IMMZCom."Most Recent IGRA Test Result" in IMMZc."Negative Result"), false) or 
		(IMMZCom."No BCG Doses Administered to Patient") or 
		(
				(IMMZCom."No BCG Doses Administered to Patient" and IMMZCom."HIV Status" in IMMZc."HIV status - HIV positive Choices") and 
				(
					Coalesce((IMMZCom."Most Recent CD4%" > 25'%' and IMMZCom."Current Patient Age In Years" < 5), false) or 
					Coalesce((IMMZCom."Most Recent CD4 Count" >= 200 and IMMZCom."Current Patient Age In Years" >= 5), false)
				)
		)
	) 
*/

/*
 * Rule: Provision of the BCG dose
 * Create Condition:
 *   - BCG dose should be provided if the patient has not received any BCG doses, and is in a High incidence of TB and/or high leprosy burden, and TST-negative and IGRA-negative
 * 
 * Completion:
 *   - "BCG Dose 1 provided" = TRUE
 *
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * 	 
 */
define "Provision of the BCG dose":
  IMMZCom."No BCG Doses Administered to Patient" and
  if IMMZCom."HIV Status" in IMMZc."HIV status - HIV positive Choices" 
	then 
		(
			Coalesce((IMMZCom."Most Recent CD4%" > 25'%' and IMMZCom."Current Patient Age In Years" < 5), false) or 
			Coalesce((IMMZCom."Most Recent CD4 Count" >= 200 and IMMZCom."Current Patient Age In Years" >= 5), false)
		)
	else 
		(
			IMMZConf."High incidence of TB and/or high leprosy burden" = true or
			(
				"Risk of occupational exposure in low and high TB areas" and (
					Coalesce((IMMZCom."Most Recent TST Test Result" in IMMZc."Negative Result"), false) or 
					Coalesce((IMMZCom."Most Recent IGRA Test Result" in IMMZc."Negative Result"), false)
				)
			)
		)

define "Schedule Due Date for BCG dose":
	ToDateTime( Patient.birthDate )

define "Should vaccinate patient for BCG":
	"Provision of the BCG dose" and ("Schedule Due Date for BCG dose" <= (Now()))
	
