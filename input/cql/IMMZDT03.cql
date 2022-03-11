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
include IMMZStratifiers called IMMZStratifiers
include IMMZVaccineLibrary called IMMZvl
// End Skeleton CQL
context Patient

/* 
 * @dataElement Polio (IPV) vaccine immunization history
 */
define "Polio (IPV) vaccine immunization history":
	true; // TODO: Define this

/* 
 * @dataElement No-doses
 */
define "No-doses":
	true; // TODO: Define this

/* 
 * @dataElement Polio (bOPV) vaccine immunization history
 */
define "Polio (bOPV) vaccine immunization history":
	true; // TODO: Define this

/* 
 * @dataElement Age
 */
define "Age":
	true; // TODO: Define this

/* 
 * @dataElement 2 weeks
 */
define "2 weeks":
	true; // TODO: Define this

/* 
 * @dataElement Combined bOPV and IPV Schedule
 */
define "Combined bOPV and IPV Schedule":
	true; // TODO: Define this

/* 
 * @dataElement Polio-endemic country with high risk of spread
 */
define "Polio-endemic country with high risk of spread":
	true; // TODO: Define this

/*
 * Rule: Should vaccinate patient for Polio (bOPV) because no doses at birth (up to 2 weeks old) and patient is in a polio-endemic country with high risk of spread
 * Annotations:
 * 	 - Provide birth dose Polio (bOPV) vaccination – using the zero dose recommendation at birth (until 2 weeks old) due to patient being in a polio-endemic country with high risk of spread. Patient will continue the "bOPV-IPV-bOPV-IPV-bOPV" schedule (5 doses scheme)
 * Outputs:
 * 	 - Immunize Patient for Polio (bOPV) - No Doses at birth (polio-endemic country and high risk of spread)
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ((((("Polio (IPV) vaccine immunization history" = "No-doses") and ("Polio (bOPV) vaccine immunization history" = "No-doses")) and ("Age" < "2 weeks")) and ("Combined bOPV and IPV Schedule" = true)) and ("Polio-endemic country with high risk of spread" = true))
 */
define "Should vaccinate patient for Polio (bOPV) because no doses at birth (up to 2 weeks old) and patient is in a polio-endemic country with high risk of spread":
	((((("Polio (IPV) vaccine immunization history" = "No-doses") and ("Polio (bOPV) vaccine immunization history" = "No-doses")) and ("Age" < "2 weeks")) and ("Combined bOPV and IPV Schedule" = true)) and ("Polio-endemic country with high risk of spread" = true));

/* 
 * @dataElement 6 weeks
 */
define "6 weeks":
	true; // TODO: Define this

/*
 * Rule: Should vaccinate patient for Polio (bOPV) because no doses at 6 weeks old
 * Annotations:
 * 	 - Provide 1st dose Polio (bOPV) vaccination – using the "bOPV-IPV-bOPV-IPV-bOPV" schedule (5 doses scheme)
 * Outputs:
 * 	 - Immunize Patient for Polio (bOPV) - No Doses at 6 weeks old
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ((("Polio (bOPV) vaccine immunization history" = "No-doses") and ("Age" >= "6 weeks")) and ("Combined bOPV and IPV Schedule" = true))
 */
define "Should vaccinate patient for Polio (bOPV) because no doses at 6 weeks old":
	((("Polio (bOPV) vaccine immunization history" = "No-doses") and ("Age" >= "6 weeks")) and ("Combined bOPV and IPV Schedule" = true));

/* 
 * @dataElement 14 weeks
 */
define "14 weeks":
	true; // TODO: Define this

/*
 * Rule: Should vaccinate patient for Polio (IPV) because no doses at 14 weeks old
 * Annotations:
 * 	 - Provide 1st dose Polio (IPV) vaccination – using the "bOPV-IPV-bOPV-IPV-bOPV" schedule (5 doses scheme)
 * Outputs:
 * 	 - Immunize Patient for Polio (IPV) - No Doses at 14 weeks old
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ((("Polio (IPV) vaccine immunization history" = "No-doses") and ("Age" >= "14 weeks")) and ("Combined bOPV and IPV Schedule" = true))
 */
define "Should vaccinate patient for Polio (IPV) because no doses at 14 weeks old":
	((("Polio (IPV) vaccine immunization history" = "No-doses") and ("Age" >= "14 weeks")) and ("Combined bOPV and IPV Schedule" = true));

/* 
 * @dataElement 1 dose
 */
define "1 dose":
	true; // TODO: Define this

