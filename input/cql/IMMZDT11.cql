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


define "Country is administering Live recombinant JE antigen":true
define "Country is administering Live attentuated JE antigen": true
define "Country is administering Inactivated Vero cell-derived JE antigen": true
define "Valid schemes": { 'inactivated', 'attenuated', 'recombinant' }

define "Dose scheme":
  if IMMZCon."Japanese Encephalitis dose scheme" in "Valid schemes"
	then IMMZCon."Japanese Encephalitis dose scheme"
	else 'attenuated' 

define "Live attentuated JE antigen Immunization Schedule":
	"Dose scheme" = 'attenuated'

define "Live recombinant JE antigen Immunization Schedule":
	"Dose scheme" = 'recombinant'

define "Inactivated Vero cell-derived JE antigen Immunization Schedule":
	"Dose scheme" = 'inactivated'


/**
 * @dataElement Should provision JE Dose
 */
define "Provision of the JE dose":
	IMMZCon."Country recognizes JE as a health priority" and (
		if "Inactivated Vero cell-derived JE antigen Immunization Schedule"
		then "Second JE Dose Administered to Patient" is null
		else "First JE Dose Administered to Patient" is null and not(IMMZCom."Pregnant")
	)

define "Schedule Due Date for JE dose":
	ToDateTime(
		if "First JE Dose Administered to Patient" is not null
		then "Date First JE Dose Administered to Patient" + 4 weeks
		else "Due Date for JE First Dose"
	)

define "JE Next Dose Number":
	if "Inactivated Vero cell-derived JE antigen Immunization Schedule" and "First JE Dose Administered to Patient" is not null
	then 2
	else 1

define "Number of Required JE Doses":
	if "Inactivated Vero cell-derived JE antigen Immunization Schedule"
	then 2
	else 1

define "Expiration Date for JE dose":
	null

define "Overdue Date for JE dose":
	null

define "Should vaccinate patient for JE":
	"Provision of the JE dose" and ("Schedule Due Date for JE dose" <= (Now()))


define "Due Date for JE First Dose":
	case
	when "Live attentuated JE antigen Immunization Schedule"
		then Patient.birthDate + 8 months
	when "Live recombinant JE antigen Immunization Schedule"
		then Patient.birthDate + 9 months
	when "Inactivated Vero cell-derived JE antigen Immunization Schedule"
		then Patient.birthDate + 6 months
	else null
	end

/**
 * @dataElement "First JE Dose Administered to Patient"
 */
define "First JE Dose Administered to Patient":
  Last("JE Doses Administered to Patient" I 
		where I.occurrence after "Due Date for JE First Dose")

/**
 * @dataElement Date First JE dose administered
 */
define "Date First JE Dose Administered to Patient":
  date from ("First JE Dose Administered to Patient".occurrence as FHIR.dateTime)

/**
 * @dataElement "Second JE Dose Administered to Patient"
 */
define "Second JE Dose Administered to Patient":
	Last("JE Doses Administered to Patient" I 
		where I.occurrence after "Date First JE Dose Administered to Patient" + 4 weeks)

/**
 * @dataElement Date Second JE dose administered
 */
define "Date Second JE Dose Administered to Patient":
  date from ("Second JE Dose Administered to Patient".occurrence as FHIR.dateTime)

/**
 * @dataElement Japanese Encephalitis containing Doses Administered to Patient
 */
define "JE Doses Administered to Patient":
  IMMZCom."Doses Administered to Patient" I
  where
    I.vaccineCode in IMMZc."Japanese Encephalitis Vaccine"

/**
 * @dataElement No Japanese Encephalitis containing Doses Administered to Patient
 */
define "No JE Doses Administered to Patient":
  not exists("JE Doses Administered to Patient")

/**
 * @dataElement Date the last JE dose was administered
 */
define "Date Last JE Dose Administered to Patient":
  date from (First("JE Doses Administered to Patient").occurrence as FHIR.dateTime)

/** 
 * @dataElement The type of the last typhoid dose administered to patient
 */
define "Type of Last JE Dose Administered to Patient":
  First("JE Doses Administered to Patient" I return I.vaccineCode)

/**
 * @dataElement No Japanese Encephalitis containing Doses Administered to Patient
 */
define "Number of JE Doses Administered to Patient":
  Count("JE Doses Administered to Patient" I where IMMZCom.ToPositiveInt((singleton from I.protocolApplied).doseNumber) != 0)


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
 /*
define "Should vaccinate patient for Japanese Encephalitis because no doses in a 2 dose scheme":
	IMMZCom."No JE Doses Administered to Patient"
	and IMMZCom."Current Patient Age In Months" >= 6
	and IMMZCon."Country is administering Inactivated Vero cell-derived JE antigen"
	and IMMZCon."Country recognizes JE as a health priority"
*/

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
 /*
define "Should vaccinate patient for Japanese Encephalitis because 1 dose in a 2 dose scheme":
	IMMZCom."Number of JE Doses Administered to Patient" = 1
	and IMMZCom."Date Last JE Dose Administered to Patient" more than 4 week before Today()
	and IMMZCom."Type of Last JE Dose Administered to Patient" in IMMZc."Inactivated Vero cell-derived Japanese Encephalitis vaccines"
	and IMMZCon."Country recognizes JE as a health priority"
*/

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
 /*
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
*/
