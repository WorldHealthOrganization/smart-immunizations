/*
 * Library: IMMZDT03 (IMMZ.DT.03.Polio)
 * Rule: If child or person has not been vaccinated, give Polio vaccine 
 * Trigger: Patient has never had Polio vaccination
 */
library IMMZDT03Common
// Start Skeleton CQL
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1'
include IMMZCommon called IMMZCom
include IMMZConcepts called IMMZc
include IMMZConfig called IMMZConf
include IMMZVaccineLibrary called IMMZvl
// End Skeleton CQL
context Patient


define "Valid schemes": { 'combined', 'sequential', 'ipv' }

define "Dose scheme":
  if IMMZConf."Polio dose scheme" in "Valid schemes"
	then IMMZConf."Polio dose scheme"
	else 'ipv' 

define "Polio Combined IPV-OPV Immunization Schedule":
	"Dose scheme" = 'combined'

define "Polio Sequential IPV-OPV Immunization Schedule":
	"Dose scheme" = 'sequential' and not 	IMMZConf."Country has a high risk of exposure to polio"

define "Polio Sequential IPV-OPV Immunization (High exposure risk) Schedule":
	"Dose scheme" = 'sequential' and IMMZConf."Country has a high risk of exposure to polio"

define "Polio IPV Only Immunization Schedule":
	"Dose scheme" = 'ipv'


	/**
 * @dataElement Polio Doses Administered to Patient
 */
define "Polio Doses Administered to Patient":
  IMMZCom."Doses Administered to Patient" I
  where
    I.vaccineCode in IMMZc."Polio Vaccine"

/**
 * @dataElement Polio Doses Administered to Patient
 */
define "bOPV Doses Administered to Patient":
  IMMZCom."Doses Administered to Patient" I
  where
    I.vaccineCode in IMMZc."Oral Polio Vaccine"

/**
 * @dataElement Patient has no bOPV Doses
 * TODO: Do we want "number of doses" or "highest dose sequence"? For example for interrupted series the dose
 *       number would be 1, 2, 1, 2, 1, 2 -> the highest sequence is 2 but the number is 6
 */
define "Number of bOPV Doses Administered to Patient Excluding Birth Dose":
  Count("bOPV Doses Administered to Patient" O)

/**
 * @dataElement Patient has no IPV doses
 */
define "No bOPV Doses Administered to Patient":
  not exists ("bOPV Doses Administered to Patient")

/** 
 * @dataElement Date of last OPV dose administration
 */
define "Date Last bOPV Dose Administered to Patient":
  date from (First("bOPV Doses Administered to Patient").occurrence as FHIR.dateTime)

/**
 * @dataElement Polio Doses Administered to Patient
 */
define "IPV Doses Administered to Patient":
  IMMZCom."Doses Administered to Patient" I
  where
    I.vaccineCode in IMMZc."Inactivated Polio Vaccine"

/**
 * @dataElement Patient has no IPV doses
 */
define "Number of IPV Doses Administered to Patient":
  Count("IPV Doses Administered to Patient" O)

/**
 * @dataElement Patient has no IPV doses
 */
define "No IPV Doses Administered to Patient":
  not exists ("IPV Doses Administered to Patient")

/** 
 * @dataElement Date of last IPV dose administration
 */
define "Date Last IPV Dose Administered to Patient":
  date from (First("IPV Doses Administered to Patient").occurrence as FHIR.dateTime)

/**
 * @dataElement Patient of the patient of the most recent IPV dose
 */
define "Patient Age at 1st IPV Dose in Weeks":
  First("IPV Doses Administered to Patient" I
  where 
    IMMZCom.ToPositiveInt(singleton from (I.protocolApplied).doseNumber) = 1
  return 
    AgeInWeeksAt(I.occurrence))

define "First bOPV Dose Administered to Patient":
	Last("bOPV Doses Administered to Patient")

define "Date First bOPV Dose Administered to Patient":
	date from ("First bOPV Dose Administered to Patient".occurrence as FHIR.dateTime)

define "First IPV Dose Administered to Patient":
	Last("IPV Doses Administered to Patient")

define "Date First IPV Dose Administered to Patient":
	date from ("First IPV Dose Administered to Patient".occurrence as FHIR.dateTime)


