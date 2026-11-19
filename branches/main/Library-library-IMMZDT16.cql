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
include IMMZVaccineLibrary called IMMZvl
include FHIRCommon called FC
// End Skeleton CQL
parameter "Individual has a continued high risk of exposure (including health workers)" Boolean default false
context Patient


/* 
 * @dataElement Meningococcal vaccine immunization history
 */
define "Meningococcal vaccine immunization history":
	IMMZCom."Meningococcal Doses Administered to Patient"

/* 
 * @dataElement No-doses
 */
define "No-doses":
	not exists("Meningococcal vaccine immunization history")

/* 
 * @dataElement Current Patient Age in Months
 */
define "Current Patient Age in Months":
	IMMZCom."Current Patient Age In Months"

/* 
 * @dataElement There is a compelling reason to vaccinate infants with Meningococcal between 3 to 9 months old
 */
define "There is a compelling reason to vaccinate infants with Meningococcal between 3 to 9 months old":
	IMMZCon."There is a compelling reason to vaccinate infants with Meningococcal between 3 to 9 months old"
	//Seek clarity 

/*
 * Rule: Should vaccinate patient with MenA conjugate vaccine (5µg) because no doses on 2 dose scheme
 * Annotations:
 * 	 - Provide Meningococcal immunizations – using the "MenA conjugate vaccine (5µg) immunization – NO PREVIOUS" schedule (2 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Meningococcal - No Doses
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (((("Meningococcal vaccine immunization history" = "No-doses") and ("Current Patient Age in Months" >= 3)) and ("Current Patient Age in Months" < 9)) and ("There is a compelling reason to vaccinate infants with Meningococcal between 3 to 9 months old" = true))
 */
define "Should vaccinate patient with MenA conjugate vaccine (5µg) because no doses on 2 dose scheme":
	(((("No-doses") and ("Current Patient Age in Months" >= 3)) and ("Current Patient Age in Months" < 9)) and ("There is a compelling reason to vaccinate infants with Meningococcal between 3 to 9 months old"))

/* 
 * @dataElement 1 dose
 */
define "1 dose":
	IMMZCom."Number of Meningococcal Doses Administered to Patient" = 1

/* 
 * @dataElement Date last Meningococcal dose given >= 8 weeks
 */
define "Date last Meningococcal dose given >= 8 weeks":
	 IMMZCom."Date last Meningococcal dose Administered to Patient" equal 8 'weeks' before Today()
	 or IMMZCom."Date last Meningococcal dose Administered to Patient" more than 8 'weeks' before Today()

/* 
 * @dataElement Type of last Meningococcal dose
 */
define "Type of last Meningococcal dose":
	IMMZCom."Type of last Meningococcal Dose Administered to Patient" 

/* 
 * @dataElement MenA conjugate vaccine (5µg)
 */
define "MenA conjugate vaccine (5µg)":
	IMMZc."MenA conjugate vaccine (5µg)"

/*
 * Rule: Should vaccinate patient with MenA conjugate vaccine (5µg) because 1 dose on 2 dose scheme
 * Annotations:
 * 	 - Provide Meningococcal immunizations – using the "MenA conjugate vaccine (5µg) immunization – 1 PREVIOUS" schedule (2 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Meningococcal - 1 Dose
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (((((("Meningococcal vaccine immunization history" = "1 dose") and ("Current Patient Age in Months" >= 3)) and ("Current Patient Age in Months" < 9)) and ("Date last Meningococcal dose given" >= "8 weeks" = true)) and ("Type of last Meningococcal dose" = "MenA conjugate vaccine (5µg)")) and ("There is a compelling reason to vaccinate infants with Meningococcal between 3 to 9 months old" = true))
 */
