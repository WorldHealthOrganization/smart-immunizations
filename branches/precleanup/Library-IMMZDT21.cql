/*
 * Library: IMMZDT21 (IMMZ.DT.21.SeasonalInfluenza)
 * Rule: If child or person has not been vaccinated, give Seasonal Influenza vaccine at 6 months of age, and then once a year. 
 * Trigger: Patient has never had Seasonal Influenza vaccination, or missing doses in the vaccination schedule (once a year)
 */
library IMMZDT21
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
 * Rule: Should vaccinate patient for Seasonal influenza because no doses at 6 months old in a 2 dose scheme
 * Annotations:
 * 	 - Provide Seasonal influenza immunizations – using the "Seasonal influenza vaccine immunization – NO PREVIOUS"
 * Outputs:
 * 	 - Immunize Patient for Seasonal influenza - No Doses at 6 months old
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (("Seasonal influenza vaccine immunization history" = "No-doses") and ("Age" >= "6 months"))
 */
define "Should vaccinate patient for Seasonal influenza because no doses at 6 months old in a 2 dose scheme":
	IMMZCom."No Seasonal Influenza Doses Administered to Patient" and
	IMMZCom."Current Patient Age In Months" >= 6

/*
 * Rule: Should vaccinate patient for Seasonal influenza because 1st dose was given 4 weeks ago in a 2 dose scheme
 * Annotations:
 * 	 - Provide Seasonal influenza immunizations – using the "Seasonal influenza vaccine immunization – 1 PREVIOUS"
 * Outputs:
 * 	 - Immunize Patient for Seasonal influenza - 1st Dose given 4 weeks ago
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ((("Seasonal influenza vaccine immunization history" = "1 dose") and ("Last dose given" >= "4 weeks ago")) and ("Age" < "9 years"))
 */
define "Should vaccinate patient for Seasonal influenza because 1st dose was given 4 weeks ago in a 2 dose scheme":
	IMMZCom."Number of Seasonal Influenza Doses Administered to Patient" = 1
	and IMMZCom."Date Last Seasonal Influenza Dose Administered to Patient" more than 4 'weeks' before Today()
	and IMMZCom."Current Patient Age In Years" < 9

/**
 * Patient has completed primary series
 */
define "Patient has completed Seasonal influenza primary series":
	(IMMZCom."Current Patient Age In Years" < 9
		and IMMZCom."Number of Seasonal Influenza Doses Administered to Patient" >= 2)
	or (IMMZCom."Current Patient Age In Years" >= 9
	and IMMZCom."Number of Seasonal Influenza Doses Administered to Patient" >= 1)

/*
 * Rule: Should vaccinate patient for Seasonal influenza - Yearly booster dose
 * Annotations:
 * 	 - Provide Seasonal influenza immunizations – using the "Seasonal influenza vaccine immunization – Yearly booster dose"
 * Outputs:
 * 	 - Immunize Patient for Seasonal influenza - Yearly booster dose
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ("Seasonal influenza vaccine immunization last dose given" >= "1 year ago")
 */
define "Should vaccinate patient for Seasonal influenza - Yearly booster dose":
	"Patient has completed Seasonal influenza primary series" 
	and IMMZCom."Date Last Seasonal Influenza Dose Administered to Patient" more than 1 'year' before Today()