/*
 * Rule: Should vaccinate patient for Polio (bOPV) because no doses at birth (up to 2 weeks old) and patient is in a polio-endemic country with high risk of spread
 * Annotations:
 * 	 - Provide birth dose Polio (bOPV) vaccination – using the zero dose recommendation at birth (until 2 weeks old) due to patient being in a polio-endemic country with high risk of spread. Patient will continue the "bOPV-IPV-bOPV-IPV-bOPV" schedule (5 doses scheme)
 * Outputs:
 * 	 - Immunize Patient for Polio (bOPV) - No Doses at birth (polio-endemic country and high risk of spread)
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ((((("Polio (IPV) vaccine immunization history" = "No-doses") and ("Polio (bOPV) vaccine immunization history" = "No-doses")) and ("Current Patient Age in Weeks" < 2)) and ("Combined bOPV and IPV Schedule" = true)) and ("Polio-endemic country with high risk of spread" = true))
 */
 /*
define "Should vaccinate patient for Polio (bOPV) because no doses at birth (up to 2 weeks old) and patient is in a polio-endemic country with high risk of spread":
	IMMZCom."No IPV Doses Administered to Patient" and 
	IMMZCom."No bOPV Doses Administered to Patient" and 
	IMMZCom."Current Patient Age In Weeks" < 2 and 
	IMMZConf."Combined bOPV and IPV Schedule" and
	IMMZConf."Polio-endemic country with high risk of spread"
	*/

/*
 * Rule: Should vaccinate patient for Polio (bOPV) because no doses at 6 weeks old
 * Annotations:
 * 	 - Provide 1st dose Polio (bOPV) vaccination – using the "bOPV-IPV-bOPV-IPV-bOPV" schedule (5 doses scheme)
 * Outputs:
 * 	 - Immunize Patient for Polio (bOPV) - No Doses at 6 weeks old
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ((("Polio (bOPV) vaccine immunization history" = "No-doses") and ("Current Patient Age in Weeks" >= 6)) and ("Combined bOPV and IPV Schedule" = true))
 */
 /*
define "Should vaccinate patient for Polio (bOPV) because no doses at 6 weeks old":
	IMMZCom."No bOPV Doses Administered to Patient" and
	IMMZCom."Current Patient Age In Weeks" >= 6 and
	IMMZConf."Combined bOPV and IPV Schedule"
*/

/*
 * Rule: Should vaccinate patient for Polio (IPV) because no doses at 14 weeks old
 * Annotations:
 * 	 - Provide 1st dose Polio (IPV) vaccination – using the "bOPV-IPV-bOPV-IPV-bOPV" schedule (5 doses scheme)
 * Outputs:
 * 	 - Immunize Patient for Polio (IPV) - No Doses at 14 weeks old
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ((("Polio (IPV) vaccine immunization history" = "No-doses" = true) and ("Current Patient Age in Weeks" >= 14)) and ("Combined bOPV and IPV Schedule" = true))
 */
 /*
define "Should vaccinate patient for Polio (IPV) because no doses at 14 weeks old":
	"IMMZCom"."No IPV Doses Administered to Patient" and
	"IMMZCom"."Current Patient Age In Weeks" >= 14 and
	IMMZConf."Combined bOPV and IPV Schedule"
	*/
/*
 * Rule: Should vaccinate patient for Polio (bOPV) because 1 dose bOPV given 4 weeks ago
 * Annotations:
 * 	 - Provide 2nd dose Polio (bOPV) vaccination – using the "bOPV-IPV-bOPV-IPV-bOPV" schedule (5 doses scheme)
 * Outputs:
 * 	 - Immunize Patient for Polio (bOPV) - 1 Dose given 4 weeks ago
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ((("Polio (bOPV) vaccine immunization history" = "1 dose" = true) and ("Date last bOPV dose given" >= "4 weeks")) and ("Combined bOPV and IPV Schedule" = true))
 */
 /*
define "Should vaccinate patient for Polio (bOPV) because 1 dose bOPV given 4 weeks ago":
	(IMMZCom."Number of bOPV Doses Administered to Patient Excluding Birth Dose" = 1) and
	(IMMZCom."Date Last bOPV Dose Administered to Patient" more than 4 'weeks' before Today()) and
	IMMZConf."Combined bOPV and IPV Schedule"
*/

