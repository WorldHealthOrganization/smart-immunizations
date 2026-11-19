/*
 * Library: IMMZS01 (IMMZ.S.01.BCG)
 * Rule: If child or person has not been vaccinated, give BCG vaccine as soon as possible after birth 
 * Trigger: Patient has never had BCG vaccination
 */
library IMMZS01
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
		IMMZConf."High incidence of TB and/or high leprosy burden" = true and 
		Coalesce((IMMZCom."Most Recent TST Test Result" in IMMZc."Negative Result"), false) and 
		Coalesce((IMMZCom."Most Recent IGRA Test Result" in IMMZc."Negative Result"), false) 