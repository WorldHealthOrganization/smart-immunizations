/*
 * Library: IMMZDT08 (IMMZ.DT.08.Measles)
 * Rule: If the child or patient has not been given MCV1 (at 9 months) and MCV2 (between 15-18 months) vaccination 
 * Trigger: Patient has never received measles vaccination
 */
library IMMZDT08
// Start Skeleton CQL
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1'
include IMMZCommon called IMMZCom
include IMMZConcepts called IMMZc
include IMMZConfig called IMMZCon
include IMMZStratifiers called IMMZStratifiers
include IMMZVaccineLibrary called IMMZvl
include FHIRCommon called FC
// End Skeleton CQL
context Patient

/* 
 * @dataElement Measles vaccine immunization history = No-doses
 */
define "Measles vaccine immunization history = No-doses":
	0 // TODO: Define this

/* 
 * @dataElement Current Patient Age in Months
 */
define "Current Patient Age in Months":
	0 // TODO: Define this

/* 
 * @dataElement HIV Status = Positive
 */
define "HIV Status = Positive":
	0 // TODO: Define this

/* 
 * @dataElement Patient is receiving HAART
 */
define "Patient is receiving HAART":
	0 // TODO: Define this

/* 
 * @dataElement Country currently has a measles outbreak
 */
define "Country currently has a measles outbreak":
	0 // TODO: Define this

/* 
 * @dataElement In a setting where the risk of measles among infants < 9 months of age remains high
 */
define "In a setting where the risk of measles among infants < 9 months of age remains high":
	0 // TODO: Define this

/* 
 * @dataElement Population is in conflict zones internally displaced populations and refugees
 */
define "Population is in conflict zones internally displaced populations and refugees":
	0 // TODO: Define this

/* 
 * @dataElement Individual is at high risk of contracting measles (e.g. contacts of known measles cases or in settings with increased risk of exposure during outbreaks suck as day-care facilities
 */
define "Individual is at high risk of contracting measles (e.g. contacts of known measles cases or in settings with increased risk of exposure during outbreaks suck as day-care facilities":
	0 // TODO: Define this

/* 
 * @dataElement Individual is travelling to a country experiencing measles outbreaks
 */
define "Individual is travelling to a country experiencing measles outbreaks":
	0 // TODO: Define this

/* 
 * @dataElement Individual is known to be HIV-infected or exposed (i.e. born to an HIV-infected woman
 */
define "Individual is known to be HIV-infected or exposed (i.e. born to an HIV-infected woman":
	0 // TODO: Define this

/*
 * Rule: Should vaccinate patient for measles (supplimentary) because no doses
 * Annotations:
 * 	 - Provide measles immunization supplimentary dose - Using the "MCV0 Vaccine immunization - NO Previous" schedule (supplimentary dose zero)
 * 	 - 
 * Outputs:
 * 	 - Immunize patient for Measles - No doses
 * 	 - 
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * 	- 
 * Logic:
 *	 ((((((((((("Measles vaccine immunization history" = "No-doses" = true) and ("Current Patient Age in Months" > 6)) and ("HIV Status" = "Positive" = true)) and ("Current Patient Age in Months" < 9)) and ("Patient is receiving HAART" = false)) or (((("Measles vaccine immunization history" = "No-doses" = true) and ("Current Patient Age in Months" > 6)) and ("Country currently has a measles outbreak" = true)) and ("Current Patient Age in Months" < 9))) or (((("Measles vaccine immunization history" = "No-doses" = true) and ("Current Patient Age in Months" > 6)) and ("In a setting where the risk of measles among infants < 9 months of age remains high" = true)) and ("Current Patient Age in Months" < 9))) or (((("Measles vaccine immunization history" = "No-doses" = true) and ("Current Patient Age in Months" > 6)) and ("Population is in conflict zones internally displaced populations and refugees" = true)) and ("Current Patient Age in Months" < 9))) or (((("Measles vaccine immunization history" = "No-doses" = true) and ("Current Patient Age in Months" > 6)) and ("Individual is at high risk of contracting measles (e.g. contacts of known measles cases or in settings with increased risk of exposure during outbreaks suck as day-care facilities" = true)) and ("Current Patient Age in Months" < 9))) or (((("Measles vaccine immunization history" = "No-doses" = true) and ("Current Patient Age in Months" > 6)) and ("Individual is travelling to a country experiencing measles outbreaks" = true)) and ("Current Patient Age in Months" < 9))) or (((("Measles vaccine immunization history" = "No-doses" = true) and ("Current Patient Age in Months" > 6)) and ("Individual is known to be HIV-infected or exposed (i.e. born to an HIV-infected woman" = true)) and ("Current Patient Age in Months" < 9)))
 */
define "Should vaccinate patient for measles (supplimentary) because no doses":
	((((((((((("Measles vaccine immunization history" = "No-doses" = true) and ("Current Patient Age in Months" > 6)) and ("HIV Status" = "Positive" = true)) and ("Current Patient Age in Months" < 9)) and ("Patient is receiving HAART" = false)) or (((("Measles vaccine immunization history" = "No-doses" = true) and ("Current Patient Age in Months" > 6)) and ("Country currently has a measles outbreak" = true)) and ("Current Patient Age in Months" < 9))) or (((("Measles vaccine immunization history" = "No-doses" = true) and ("Current Patient Age in Months" > 6)) and ("In a setting where the risk of measles among infants < 9 months of age remains high" = true)) and ("Current Patient Age in Months" < 9))) or (((("Measles vaccine immunization history" = "No-doses" = true) and ("Current Patient Age in Months" > 6)) and ("Population is in conflict zones internally displaced populations and refugees" = true)) and ("Current Patient Age in Months" < 9))) or (((("Measles vaccine immunization history" = "No-doses" = true) and ("Current Patient Age in Months" > 6)) and ("Individual is at high risk of contracting measles (e.g. contacts of known measles cases or in settings with increased risk of exposure during outbreaks suck as day-care facilities" = true)) and ("Current Patient Age in Months" < 9))) or (((("Measles vaccine immunization history" = "No-doses" = true) and ("Current Patient Age in Months" > 6)) and ("Individual is travelling to a country experiencing measles outbreaks" = true)) and ("Current Patient Age in Months" < 9))) or (((("Measles vaccine immunization history" = "No-doses" = true) and ("Current Patient Age in Months" > 6)) and ("Individual is known to be HIV-infected or exposed (i.e. born to an HIV-infected woman" = true)) and ("Current Patient Age in Months" < 9)))