/*
 * Rule: Should vaccinate patient for Polio (IPV) because 1 dose IPV given at least 4 months ago
 * Annotations:
 * 	 - Provide 2nd dose Polio (IPV) vaccination – using the "bOPV-IPV-bOPV-IPV-bOPV" schedule (5 doses scheme)
 * Outputs:
 * 	 - Immunize Patient for Polio (IPV) - 1 Dose given at least 4 months ago
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ((("Polio (IPV) vaccine immunization history" = "1 dose" = true) and ("Date last IPV dose given" >= "4 months")) and ("Combined bOPV and IPV Schedule" = true))
 */
/*
define "Should vaccinate patient for Polio (IPV) because 1 dose IPV given at least 4 months ago":
	IMMZCom."Number of IPV Doses Administered to Patient" = 1 and
	IMMZCom."Date Last IPV Dose Administered to Patient" more than 4 'months' before Today() and
	IMMZConf."Combined bOPV and IPV Schedule"
*/

/*
 * Rule: Should vaccinate patient for Polio (bOPV) because 2nd dose bOPV given 4 weeks ago
 * Annotations:
 * 	 - Provide 3rd dose Polio (bOPV) vaccination – using the "bOPV-IPV-bOPV-IPV-bOPV" schedule (5 doses scheme)
 * Outputs:
 * 	 - Immunize Patient for Polio (bOPV) - 2 Doses given 4 weeks ago
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ((("Polio (bOPV) vaccine immunization history" = "2 doses") and ("Date last bOPV dose given" >= "4 weeks")) and ("Combined bOPV and IPV Schedule" = true))
 */
 /*
define "Should vaccinate patient for Polio (bOPV) because 2nd dose bOPV given 4 weeks ago":
	(IMMZCom."Number of bOPV Doses Administered to Patient Excluding Birth Dose" = 2) and
	IMMZCom."Date Last bOPV Dose Administered to Patient" more than 4 'weeks' before Today() and
	IMMZConf."Combined bOPV and IPV Schedule"
	*/

/*
 * Rule: Should vaccinate patient for Polio (IPV) because no doses at 8 weeks old
 * Annotations:
 * 	 - Provide 1st dose Polio (IPV) vaccination – using the "IPV-bOPV-bOPV" schedule (3 doses scheme)
 * Outputs:
 * 	 - Immunize Patient for Polio (IPV) - No Doses at 8 weeks old
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ((("Polio (IPV) vaccine immunization history" = "No-doses") and ("Current Patient Age in Weeks" >= 8)) and ("Sequential IPV-OPV Schedule" = true))
 */
 /*
define "Should vaccinate patient for Polio (IPV) because no doses at 8 weeks old":
	IMMZCom."No IPV Doses Administered to Patient" and
	IMMZCom."Current Patient Age In Weeks" >= 8 and
	IMMZConf."Sequential IPV-OPV Schedule"
*/

/*
 * Rule: Should vaccinate patient for Polio (bOPV) because 1st dose IPV given 4-8 weeks ago
 * Annotations:
 * 	 - Provide 1st dose Polio (bOPV) vaccination – using the "IPV-bOPV-bOPV" schedule (3 doses scheme)
 * Outputs:
 * 	 - Immunize Patient for Polio (IPV) - 1st Dose given 4-8 weeks ago (High risk of exposure scenario)
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (((("Polio (IPV) vaccine immunization history" = "1 dose") and ("Date last IPV dose given" >= "4 weeks")) and ("Date last IPV dose given" <= "8 weeks")) and ("Sequential IPV-OPV Schedule" = true))
 */
 /*
define "Should vaccinate patient for Polio (bOPV) because 1st dose IPV given 4-8 weeks ago":
	(IMMZCom."Number of IPV Doses Administered to Patient" = 1) and 
	IMMZCom."Date Last IPV Dose Administered to Patient" more than 4 'weeks' before Today() and
	IMMZCom."Date Last IPV Dose Administered to Patient" less than 8 'weeks' before Today() and
	IMMZConf."Sequential IPV-OPV Schedule"
*/