define "Should vaccinate patient with MenA conjugate vaccine (5µg) because 1 dose on 2 dose scheme":
	(((((("1 dose") and ("Current Patient Age in Months" >= 3)) and ("Current Patient Age in Months" < 9)) and ("Date last Meningococcal dose given >= 8 weeks")) and ("Type of last Meningococcal dose" in IMMZc."MenA conjugate vaccine (5µg)")) and ("There is a compelling reason to vaccinate infants with Meningococcal between 3 to 9 months old" = true))

/* 
 * @dataElement Meningococcal vaccine immunization history = No-doses
 */
define "Meningococcal vaccine immunization history = No-doses":
	not exists("Meningococcal vaccine immunization history")

/* 
 * @dataElement Region recommends Meningococcal vaccination
 */
define "Region recommends Meningococcal vaccination":
	IMMZCon."Region recommends Meningococcal vaccination"

/*
 * Rule: Should vaccinate patient with MenA conjugate vaccine (5µg) on 1 dose scheme
 * Annotations:
 * 	 - Provide Meningococcal immunizations – using the "MenA conjugate vaccine (5µg) immunization – NO PREVIOUS" schedule (1 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Meningococcal - No Doses
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (((("Meningococcal vaccine immunization history" = "No-doses" = true) and ("Current Patient Age in Months" >= 9)) and ("Current Patient Age in Months" <= 24)) and ("Region recommends Meningococcal vaccination" = true))
 */
define "Should vaccinate patient with MenA conjugate vaccine (5µg) on 1 dose scheme":
	(((("Meningococcal vaccine immunization history = No-doses") and ("Current Patient Age in Months" >= 9)) and ("Current Patient Age in Months" <= 24)) and ("Region recommends Meningococcal vaccination"))

/* 
 * @dataElement Patient has completed Meningococcal primary series
 * TODO: Update so that this is true if < 9 months then doses >= 2 otherwise >= 1
 */
define "Patient has completed MenA primary series":
	Max(IMMZCom."Meningococcal Doses Administered to Patient" I where 
		I.vaccineCode in IMMZc."MenA conjugate vaccine (5µg)" 
	return (singleton from I.protocolApplied).doseNumber as FHIR.positiveInt) >= 3

/* 
 * @dataElement Date last Meningococcal dose given >= 3 years
 */
define "Date last Meningococcal dose given >= 3 years":
	IMMZCom."Date last Meningococcal dose Administered to Patient" equal 3 'years' before Today()
	or IMMZCom."Date last Meningococcal dose Administered to Patient" more than 3 'years' before Today()

/* 
 * @dataElement Date last Meningococcal dose given <= 5 years
 */
define "Date last Meningococcal dose given <= 5 years":
	IMMZCom."Date last Meningococcal dose Administered to Patient" equal 5 'years' before Today()
	or IMMZCom."Date last Meningococcal dose Administered to Patient" less than 5 'years' before Today()

/** 
 * @dataElement Patient not received a MenA booster
 */
define "Patient Has Not Received MenA Booster":
	not exists(
		IMMZCom."Meningococcal Doses Administered to Patient" I 
		where I.vaccineCode in IMMZc."MenA conjugate vaccine (5µg)" 
		and exists(I.protocolApplied P 
			where ("Age when patient received 1st dose" < 9 and P.doseNumber = 3) or
			("Age when patient received 1st dose" >= 9 and P.doseNumber = 2)
			))



/*
 * Rule: Should vaccinate patient with MenA conjugate vaccine (5µg) non-recurring booster 3-5 years after last shot
 * Annotations:
 * 	 - Provide Meningococcal immunizations – using the "MenA conjugate vaccine (5µg) immunization – Single non-recurring BOOSTER" schedule (1 dose booster)
 * Outputs:
 * 	 - Immunize Patient for Meningococcal - Non-recurring Booster
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (((((("Patient has completed Meningococcal primary series" = true) and ("Date last Meningococcal dose given" >= "3 years" = true)) and ("Date last Meningococcal dose given" <= "5 years" = true)) and ("Type of last Meningococcal dose" = "MenA conjugate vaccine (5µg)")) and ("Individual has a continued high risk of exposure (including health workers)" = true)) and ("Region recommends Meningococcal vaccination" = true))
 */