/* 
 * @dataElement Last bOPV dose given date
 */
define "Last bOPV dose given date":
	true; // TODO: Define this

/* 
 * @dataElement 4 weeks
 */
define "4 weeks":
	true; // TODO: Define this

/*
 * Rule: Should vaccinate patient for Polio (bOPV) because 1 dose bOPV given 4 weeks ago
 * Annotations:
 * 	 - Provide 2nd dose Polio (bOPV) vaccination – using the "bOPV-IPV-bOPV-IPV-bOPV" schedule (5 doses scheme)
 * Outputs:
 * 	 - Immunize Patient for Polio (bOPV) - 1 Dose given 4 weeks ago
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ((("Polio (bOPV) vaccine immunization history" = "1 dose") and ("Last bOPV dose given date" >= "4 weeks")) and ("Combined bOPV and IPV Schedule" = true))
 */
define "Should vaccinate patient for Polio (bOPV) because 1 dose bOPV given 4 weeks ago":
	((("Polio (bOPV) vaccine immunization history" = "1 dose") and ("Last bOPV dose given date" >= "4 weeks")) and ("Combined bOPV and IPV Schedule" = true));

/* 
 * @dataElement Last IPV dose given
 */
define "Last IPV dose given":
	true; // TODO: Define this

/* 
 * @dataElement 4 months
 */
define "4 months":
	true; // TODO: Define this

/*
 * Rule: Should vaccinate patient for Polio (IPV) because 1 dose IPV given at least 4 months ago
 * Annotations:
 * 	 - Provide 2nd dose Polio (IPV) vaccination – using the "bOPV-IPV-bOPV-IPV-bOPV" schedule (5 doses scheme)
 * Outputs:
 * 	 - Immunize Patient for Polio (IPV) - 1 Dose given at least 4 months ago
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ((("Polio (IPV) vaccine immunization history" = "1 dose") and ("Last IPV dose given" >= "4 months")) and ("Combined bOPV and IPV Schedule" = true))
 */
define "Should vaccinate patient for Polio (IPV) because 1 dose IPV given at least 4 months ago":
	((("Polio (IPV) vaccine immunization history" = "1 dose") and ("Last IPV dose given" >= "4 months")) and ("Combined bOPV and IPV Schedule" = true));

/* 
 * @dataElement 2 dose
 */
define "2 dose":
	true; // TODO: Define this

/*
 * Rule: Should vaccinate patient for Polio (bOPV) because 2nd dose bOPV given 4 weeks ago
 * Annotations:
 * 	 - Provide 3rd dose Polio (bOPV) vaccination – using the "bOPV-IPV-bOPV-IPV-bOPV" schedule (5 doses scheme)
 * Outputs:
 * 	 - Immunize Patient for Polio (bOPV) - 2 Doses given 4 weeks ago
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ((("Polio (bOPV) vaccine immunization history" = "2 dose") and ("Last bOPV dose given date" >= "4 weeks")) and ("Combined bOPV and IPV Schedule" = true))
 */
define "Should vaccinate patient for Polio (bOPV) because 2nd dose bOPV given 4 weeks ago":
	((("Polio (bOPV) vaccine immunization history" = "2 dose") and ("Last bOPV dose given date" >= "4 weeks")) and ("Combined bOPV and IPV Schedule" = true));

/* 
 * @dataElement 8 weeks
 */
define "8 weeks":
	true; // TODO: Define this

/* 
 * @dataElement Sequential IPV-OPV Schedule
 */
define "Sequential IPV-OPV Schedule":
	true; // TODO: Define this

/*
 * Rule: Should vaccinate patient for Polio (IPV) because no doses at 8 weeks old
 * Annotations:
 * 	 - Provide 1st dose Polio (IPV) vaccination – using the "IPV-bOPV-bOPV" schedule (3 doses scheme)
 * Outputs:
 * 	 - Immunize Patient for Polio (IPV) - No Doses at 8 weeks old
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ((("Polio (IPV) vaccine immunization history" = "No-doses") and ("Age" >= "8 weeks")) and ("Sequential IPV-OPV Schedule" = true))
 */
define "Should vaccinate patient for Polio (IPV) because no doses at 8 weeks old":
	((("Polio (IPV) vaccine immunization history" = "No-doses") and ("Age" >= "8 weeks")) and ("Sequential IPV-OPV Schedule" = true));