/*
 * Rule: Should vaccinate patient for Polio (IPV) because 1st dose IPV given 4-8 weeks ago (High risk of exposure scenario)
 * Annotations:
 * 	 - Provide 2nd dose Polio (IPV) vaccination – using the "IPV-IPV-bOPV-bOPV" schedule (4 doses scheme)
 * Outputs:
 * 	 - Immunize Patient for Polio (IPV) - 1st Dose given 4-8 weeks ago (High risk of exposure scenario)
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ((((("Polio (IPV) vaccine immunization history" = "1 dose" = true) and ("Date last IPV dose given" >= "4 weeks")) and ("Date last IPV dose given" <= "8 weeks")) and ("Sequential IPV-OPV Schedule" = true)) and ("Country has a high risk of exposure" = true))
 */
 /*
define "Should vaccinate patient for Polio (IPV) because 1st dose IPV given 4-8 weeks ago (High risk of exposure scenario)":
	IMMZCom."Number of IPV Doses Administered to Patient" = 1 and 
	IMMZCom."Date Last IPV Dose Administered to Patient" more than 4 'weeks' before Today() and
	IMMZCom."Date Last IPV Dose Administered to Patient" less than 8 'weeks' before Today() and
	IMMZConf."Sequential IPV-OPV Schedule" and
	IMMZConf."Country has a high risk of exposure to polio"
*/

/*
 * Rule: Should vaccinate patient for Polio (bOPV) because 1st dose bOPV (Second dose in 3-dose schedule) given 4-8 weeks ago
 * Annotations:
 * 	 - Provide 2nd dose Polio (bOPV) vaccination – using the "IPV-bOPV-bOPV" schedule (3 doses scheme)
 * Outputs:
 * 	 - Immunize Patient for Polio (bOPV) - 1st Dose (Second dose in 3-dose schedule) given 4-8 weeks ago
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (((("Polio (bOPV) vaccine immunization history" = "1 dose") and ("Date last bOPV dose given" >= "4 weeks")) and ("Date last bOPV dose given" <= "8 weeks")) and ("Sequential IPV-OPV Schedule" = true))
 */
 /*
define "Should vaccinate patient for Polio (bOPV) because 1st dose bOPV (Second dose in 3-dose schedule) given 4-8 weeks ago":
	IMMZCom."Number of bOPV Doses Administered to Patient Excluding Birth Dose" = 1 and 
	IMMZCom."Date Last bOPV Dose Administered to Patient" more than 4 'weeks' before Today() and
	IMMZCom."Date Last bOPV Dose Administered to Patient" less than 8 'weeks' before Today() and
	IMMZConf."Sequential IPV-OPV Schedule"
*/

/*
 * Rule: Should vaccinate patient for Polio (bOPV) because 2nd dose IPV given 4-8 weeks ago (High risk of exposure scneario)
 * Annotations:
 * 	 - Provide 3rd dose Polio (bOPV) vaccination – using the "IPV-IPV-bOPV-bOPV" schedule (4 doses scheme)
 * Outputs:
 * 	 - Immunize Patient for Polio (IPV) - 2nd Dose given 4-8 weeks ago (High risk of exposure scenario)
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ((((("Polio (IPV) vaccine immunization history" = "2 doses") and ("Date last IPV dose given" >= "4 weeks" = true)) and ("Date last IPV dose given" <= "8 weeks")) and ("Sequential IPV-OPV Schedule" = true)) and ("Country has a high risk of exposure" = true))
 */
 /*
define "Should vaccinate patient for Polio (bOPV) because 2nd dose IPV given 4-8 weeks ago (High risk of exposure scneario)":
	IMMZCom."Number of IPV Doses Administered to Patient" = 2 and 
	IMMZCom."Date Last IPV Dose Administered to Patient" more than 4 'weeks' before Today() and
	IMMZCom."Date Last IPV Dose Administered to Patient" less than 8 'weeks' before Today() and
	IMMZConf."Sequential IPV-OPV Schedule" and 
	IMMZConf."Country has a high risk of exposure to polio"	
*/

