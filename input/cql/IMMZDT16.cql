/*
 * Library: IMMZDT16 (IMMZ.DT.16.Meningococcal)
 * Rule: If child or person has not been vaccinated, give Meningococcal vaccine according to the defined schedule 
 * Trigger: Patient has never received Meningococcal vaccination
 */
library IMMZDT16
// Start Skeleton CQL
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1'
include IMMZCommon called IMMZCom
include IMMZConcepts called IMMZc
include IMMZConfig called IMMZCon
include IMMZStratifiers called IMMZStratifiers
include IMMZVaccineLibrary called IMMZvl
// End Skeleton CQL
context Patient

/* 
 * @dataElement Meningococcal vaccine immunization history = No doses
 */
define "Meningococcal vaccine immunization history = No doses":
	true // TODO: Define this

/* 
 * @dataElement Between 9 to 18 months old
 */
define "Between 9 to 18 months old":
	true // TODO: Define this

/*
 * Rule: Should vaccinate patient with MenA conjugate vaccine (5µg) on 1 dose scheme
 * Annotations:
 * 	 - Provide Meningococcal immunizations – using the "MenA conjugate vaccine (5µg) immunization – NO PREVIOUS" schedule (1 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Meningococcal- No Doses
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://w ww.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (("Meningococcal vaccine immunization history" = "No doses" = true) and ("Between 9 to 18 months old" = true))
 */
define "Should vaccinate patient with MenA conjugate vaccine (5µg) on 1 dose scheme":
	(("Meningococcal vaccine immunization history = No doses" = true) and ("Between 9 to 18 months old" = true))

/* 
 * @dataElement Meningococcal vaccine immunization history
 */
define "Meningococcal vaccine immunization history":
	0 // TODO: Define this

/* 
 * @dataElement No doses
 */
define "No doses":
	0 // TODO: Define this

/* 
 * @dataElement There is a compelling reason to vaccinate infants between 3 to 9 months old
 */
define "There is a compelling reason to vaccinate infants between 3 to 9 months old":
	true // TODO: Define this

/*
 * Rule: Should vaccinate patient with MenA conjugate vaccine (5µg) because no doses on 2 dose scheme
 * Annotations:
 * 	 - Provide Meningococcal immunizations – using the "MenA conjugate vaccine (5µg) immunization – NO PREVIOUS" schedule (2 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Meningococcal- No Doses
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://w ww.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (("Meningococcal vaccine immunization history" = "No doses") and ("There is a compelling reason to vaccinate infants between 3 to 9 months old" = true))
 */
define "Should vaccinate patient with MenA conjugate vaccine (5µg) because no doses on 2 dose scheme":
	(("Meningococcal vaccine immunization history" = "No doses") and ("There is a compelling reason to vaccinate infants between 3 to 9 months old" = true))

/* 
 * @dataElement 1 dose
 */
define "1 dose":
	0 // TODO: Define this

/* 
 * @dataElement Last MenA conjugate vaccine (5µg) given >= 8 weeks
 */
define "Last MenA conjugate vaccine (5µg) given >= 8 weeks":
	true // TODO: Define this

/*
 * Rule: Should vaccinate patient with MenA conjugate vaccine (5µg) because 1 dose on 2 dose scheme
 * Annotations:
 * 	 - Provide Meningococcal immunizations – using the "MenA conjugate vaccine (5µg) immunization – 1 PREVIOUS" schedule (2 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Meningococcal- 1 Dose
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://w ww.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ((("Meningococcal vaccine immunization history" = "1 dose") and ("Last MenA conjugate vaccine (5µg) given" >= "8 weeks" = true)) and ("There is a compelling reason to vaccinate infants between 3 to 9 months old" = true))
 */
define "Should vaccinate patient with MenA conjugate vaccine (5µg) because 1 dose on 2 dose scheme":
	((("Meningococcal vaccine immunization history" = "1 dose") and ("Last MenA conjugate vaccine (5µg) given >= 8 weeks" = true)) and ("There is a compelling reason to vaccinate infants between 3 to 9 months old" = true))

/* 
 * @dataElement No dose
 */
define "No dose":
	0 // TODO: Define this

/* 
 * @dataElement Age
 */
define "Age":
	0 // TODO: Define this

/* 
 * @dataElement 12 months
 */
define "12 months":
	0 // TODO: Define this

/*
 * Rule: Should vaccinate patient with monovalent MenC conjugate vaccine because no dose on 1 dose scheme
 * Annotations:
 * 	 - Provide Meningococcal immunizations – using the "monovalent MenC conjugate vaccine immunization – NO PREVIOUS" schedule (1 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Meningococcal- No Doses
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://w ww.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (("Meningococcal vaccine immunization history" = "No dose") and ("Age" >= "12 months"))
 */
define "Should vaccinate patient with monovalent MenC conjugate vaccine because no dose on 1 dose scheme":
	(("Meningococcal vaccine immunization history" = "No dose") and ("Age" >= "12 months"))

/* 
 * @dataElement Between 2 to 11 months old
 */
define "Between 2 to 11 months old":
	true // TODO: Define this