/*
 * Rule: Should vaccinate patient for Polio (bOPV) because 1st dose IPV given 4-8 weeks ago
 * Annotations:
 * 	 - Provide 1st dose Polio (bOPV) vaccination – using the "IPV-bOPV-bOPV" schedule (3 doses scheme)
 * Outputs:
 * 	 - Immunize Patient for Polio (IPV) - 1st Dose given 4-8 weeks ago (High risk of exposure scenario)
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (((("Polio (IPV) vaccine immunization history" = "1 dose") and ("Last IPV dose given" >= "4 weeks")) and ("Last IPV dose given" <= "8 weeks")) and ("Sequential IPV-OPV Schedule" = true))
 */
define "Should vaccinate patient for Polio (bOPV) because 1st dose IPV given 4-8 weeks ago":
	(((("Polio (IPV) vaccine immunization history" = "1 dose") and ("Last IPV dose given" >= "4 weeks")) and ("Last IPV dose given" <= "8 weeks")) and ("Sequential IPV-OPV Schedule" = true));

/* 
 * @dataElement Country has a high risk of exposure
 */
define "Country has a high risk of exposure":
	true; // TODO: Define this

/*
 * Rule: Should vaccinate patient for Polio (IPV) because 1st dose IPV given 4-8 weeks ago (High risk of exposure scenario)
 * Annotations:
 * 	 - Provide 2nd dose Polio (IPV) vaccination – using the "IPV-IPV-bOPV-bOPV" schedule (4 doses scheme)
 * Outputs:
 * 	 - Immunize Patient for Polio (IPV) - 1st Dose given 4-8 weeks ago (High risk of exposure scenario)
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ((((("Polio (IPV) vaccine immunization history" = "1 dose") and ("Last IPV dose given" >= "4 weeks")) and ("Last IPV dose given" <= "8 weeks")) and ("Sequential IPV-OPV Schedule" = true)) and ("Country has a high risk of exposure" = true))
 */
define "Should vaccinate patient for Polio (IPV) because 1st dose IPV given 4-8 weeks ago (High risk of exposure scenario)":
	((((("Polio (IPV) vaccine immunization history" = "1 dose") and ("Last IPV dose given" >= "4 weeks")) and ("Last IPV dose given" <= "8 weeks")) and ("Sequential IPV-OPV Schedule" = true)) and ("Country has a high risk of exposure" = true));

/* 
 * @dataElement Last bOPV dose given
 */
define "Last bOPV dose given":
	true; // TODO: Define this

/*
 * Rule: Should vaccinate patient for Polio (bOPV) because 1st dose bOPV (Second dose in 3-dose schedule) given 4-8 weeks ago
 * Annotations:
 * 	 - Provide 2nd dose Polio (bOPV) vaccination – using the "IPV-bOPV-bOPV" schedule (3 doses scheme)
 * Outputs:
 * 	 - Immunize Patient for Polio (bOPV) - 1st Dose (Second dose in 3-dose schedule) given 4-8 weeks ago
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (((("Polio (bOPV) vaccine immunization history" = "1 dose") and ("Last bOPV dose given" >= "4 weeks")) and ("Last bOPV dose given" <= "8 weeks")) and ("Sequential IPV-OPV Schedule" = true))
 */
define "Should vaccinate patient for Polio (bOPV) because 1st dose bOPV (Second dose in 3-dose schedule) given 4-8 weeks ago":
	(((("Polio (bOPV) vaccine immunization history" = "1 dose") and ("Last bOPV dose given" >= "4 weeks")) and ("Last bOPV dose given" <= "8 weeks")) and ("Sequential IPV-OPV Schedule" = true));

/*
 * Rule: Should vaccinate patient for Polio (bOPV) because 2nd dose IPV given 4-8 weeks ago (High risk of exposure scneario)
 * Annotations:
 * 	 - Provide 3rd dose Polio (bOPV) vaccination – using the "IPV-IPV-bOPV-bOPV" schedule (4 doses scheme)
 * Outputs:
 * 	 - Immunize Patient for Polio (IPV) - 2nd Dose given 4-8 weeks ago (High risk of exposure scenario)
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ((((("Polio (IPV) vaccine immunization history" = "2 dose") and ("Last IPV dose given" >= "4 weeks")) and ("Last IPV dose given" <= "8 weeks")) and ("Sequential IPV-OPV Schedule" = true)) and ("Country has a high risk of exposure" = true))
 */