define "Should vaccinate patient with MenA conjugate vaccine (5µg) non-recurring booster 3-5 years after last shot":
	(((((("Patient has completed MenA primary series") and ("Date last Meningococcal dose given >= 3 years")) and ("Date last Meningococcal dose given <= 5 years")) and ("Type of last Meningococcal dose" in IMMZc."MenA conjugate vaccine (5µg)")) and ("Individual has a continued high risk of exposure (including health workers)")) and ("Region recommends Meningococcal vaccination"))
	and "Patient Has Not Received MenA Booster"

/*
 * Rule: Should vaccinate patient with monovalent MenC conjugate vaccine because no dose on 1 dose scheme
 * Annotations:
 * 	 - Provide Meningococcal immunizations – using the "monovalent MenC conjugate vaccine immunization – NO PREVIOUS" schedule (1 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Meningococcal - No Doses
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ((("Meningococcal vaccine immunization history" = "No-doses") and ("Current Patient Age in Months" >= 12)) and ("Region recommends Meningococcal vaccination" = true))
 */
define "Should vaccinate patient with monovalent MenC conjugate vaccine because no dose on 1 dose scheme":
	((("No-doses") and ("Current Patient Age in Months" >= 12)) and ("Region recommends Meningococcal vaccination"))

/*
 * Rule: Should vaccinate patient with monovalent MenC conjugate vaccine because no dose on 2 dose scheme
 * Annotations:
 * 	 - Provide Meningococcal immunizations – using the "monovalent MenC conjugate vaccine immunization – NO PREVIOUS" schedule (2 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Meningococcal - No Doses
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (((("Meningococcal vaccine immunization history" = "No-doses") and ("Current Patient Age in Months" >= 2)) and ("Current Patient Age in Months" <= 11)) and ("Region recommends Meningococcal vaccination" = true))
 */
define "Should vaccinate patient with monovalent MenC conjugate vaccine because no dose on 2 dose scheme":
	(((("No-doses") and ("Current Patient Age in Months" >= 2)) and ("Current Patient Age in Months" <= 11)) and ("Region recommends Meningococcal vaccination"))

/* 
 * @dataElement monovalent MenC conjugate
 */
define "monovalent MenC conjugate":
	IMMZc."monovalent MenC conjugate"


/*
 * Rule: Should vaccinate patient with monovalent MenC conjugate vaccine because 1 dose on 2 dose scheme
 * Annotations:
 * 	 - Provide Meningococcal immunizations – using the "monovalent MenC conjugate vaccine immunization – 1 PREVIOUS" schedule (2 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Meningococcal - 1 Dose
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ((((("Meningococcal vaccine immunization history" = "1 dose") and ("Current Patient Age in Months" >= 2)) and ("Current Patient Age in Months" <= 11)) and ("Date last Meningococcal dose given" >= "8 weeks" = true)) and ("Type of last Meningococcal dose" = "monovalent MenC conjugate"))
 */
define "Should vaccinate patient with monovalent MenC conjugate vaccine because 1 dose on 2 dose scheme":
	((((("1 dose") and ("Current Patient Age in Months" >= 2)) and ("Current Patient Age in Months" <= 11)) and ("Date last Meningococcal dose given >= 8 weeks")) and ("Type of last Meningococcal dose" in IMMZc."monovalent MenC conjugate"))

/* 
 * @dataElement 2 doses
 */
define "2 doses":
	IMMZCom."Number of Meningococcal Doses Administered to Patient" = 2

/* 
 * @dataElement Date last Meningococcal dose given >= 1 year
 */
define "Date last Meningococcal dose given >= 1 year":
	IMMZCom."Date last Meningococcal dose Administered to Patient" equal 1 'years' before Today()
	or IMMZCom."Date last Meningococcal dose Administered to Patient" more than 1 'years' before Today()

