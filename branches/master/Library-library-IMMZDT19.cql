/*
 * Library: IMMZDT19 (IMMZ.DT.19.Dengue)
 * Rule: If child or person has not been vaccinated, give Dengue vaccine between 9 and 45 years of age 
 * Trigger: Patient has never had Dengue vaccination, or missing doses in the vaccination schedule
 */
library IMMZDT19
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
 * @dataElement No-doses
 */
define "No-doses Dengue vaccine immunization history":
	not exists(IMMZCom."Dengue Doses Administered to Patient")

/* 
 * @dataElement Age
 */
define "Age":
	IMMZCom."Current Patient Age In Years"

/* 
 * @dataElement 9 years
 */
define "9 years":
	9 years

/* 
 * @dataElement 45 years
 */
define "45 years":
	45 years

/*
 * Rule: Should vaccinate patient for Dengue because no doses at 9 years old in a 3 dose scheme
 * Annotations:
 * 	 - Provide Dengue immunizations – using the "Dengue vaccine immunization – NO PREVIOUS" schedule (3 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Dengue - No Doses at 9 years old
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (("Dengue vaccine immunization history" = "No-doses") and ("Age" >= "9 years"))
 */
define "Should vaccinate patient for Dengue because no doses at 9 years old in a 3 dose scheme":
	(("No-doses Dengue vaccine immunization history") and ("Age" between "9 years" and "45 years"))
	and not(IMMZCom."Pregnant")
	and not exists(IMMZCom."Individual is Seronegative for Dengue")

/* 
 * @dataElement 1 dose
 */
define "Dengue vaccine immunization history = 1 dose":
	Count(IMMZCom."Dengue Doses Administered to Patient") = 1

/* 
 * @dataElement Last dose given
 */
define "Last dose given":
  date from (First(IMMZCom."Dengue Doses Administered to Patient").occurrence as FHIR.dateTime)

/* 
 * @dataElement 6 months
 */
define "6 months":
	6 months

/*
 * Rule: Should vaccinate patient for Dengue because 1st dose given 6 months ago in a 3 dose scheme
 * Annotations:
 * 	 - Provide Dengue immunizations – using the "Dengue vaccine immunization – 1 PREVIOUS" schedule (3 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Dengue - 1 Dose given 6 months ago
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (("Dengue vaccine immunization history" = "1 dose") and ("Last dose given" >= "6 months"))
 */
define "Should vaccinate patient for Dengue because 1st dose given 6 months ago in a 3 dose scheme":
	(("Dengue vaccine immunization history = 1 dose") and ("Last dose given" more than 6 months before Today()))
	and not(IMMZCom."Pregnant")
	and not exists(IMMZCom."Individual is Seronegative for Dengue")

/* 
 * @dataElement 2 doses
 */
define "Dengue vaccine immunization history = 2 doses":
	Count(IMMZCom."Dengue Doses Administered to Patient" H) = 2

/*
 * Rule: Should vaccinate patient for Dengue because 2nd dose given 6 months ago in a 3 dose scheme
 * Annotations:
 * 	 - Provide Dengue immunizations – using the "Dengue vaccine immunization – 2 PREVIOUS" schedule (3 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Dengue - 2 Doses given 6 months ago
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (("Dengue vaccine immunization history" = "2 doses") and ("Last dose given" >= "6 months"))
 */
define "Should vaccinate patient for Dengue because 2nd dose given 6 months ago in a 3 dose scheme":
	(("Dengue vaccine immunization history = 2 doses") and ("Last dose given" more than 6 months before Today()))
	and not(IMMZCom."Pregnant")
	and not exists(IMMZCom."Individual is Seronegative for Dengue")