define "Should vaccinate patient for Polio (bOPV) because 2nd dose IPV given 4-8 weeks ago (High risk of exposure scneario)":
	((((("Polio (IPV) vaccine immunization history" = "2 dose") and ("Last IPV dose given" >= "4 weeks")) and ("Last IPV dose given" <= "8 weeks")) and ("Sequential IPV-OPV Schedule" = true)) and ("Country has a high risk of exposure" = true));

/* 
 * @dataElement 2 doses
 */
define "2 doses":
	true; // TODO: Define this

/*
 * Rule: Should vaccinate patient for Polio (bOPV) because 1st dose bOPV (Third dose in 4-dose schedule) given 4-8 weeks ago
 * Annotations:
 * 	 - Provide 4th dose Polio (bOPV) vaccination – using the "IPV-IPV-bOPV-bOPV" schedule (4 doses scheme)
 * Outputs:
 * 	 - Immunize Patient for Polio (bOPV) - 1st Dose (Third dose in 4-dose schedule) given 4-8 weeks ago
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (((((("Polio (bOPV) vaccine immunization history" = "1 dose") and ("Polio (IPV) vaccine immunization history" = "2 doses")) and ("Last bOPV dose given" >= "4 weeks")) and ("Last bOPV dose given" <= "8 weeks")) and ("Sequential IPV-OPV Schedule" = true)) and ("Country has a high risk of exposure" = true))
 */
define "Should vaccinate patient for Polio (bOPV) because 1st dose bOPV (Third dose in 4-dose schedule) given 4-8 weeks ago":
	(((((("Polio (bOPV) vaccine immunization history" = "1 dose") and ("Polio (IPV) vaccine immunization history" = "2 doses")) and ("Last bOPV dose given" >= "4 weeks")) and ("Last bOPV dose given" <= "8 weeks")) and ("Sequential IPV-OPV Schedule" = true)) and ("Country has a high risk of exposure" = true));

/* 
 * @dataElement IPV vaccine immunization history
 */
define "IPV vaccine immunization history":
	true; // TODO: Define this

/* 
 * @dataElement High Coverage of Polio and Risk of Wild Importation
 */
define "High Coverage of Polio and Risk of Wild Importation":
	true; // TODO: Define this

/*
 * Rule: Should vaccinate patient with IPV 1st dose
 * Annotations:
 * 	 - Provide 1st dose Polio (IPV) vaccination – using the "IPV Only" schedule
 * Outputs:
 * 	 - Immunize Patient for Polio - No Doses
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ((("IPV vaccine immunization history" = "No-doses") and ("Age" <= "8 weeks")) and ("High Coverage of Polio and Risk of Wild Importation" = true))
 */
define "Should vaccinate patient with IPV 1st dose":
	((("IPV vaccine immunization history" = "No-doses") and ("Age" <= "8 weeks")) and ("High Coverage of Polio and Risk of Wild Importation" = true));

/* 
 * @dataElement 1 IPV dose
 */
define "1 IPV dose":
	true; // TODO: Define this

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
	(("IPV vaccine immunization history" = "1 IPV dose") and ("High Coverage of Polio and Risk of Wild Importation" = true));

/* 
 * @dataElement 2 IPV doses
 */
define "2 IPV doses":
	true; // TODO: Define this

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
	(("IPV vaccine immunization history" = "2 IPV doses") and ("High Coverage of Polio and Risk of Wild Importation" = true));

/* 
 * @dataElement 3 IPV doses
 */
define "3 IPV doses":
	true; // TODO: Define this

/* 
 * @dataElement Age when 1st IPV dose was given
 */
define "Age when 1st IPV dose was given":
	true; // TODO: Define this

/* 
 * @dataElement 6 months
 */
define "6 months":
	true; // TODO: Define this

/*
 * Rule: Should vaccinate patient with IPV 4th dose (booster)
 * Annotations:
 * 	 - Provide 4th dose Polio (IPV) vaccination - using the "IPV Only" schedule - minimum of 4 weeks after previous dose
 * Outputs:
 * 	 - Immunize Patient for Polio - 4th dose (booster)
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (((("IPV vaccine immunization history" = "3 IPV doses") and ("Age when 1st IPV dose was given" < "8 weeks")) and ("Age" >= "6 months")) and ("High Coverage of Polio and Risk of Wild Importation" = true))
 */
define "Should vaccinate patient with IPV 4th dose (booster)":
	(((("IPV vaccine immunization history" = "3 IPV doses") and ("Age when 1st IPV dose was given" < "8 weeks")) and ("Age" >= "6 months")) and ("High Coverage of Polio and Risk of Wild Importation" = true));

