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
include IMMZStratifiers called IMMZStratifiers
include IMMZVaccineLibrary called IMMZvl
include IMMZConfig called IMMZCon

context Patient


/*
 * Rule: Should vaccinate patient for BCG
 * Annotations:
 * 	 - Provide BCG immunizations – using the "BCG vaccine immunization – NO PREVIOUS" schedule (1 dose scheme)
 * 	 - 
 * 	 - Provide BCG immunizations – using the "BCG vaccine immunization – NO PREVIOUS" schedule (1 dose scheme) if CD4% >25% for children aged <5 years or CD4 count ≥200 if aged >5  years
 * Outputs:
 * 	 - Immunize Patient for BCG -  TST-negative
 * 	 - Immunize Patient for BCG - IGRA-negative
 * 	 - Immunize Patient for BCG - No Doses
 * 	 - Immunize Patient for BCG - History Unknown
 * 	 - Immunize Patient for BCG - No Doses and HIV Status Positive and immunicologically stable
 * 	 - 
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * 	- 
 * Logic:
 *	 ((((((("TST test" = "TST-negative") and ("High incidence of TB and/or high leprosy burden" = true)) or (("IGRA test" = "IGRA-negative") and ("High incidence of TB and/or high leprosy burden" = true))) or (("BCG vaccine immunization history" = "No-doses") and ("High incidence of TB and/or high leprosy burden" = true))) or (("BCG vaccine immunization history" = "Unknown") and ("High incidence of TB and/or high leprosy burden" = true))) or ((((("BCG vaccine immunization history" = "No-doses" = true) and ("HIV Status" = "Positive" = true)) and ("CD4%" >"25%" = true)) and ("Age" < "5 years")) and ("High incidence of TB and/or high leprosy burden" = true))) or ((((("BCG vaccine immunization history" = "No-doses" = true) and ("HIV Status" = "Positive" = true)) and ("CD4 count" ≥ "200" = true)) and ("Age" > "5 years")) and ("High incidence of TB and/or high leprosy burden" = true)))
 */
define "Should vaccinate patient for BCG":
	(((((
		((IMMZCom."Most Recent TST Test Result" in IMMZc."Negative Result")) and (IMMZCon."High incidence of TB and/or high leprosy burden" = true)) or 
		((IMMZCom."Most Recent IGRA Test Result" in IMMZc."Negative Result") and (IMMZCon."High incidence of TB and/or high leprosy burden" = true))) or 
		((IMMZCom."No BCG Doses Administered") and (IMMZCon."High incidence of TB and/or high leprosy burden" = true))) or 
		(((((IMMZCom."No BCG Doses Administered") and (IMMZCom."HIV Status" in IMMZc."HIV status - HIV positive Choices")) and (IMMZCom."Most Recent CD4%" > 25'%')) and (IMMZCom."Current Patient Age In Years" < 5)) and (IMMZCon."High incidence of TB and/or high leprosy burden" = true))) or 
		(((((IMMZCom."No BCG Doses Administered") and (IMMZCom."HIV Status" in IMMZc."HIV status - HIV positive Choices")) and (IMMZCom."Most Recent CD4 Count" >= 200)) and (IMMZCom."Current Patient Age In Years" >= 5)) and (IMMZCon."High incidence of TB and/or high leprosy burden" = true)))