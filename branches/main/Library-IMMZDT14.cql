/*
 * Library: IMMZDT14 (IMMZ.DT.14.Typhoid)
 * Rule: If child or person has not been vaccinated, give the Typhoid vaccine between age 6 months - 45 years old 
 * Trigger: Patient has never received Typhoid vaccination and/or is in an outbreak area
 */
library IMMZDT14
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
 * Rule: Should vaccinate patient with TCV vaccine on a 1 dose scheme
 * Annotations:
 * 	 - Provide Typhoid immunizations – using the "TCV vaccine immunization – NO PREVIOUS" schedule (1 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Typhoid -  No doses
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ((((("Typhoid vaccine immunization history" = "No-doses") and ("Current Patient Age in Months" >= 6)) and ("Current Patient Age in Years" <= 45)) and ("Region recommends Typhoid vaccination" = true)) and ("Country is administering the TCV vaccine" = true))
 */
define "Should vaccinate patient with TCV vaccine on a 1 dose scheme":
	IMMZCom."No Typhoid Doses Administered to Patient"
	and IMMZCom."Current Patient Age In Months" >= 6
	and IMMZCom."Current Patient Age In Years" <= 45 
	and IMMZConf."Region recommends Typhoid vaccination"
	and IMMZConf."Country is administering the TCV vaccine"

/*
 * Rule: Should vaccinate patient with ViPS vaccine on a 1 dose scheme
 * Annotations:
 * 	 - Provide Typhoid immunizations – using the "ViPS vaccine immunization – NO PREVIOUS" schedule (1 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Typhoid - No Doses
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (((("Typhoid vaccine immunization history" = "No-doses") and ("Current Patient Age in Years" >= 2)) and ("Region recommends Typhoid vaccination" = true)) and ("Country is administering the ViPS vaccine" = true))
 */
define "Should vaccinate patient with ViPS vaccine on a 1 dose scheme":
	IMMZCom."No Typhoid Doses Administered to Patient"
	and IMMZCom."Current Patient Age In Years" >= 2 
	and IMMZConf."Region recommends Typhoid vaccination"
	and IMMZConf."Country is administering ViPS vaccine"

/* 
 * @dataElement Patient has completed Typhoid primary series
 */
define "Patient has completed Typhoid primary series":
	exists(IMMZCom."Typhoid Doses Administered to Patient" I 
		where 
			(I.vaccineCode in IMMZc."ViPS Class Typhoid Vaccine"
			and (singleton from I.protocolApplied).doseNumber >= 1)
			or (I.vaccineCode in IMMZc."Ty21a Class Typhoid Vaccine" 
			and (singleton from I.protocolApplied).doseNumber >= 3)
	)

/*
 * Rule: Should Re-vaccinate patient with ViPS vaccine on a 1 dose scheme
 * Annotations:
 * 	 - Provide Typhoid revaccination – using the "ViPS vaccine – Revaccination every 3 years" schedule (1 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Typhoid - Last dose given 3 years ago
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (((("Patient has completed Typhoid primary series" = true) and ("Date last Typhoid dose given" >= "3 years")) and ("Type of last Typhoid dose" = "ViPS")) and ("Region recommends Typhoid vaccination" = true))
 */
define "Should Re-vaccinate patient with ViPS vaccine on a 1 dose scheme":
	"Patient has completed Typhoid primary series" and 
	IMMZCom."Date Last Typhoid Dose Administered to Patient" more than 3 year before Today() 
	and IMMZCom."Type of Last Typhoid Dose Administered to Patient" in IMMZc."ViPS Class Typhoid Vaccine"
	and IMMZConf."Region recommends Typhoid vaccination"


/*
 * Rule: Should vaccinate patient with Ty21a vaccine on a 3 dose scheme
 * Annotations:
 * 	 - Provide Typhoid immunizations – using the "Ty21a vaccine immunization – NO PREVIOUS" schedule (3 dose scheme)
 * 	 - Provide Typhoid immunizations – using the "Ty21a vaccine immunization – 1 PREVIOUS" schedule (3 dose scheme)
 * 	 - Provide Typhoid immunizations – using the "Ty21a vaccine immunization – 2 PREVIOUS" schedule (3 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Typhoid - No Doses
 * 	 - Immunize Patient for Typhoid -  1 dose
 * 	 - Immunize Patient for Typhoid -  2 doses
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ((((("Typhoid vaccine immunization history" = "No-doses") and ("Current Patient Age in Years" > 6)) and ("Pregnancy Status" = false)) or ((((("Typhoid vaccine immunization history" = "1 dose") and ("Date last Typhoid dose given" > "1 day")) and ("Date last Typhoid dose given" < "21 days")) and ("Type of last Typhoid dose" = "Ty21a")) and ("Pregnancy Status" = false))) or ((((("Typhoid vaccine immunization history" = "2 doses" = true) and ("Date last Typhoid dose given" > "1 day")) and ("Date last Typhoid dose given" < "21 days")) and ("Type of last Typhoid dose" = "Ty21a")) and ("Pregnancy Status" = false)))
 * Assumption:
 * 	The EIR implementation will correctly set the doseNumber on protocolApplied in order for this logic to work for example:
 *		D1 -> Ty21A DoseNumber = 1
 *		D20 -> Ty21A DoseNumber = 2
 * 		D50 -> Ty21A DoseNumber = 1
 *		D53 -> Ty21A DoseNumber = 2
 *		D55 -> Ty21A DoseNumber = 3
 */
define "Should vaccinate patient with Ty21a vaccine on a 3 dose scheme":
	not(IMMZCom."Pregnant")
	and 
	(
		IMMZCom."No Typhoid Doses Administered to Patient" 
		and IMMZCom."Current Patient Age In Years" > 6 
	)
	or
	(
		IMMZCom."Type of Last Typhoid Dose Administered to Patient" in IMMZc."Ty21a Class Typhoid Vaccine"
		and
		(
			IMMZCom."Highest Sequence of Typhoid Doses Administered to Patient" between 1 and 2
			and IMMZCom."Date Last Typhoid Dose Administered to Patient" more than 1 day before Today()
			and IMMZCom."Date Last Typhoid Dose Administered to Patient" less than 21 day before Today()
		) 
	)
	
/*
 * Rule: Should vaccinate patient with Ty21a vaccine - dose 1 (restart due to interrupted series)
 * Annotations:
 * 	 - Provide Typhoid immunizations – using the "Ty21a vaccine immunization – INTERRUPTED SERIES" schedule (3 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Typhoid - Interrupted series
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ((((("Typhoid vaccine immunization history" = "1 dose") and ("Date last Typhoid dose given" >= "21 days")) and ("Type of last Typhoid dose" = "Ty21a")) and ("Pregnancy Status" = false)) or (((("Typhoid vaccine immunization history" = "2 doses") and ("Date last Typhoid dose given" >= "21 days")) and ("Type of last Typhoid dose" = "Ty21a")) and ("Pregnancy Status" = false)))
 * Assumption:
 * 	The EIR implementation will correctly set the doseNumber on protocolApplied in order for this logic to work for example:
 *		D1 -> Ty21A DoseNumber = 1
 *		D20 -> Ty21A DoseNumber = 2
 * 		D50 -> Ty21A DoseNumber = 1
 *		D53 -> Ty21A DoseNumber = 2
 *		D55 -> Ty21A DoseNumber = 3
 */
define "Should vaccinate patient with Ty21a vaccine - dose 1 (restart due to interrupted series)":
	IMMZCom."Highest Sequence of Typhoid Doses Administered to Patient" between 1 and 2
	and IMMZCom."Date Last Typhoid Dose Administered to Patient" more than 21 days before Today()
	and IMMZCom."Type of Last Typhoid Dose Administered to Patient" in IMMZc."Ty21a Class Typhoid Vaccine"
	and not(IMMZCom."Pregnant")

/*
 * Rule: Should Re-vaccinate patient with Ty21a vaccine on a 3 dose scheme
 * Annotations:
 * 	 - Provide Typhoid revaccination – using the "Ty21a vaccine – Revaccination every 3-7 years" schedule (3 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Typhoid - Last dose given 3 years ago
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (((("Patient has completed Typhoid primary series" = true) and ("Date last Typhoid dose given" >= "3 years")) and ("Type of last Typhoid dose" = "Ty21a")) and ("Region recommends Typhoid vaccination" = true))
 */
define "Should Re-vaccinate patient with Ty21a vaccine on a 3 dose scheme":
	"Patient has completed Typhoid primary series"
	and IMMZCom."Date Last Typhoid Dose Administered to Patient" more than 3 year before Today()
	and IMMZCom."Type of Last Typhoid Dose Administered to Patient" in IMMZc."Ty21a Class Typhoid Vaccine"
	and IMMZConf."Region recommends Typhoid vaccination"