/* 
 * @dataElement Age when patient received 1st dose
 */
define "Age when patient received 1st dose":
	AgeInMonthsAt(First(IMMZCom."Meningococcal Doses Administered to Patient" I
		where (singleton from I.protocolApplied).doseNumber = 1
		return I.occurrence)) // TODO: Define this

/* 
 * @dataElement 2 months
 */
define "2 months":
	2 'months'

/* 
 * @dataElement 11 months
 */
define "11 months":
	11 'months'

/**
 * @dataElement Patient has received dose 3 (booster) if beween 2 and 11 months or dose 2 (booster) if > 12 months
 */
define "Patient Has Not Received 1st MenC Booster":
	not exists(
		IMMZCom."Meningococcal Doses Administered to Patient" I 
		where I.vaccineCode in IMMZc."monovalent MenC conjugate" 
		and exists(I.protocolApplied P 
			where ("Age when patient received 1st dose" between "2 months" and "11 months" and P.doseNumber = 3) or
			("Age when patient received 1st dose" > "11 months" and P.doseNumber = 2)
			))


/**
 * @dataElement Patient has received dose 3 (booster) if beween 2 and 11 months or dose 2 (booster) if > 12 months
 */
define "Patient has completed MenC primary series":
	not exists(
		IMMZCom."Meningococcal Doses Administered to Patient" I 
		where I.vaccineCode in IMMZc."monovalent MenC conjugate" 
		and exists(I.protocolApplied P 
			where ("Age when patient received 1st dose" between "2 months" and "11 months" and P.doseNumber = 2) or
			("Age when patient received 1st dose" > "11 months" and P.doseNumber = 1)
			))

/*
 * Rule: Should vaccinate patient with monovalent MenC conjugate vaccine non-recurring booster because 1 year after last shot
 * Annotations:
 * 	 - Provide Meningococcal immunizations – using the "monovalent MenC conjugate vaccine immunization – Single non-recurring BOOSTER" schedule (1 dose booster)
 * Outputs:
 * 	 - Immunize Patient for Meningococcal - Non-recurring Booster
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (((((("Meningococcal vaccine immunization history" = "2 doses") and ("Date last Meningococcal dose given" >= "1 year" = true)) and ("Type of last Meningococcal dose" = "monovalent MenC conjugate")) and ("Age when patient received 1st dose" >= "2 months")) and ("Age when patient received 1st dose" <= "11 months")) and ("Region recommends Meningococcal vaccination" = true))
 */
define "Should vaccinate patient with monovalent MenC conjugate vaccine non-recurring booster because 1 year after last shot":
	(((((("2 doses") and ("Date last Meningococcal dose given >= 1 year")) and ("Type of last Meningococcal dose" in IMMZc."monovalent MenC conjugate")) and ("Age when patient received 1st dose" >= "2 months")) and ("Age when patient received 1st dose" <= "11 months")) and ("Region recommends Meningococcal vaccination"))
	and "Patient Has Not Received 1st MenC Booster"

/**
 * @dataElement Patient has received dose 3 (booster) if beween 2 and 11 months or dose 2 (booster) if > 12 months
 */
define "Patient Has Not Received 2nd MenC Booster":
	not exists(
		IMMZCom."Meningococcal Doses Administered to Patient" I 
		where I.vaccineCode in IMMZc."monovalent MenC conjugate" 
		and exists(I.protocolApplied P 
			where ("Age when patient received 1st dose" between "2 months" and "11 months" and P.doseNumber = 4) or
			("Age when patient received 1st dose" > "11 months" and P.doseNumber = 3)
			))

