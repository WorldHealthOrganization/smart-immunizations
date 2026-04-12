/*
 * Library: IMMZDT03 (IMMZ.DT.03.Polio)
 * Rule: If child or person has not been vaccinated, give Polio vaccine 
 * Trigger: Patient has never had Polio vaccination
 */
library IMMZDT03
// Start Skeleton CQL
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1'
include IMMZCommon called IMMZCom
include IMMZConcepts called IMMZc
include IMMZConfig called IMMZConf
include IMMZVaccineLibrary called IMMZvl
// End Skeleton CQL
context Patient

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
define "Should vaccinate patient for Polio (bOPV) because no doses at birth (up to 2 weeks old) and patient is in a polio-endemic country with high risk of spread":
	IMMZCom."No IPV Doses Administered to Patient" and 
	IMMZCom."No bOPV Doses Administered to Patient" and 
	IMMZCom."Current Patient Age In Weeks" < 2 and 
	IMMZConf."Combined bOPV and IPV Schedule" and
	IMMZConf."Polio-endemic country with high risk of spread"
	
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
define "Should vaccinate patient for Polio (bOPV) because no doses at 6 weeks old":
	IMMZCom."No bOPV Doses Administered to Patient" and
	IMMZCom."Current Patient Age In Weeks" >= 6 and
	IMMZConf."Combined bOPV and IPV Schedule"

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
define "Should vaccinate patient for Polio (IPV) because no doses at 14 weeks old":
	"IMMZCom"."No IPV Doses Administered to Patient" and
	"IMMZCom"."Current Patient Age In Weeks" >= 14 and
	IMMZConf."Combined bOPV and IPV Schedule"
	
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
define "Should vaccinate patient for Polio (bOPV) because 1 dose bOPV given 4 weeks ago":
	(IMMZCom."Number of bOPV Doses Administered to Patient Excluding Birth Dose" = 1) and
	(IMMZCom."Date Last bOPV Dose Administered to Patient" more than 4 'weeks' before Today()) and
	IMMZConf."Combined bOPV and IPV Schedule"

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
define "Should vaccinate patient for Polio (IPV) because 1 dose IPV given at least 4 months ago":
	IMMZCom."Number of IPV Doses Administered to Patient" = 1 and
	IMMZCom."Date Last IPV Dose Administered to Patient" more than 4 'months' before Today() and
	IMMZConf."Combined bOPV and IPV Schedule"


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
define "Should vaccinate patient for Polio (bOPV) because 2nd dose bOPV given 4 weeks ago":
	(IMMZCom."Number of bOPV Doses Administered to Patient Excluding Birth Dose" = 2) and
	IMMZCom."Date Last bOPV Dose Administered to Patient" more than 4 'weeks' before Today() and
	IMMZConf."Combined bOPV and IPV Schedule"
	
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
define "Should vaccinate patient for Polio (IPV) because no doses at 8 weeks old":
	IMMZCom."No IPV Doses Administered to Patient" and
	IMMZCom."Current Patient Age In Weeks" >= 8 and
	IMMZConf."Sequential IPV-OPV Schedule"

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
define "Should vaccinate patient for Polio (bOPV) because 1st dose IPV given 4-8 weeks ago":
	(IMMZCom."Number of IPV Doses Administered to Patient" = 1) and 
	IMMZCom."Date Last IPV Dose Administered to Patient" more than 4 'weeks' before Today() and
	IMMZCom."Date Last IPV Dose Administered to Patient" less than 8 'weeks' before Today() and
	IMMZConf."Sequential IPV-OPV Schedule"

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
define "Should vaccinate patient for Polio (IPV) because 1st dose IPV given 4-8 weeks ago (High risk of exposure scenario)":
	IMMZCom."Number of IPV Doses Administered to Patient" = 1 and 
	IMMZCom."Date Last IPV Dose Administered to Patient" more than 4 'weeks' before Today() and
	IMMZCom."Date Last IPV Dose Administered to Patient" less than 8 'weeks' before Today() and
	IMMZConf."Sequential IPV-OPV Schedule" and
	IMMZConf."Country has a high risk of exposure to polio"

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
define "Should vaccinate patient for Polio (bOPV) because 1st dose bOPV (Second dose in 3-dose schedule) given 4-8 weeks ago":
	IMMZCom."Number of bOPV Doses Administered to Patient Excluding Birth Dose" = 1 and 
	IMMZCom."Date Last bOPV Dose Administered to Patient" more than 4 'weeks' before Today() and
	IMMZCom."Date Last bOPV Dose Administered to Patient" less than 8 'weeks' before Today() and
	IMMZConf."Sequential IPV-OPV Schedule"


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
define "Should vaccinate patient for Polio (bOPV) because 2nd dose IPV given 4-8 weeks ago (High risk of exposure scneario)":
	IMMZCom."Number of IPV Doses Administered to Patient" = 2 and 
	IMMZCom."Date Last IPV Dose Administered to Patient" more than 4 'weeks' before Today() and
	IMMZCom."Date Last IPV Dose Administered to Patient" less than 8 'weeks' before Today() and
	IMMZConf."Sequential IPV-OPV Schedule" and 
	IMMZConf."Country has a high risk of exposure to polio"	

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
define "Should vaccinate patient for Polio (bOPV) because 1st dose bOPV (Third dose in 4-dose schedule) given 4-8 weeks ago":
	IMMZCom."Number of bOPV Doses Administered to Patient Excluding Birth Dose" = 1 and 
	IMMZCom."Number of IPV Doses Administered to Patient" = 2 and 
	IMMZCom."Date Last bOPV Dose Administered to Patient" more than 4 'weeks' before Today() and
	IMMZCom."Date Last bOPV Dose Administered to Patient" less than 8 'weeks' before Today() and
	IMMZConf."Sequential IPV-OPV Schedule" and 
	IMMZConf."Country has a high risk of exposure to polio"	

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
define "Should vaccinate patient with IPV 1st dose":
	IMMZCom."No IPV Doses Administered to Patient" and
	IMMZCom."Current Patient Age In Weeks" <= 8 and
	IMMZConf."High Coverage of Polio and Risk of Wild Importation"

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
define "Should vaccinate patient with IPV 2nd dose":
	IMMZCom."Number of IPV Doses Administered to Patient" = 1 and 
	IMMZCom."Date Last IPV Dose Administered to Patient" more than 4 'weeks' before Today() and
	IMMZCom."Date Last IPV Dose Administered to Patient" less than 8 'weeks' before Today() and
	IMMZConf."High Coverage of Polio and Risk of Wild Importation"

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
define "Should vaccinate patient with IPV 3rd dose":
	IMMZCom."Number of IPV Doses Administered to Patient" = 2 and 
	IMMZCom."Date Last IPV Dose Administered to Patient" more than 4 'weeks' before Today() and
	IMMZCom."Date Last IPV Dose Administered to Patient" less than 8 'weeks' before Today() and
	IMMZConf."High Coverage of Polio and Risk of Wild Importation"


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
define "Should vaccinate patient with IPV 4th dose (booster)":
	IMMZCom."Number of IPV Doses Administered to Patient" = 3 and
	IMMZCom."Patient Age at 1st IPV Dose in Weeks" < 8 and
	IMMZCom."Current Patient Age In Months" >= 6 and
	IMMZConf."High Coverage of Polio and Risk of Wild Importation"
