/*
 * Library: IMMZDT04 (IMMZ.DT.04.DTP)
 * Rule: If child or person has not been given DTP, start scheme 
 * Trigger: Patient requires a DTP vaccine
 */
library IMMZDT04
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


/**
 * @dataElement Should provision DTP Dose
 */
define "Provision of the DTP dose":
	if "Third DTP Booster Dose Administered to Patient" is not null	or "Fifth DTP Dose Administered to Patient" is not null
	then false
	else true

define "Schedule Due Date for DTP dose":
	ToDateTime(
		if AgeInYearsAt(Now()) < 15
		then
			case 
			when "No DTP Doses Administered to Patient"
				then Patient.birthDate + 6 weeks 
			when AgeInYearsAt("Date First DTP Dose Administered to Patient") >= 1 and AgeInYearsAt("Date First DTP Dose Administered to Patient") < 7 and "Date Last Valid DTP Dose" + 6 months < Now()
				then "Date Last Valid DTP Dose" + 6 months
			when "Second DTP Booster Dose Administered to Patient" is not null
				then Patient.birthDate + 9 years
			when "First DTP Booster Dose Administered to Patient" is not null
				then Patient.birthDate + 4 years
			when "Third DTP Dose Administered to Patient" is not null
				then Patient.birthDate + 1 year
			else "Date Last Valid DTP Dose" + 4 weeks
			end
		else
			case
			when "No DTP Doses Administered to Patient"
				then Patient.birthDate + 15 years
			else "Date Last Valid DTP Dose" + 4 weeks
			end
	)

define "DTP Next Dose Number":
	case 
	when "Second DTP Booster Dose Administered to Patient" is not null then 3
	when "First DTP Booster Dose Administered to Patient" is not null then 2
 	when "Fourth DTP Dose Administered to Patient" is not null then 5
	when "Third DTP Dose Administered to Patient" is not null then if AgeInYearsAt("Date First DTP Dose Administered to Patient") < 15 then 1 else 4
	when "Second DTP Dose Administered to Patient" is not null then 3
	when "First DTP Dose Administered to Patient" is not null then 2
	else 1
	end

define "Number of Required DTP Doses":
	if AgeInYearsAt(Now()) >= 15 or AgeInYearsAt("Date First DTP Dose Administered to Patient") >= 15
	then 5
	else 3

define "Expiration Date for DTP dose":
	null

define "Overdue Date for DTP dose":
	ToDateTime(
		case
		when "Second DTP Booster Dose Administered to Patient" is not null
			then Patient.birthDate + 15 years
		when "First DTP Booster Dose Administered to Patient" is not null
			then Patient.birthDate + 7 years
		when AgeInYearsAt("Date First DTP Dose Administered to Patient") < 15 and "Third DTP Dose Administered to Patient" is not null 
			then Patient.birthDate + 23 months
		else "Date Last Valid DTP Dose" + 8 weeks
		end
	)

define "Date Last Valid DTP Dose":
	case 
	when "Third DTP Booster Dose Administered to Patient" is not null then "Date Third DTP Booster Dose Administered to Patient"
	when "Second DTP Booster Dose Administered to Patient" is not null then "Date Second DTP Booster Dose Administered to Patient"
	when "First DTP Booster Dose Administered to Patient" is not null then "Date First DTP Booster Dose Administered to Patient"
	when "Fifth DTP Dose Administered to Patient" is not null then "Date Fifth DTP Dose Administered to Patient"
	when "Fourth DTP Dose Administered to Patient" is not null then "Date Fourth DTP Dose Administered to Patient"
	when "Third DTP Dose Administered to Patient" is not null then "Date Third DTP Dose Administered to Patient"
	when "Second DTP Dose Administered to Patient" is not null then "Date Second DTP Dose Administered to Patient"
	when "First DTP Dose Administered to Patient" is not null then "Date First DTP Dose Administered to Patient"
	else null
	end

define "Should vaccinate patient for DTP":
	"Provision of the DTP dose" and ("Schedule Due Date for DTP dose" <= (Now()))


/**
 * @dataElement DTP containing Doses Administered to Patient
 */
define "DTP Doses Administered to Patient":
  IMMZCom."Doses Administered to Patient" I
  where
    I.vaccineCode in IMMZc."DTP Vaccine"

/** 
  * @dataElement DTP administrations excluding birth doses
 */
 /*
define "DTP Doses Administered to Patient Excluding Birth Dose":
  "DTP Doses Administered to Patient" O 
  where ToPositiveInt((singleton from O.protocolApplied).doseNumber) != 0
*/

/**
 * @dataElement Number of DTP Doses Administered to Patient excluding the birth dose
 */
 /*
define "Number of DTP Doses Administered to Patient Excluding Birth Dose":
  Count("DTP Doses Administered to Patient Excluding Birth Dose")// O return ToPositiveInt((singleton from O.protocolApplied).doseNumber))
*/

