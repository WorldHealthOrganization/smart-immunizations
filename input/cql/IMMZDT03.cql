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
include IMMZDT03Common called Com
include IMMZDT0301 called Combined
include IMMZDT0302 called Sequential
include IMMZDT0303 called IPVOnly
// End Skeleton CQL
context Patient


define "Provision of the IPV dose":
	case
		when Com."Polio Combined IPV-OPV Immunization Schedule" 
			then Combined."Provision of the IPV dose"
		when Com."Dose scheme" = 'sequential'
			then Sequential."Provision of the IPV dose"
		when Com."Polio IPV Only Immunization Schedule"
			then IPVOnly."Provision of the IPV dose"
		else false
	end

define "Provision of the bOPV dose":
	case
		when Com."Polio Combined IPV-OPV Immunization Schedule" 
			then Combined."Provision of the bOPV dose"
		when Com."Dose scheme" = 'sequential'
			then Sequential."Provision of the bOPV dose"
		when Com."Polio IPV Only Immunization Schedule"
			then IPVOnly."Provision of the bOPV dose"
		else false
	end

define "Schedule Due Date for IPV dose":
	case
		when Com."Polio Combined IPV-OPV Immunization Schedule" 
			then Combined."Schedule Due Date for IPV dose"
		when Com."Dose scheme" = 'sequential'
			then Sequential."Schedule Due Date for IPV dose"
		when Com."Polio IPV Only Immunization Schedule"
			then IPVOnly."Schedule Due Date for IPV dose"
		else null
	end

define "Schedule Due Date for bOPV dose":
	case
		when Com."Polio Combined IPV-OPV Immunization Schedule" 
			then Combined."Schedule Due Date for bOPV dose"
		when Com."Dose scheme" = 'sequential'
			then Sequential."Schedule Due Date for bOPV dose"
		when Com."Polio IPV Only Immunization Schedule"
			then IPVOnly."Schedule Due Date for bOPV dose"
		else null
	end

define "Should vaccinate patient for IPV":
	"Provision of the IPV dose" and ("Schedule Due Date for IPV dose" <= (Now()))

define "Should vaccinate patient for bOPV":
	"Provision of the bOPV dose" and ("Schedule Due Date for bOPV dose" <= (Now()))


define "Overdue Date for IPV dose":
	case
		when Com."Polio Combined IPV-OPV Immunization Schedule" 
			then Combined."Overdue Date for IPV dose"
		when Com."Dose scheme" = 'sequential'
			then Sequential."Overdue Date for IPV dose"
		when Com."Polio IPV Only Immunization Schedule"
			then IPVOnly."Overdue Date for IPV dose"
		else null
	end

define "Overdue Date for bOPV dose":
	case
		when Com."Polio Combined IPV-OPV Immunization Schedule" 
			then Combined."Overdue Date for bOPV dose"
		when Com."Dose scheme" = 'sequential'
			then Sequential."Overdue Date for bOPV dose"
		when Com."Polio IPV Only Immunization Schedule"
			then IPVOnly."Overdue Date for bOPV dose"
		else null
	end

define "Expiration Date for IPV dose":
	case
		when Com."Polio Combined IPV-OPV Immunization Schedule" 
			then Combined."Expiration Date for IPV dose"
		when Com."Dose scheme" = 'sequential'
			then Sequential."Expiration Date for IPV dose"
		when Com."Polio IPV Only Immunization Schedule"
			then IPVOnly."Expiration Date for IPV dose"
		else null
	end

define "Expiration Date for bOPV dose":
	case
		when Com."Polio Combined IPV-OPV Immunization Schedule" 
			then Combined."Expiration Date for bOPV dose"
		when Com."Dose scheme" = 'sequential'
			then Sequential."Expiration Date for bOPV dose"
		when Com."Polio IPV Only Immunization Schedule"
			then IPVOnly."Expiration Date for bOPV dose"
		else null
	end

define "IPV Next Dose Number":
	case
		when Com."Polio Combined IPV-OPV Immunization Schedule" 
			then Combined."IPV Next Dose Number"
		when Com."Dose scheme" = 'sequential'
			then Sequential."IPV Next Dose Number"
		when Com."Polio IPV Only Immunization Schedule"
			then IPVOnly."IPV Next Dose Number"
		else null
	end

define "bOPV Next Dose Number":
	case
		when Com."Polio Combined IPV-OPV Immunization Schedule" 
			then Combined."bOPV Next Dose Number"
		when Com."Dose scheme" = 'sequential'
			then Sequential."bOPV Next Dose Number"
		when Com."Polio IPV Only Immunization Schedule"
			then IPVOnly."bOPV Next Dose Number"
		else null
	end

define "Number of Required IPV Doses":
	case
		when Com."Polio Combined IPV-OPV Immunization Schedule" 
			then Combined."Number of Required IPV Doses"
		when Com."Dose scheme" = 'sequential'
			then Sequential."Number of Required IPV Doses"
		when Com."Polio IPV Only Immunization Schedule"
			then IPVOnly."Number of Required IPV Doses"
		else null
	end