/*
 * Rule: Should vaccinate patient for Polio (bOPV) because 1st dose bOPV (Third dose in 4-dose schedule) given 4-8 weeks ago
 * Annotations:
 * 	 - Provide 4th dose Polio (bOPV) vaccination – using the "IPV-IPV-bOPV-bOPV" schedule (4 doses scheme)
 * Outputs:
 * 	 - Immunize Patient for Polio (bOPV) - 1st Dose (Third dose in 4-dose schedule) given 4-8 weeks ago
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (((((("Polio (bOPV) vaccine immunization history" = "1 dose") and ("Polio (IPV) vaccine immunization history" = "2 doses")) and ("Date last bOPV dose given" >= "4 weeks")) and ("Date last bOPV dose given" <= "8 weeks")) and ("Sequential IPV-OPV Schedule" = true)) and ("Country has a high risk of exposure" = true))
 */
 /*
define "Should vaccinate patient for Polio (bOPV) because 1st dose bOPV (Third dose in 4-dose schedule) given 4-8 weeks ago":
	IMMZCom."Number of bOPV Doses Administered to Patient Excluding Birth Dose" = 1 and 
	IMMZCom."Number of IPV Doses Administered to Patient" = 2 and 
	IMMZCom."Date Last bOPV Dose Administered to Patient" more than 4 'weeks' before Today() and
	IMMZCom."Date Last bOPV Dose Administered to Patient" less than 8 'weeks' before Today() and
	IMMZConf."Sequential IPV-OPV Schedule" and 
	IMMZConf."Country has a high risk of exposure to polio"	
*/

/*
 * Rule: Should vaccinate patient with IPV 1st dose
 * Annotations:
 * 	 - Provide 1st dose Polio (IPV) vaccination – using the "IPV Only" schedule
 * Outputs:
 * 	 - Immunize Patient for Polio - No Doses
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ((("IPV vaccine immunization history" = "No-doses") and ("Current Patient Age in Weeks" <= 8)) and ("High Coverage of Polio and Risk of Wild Importation" = true))
 */
 /*
define "Should vaccinate patient with IPV 1st dose":
	IMMZCom."No IPV Doses Administered to Patient" and
	IMMZCom."Current Patient Age In Weeks" <= 8 and
	IMMZConf."High Coverage of Polio and Risk of Wild Importation"
*/

/*
 * Rule: Should vaccinate patient with IPV 2nd dose
 * Annotations:
 * 	 - Provide 2nd dose Polio (IPV) vaccination - using the "IPV Only" schedule - minimum of 4 weeks after previous dose
 * Outputs:
 * 	 - Immunize Patient for Polio - 2nd dose
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (("IPV vaccine immunization history" = "1 IPV dose") and ("High Coverage of Polio and Risk of Wild Importation" = true))
 */
 /*
define "Should vaccinate patient with IPV 2nd dose":
	IMMZCom."Number of IPV Doses Administered to Patient" = 1 and 
	IMMZCom."Date Last IPV Dose Administered to Patient" more than 4 'weeks' before Today() and
	IMMZCom."Date Last IPV Dose Administered to Patient" less than 8 'weeks' before Today() and
	IMMZConf."High Coverage of Polio and Risk of Wild Importation"
*/

/*
 * Rule: Should vaccinate patient with IPV 3rd dose
 * Annotations:
 * 	 - Provide 3rd dose Polio (IPV) vaccination - using the "IPV Only" schedule - minimum of 4 weeks after previous dose
 * Outputs:
 * 	 - Immunize Patient for Polio - 3rd dose
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (("IPV vaccine immunization history" = "2 IPV doses") and ("High Coverage of Polio and Risk of Wild Importation" = true))
 */
 /*
define "Should vaccinate patient with IPV 3rd dose":
	IMMZCom."Number of IPV Doses Administered to Patient" = 2 and 
	IMMZCom."Date Last IPV Dose Administered to Patient" more than 4 'weeks' before Today() and
	IMMZCom."Date Last IPV Dose Administered to Patient" less than 8 'weeks' before Today() and
	IMMZConf."High Coverage of Polio and Risk of Wild Importation"
*/

/*
 * Rule: Should vaccinate patient with IPV 4th dose (booster)
 * Annotations:
 * 	 - Provide 4th dose Polio (IPV) vaccination - using the "IPV Only" schedule - minimum of 4 weeks after previous dose
 * Outputs:
 * 	 - Immunize Patient for Polio - 4th dose (booster)
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (((("IPV vaccine immunization history" = "3 IPV doses") and ("Age when 1st IPV dose was given" < "8 weeks")) and ("Current Patient Age in Months" >= 6)) and ("High Coverage of Polio and Risk of Wild Importation" = true))
 */
 /*
define "Should vaccinate patient with IPV 4th dose (booster)":
	IMMZCom."Number of IPV Doses Administered to Patient" = 3 and
	IMMZCom."Patient Age at 1st IPV Dose in Weeks" < 8 and
	IMMZCom."Current Patient Age In Months" >= 6 and
	IMMZConf."High Coverage of Polio and Risk of Wild Importation"
*/