/**
 * @dataElement Number of DTP doses administered excluding the birth dose
 */
 /*
define "Date Last DTP Dose Administered to Patient":
  date from (First("DTP Doses Administered to Patient").occurrence as FHIR.dateTime)
*/

/**
 * @dataElement 
 */
 /*
define "Date First DTP Dose Administered to Patient Excluding Birth Dose":
  date from (Last("DTP Doses Administered to Patient Excluding Birth Dose").occurrence as FHIR.dateTime)
*/

/**
 * @dataElement 
 */
define "No DTP Doses Administered to Patient":
  not exists("DTP Doses Administered to Patient")


//Date last administered DTP
define "Date Last DTP Dose Administered to Patient":
  date from (First("DTP Doses Administered to Patient").occurrence as FHIR.dateTime)

/**
 * @dataElement First DTP dose given to Patient
 */
define "First DTP Dose Administered to Patient":
	Last("DTP Doses Administered to Patient" I where I.occurrence after Patient.birthDate + 6 weeks)

/**
 * @dataElement Date first DTP dose administered
 */
define "Date First DTP Dose Administered to Patient":
  date from ("First DTP Dose Administered to Patient".occurrence as FHIR.dateTime)

/**
 * @dataElement "Second DTP Dose Administered to Patient"
 * only valid if 4 weeks after first dose
 */
define "Second DTP Dose Administered to Patient":
  Last("DTP Doses Administered to Patient" I where I.occurrence after "Date First DTP Dose Administered to Patient" + 4 weeks)

/**
 * @dataElement Date second DTP dose administered
 */
define "Date Second DTP Dose Administered to Patient":
  date from ("Second DTP Dose Administered to Patient".occurrence as FHIR.dateTime)

/**
 * @dataElement "Third DTP Dose Administered to Patient"
 * only valid if 4 weeks after second dose
 */
define "Third DTP Dose Administered to Patient":
	if AgeInYearsAt("Date First DTP Dose Administered to Patient") >= 1 and AgeInYearsAt("Date First DTP Dose Administered to Patient") < 7
	then Last("DTP Doses Administered to Patient" I where I.occurrence after "Date Last DTP Dose Administered to Patient" + 6 months)
	else Last("DTP Doses Administered to Patient" I where I.occurrence after "Date Second DTP Dose Administered to Patient" + 4 weeks)

/**
 * @dataElement Date third DTP dose administered
 */
define "Date Third DTP Dose Administered to Patient":
  date from ("Third DTP Dose Administered to Patient".occurrence as FHIR.dateTime)

/**
 * @dataElement First DTP Booster dose given to Patient
 */
define "First DTP Booster Dose Administered to Patient":
	if "Third DTP Dose Administered to Patient" is not null and AgeInYearsAt("Date First DTP Dose Administered to Patient") < 15
	then Last("DTP Doses Administered to Patient" I where I.occurrence after Patient.birthDate + 1 year)
	else null

/**
 * @dataElement Date first DTP booster dose administered
 */
define "Date First DTP Booster Dose Administered to Patient":
  date from ("First DTP Booster Dose Administered to Patient".occurrence as FHIR.dateTime)

/**
 * @dataElement Second DTP Booster dose given to Patient
 */
define "Second DTP Booster Dose Administered to Patient":
	if "First DTP Booster Dose Administered to Patient" is not null
	then Last("DTP Doses Administered to Patient" I where I.occurrence after Patient.birthDate + 4 years)
	else null

/**
 * @dataElement Date second DTP booster dose administered
 */
define "Date Second DTP Booster Dose Administered to Patient":
  date from ("Second DTP Booster Dose Administered to Patient".occurrence as FHIR.dateTime)

/**
 * @dataElement Third DTP Booster dose given to Patient
 */
define "Third DTP Booster Dose Administered to Patient":
	if "Second DTP Booster Dose Administered to Patient" is not null
	then Last("DTP Doses Administered to Patient" I where I.occurrence after Patient.birthDate + 9 years)
	else null

/**
 * @dataElement Date third DTP booster dose administered
 */
define "Date Third DTP Booster Dose Administered to Patient":
  date from ("Third DTP Booster Dose Administered to Patient".occurrence as FHIR.dateTime)

/**
 * @dataElement "Fourth DTP Dose Administered to Patient"
 * only valid if 4 weeks after third dose
 */
define "Fourth DTP Dose Administered to Patient":
  Last("DTP Doses Administered to Patient" I where I.occurrence after "Date Third DTP Dose Administered to Patient" + 4 weeks)

/**
 * @dataElement Date Fourth DTP dose administered
 */
define "Date Fourth DTP Dose Administered to Patient":
  date from ("Fourth DTP Dose Administered to Patient".occurrence as FHIR.dateTime)