define "Number of Required bOPV Doses":
	case
		when Com."Polio Combined IPV-OPV Immunization Schedule" 
			then Combined."Number of Required bOPV Doses"
		when Com."Dose scheme" = 'sequential'
			then Sequential."Number of Required bOPV Doses"
		when Com."Polio IPV Only Immunization Schedule"
			then IPVOnly."Number of Required bOPV Doses"
		else null
	end

define "Reminder Message for IPV dose":
	if "Provision of the IPV dose"
	then 'IPV dose ' + ToString("IPV Next Dose Number") + ' of ' + ToString("Number of Required IPV Doses") + ' is due on ' + ToString("Schedule Due Date for IPV dose") 
		+ if "Expiration Date for IPV dose" is not null then ' and expires on ' + "Expiration Date for IPV dose" else ''
	else null	

define "Should Send IPV Reminder":
	"Reminder Message for IPV dose" is not null

define "Polio Reminder Recipient":
	Patient

define "Reminder Message for bOPV dose":
	if "Provision of the bOPV dose"
	then 'bOPV dose ' + ToString("bOPV Next Dose Number") + ' of ' + ToString("Number of Required bOPV Doses") + ' is due on ' + ToString("Schedule Due Date for bOPV dose")
	  + if "Expiration Date for bOPV dose" is not null then ' and expires on ' + ToString("Expiration Date for bOPV dose") else ''
	else null	

define "Should Send bOPV Reminder":
	"Reminder Message for bOPV dose" is not null

/*
 * Rule: Should vaccinate patient for Polio (bOPV) because no doses at birth (up to 2 weeks old) and patient is in a polio-endemic country with high risk of spread
 * Annotations:
 * 	 - Provide birth dose Polio (bOPV) vaccination – using the zero dose recommendation at birth (until 2 weeks old) due to patient being in a polio-endemic country with high risk of spread. Patient will continue the "bOPV-IPV-bOPV-IPV-bOPV" schedule (5 doses scheme)
 * Outputs:
 * 	 - Immunize Patient for Polio (bOPV) - No Doses at birth (polio-endemic country and high risk of spread)
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ((((("Polio (IPV) vaccine immunization history" = "No-doses") and ("Polio (bOPV) vaccine immunization history" = "No-doses")) and ("Current Patient Age in Weeks" < 2)) and ("bOPV and IPV Schedule" = true)) and ("Polio-endemic country with high risk of spread" = true))
 */
 /*
define "Should vaccinate patient for Polio (bOPV) because no doses at birth (up to 2 weeks old) and patient is in a polio-endemic country with high risk of spread":
	IMMZCom."No IPV Doses Administered to Patient" and 
	IMMZCom."No bOPV Doses Administered to Patient" and 
	IMMZCom."Current Patient Age In Weeks" < 2 and 
	IMMZConf."bOPV and IPV Schedule" and
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
 *	 ((("Polio (bOPV) vaccine immunization history" = "No-doses") and ("Current Patient Age in Weeks" >= 6)) and ("bOPV and IPV Schedule" = true))
 */
 /*
define "Should vaccinate patient for Polio (bOPV) because no doses at 6 weeks old":
	IMMZCom."No bOPV Doses Administered to Patient" and
	IMMZCom."Current Patient Age In Weeks" >= 6 and
	IMMZConf."bOPV and IPV Schedule"
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
 *	 ((("Polio (IPV) vaccine immunization history" = "No-doses" = true) and ("Current Patient Age in Weeks" >= 14)) and ("bOPV and IPV Schedule" = true))
 */
 /*
define "Should vaccinate patient for Polio (IPV) because no doses at 14 weeks old":
	"IMMZCom"."No IPV Doses Administered to Patient" and
	"IMMZCom"."Current Patient Age In Weeks" >= 14 and
	IMMZConf."bOPV and IPV Schedule"
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
 *	 ((("Polio (bOPV) vaccine immunization history" = "1 dose" = true) and ("Date last bOPV dose given" >= "4 weeks")) and ("bOPV and IPV Schedule" = true))
 */
 /*
define "Should vaccinate patient for Polio (bOPV) because 1 dose bOPV given 4 weeks ago":
	(IMMZCom."Number of bOPV Doses Administered to Patient Excluding Birth Dose" = 1) and
	(IMMZCom."Date Last bOPV Dose Administered to Patient" more than 4 'weeks' before Today()) and
	IMMZConf."bOPV and IPV Schedule"
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
 *	 ((("Polio (IPV) vaccine immunization history" = "1 dose" = true) and ("Date last IPV dose given" >= "4 months")) and ("bOPV and IPV Schedule" = true))
 */