/*
 * Rule: Should vaccinate patient with monovalent MenC conjugate non-recurring booster 3-5 years after last shot
 * Annotations:
 * 	 - Provide Meningococcal immunizations – using the "monovalent MenC conjugate immunization – Single non-recurring BOOSTER" schedule (1 dose booster)
 * Outputs:
 * 	 - Immunize Patient for Meningococcal - Non-recurring Booster
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (((((("Patient has completed Meningococcal primary series" = true) and ("Date last Meningococcal dose given" >= "3 years" = true)) and ("Date last Meningococcal dose given" <= "5 years" = true)) and ("Type of last Meningococcal dose" = "monovalent MenC conjugate")) and ("Individual has a continued high risk of exposure (including health workers)" = true)) and ("Region recommends Meningococcal vaccination" = true))
 */
define "Should vaccinate patient with monovalent MenC conjugate non-recurring booster 3-5 years after last shot":
	(((((("Patient has completed MenC primary series" = true) and ("Date last Meningococcal dose given >= 3 years")) and ("Date last Meningococcal dose given <= 5 years")) and ("Type of last Meningococcal dose" in IMMZc."monovalent MenC conjugate")) and ("Individual has a continued high risk of exposure (including health workers)")) and ("Region recommends Meningococcal vaccination"))
	and "Patient Has Not Received 2nd MenC Booster"

/* 
 * @dataElement Current Patient Age in Years
 */
define "Current Patient Age in Years":
	IMMZCom."Current Patient Age In Years"

/*
 * Rule: Should vaccinate patient with Quadrivalent conjugate vaccines (A,C,W135,Y-D and A,C,W135,Y-CRM) because no dose on 1 dose scheme
 * Annotations:
 * 	 - Provide Meningococcal immunizations – using the "Quadrivalent conjugate vaccines (A,C,W135,Y-D and A,C,W135,Y-CRM) immunization – NO PREVIOUS" schedule (1 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Meningococcal - No Doses
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ((("Meningococcal vaccine immunization history" = "No-doses") and ("Current Patient Age in Years" >= 2)) and ("Region recommends Meningococcal vaccination" = true))
 */
define "Should vaccinate patient with Quadrivalent conjugate vaccines (A,C,W135,Y-D and A,C,W135,Y-CRM) because no dose on 1 dose scheme":
	((("No-doses") and ("Current Patient Age in Years" >= 2)) and ("Region recommends Meningococcal vaccination"))

/*
 * Rule: Should vaccinate patient with Quadrivalent conjugate vaccines (A,C,W135,Y-D) because no dose on 2 dose scheme
 * Annotations:
 * 	 - Provide Meningococcal immunizations – using the "Quadrivalent conjugate vaccines (A,C,W135,Y-D) immunization – NO PREVIOUS" schedule (2 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Meningococcal - No Doses
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (((("Meningococcal vaccine immunization history" = "No-doses") and ("Current Patient Age in Months" >= 9)) and ("Current Patient Age in Months" <= 23)) and ("Region recommends Meningococcal vaccination" = true))
 */
define "Should vaccinate patient with Quadrivalent conjugate vaccines (A,C,W135,Y-D) because no dose on 2 dose scheme":
	(((("No-doses") and ("Current Patient Age in Months" >= 9)) and ("Current Patient Age in Months" <= 23)) and ("Region recommends Meningococcal vaccination"))

/* 
 * @dataElement Date last Meningococcal dose given 
 */
define "Date last Meningococcal dose given":
	 IMMZCom."Date last Meningococcal dose Administered to Patient"

/* 
 * @dataElement 12 weeks
 */
define "12 weeks":
	12 'weeks'

/* 
 * @dataElement Date last Meningococcal dose given >= 12 weeks
 */
define "Date last Meningococcal dose given >= 12 weeks":
	IMMZCom."Date last Meningococcal dose Administered to Patient" equal 12 'weeks' before Today()
	or IMMZCom."Date last Meningococcal dose Administered to Patient" more than 12 'weeks' before Today()
/* 
 * @dataElement Quadrivalent conjugate
 */
define "Quadrivalent conjugate":
	IMMZc."Quadrivalent conjugate"

