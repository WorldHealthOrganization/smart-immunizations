/*
 * Library: IMMZDT17 (IMMZ.DT.17.HepatitisA)
 * Rule: If child or person has not been vaccinated, give Hepatitis A vaccine at 1 year of age 
 * Trigger: Patient has never had Hepatits A vaccination
 */
library IMMZDT17
// Start Skeleton CQL
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1'
include IMMZCommon called IMMZCom
include IMMZConfig called IMMZCon
include IMMZConcepts called IMMZc
parameter "Individual has a substantial risk of contracting Hepatitis A" Boolean default false

// End Skeleton CQL
context Patient


/* 
 * @dataElement Hepatitis A vaccine immunization history
 */
define "Hepatitis A vaccine immunization history":
	IMMZCom."HepA Doses Administered to Patient"

/* 
 * @dataElement No-doses
 */
define "No-doses":
	not exists("Hepatitis A vaccine immunization history")

/* 
 * @dataElement Current Patient Age in Years
 */
define "Current Patient Age in Years":
	IMMZCom."Current Patient Age In Years"

/* 
 * @dataElement Country is not highly endemic
 */
define "Country is not highly endemic":
 IMMZCon."Country is not highly endemic for Hepatitis A"

/* 
 * @dataElement Pregnancy Status
 */
define "Pregnancy Status":
	IMMZCom."Pregnant"

/* 
 * @dataElement Immunocompromised
 */
define "Not Immunocompromised":
	not(IMMZCom."Immunocompromised = True")

/* 
 * @dataElement Country is administering a Live attenuated HAV vaccine
 */
define "Country is administering a Live attenuated HAV vaccine":
	IMMZCon."Country is administering a Live attenuated HAV vaccine"

/*
 * Rule: Should vaccinate patient for Hepatitis A because no doses at 1 year old in a 1 dose scheme
 * Annotations:
 * 	 - Provide Hepatitis A immunization – using the "Hepatitis A vaccine immunization – NO PREVIOUS" Live attenuated HAV vaccine schedule (1 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Hepatitis A - No Doses
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (((((("Hepatitis A vaccine immunization history" = "No-doses") and ("Current Patient Age in Years" >= 1)) and ("Country is not highly endemic" = true)) and ("Pregnancy Status" = false)) and ("Immunocompromised" = false)) and ("Country is administering a Live attenuated HAV vaccine" = true))
 */
define "Should vaccinate patient for Hepatitis A because no doses at 1 year old in a 1 dose scheme":
	(((((("No-doses") and ("Current Patient Age in Years" >= 1)) and ("Country is not highly endemic")) and ("Pregnancy Status" = false)) and ("Not Immunocompromised")) and ("Country is administering a Live attenuated HAV vaccine"))

/* 
 * @dataElement Country is administering an Inactivated HAV vaccine
 */
define "Country is administering an Inactivated HAV vaccine":
	IMMZCon."Country is administering an Inactivated HAV vaccine"

/*
 * Rule: Should vaccinate patient for Hepatitis A because no doses at 1 year old in a 2 dose scheme
 * Annotations:
 * 	 - Provide Hepatitis A immunization – using the "Hepatitis A vaccine immunization – NO PREVIOUS" Inactivated HAV vaccine schedule (2 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Hepatitis A - No Doses
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (((("Hepatitis A vaccine immunization history" = "No-doses") and ("Current Patient Age in Years" >= 1)) and ("Country is not highly endemic" = true)) and ("Country is administering an Inactivated HAV vaccine" = true))
 */
define "Should vaccinate patient for Hepatitis A because no doses at 1 year old in a 2 dose scheme":
	(((("No-doses") and ("Current Patient Age in Years" >= 1)) and ("Country is not highly endemic")) and ("Country is administering an Inactivated HAV vaccine"))

/* 
 * @dataElement 1 dose
 */
define "1 dose":
	IMMZCom."Number of HepA Doses Administered to Patient" = 1

/* 
 * @dataElement Date last Hepatitis A dose given >= 6 months
 */
define "Date last Hepatitis A dose given >= 6 months":
	IMMZCom."Date last HepA dose Administered to Patient" equal 6 'months' before Today()
	and IMMZCom."Date last HepA dose Administered to Patient" more than 6 'months' before Today()
    
/* 
 * @dataElement Date last Hepatitis A dose given <= 5 years
 */
define "Date last Hepatitis A dose given <= 5 years":
	IMMZCom."Date last HepA dose Administered to Patient" equal 5 'years' before Today()
	and IMMZCom."Date last HepA dose Administered to Patient" less than 5 'years' before Today()

/* 
 * @dataElement Type of last Hepatits A dose
 */
define "Type of last Hepatits A dose":
	IMMZCom."Type of last Hepatits A dose Administered to Patient"

/* 
 * @dataElement Inactivated HAV
 */
define "Inactivated HAV":
	IMMZc."Inactivated HAV"

/*
 * Rule: Should vaccinate patient for Hepatitis A because 1 dose given 6 months to 5 years ago in a 2 dose scheme due to high risk or immunocompromised
 * Annotations:
 * 	 - Provide Hepatitis A immunization – using the "Hepatitis A vaccine immunization – 1 PREVIOUS" Inactivated HAV vaccine schedule (2 dose scheme)
 * 	 - 
 * Outputs:
 * 	 - Immunize Patient for Hepatitis A - 1 Dose of Inactivated HAV (high risk or immunocompromised)
 * 	 - 
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * 	- 
 * Logic:
 *	 (((((("Hepatitis A vaccine immunization history" = "1 dose") and ("Date last Hepatitis A dose given" >= "6 months" = true)) and ("Date last Hepatitis A dose given" <= "5 years" = true)) and ("Type of last Hepatits A dose" = "Inactivated HAV")) and ("Individual has a substantial risk of contracting Hepatitis A" = true)) or ((((("Hepatitis A vaccine immunization history" = "1 dose") and ("Date last Hepatitis A dose given" >= "6 months" = true)) and ("Date last Hepatitis A dose given" <= "5 years" = true)) and ("Type of last Hepatits A dose" = "Inactivated HAV")) and ("Immunocompromised" = true)))
 */
define "Should vaccinate patient for Hepatitis A because 1 dose given 6 months to 5 years ago in a 2 dose scheme due to high risk or immunocompromised":
	("1 dose") 
	and ("Date last Hepatitis A dose given >= 6 months")
	and ("Date last Hepatitis A dose given <= 5 years")
	and ("Type of last Hepatits A dose" in IMMZc."Inactivated HAV")
	and (
		("Individual has a substantial risk of contracting Hepatitis A")
		or (IMMZCom."Immunocompromised = True")
	)