/* 
 * @dataElement In a setting where there is high transmission of Measles
 */
define "In a setting where there is high transmission of Measles":
	0 // TODO: Define this

/* 
 * @dataElement Pregnancy Status
 */
define "Pregnancy Status":
	0 // TODO: Define this

/* 
 * @dataElement In a setting where there is low transmission of Measles
 */
define "In a setting where there is low transmission of Measles":
	0 // TODO: Define this

/*
 * Rule: Should vaccinate patient for measles because no doses in a 2 dose scheme
 * Annotations:
 * 	 - Provide measles immunization 1st dose - Using the "MCV1 Vaccine immunization - NO Previous" schedule (2 doses scheme)
 * 	 - 
 * Outputs:
 * 	 - Immunize patient for Measles - No doses
 * 	 - 
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * 	- 
 * Logic:
 *	 ((((("Measles vaccine immunization history" = "No-doses" = true) and ("Current Patient Age in Months" >= 9)) and ("In a setting where there is high transmission of Measles" = true)) and ("Pregnancy Status" = false)) or ((("Measles vaccine immunization history" = "No-doses" = true) and ("Current Patient Age in Months" >= 12)) and ("In a setting where there is low transmission of Measles" = true)))
 */
define "Should vaccinate patient for measles because no doses in a 2 dose scheme":
	((((("Measles vaccine immunization history" = "No-doses" = true) and ("Current Patient Age in Months" >= 9)) and ("In a setting where there is high transmission of Measles" = true)) and ("Pregnancy Status" = false)) or ((("Measles vaccine immunization history" = "No-doses" = true) and ("Current Patient Age in Months" >= 12)) and ("In a setting where there is low transmission of Measles" = true)))

/* 
 * @dataElement Measles vaccine immunization history = 1-dose
 */
define "Measles vaccine immunization history = 1-dose":
	0 // TODO: Define this

/* 
 * @dataElement Date last Measles dose given
 */
define "Date last Measles dose given":
	0 // TODO: Define this

/* 
 * @dataElement 4 weeks
 */
define "4 weeks":
	0 // TODO: Define this

/*
 * Rule: Should vaccinate patient for measles because 1 dose in a 2 dose scheme
 * Annotations:
 * 	 - Provide measles immunization 1st dose - Using the "MCV2 Vaccine immunization - 1 Previous" schedule (2 doses scheme)
 * Outputs:
 * 	 - Immunize patient for Measles - 1 Dose
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (((("Measles vaccine immunization history" = "1-dose" = true) and ("Current Patient Age in Months" >= 15)) and ("Date last Measles dose given" >= "4 weeks")) and ("Pregnancy Status" = false))
 */
define "Should vaccinate patient for measles because 1 dose in a 2 dose scheme":
	(((("Measles vaccine immunization history" = "1-dose" = true) and ("Current Patient Age in Months" >= 15)) and ("Date last Measles dose given" >= "4 weeks")) and ("Pregnancy Status" = false))

/* 
 * @dataElement Immune reconstitution was achieved
 */
define "Immune reconstitution was achieved":
	0 // TODO: Define this

/* 
 * @dataElement CD4+ T Lymphocyte monitoring is available
 */
define "CD4+ T Lymphocyte monitoring is available":
	0 // TODO: Define this

/* 
 * @dataElement Time since HAART was initiated in Months
 */
define "Time since HAART was initiated in Months":
	0 // TODO: Define this

/*
 * Rule: Should vaccinate patient for measles supplimentary dose because HIV positive and started HAART
 * Annotations:
 * 	 - Provide measles immunization supplimentary dose - Using the "MCV Vaccine immunization" schedule (additional supplimentary dose)
 * 	 - 
 * Outputs:
 * 	 - Immunize patient for Measles supplimentary
 * 	 - 
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * 	- 
 * Logic:
 *	 ((((("HIV Status" = "Positive" = true) and ("Patient is receiving HAART" = true)) and ("Immune reconstitution was achieved" = true)) and ("Pregnancy Status" = false)) or (((((("HIV Status" = "Positive" = true) and ("Patient is receiving HAART" = true)) and ("CD4+ T Lymphocyte monitoring is available" = false)) and ("Time since HAART was initiated in Months" >= 6)) and ("Time since HAART was initiated in Months" <= 12)) and ("Pregnancy Status" = false)))
 */
define "Should vaccinate patient for measles supplimentary dose because HIV positive and started HAART":
	((((("HIV Status" = "Positive" = true) and ("Patient is receiving HAART" = true)) and ("Immune reconstitution was achieved" = true)) and ("Pregnancy Status" = false)) or (((((("HIV Status" = "Positive" = true) and ("Patient is receiving HAART" = true)) and ("CD4+ T Lymphocyte monitoring is available" = false)) and ("Time since HAART was initiated in Months" >= 6)) and ("Time since HAART was initiated in Months" <= 12)) and ("Pregnancy Status" = false)))