/*
 * Rule: Should vaccinate patient with Quadrivalent conjugate vaccines (A,C,W135,Y-D) on 2 dose scheme
 * Annotations:
 * 	 - Provide Meningococcal immunizations – using the "Quadrivalent conjugate vaccines (A,C,W135,Y-D) immunization – 1 PREVIOUS" schedule (2 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Meningococcal - 1 Dose
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ((("Meningococcal vaccine immunization history" = "1 dose") and ("Date last Meningococcal dose given " >= "12 weeks")) and ("Type of last Meningococcal dose" = "Quadrivalent conjugate"))
 */
define "Should vaccinate patient with Quadrivalent conjugate vaccines (A,C,W135,Y-D) on 2 dose scheme":
	((("1 dose") and ("Date last Meningococcal dose given >= 12 weeks")) and ("Type of last Meningococcal dose" in IMMZc."Quadrivalent conjugate"))

/** 
 * @dataElement 9 months
*/
define "9 months":
	9 month

	
/** 
 * @dataElement 23 months
*/
define "23 months":
	23 month

/**
 * @dataElement 2 years
 */
define "2 years":
	2 year

/**
 * @dataElement Patient has received dose 3 (booster) if beween 2 and 11 months or dose 2 (booster) if > 12 months
 */
define "Patient Has Not Received 1st Quadrivalent conjugate Booster":
	not exists(
		IMMZCom."Meningococcal Doses Administered to Patient" I 
		where I.vaccineCode in IMMZc."Quadrivalent conjugate" 
		and exists(I.protocolApplied P 
			where ("Age when patient received 1st dose" between "9 months" and "23 months" and P.doseNumber = 3) or
			("Age when patient received 1st dose" >= "2 years" and P.doseNumber = 2)
			))


/**
 * @dataElement Patient has received dose 3 (booster) if beween 2 and 11 months or dose 2 (booster) if > 12 months
 */
define "Patient has completed Quadrivalent conjugate primary series":
	not exists(
		IMMZCom."Meningococcal Doses Administered to Patient" I 
		where I.vaccineCode in IMMZc."Quadrivalent conjugate" 
		and exists(I.protocolApplied P 
			where ("Age when patient received 1st dose" between "9 months" and "23 months" and P.doseNumber = 2) or
			("Age when patient received 1st dose" >= "2 years" and P.doseNumber = 1)
			))


/*
 * Rule: Should vaccinate patient with Quadrivalent conjugate vaccines (A,C,W135,Y-D) non-recurring booster 3-5 years after last shot
 * Annotations:
 * 	 - Provide Meningococcal immunizations – using the "Quadrivalent conjugate vaccines (A,C,W135,Y-D) immunization – Single non-recurring BOOSTER" schedule (1 dose booster)
 * Outputs:
 * 	 - Immunize Patient for Meningococcal - Non-recurring Booster
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (((((("Patient has completed Meningococcal primary series" = true) and ("Date last Meningococcal dose given" >= "3 years" = true)) and ("Date last Meningococcal dose given" <= "5 years" = true)) and ("Type of last Meningococcal dose" = "Quadrivalent conjugate")) and ("Individual has a continued high risk of exposure (including health workers)" = true)) and ("Region recommends Meningococcal vaccination" = true))
 */
define "Should vaccinate patient with Quadrivalent conjugate vaccines (A,C,W135,Y-D) non-recurring booster 3-5 years after last shot":
	(((((("Patient has completed Quadrivalent conjugate primary series") and ("Date last Meningococcal dose given >= 3 years")) and ("Date last Meningococcal dose given <= 5 years")) and ("Type of last Meningococcal dose" in IMMZc."Quadrivalent conjugate")) and ("Individual has a continued high risk of exposure (including health workers)")) and ("Region recommends Meningococcal vaccination"))
	and "Patient Has Not Received 1st Quadrivalent conjugate Booster"