/*
define "Should vaccinate patient for Polio (IPV) because 1 dose IPV given at least 4 months ago":
	IMMZCom."Number of IPV Doses Administered to Patient" = 1 and
	IMMZCom."Date Last IPV Dose Administered to Patient" more than 4 'months' before Today() and
	IMMZConf."bOPV and IPV Schedule"
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
 *	 ((("Polio (bOPV) vaccine immunization history" = "2 doses") and ("Date last bOPV dose given" >= "4 weeks")) and ("bOPV and IPV Schedule" = true))
 */
 /*
define "Should vaccinate patient for Polio (bOPV) because 2nd dose bOPV given 4 weeks ago":
	(IMMZCom."Number of bOPV Doses Administered to Patient Excluding Birth Dose" = 2) and
	IMMZCom."Date Last bOPV Dose Administered to Patient" more than 4 'weeks' before Today() and
	IMMZConf."bOPV and IPV Schedule"
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
 *	 ((("Polio (IPV) vaccine immunization history" = "No-doses") and ("Current Patient Age in Weeks" >= 8)) and ("IPV-OPV Schedule" = true))
 */
 /*
define "Should vaccinate patient for Polio (IPV) because no doses at 8 weeks old":
	IMMZCom."No IPV Doses Administered to Patient" and
	IMMZCom."Current Patient Age In Weeks" >= 8 and
	IMMZConf."IPV-OPV Schedule"
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
 *	 (((("Polio (IPV) vaccine immunization history" = "1 dose") and ("Date last IPV dose given" >= "4 weeks")) and ("Date last IPV dose given" <= "8 weeks")) and ("IPV-OPV Schedule" = true))
 */
 /*
define "Should vaccinate patient for Polio (bOPV) because 1st dose IPV given 4-8 weeks ago":
	(IMMZCom."Number of IPV Doses Administered to Patient" = 1) and 
	IMMZCom."Date Last IPV Dose Administered to Patient" more than 4 'weeks' before Today() and
	IMMZCom."Date Last IPV Dose Administered to Patient" less than 8 'weeks' before Today() and
	IMMZConf."IPV-OPV Schedule"
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
 *	 ((((("Polio (IPV) vaccine immunization history" = "1 dose" = true) and ("Date last IPV dose given" >= "4 weeks")) and ("Date last IPV dose given" <= "8 weeks")) and ("IPV-OPV Schedule" = true)) and ("Country has a high risk of exposure" = true))
 */
 /*
define "Should vaccinate patient for Polio (IPV) because 1st dose IPV given 4-8 weeks ago (High risk of exposure scenario)":
	IMMZCom."Number of IPV Doses Administered to Patient" = 1 and 
	IMMZCom."Date Last IPV Dose Administered to Patient" more than 4 'weeks' before Today() and
	IMMZCom."Date Last IPV Dose Administered to Patient" less than 8 'weeks' before Today() and
	IMMZConf."IPV-OPV Schedule" and
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
 *	 (((("Polio (bOPV) vaccine immunization history" = "1 dose") and ("Date last bOPV dose given" >= "4 weeks")) and ("Date last bOPV dose given" <= "8 weeks")) and ("IPV-OPV Schedule" = true))
 */
 /*
define "Should vaccinate patient for Polio (bOPV) because 1st dose bOPV (Second dose in 3-dose schedule) given 4-8 weeks ago":
	IMMZCom."Number of bOPV Doses Administered to Patient Excluding Birth Dose" = 1 and 
	IMMZCom."Date Last bOPV Dose Administered to Patient" more than 4 'weeks' before Today() and
	IMMZCom."Date Last bOPV Dose Administered to Patient" less than 8 'weeks' before Today() and
	IMMZConf."IPV-OPV Schedule"
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
 *	 ((((("Polio (IPV) vaccine immunization history" = "2 doses") and ("Date last IPV dose given" >= "4 weeks" = true)) and ("Date last IPV dose given" <= "8 weeks")) and ("IPV-OPV Schedule" = true)) and ("Country has a high risk of exposure" = true))
 */
 /*
define "Should vaccinate patient for Polio (bOPV) because 2nd dose IPV given 4-8 weeks ago (High risk of exposure scneario)":
	IMMZCom."Number of IPV Doses Administered to Patient" = 2 and 
	IMMZCom."Date Last IPV Dose Administered to Patient" more than 4 'weeks' before Today() and
	IMMZCom."Date Last IPV Dose Administered to Patient" less than 8 'weeks' before Today() and
	IMMZConf."IPV-OPV Schedule" and 
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
 *	 (((((("Polio (bOPV) vaccine immunization history" = "1 dose") and ("Polio (IPV) vaccine immunization history" = "2 doses")) and ("Date last bOPV dose given" >= "4 weeks")) and ("Date last bOPV dose given" <= "8 weeks")) and ("IPV-OPV Schedule" = true)) and ("Country has a high risk of exposure" = true))
 */
 /*
define "Should vaccinate patient for Polio (bOPV) because 1st dose bOPV (Third dose in 4-dose schedule) given 4-8 weeks ago":
	IMMZCom."Number of bOPV Doses Administered to Patient Excluding Birth Dose" = 1 and 
	IMMZCom."Number of IPV Doses Administered to Patient" = 2 and 
	IMMZCom."Date Last bOPV Dose Administered to Patient" more than 4 'weeks' before Today() and
	IMMZCom."Date Last bOPV Dose Administered to Patient" less than 8 'weeks' before Today() and
	IMMZConf."IPV-OPV Schedule" and 
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