/*
 * Rule: Should vaccinate patient with monovalent MenC conjugate vaccine because no dose on 2 dose scheme
 * Annotations:
 * 	 - Provide Meningococcal immunizations – using the "monovalent MenC conjugate vaccine immunization – NO PREVIOUS" schedule (2 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Meningococcal- No Doses
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://w ww.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (("Meningococcal vaccine immunization history" = "No dose") and ("Between 2 to 11 months old" = true))
 */
define "Should vaccinate patient with monovalent MenC conjugate vaccine because no dose on 2 dose scheme":
	(("Meningococcal vaccine immunization history" = "No dose") and ("Between 2 to 11 months old" = true))

/* 
 * @dataElement Last monovalent MenC conjugate vaccine given >= 2 months
 */
define "Last monovalent MenC conjugate vaccine given >= 2 months":
	true // TODO: Define this

/*
 * Rule: Should vaccinate patient with monovalent MenC conjugate vaccine because 1 dose on 2 dose scheme
 * Annotations:
 * 	 - 
 * Outputs:
 * 	 - Immunize Patient for Meningococcal- 1 Dose
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://w ww.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ((("Meningococcal vaccine immunization history" = "1 dose") and ("Last monovalent MenC conjugate vaccine given" >= "2 months" = true)) and ("Between 2 to 11 months old" = true))
 */
define "Should vaccinate patient with monovalent MenC conjugate vaccine because 1 dose on 2 dose scheme":
	((("Meningococcal vaccine immunization history" = "1 dose") and ("Last monovalent MenC conjugate vaccine given >= 2 months" = true)) and ("Between 2 to 11 months old" = true))

/* 
 * @dataElement Age >= 2 years
 */
define "Age >= 2 years":
	true // TODO: Define this

/*
 * Rule: Should vaccinate patient with Quadrivalent conjugate vaccines (A,C,W135,Y-D and A,C,W135,Y-CRM) because no dose on 1 dose scheme
 * Annotations:
 * 	 - Provide Meningococcal immunizations – using the "Quadrivalent conjugate vaccines (A,C,W135,Y-D and A,C,W135,Y-CRM) immunization – NO PREVIOUS" schedule (1 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Meningococcal- No Doses
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://w ww.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (("Meningococcal vaccine immunization history" = "No dose") and ("Age" >= "2 years" = true))
 */
define "Should vaccinate patient with Quadrivalent conjugate vaccines (A,C,W135,Y-D and A,C,W135,Y-CRM) because no dose on 1 dose scheme":
	(("Meningococcal vaccine immunization history" = "No dose") and ("Age >= 2 years" = true))

/* 
 * @dataElement between 9 and 23 months old
 */
define "between 9 and 23 months old":
	true // TODO: Define this

/*
 * Rule: Should vaccinate patient with Quadrivalent conjugate vaccines (A,C,W135,Y-D) because no dose on 2 dose scheme
 * Annotations:
 * 	 - Provide Meningococcal immunizations – using the "Quadrivalent conjugate vaccines (A,C,W135,Y-D) immunization – NO PREVIOUS" schedule (2 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Meningococcal- No Doses
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://w ww.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (("Meningococcal vaccine immunization history" = "No dose") and ("between 9 and 23 months old" = true))
 */
define "Should vaccinate patient with Quadrivalent conjugate vaccines (A,C,W135,Y-D) because no dose on 2 dose scheme":
	(("Meningococcal vaccine immunization history" = "No dose") and ("between 9 and 23 months old" = true))

/* 
 * @dataElement Last Quadrivalent conjugate vaccines 
 */
define "Last Quadrivalent conjugate vaccines ":
	0 // TODO: Define this

/* 
 * @dataElement 3 months
 */
define "3 months":
	0 // TODO: Define this

/*
 * Rule: Should vaccinate patient with Quadrivalent conjugate vaccines (A,C,W135,Y-D) on 2 dose scheme
 * Annotations:
 * 	 - Provide Meningococcal immunizations – using the "Quadrivalent conjugate vaccines (A,C,W135,Y-D) immunization – 1 PREVIOUS" schedule (2 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Meningococcal- 1 Dose
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://w ww.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ((("Meningococcal vaccine immunization history" = "1 dose") and ("Last Quadrivalent conjugate vaccines " < "3 months")) and ("between 9 and 23 months old" = true))
 */
define "Should vaccinate patient with Quadrivalent conjugate vaccines (A,C,W135,Y-D) on 2 dose scheme":
	((("Meningococcal vaccine immunization history" = "1 dose") and ("Last Quadrivalent conjugate vaccines " < "3 months")) and ("between 9 and 23 months old" = true))

/* 
 * @dataElement 2 years
 */
define "2 years":
	0 // TODO: Define this

/*
 * Rule: Should vaccinate patient with Meningococcal polysaccharide vaccines on one dose scheme
 * Annotations:
 * 	 - Provide Meningococcal immunizations – using the "Meningococcal polysaccharide vaccines immunization – NO PREVIOUS" schedule (1 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Meningococcal- No Doses
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://w ww.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (("Meningococcal vaccine immunization history" = "No dose") and ("Age" > "2 years"))
 */
define "Should vaccinate patient with Meningococcal polysaccharide vaccines on one dose scheme":
	(("Meningococcal vaccine immunization history" = "No dose") and ("Age" > "2 years"))