/**
 * @dataElement "Fifth DTP Dose Administered to Patient"
 * only valid if 4 weeks after third dose
 */
define "Fifth DTP Dose Administered to Patient":
  Last("DTP Doses Administered to Patient" I where I.occurrence after "Date Fourth DTP Dose Administered to Patient" + 4 weeks)

/**
 * @dataElement Date third DTP dose administered
 */
define "Date Fifth DTP Dose Administered to Patient":
  date from ("Fifth DTP Dose Administered to Patient".occurrence as FHIR.dateTime)

/*
 * Rule: Should vaccinate patient with DTP 1st dose
 * Annotations:
 * 	 - Provide DTP immunization 1st dose – using the "DTP vaccine immunization – NO PREVIOUS" schedule (3 dose scheme) if the patient is the older 6 weeks of age
 * 	 - Provide DTP immunization 1st dose – using the "DTP vaccine immunization – NO PREVIOUS" schedule (5 dose scheme) if the patient is 15 years of age or more
 * Outputs:
 * 	 - Immunize Patient for DTP - No Doses
 * 	 - Immunize Patient for DTP - No Doses at 15 years or older
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ((("DTP vaccine immunization history" = "No-doses") and ("Current Patient Age in Weeks" >= 6)) or (("DTP vaccine immunization history" = "No-doses") and ("Current Patient Age in Years" >= 15)))
 */
 /*
define "Should vaccinate patient with DTP 1st dose":
	(IMMZCom."No DTP Doses Administered to Patient") and 
	((IMMZCom."Current Patient Age In Weeks" >= 6) or (IMMZCom."Current Patient Age In Years" >= 15))
*/

/*
 * Rule: Should vaccinate patient for DTP with 2nd dose
 * Annotations:
 * 	 - Provide DTP immunization 2nd dose – using the "DTP vaccine immunization – 3 dose scheme" if the patient is  4-8 weeks after their first dose
 * 	 - Provide DTP immunization 2nd dose – using the "DTP vaccine immunization – 1 PREVIOUS" schedule (5 dose scheme) if the patient is 15 years of age or more and is 4-8 weeks after their first dose
 * Outputs:
 * 	 - Immunize Patient for DTP - 1 Dose
 * 	 - Immunize Patient for DTP - 1 Dose at 15 years or older
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ((("DTP vaccine immunization history" = "1 dose") and ("Date last DTP dose given" >= "4 weeks")) or (((("DTP vaccine immunization history" = "1 dose") and ("Current Patient Age in Years" >= 15)) and ("Date last DTP dose given" >= "4 weeks")) and ("Date last DTP dose given" <= "8 weeks")))
 */
 /*
define "Should vaccinate patient for DTP with 2nd dose":
	IMMZCom."Number of DTP Doses Administered to Patient Excluding Birth Dose" = 1 and
	(
		IMMZCom."Date Last DTP Dose Administered to Patient" more than 4 week before Today() or
		(
			IMMZCom."Current Patient Age In Years" >= 15 and
			(IMMZCom."Date Last DTP Dose Administered to Patient" more than 4 week before Today()) and 
			(IMMZCom."Date Last DTP Dose Administered to Patient" less than 8 week before Today())
		)
	)
*/

/*
 * Rule: Should vaccinate patient for DTP with 3rd dose
 * Annotations:
 * 	 - Provide DTP immunizations – using the "DTP vaccine immunization – 3 dose scheme, provide the 3rd dose" if the patient is  4-8 weeks after their first dose
 * 	 - 
 * 	 - Provide DTP immunization 3rd dose – using the "DTP vaccine immunization – 2 PREVIOUS" schedule (5 dose scheme) if the patient is 15 years of age or more and is 4-8 weeks after their second dose
 * Outputs:
 * 	 - Immunize Patient for DTP - 2 Doses
 * 	 - 
 * 	 - Immunize Patient for DTP - 2 Doses at 15 years or older
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * 	- 
 * Logic:
 *	 (((("DTP vaccine immunization history" = "2 doses") and ("Date last DTP dose given" >= "4 weeks")) or (((("DTP vaccine immunization history" = "2 doses") and ("Date last DTP dose given" >= "6 months")) and ("Age when patient received 1st dose" >= "1 year")) and ("Age when patient received 1st dose" < "7 years"))) or (((("DTP vaccine immunization history" = "2 doses") and ("Current Patient Age in Years" >= 15)) and ("Date last DTP dose given" >= "4 weeks")) and ("Date last DTP dose given" <= "8 weeks")))
 */
