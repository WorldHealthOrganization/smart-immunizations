/*
 * Library: IMMZDT13 (IMMZ.DT.13.TBE)
 * Rule: If child or person has not been vaccinated, give Tick-Borne Encephalitis vaccine according to the defined schedule 
 * Trigger: Patient has not been vaccinated for Tick-Borne Encephalitis
 */
library IMMZDT13
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
 * Rule: Should vaccinate patient for Tick-Borne Encephalitis using FSME-Immun because no doses on a 3 dose scheme
 * Annotations:
 * 	 - Provide Tick-Borne Encephalitis immunizations – using the "FSME-Immun vaccine immunization – NO PREVIOUS" schedule (3 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Tick-Borne Encephalitis - No Doses
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ((("Tick-Borne Encephalitis immunization history" = "No-doses") and ("Current Patient Age in Years" >= 1)) and ("Country recognizes TBE as a priority" = true))
 */
define "Should vaccinate patient for Tick-Borne Encephalitis using FSME-Immun because no doses on a 3 dose scheme":
	IMMZCom."No TBE Doses Administered to Patient"
	and IMMZCom."Current Patient Age In Years" >= 1 
	and IMMZCon."Country recognizes TBE as a priority"

/*
 * Rule: Should vaccinate patient for Tick-Borne Encephalitis using FSME-Immun because 1st dose given 1-3 months ago on a 3 dose scheme
 * Annotations:
 * 	 - Provide Tick-Borne Encephalitis immunizations – using the "FSME-Immun vaccine immunization – 1 PREVIOUS" schedule (3 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Tick-Borne Encephalitis - 1st Dose given 1-3 months ago
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ((("Tick-Borne Encephalitis immunization history" = "1 dose") and ("Date last TBE dose given" >= "1 month")) and ("Type of last TBE dose" = "FSME-Immun"))
 * Assumption:
 * 	vaccineCode will contain a specific classification of the antigen given (or a future version of FHIR will have a product link)
 */
define "Should vaccinate patient for Tick-Borne Encephalitis using FSME-Immun because 1st dose given 1-3 months ago on a 3 dose scheme":
	IMMZCom."Number of TBE Doses Administered to Patient" = 1
	and IMMZCom."Date Last TBE Dose Administered to Patient" more than 1 month before Today()
	and IMMZCom."Type of Last TBE Dose Administered to Patient" in IMMZc."FSME-Immun Class TBE Vaccine"

/*
 * Rule: Should vaccinate patient for Tick-Borne Encephalitis using FSME-Immun because 2nd doses given 5 months to 12 months ago on a 3 dose scheme
 * Annotations:
 * 	 - Provide Tick-Borne Encephalitis immunizations – using the "FSME-Immun vaccine immunization – 2 PREVIOUS" schedule (3 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Tick-Borne Encephalitis - 2nd Dose given between 5 months to 12 months ago
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ((("Tick-Borne Encephalitis immunization history" = "2 doses") and ("Date last TBE dose given" >= "5 months")) and ("Type of last TBE dose" = "FSME-Immun"))
 * Assumption:
 * 	vaccineCode will contain a specific classification of the antigen given (or a future version of FHIR will have a product link)
 */
define "Should vaccinate patient for Tick-Borne Encephalitis using FSME-Immun because 2nd doses given 5 months to 12 months ago on a 3 dose scheme":
	IMMZCom."Number of TBE Doses Administered to Patient" = 2
	and IMMZCom."Date Last TBE Dose Administered to Patient" more than 5 month before Today()
	and IMMZCom."Type of Last TBE Dose Administered to Patient" in IMMZc."FSME-Immun Class TBE Vaccine"

/* 
 * @dataElement Patient has completed TBE primary series
 * @summary This define checks that the maxmimum sequence for TBE is 3 since all doses are 3 doses
 */
define "Patient has completed TBE primary series":
	Max(IMMZCom."TBE Doses Administered to Patient" I return (singleton from I.protocolApplied).doseNumber as FHIR.positiveInt) >= 3

/*
 * Rule: Should vaccinate patient for Tick-Borne Encephalitis Booster using FSME-Immun because last dose given 3 years ago
 * Annotations:
 * 	 - Provide Tick-Borne Encephalitis immunizations – using the "FSME-Immun vaccine immunization – BOOSTER" schedule (1 every 3-5 years)
 * Outputs:
 * 	 - Immunize Patient for Tick-Borne Encephalitis - Last dose given 3 years ago
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (((("Patient has completed TBE primary series" = true) and ("Date last TBE dose given" >= "3 years")) and ("Type of last TBE dose" = "FSME-Immun")) and ("Country recognizes TBE as a priority" = true))
 * Assumption:
 * 	vaccineCode will contain a specific classification of the antigen given (or a future version of FHIR will have a product link)
 */
define "Should vaccinate patient for Tick-Borne Encephalitis Booster using FSME-Immun because last dose given 3 years ago":
	"Patient has completed TBE primary series"
	and IMMZCom."Date Last TBE Dose Administered to Patient" more than 3 year before Today()
	and IMMZCom."Type of Last TBE Dose Administered to Patient" in IMMZc."FSME-Immun Class TBE Vaccine"
	and IMMZCon."Country recognizes TBE as a priority" 

/*
 * Rule: Should vaccinate patient for Tick-Borne Encephalitis using Encepur because no doses on a 3 dose scheme
 * Annotations:
 * 	 - Provide Tick-Borne Encephalitis immunizations – using the "Encepur vaccine immunization – NO PREVIOUS" schedule (3 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Tick-Borne Encephalitis - No Doses
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ((("Tick-Borne Encephalitis immunization history" = "No-doses") and ("Current Patient Age in Years" >= 1)) and ("Country recognizes TBE as a priority" = true))
 */
define "Should vaccinate patient for Tick-Borne Encephalitis using Encepur because no doses on a 3 dose scheme":
	IMMZCom."No TBE Doses Administered to Patient"
	and IMMZCom."Current Patient Age In Years" >= 1
	and IMMZCon."Country recognizes TBE as a priority"

/*
 * Rule: Should vaccinate patient for Tick-Borne Encephalitis using Encepur because 1st dose given 1-3 months ago on a 3 dose scheme
 * Annotations:
 * 	 - Provide Tick-Borne Encephalitis immunizations – using the "Encepur vaccine immunization – 1 PREVIOUS" schedule (3 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Tick-Borne Encephalitis - 1st Dose given 1-3 months ago
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ((("Tick-Borne Encephalitis immunization history" = "1 dose") and ("Date last TBE dose given" >= "1 month")) and ("Type of last TBE dose" = "Encepur"))
 */
define "Should vaccinate patient for Tick-Borne Encephalitis using Encepur because 1st dose given 1-3 months ago on a 3 dose scheme":
	IMMZCom."Number of TBE Doses Administered to Patient" = 1
	and IMMZCom."Date Last TBE Dose Administered to Patient" more than 1 month before Today()
	and IMMZCom."Type of Last TBE Dose Administered to Patient" in IMMZc."Encepur Class TBE Vaccine"

/*
 * Rule: Should vaccinate patient for Tick-Borne Encephalitis using Encepur because 2nd doses given 5 months to 12 months ago on a 3 dose scheme
 * Annotations:
 * 	 - Provide Tick-Borne Encephalitis immunizations – using the "Encepur vaccine immunization – 2 PREVIOUS" schedule (3 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Tick-Borne Encephalitis - 2nd Dose given between 5 months to 12 months ago
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ((("Tick-Borne Encephalitis immunization history" = "2 doses") and ("Date last TBE dose given" >= "5 months")) and ("Type of last TBE dose" = "Encepur"))
 */
define "Should vaccinate patient for Tick-Borne Encephalitis using Encepur because 2nd doses given 5 months to 12 months ago on a 3 dose scheme":
	IMMZCom."Number of TBE Doses Administered to Patient" = 2
	and IMMZCom."Date Last TBE Dose Administered to Patient" more than 5 month before Today()
	and IMMZCom."Type of Last TBE Dose Administered to Patient" in IMMZc."Encepur Class TBE Vaccine"

/*
 * Rule: Should vaccinate patient for Tick-Borne Encephalitis Booster using Encepur because last dose given 3 years ago
 * Annotations:
 * 	 - Provide Tick-Borne Encephalitis immunizations – using the "Encepur vaccine immunization – BOOSTER" schedule (1 every 3-5 years)
 * Outputs:
 * 	 - Immunize Patient for Tick-Borne Encephalitis - Last dose given 3 years ago
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (((("Patient has completed TBE primary series" = true) and ("Date last TBE dose given" >= "3 years")) and ("Type of last TBE dose" = "Encepur")) and ("Country recognizes TBE as a priority" = true))
 */
define "Should vaccinate patient for Tick-Borne Encephalitis Booster using Encepur because last dose given 3 years ago":
	"Patient has completed TBE primary series"
	and IMMZCom."Date Last TBE Dose Administered to Patient" more than 3 year before Today()
	and IMMZCom."Type of Last TBE Dose Administered to Patient" in IMMZc."Encepur Class TBE Vaccine"
	and IMMZCon."Country recognizes TBE as a priority"

/*
 * Rule: Should vaccinate patient for Tick-Borne Encephalitis using TBE-Moscow because no doses on a 3 dose scheme
 * Annotations:
 * 	 - Provide Tick-Borne Encephalitis immunizations – using the "TBE-Moscow vaccine immunization – NO PREVIOUS" schedule (3 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Tick-Borne Encephalitis - No Doses
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ((("Tick-Borne Encephalitis immunization history" = "No-doses") and ("Current Patient Age in Years" >= 3)) and ("Country recognizes TBE as a priority" = true))
 */
define "Should vaccinate patient for Tick-Borne Encephalitis using TBE-Moscow because no doses on a 3 dose scheme":
	IMMZCom."No TBE Doses Administered to Patient"
	and IMMZCom."Current Patient Age In Years" >= 3
	and IMMZCon."Country recognizes TBE as a priority"

/*
 * Rule: Should vaccinate patient for Tick-Borne Encephalitis using TBE-Moscow because 1st dose given 1 month to 7 months ago on a 3 dose scheme
 * Annotations:
 * 	 - Provide Tick-Borne Encephalitis immunizations – using the "TBE-Moscow vaccine immunization – 1 PREVIOUS" schedule (3 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Tick-Borne Encephalitis - 1st Dose given 1 month ago
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ((("Tick-Borne Encephalitis immunization history" = "1 dose") and ("Date last TBE dose given" >= "1 month")) and ("Type of last TBE dose" = "TBE-Moscow"))
 */
define "Should vaccinate patient for Tick-Borne Encephalitis using TBE-Moscow because 1st dose given 1 month to 7 months ago on a 3 dose scheme":
	IMMZCom."Number of TBE Doses Administered to Patient" = 1
	and IMMZCom."Date Last TBE Dose Administered to Patient" more than 1 month before Today()
	and IMMZCom."Type of Last TBE Dose Administered to Patient" in IMMZc."TBE-Moscow Class TBE Vaccine"

/*
 * Rule: Should vaccinate patient for Tick-Borne Encephalitis using TBE-Moscow because 2nd dose given 12 months ago on a 3 dose scheme
 * Annotations:
 * 	 - Provide Tick-Borne Encephalitis immunizations – using the "TBE-Moscow vaccine immunization – 2 PREVIOUS" schedule (3 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Tick-Borne Encephalitis - 2nd Dose given 12 months ago
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ((("Tick-Borne Encephalitis immunization history" = "2 doses") and ("Date last TBE dose given" >= "12 months")) and ("Type of last TBE dose" = "TBE-Moscow"))
 */
define "Should vaccinate patient for Tick-Borne Encephalitis using TBE-Moscow because 2nd dose given 12 months ago on a 3 dose scheme":
	IMMZCom."Number of TBE Doses Administered to Patient" = 2
	and IMMZCom."Date Last TBE Dose Administered to Patient" more than 12 month before Today()
	and IMMZCom."Type of Last TBE Dose Administered to Patient" in IMMZc."TBE-Moscow Class TBE Vaccine"

/*
 * Rule: Should vaccinate patient for TBE-Moscow Booster because last dose given 3 years ago
 * Annotations:
 * 	 - Provide Tick-Borne Encephalitis immunizations – using the "TBE-Moscow vaccine immunization – BOOSTER" schedule (1 every 3 years)
 * Outputs:
 * 	 - Immunize Patient for Tick-Borne Encephalitis - Last TBE-Moscow dose given 3 years ago
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (((("Patient has completed TBE primary series" = true) and ("Date last TBE dose given" >= "3 years")) and ("Type of last TBE dose" = "TBE-Moscow")) and ("Country recognizes TBE as a priority" = true))
 */
define "Should vaccinate patient for TBE-Moscow Booster because last dose given 3 years ago":
	"Patient has completed TBE primary series"
	and IMMZCom."Date Last TBE Dose Administered to Patient" more than 3 year before Today()
	and IMMZCom."Type of Last TBE Dose Administered to Patient" in IMMZc."TBE-Moscow Class TBE Vaccine"
	and IMMZCon."Country recognizes TBE as a priority" 

/*
 * Rule: Should vaccinate patient for Tick-Borne Encephalitis using EnceVir because no doses on a 3 dose scheme
 * Annotations:
 * 	 - Provide Tick-Borne Encephalitis immunizations – using the "EnceVir vaccine immunization – NO PREVIOUS" schedule (3 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Tick-Borne Encephalitis - No Doses
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ((("Tick-Borne Encephalitis immunization history" = "No-doses") and ("Current Patient Age in Years" >= 3)) and ("Country recognizes TBE as a priority" = true))
 */
define "Should vaccinate patient for Tick-Borne Encephalitis using EnceVir because no doses on a 3 dose scheme":
	IMMZCom."No TBE Doses Administered to Patient"
	and IMMZCom."Current Patient Age In Years" >= 3
	and IMMZCon."Country recognizes TBE as a priority"

/*
 * Rule: Should vaccinate patient for Tick-Borne Encephalitis using EnceVir because 1st dose given 1 month to 7 months ago on a 3 dose scheme
 * Annotations:
 * 	 - Provide Tick-Borne Encephalitis immunizations – using the "EnceVir vaccine immunization – 1 PREVIOUS" schedule (3 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Tick-Borne Encephalitis - 1st Dose given 1 month ago
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ((("Tick-Borne Encephalitis immunization history" = "1 dose") and ("Date last TBE dose given" >= "1 month")) and ("Type of last TBE dose" = "EnceVir"))
 */
define "Should vaccinate patient for Tick-Borne Encephalitis using EnceVir because 1st dose given 1 month to 7 months ago on a 3 dose scheme":
	IMMZCom."Number of TBE Doses Administered to Patient" = 1
	and IMMZCom."Date Last TBE Dose Administered to Patient" more than 1 month before Today()
	and IMMZCom."Type of Last TBE Dose Administered to Patient" in IMMZc."EnceVir Class TBE Vaccine"

/*
 * Rule: Should vaccinate patient for Tick-Borne Encephalitis using EnceVir because 2nd dose given 12 months ago on a 3 dose scheme
 * Annotations:
 * 	 - Provide Tick-Borne Encephalitis immunizations – using the "EnceVir vaccine immunization – 2 PREVIOUS" schedule (3 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Tick-Borne Encephalitis - 2nd Dose given 12 months ago
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ((("Tick-Borne Encephalitis immunization history" = "2 doses") and ("Date last TBE dose given" >= "12 months")) and ("Type of last TBE dose" = "EnceVir"))
 */
define "Should vaccinate patient for Tick-Borne Encephalitis using EnceVir because 2nd dose given 12 months ago on a 3 dose scheme":
	IMMZCom."Number of TBE Doses Administered to Patient" = 2
	and IMMZCom."Date Last TBE Dose Administered to Patient" more than 12 month before Today()
	and IMMZCom."Type of Last TBE Dose Administered to Patient" in IMMZc."EnceVir Class TBE Vaccine"

/*
 * Rule: Should vaccinate patient for Tick-Borne Encephalitis Booster using EnceVir because last dose given 3 years ago
 * Annotations:
 * 	 - Provide Tick-Borne Encephalitis immunizations – using the "EnceVir vaccine immunization – BOOSTER" schedule (1 every 3 years)
 * Outputs:
 * 	 - Immunize Patient for Tick-Borne Encephalitis - Last dose given 3 years ago
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (((("Patient has completed TBE primary series" = true) and ("Date last TBE dose given" >= "3 years")) and ("Type of last TBE dose" = "EnceVir")) and ("Country recognizes TBE as a priority" = true))
 */
define "Should vaccinate patient for Tick-Borne Encephalitis Booster using EnceVir because last dose given 3 years ago":
	"Patient has completed TBE primary series"
	and IMMZCom."Date Last TBE Dose Administered to Patient" more than 3 year before Today() 
	and IMMZCom."Type of Last TBE Dose Administered to Patient" in IMMZc."EnceVir Class TBE Vaccine"
	and IMMZCon."Country recognizes TBE as a priority"