/*
define "Should vaccinate patient for DTP with 3rd dose":
	IMMZCom."Number of DTP Doses Administered to Patient Excluding Birth Dose" = 2 and
	(
		IMMZCom."Date Last DTP Dose Administered to Patient" more than 4 week before Today() or 
		(
			IMMZCom."Date Last DTP Dose Administered to Patient" more than 6 month before Today()  and  
			IMMZCom."Date First DTP Dose Administered to Patient Excluding Birth Dose" more than 1 year after Patient.birthDate and
			IMMZCom."Date First DTP Dose Administered to Patient Excluding Birth Dose" less than 7 year after Patient.birthDate 
		) or
		(
			(IMMZCom."Current Patient Age In Years" >= 15) and 
			(IMMZCom."Date Last DTP Dose Administered to Patient" more than 4 week before Today()) and 
			(IMMZCom."Date Last DTP Dose Administered to Patient" less than 8 week before Today())
		)
	)
*/

/*
 * Rule: Should vaccinate patient for DTP with 1st booster
 * Annotations:
 * 	 - Provide booster at 12-23 months (DTP-containing vaccine) if patient has completed primary 3 dose scheme
 * Outputs:
 * 	 - Immunize Patient for DTP - Booster 1
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (("DTP vaccine immunization history" = "3 doses") and ("Current Patient Age in Months" >= 12))
 */
 /*
define "Should vaccinate patient for DTP with 1st booster":
	IMMZCom."Number of DTP Doses Administered to Patient Excluding Birth Dose" = 3
	and IMMZCom."Current Patient Age In Months" >= 12
*/

/*
 * Rule: Should vaccinate patient for DTP with 2nd booster
 * Annotations:
 * 	 - Provide booster at 4-7 years (Td/DT containing vaccine)  if patient has completed primary 3 dose scheme and 1 booster
 * Outputs:
 * 	 - Immunize Patient for DTP - Booster 2
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (("DTP vaccine immunization history" = "4 doses") and ("Current Patient Age in Years" >= 4))
 */
 /*
define "Should vaccinate patient for DTP with 2nd booster":
	IMMZCom."Number of DTP Doses Administered to Patient Excluding Birth Dose" = 4
	and IMMZCom."Current Patient Age In Years" >= 4
*/

/*
 * Rule: Should vaccinate patient for DTP with 3rd booster
 * Annotations:
 * 	 - Provide booster at 9-15 years (Td containing vaccine), if >7 years use only aP containing vaccine - if patient has completed primary 3 dose scheme and 2 boosters
 * Outputs:
 * 	 - Immunize Patient for DTP - Booster 3
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (("DTP vaccine immunization history" = "5 doses") and ("Current Patient Age in Years" >= 9))
 */
 /*
define "Should vaccinate patient for DTP with 3rd booster":
	IMMZCom."Number of DTP Doses Administered to Patient Excluding Birth Dose" = 5
	and IMMZCom."Current Patient Age In Years" >= 9
*/

/*
 * Rule: Should vaccinate patient for DTP with 4th dose
 * Annotations:
 * 	 - Provide DTP immunization 4th dose – using the "DTP vaccine immunization – 3 PREVIOUS" schedule (5 dose scheme) if the patient is 15 years of age or more and is 4-8 weeks after their second dose
 * Outputs:
 * 	 - Immunize Patient for DTP - 3 Doses at 15 years or older
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (((("DTP vaccine immunization history" = "3 doses") and ("Current Patient Age in Years" >= 15)) and ("Date last DTP dose given" >= "4 weeks")) and ("Date last DTP dose given" <= "8 weeks"))
 */
 /*
define "Should vaccinate patient for DTP with 4th dose":
	IMMZCom."Number of DTP Doses Administered to Patient Excluding Birth Dose" = 3 and
	IMMZCom."Current Patient Age In Years" >= 15 and
	IMMZCom."Date Last DTP Dose Administered to Patient" more than 4 week before Today() and
	IMMZCom."Date Last DTP Dose Administered to Patient" less than 8 week before Today()
*/

/*
 * Rule: Should vaccinate patient for DTP with 5th dose
 * Annotations:
 * 	 - Provide DTP immunization 5th dose – using the "DTP vaccine immunization – 4 PREVIOUS" schedule (5 dose scheme) if the patient is 15 years of age or more and is 4-8 weeks after their second dose
 * Outputs:
 * 	 - Immunize Patient for DTP - 4 Doses at 15 years or older
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (((("DTP vaccine immunization history" = "4 doses") and ("Current Patient Age in Years" >= 15)) and ("Date last DTP dose given" >= "4 weeks")) and ("Date last DTP dose given" <= "8 weeks"))
 */
 /*
define "Should vaccinate patient for DTP with 5th dose":
	IMMZCom."Number of DTP Doses Administered to Patient Excluding Birth Dose" = 4 and
	IMMZCom."Current Patient Age In Years" >= 15 and
	IMMZCom."Date Last DTP Dose Administered to Patient" more than 4 week before Today() and
	IMMZCom."Date Last DTP Dose Administered to Patient" less than 8 week before Today()
*/

