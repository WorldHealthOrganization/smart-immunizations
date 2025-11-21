/*
 * Library: IMMZD2DTMeasles (IMMZ.D2.DT.Measles)
 * Rule: If the child or patient has not been given MCV1 (at 9 months) and MCV2 (between 15-18 months) vaccination 
 * Trigger: Patient has never received measles vaccination
 */
library IMMZD2DTMeasles
// Start Skeleton CQL
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1'
include IMMZCommon called IMMZCom
include IMMZConcepts called IMMZc
include IMMZConfig called IMMZCon
include IMMZVaccineLibrary called IMMZvl
include FHIRCommon called FC

parameter "Individual is at high risk of contracting measles" Boolean default false
parameter "Individual is travelling to a country experiencing measles outbreaks" Boolean default false
parameter "Individual is known to be HIV-infected or exposed" Boolean default false
parameter "Immune reconstitution was achieved" Boolean default false

// End Skeleton CQL
context Patient


/**
 * @dataElement Should provision MCV Dose
 */
define "Provision of the MCV dose":
	//not("MCV Dose Contraindicated") and 
  if exists(IMMZCom."Live Attenuated Vaccines") then IMMZCom."Date of Latest Live Attenuated Vaccine" + 4 weeks <= Now() else true
	and (
		"Second MCV Dose Administered to Patient" is null 
		//or (
		//	"Needs Supplementary MCV Dose" and "Supplementary MCV Dose Administered to Patient" is null
		//)
	)
	//and IMMZCom."Current Patient Age In Years" < 15

define "Schedule Due Date for MCV dose":
	if IMMZCom."Date of Latest Live Attenuated Vaccine" is null or "Expected Due Date for MCV dose" > IMMZCom."Date of Latest Live Attenuated Vaccine" + 4 weeks
	then "Expected Due Date for MCV dose"
	else IMMZCom."Date of Latest Live Attenuated Vaccine" + 4 weeks

define "Expected Due Date for MCV dose":
	case 
	//when "Needs Zero MCV Dose"
	//	then Patient.birthDate + 6 months
	when "No MCV Doses Administered to Patient"
		then if "High Transmission Setting" then Patient.birthDate + 9 months else Patient.birthDate + 12 months
	//when "Second MCV Dose Administered to Patient" is not null and "Needs Supplementary MCV Dose"
	//	then "Date Second MCV Dose Administered to Patient" + 4 weeks
	when "First MCV Dose Administered to Patient" is not null
		then Patient.birthDate + 15 months
	else null
	end


define "MCV Next Dose Number":
	//if "Needs Zero MCV Dose" or "Zero MCV Dose Administered to Patient" is not null
	//then 
	//	case 
	//	when "Second MCV Dose Administered to Patient" is not null and "Needs Supplementary MCV Dose" then 'booster'
	//	when "First MCV Dose Administered to Patient" is not null then 2
	//	when "Zero MCV Dose Administered to Patient" is not null then 1
	//	else 'zero'
	//	end
	//else
		case 
		//when "Second MCV Dose Administered to Patient" is not null and "Needs Supplementary MCV Dose" then 'booster'
		when "First MCV Dose Administered to Patient" is not null then 2
		else 1
		end

define "Number of Required MCV Doses":
	2

define "Expiration Date for MCV dose":
	//case
	//when "Needs Zero MCV Dose"
	//	then Patient.birthDate + 9 months
	//else null
	//end
	null

define "Overdue Date for MCV dose":
	null

define "Date Last Valid MCV Dose":
	case 
	//when "Supplementary MCV Dose Administered to Patient" is not null then "Date Supplementary MCV Dose Administered to Patient"
	when "Second MCV Dose Administered to Patient" is not null then "Date Second MCV Dose Administered to Patient"
	when "First MCV Dose Administered to Patient" is not null then "Date First MCV Dose Administered to Patient"
	//when "Zero MCV Dose Administered to Patient" is not null then "Date Zero MCV Dose Administered to Patient"
	else null
	end

define "Should vaccinate patient for MCV":
	"Provision of the MCV dose" and ("Schedule Due Date for MCV dose" <= (Now()))

define "MCV Dose Contraindicated":
	IMMZCom."Pregnant"
	or exists(IMMZCom."Severely Immunosuppressed Condition")

define "Contraindication Evaluation of the MCV dose":
	not("MCV Dose Contraindicated") and (
		exists(IMMZCom."History of Anaphylactic Reactions Condition")
		or exists(IMMZCom."Severe Allergic Reactions Condition")
		or exists(IMMZCom."Symptomatic HIV Infection Condition")
	)
	
/**
 * @dataElement MCV containing Doses Administered to Patient
 */
define "MCV Doses Administered to Patient":
  IMMZCom."Doses Administered to Patient" I
  where
    I.vaccineCode in IMMZc."MCV Vaccine"

/**
 * @define The patient has no MCV doses administered
 */
define "No MCV Doses Administered to Patient":
  not exists("MCV Doses Administered to Patient")


/** 
 * @dataElement Date of last MCV dose administration
 */
define "Date Last MCV Dose Administered to Patient":
  date from (First("MCV Doses Administered to Patient").occurrence as FHIR.dateTime)

/**
 * @define The number of MCV doses administerd to the patient
 */
define "Number of MCV Doses Administered to Patient":
  Count("MCV Doses Administered to Patient")

define "High Transmission Setting":
	(
		IMMZCon."Country currently has a measles outbreak" or
		IMMZCon."In a setting where the risk of measles among infants < 9 months of age remains high" or
		IMMZCon."Population is in conflict zones internally displaced populations and refugees" or 
		"Individual is at high risk of contracting measles" or
		"Individual is travelling to a country experiencing measles outbreaks" or
		"Individual is known to be HIV-infected or exposed"
	)

/*
define "Needs Zero MCV Dose":
	"No MCV Doses Administered to Patient" 
	  and (
			if "High Transmission Setting" 
			then IMMZCom."Current Patient Age In Months" between 6 and 9 
			else IMMZCom."Current Patient Age In Months" between 6 and 12
		)
		and IMMZCom."Date of Latest Live Attenuated Vaccine" +4 weeks <= Now()
		and 
			(
				(
					IMMZCom."HIV Status" in IMMZc."HIV status - HIV positive Choices" 
					  and (
					    not(IMMZCom."Patient is receiving HAART")
							or "Immune reconstitution was achieved"
						)
				)
				or "Individual is known to be HIV-infected or exposed"
			)

define "Needs Supplementary MCV Dose":
	IMMZCom."HIV Status" in IMMZc."HIV status - HIV positive Choices" 
	and IMMZCom."Current Patient Age In Years" < 15
	and IMMZCom."Patient is receiving HAART"
	and "Immune reconstitution was achieved" 
	and "Supplementary MCV Dose Administered to Patient" is null
	and IMMZCom."Date of Latest Live Attenuated Vaccine" +4 weeks <= Now()
*/

/**
 * @dataElement Zero MCV dose given to Patient
 */
//define "Zero MCV Dose Administered to Patient":
//	Last("MCV Doses Administered to Patient" I where I.occurrence between Patient.birthDate + 6 months and Patient.birthDate + 9 months)

/**
 * @dataElement Date Zero MCV dose administered
 */
//define "Date Zero MCV Dose Administered to Patient":
//  date from ("Zero MCV Dose Administered to Patient".occurrence as FHIR.dateTime)

/**
 * @dataElement First MCV dose given to Patient
 */
define "First MCV Dose Administered to Patient":
	if "High Transmission Setting"
	then Last("MCV Doses Administered to Patient" I where I.occurrence after Patient.birthDate + 9 months)
	else Last("MCV Doses Administered to Patient" I where I.occurrence after Patient.birthDate + 12 months)
/**
 * @dataElement Date first MCV dose administered
 */
define "Date First MCV Dose Administered to Patient":
  date from ("First MCV Dose Administered to Patient".occurrence as FHIR.dateTime)

/**
 * @dataElement "Second MCV Dose Administered to Patient"
 * only valid if 4 weeks after first dose
 */
define "Second MCV Dose Administered to Patient":
  Last("MCV Doses Administered to Patient" I 
		where I.occurrence after "Date First MCV Dose Administered to Patient" + 4 weeks 
			and I.occurrence after Patient.birthDate + 15 months)

/**
 * @dataElement Date second MCV dose administered
 */
define "Date Second MCV Dose Administered to Patient":
  date from ("Second MCV Dose Administered to Patient".occurrence as FHIR.dateTime)

/**
 * @dataElement "Second MCV Dose Administered to Patient"
 * only valid if 4 weeks after first dose
 */
//define "Supplementary MCV Dose Administered to Patient":
//  Last("MCV Doses Administered to Patient" I where I.occurrence after "Date Second MCV Dose Administered to Patient")

/**
 * @dataElement Date second MCV dose administered
 */
//define "Date Supplementary MCV Dose Administered to Patient":
//  date from ("Supplementary MCV Dose Administered to Patient".occurrence as FHIR.dateTime)


define "Draft Medication Request for MCV dose":
	[MedicationRequest] MR where MR.status = 'draft' and MR.intent = 'proposal'
	sort by date from (authoredOn as FHIR.dateTime) desc

define "Draft Medication Request ID for MCV dose":
	First("Draft Medication Request for MCV dose").id

/*
 * Rule: Should vaccinate patient for measles (Supplementary) because no doses
 * Annotations:
 * 	 - Provide measles immunization Supplementary dose - Using the "MCV0 Vaccine immunization - NO Previous" schedule (Supplementary dose zero)
 * 	 - 
 * Outputs:
 * 	 - Immunize patient for Measles - No doses
 * 	 - 
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * 	- 
 * Logic:
 *	 ((((((((((("Measles vaccine immunization history" = "No-doses" = true) and ("Current Patient Age in Months" > 6)) and ("HIV Status" = "Positive" = true)) and ("Current Patient Age in Months" < 9)) and ("Patient is receiving HAART" = false)) or (((("Measles vaccine immunization history" = "No-doses" = true) and ("Current Patient Age in Months" > 6)) and ("Country currently has a measles outbreak" = true)) and ("Current Patient Age in Months" < 9))) or (((("Measles vaccine immunization history" = "No-doses" = true) and ("Current Patient Age in Months" > 6)) and ("In a setting where the risk of measles among infants < 9 months of age remains high" = true)) and ("Current Patient Age in Months" < 9))) or (((("Measles vaccine immunization history" = "No-doses" = true) and ("Current Patient Age in Months" > 6)) and ("Population is in conflict zones internally displaced populations and refugees" = true)) and ("Current Patient Age in Months" < 9))) or (((("Measles vaccine immunization history" = "No-doses" = true) and ("Current Patient Age in Months" > 6)) and ("Individual is at high risk of contracting measles (e.g. contacts of known measles cases or in settings with increased risk of exposure during outbreaks suck as day-care facilities" = true)) and ("Current Patient Age in Months" < 9))) or (((("Measles vaccine immunization history" = "No-doses" = true) and ("Current Patient Age in Months" > 6)) and ("Individual is travelling to a country experiencing measles outbreaks" = true)) and ("Current Patient Age in Months" < 9))) or (((("Measles vaccine immunization history" = "No-doses" = true) and ("Current Patient Age in Months" > 6)) and ("Individual is known to be HIV-infected or exposed (i.e. born to an HIV-infected woman" = true)) and ("Current Patient Age in Months" < 9)))
 */
 /*
define "Should vaccinate patient for measles (Supplementary) because no doses":
	IMMZCom."No MCV Doses Administered to Patient" and 
	(
		IMMZCom."Current Patient Age In Months" between 6 and 9 and
		(
			(
				IMMZCom."HIV Status" in IMMZc."HIV status - HIV positive Choices" and
				not(IMMZCom."Patient is receiving HAART")
			)
			or 
			(
				IMMZCon."Country currently has a measles outbreak" or
				IMMZCon."In a setting where the risk of measles among infants < 9 months of age remains high" or
				IMMZCon."Population is in conflict zones internally displaced populations and refugees" or 
				"Individual is at high risk of contracting measles" or
				"Individual is travelling to a country experiencing measles outbreaks" or
				"Individual is known to be HIV-infected or exposed"
			)
		)
	)
*/

/*
 * Rule: Should vaccinate patient for measles because no doses in a 2 dose scheme
 * Annotations:
 * 	 - Provide measles immunization 1st dose - Using the "MCV1 Vaccine immunization - NO Previous" schedule (2 doses scheme)
 * 	 - 
 * Outputs:
 * 	 - Immunize patient for Measles - No doses
 * 	 - 
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * 	- 
 * Logic:
 *	 ((((("Measles vaccine immunization history" = "No-doses" = true) and ("Current Patient Age in Months" >= 9)) and ("In a setting where there is high transmission of Measles" = true)) and ("Pregnancy Status" = false)) or ((("Measles vaccine immunization history" = "No-doses" = true) and ("Current Patient Age in Months" >= 12)) and ("In a setting where there is low transmission of Measles" = true)))
 */
 /*
define "Should vaccinate patient for measles because no doses in a 2 dose scheme":
	IMMZCom."No MCV Doses Administered to Patient" and not(IMMZCom."Pregnant") and
	(
		(
			IMMZCom."Current Patient Age In Months" >= 9 and
			IMMZCon."In a setting where there is high transmission of Measles"
		) or (
			IMMZCom."Current Patient Age In Months" >= 12 and
			IMMZCon."In a setting where there is low transmission of Measles"
		)
	)
*/

/*
 * Rule: Should vaccinate patient for measles because 1 dose in a 2 dose scheme
 * Annotations:
 * 	 - Provide measles immunization 1st dose - Using the "MCV2 Vaccine immunization - 1 Previous" schedule (2 doses scheme)
 * Outputs:
 * 	 - Immunize patient for Measles - 1 Dose
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 (((("Measles vaccine immunization history" = "1-dose" = true) and ("Current Patient Age in Months" >= 15)) and ("Date last Measles dose given" >= "4 weeks")) and ("Pregnancy Status" = false))
 */
 /*
define "Should vaccinate patient for measles because 1 dose in a 2 dose scheme":
	IMMZCom."Number of MCV Doses Administered to Patient" = 1 and
	IMMZCom."Current Patient Age In Months" >= 15 and
	IMMZCom."Date Last MCV Dose Administered to Patient" more than 4 'week' before Today() and
	not (IMMZCom."Pregnant")
*/

/*
 * Rule: Should vaccinate patient for measles Supplementary dose because HIV positive and started HAART
 * Annotations:
 * 	 - Provide measles immunization Supplementary dose - Using the "MCV Vaccine immunization" schedule (additional Supplementary dose)
 * 	 - 
 * Outputs:
 * 	 - Immunize patient for Measles Supplementary
 * 	 - 
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * 	- 
 * Logic:
 *	 ((((("HIV Status" = "Positive" = true) and ("Patient is receiving HAART" = true)) and ("Immune reconstitution was achieved" = true)) and ("Pregnancy Status" = false)) or (((((("HIV Status" = "Positive" = true) and ("Patient is receiving HAART" = true)) and ("CD4+ T Lymphocyte monitoring is available" = false)) and ("Time since HAART was initiated in Months" >= 6)) and ("Time since HAART was initiated in Months" <= 12)) and ("Pregnancy Status" = false)))
 */
 /*
define "Should vaccinate patient for measles Supplementary dose because HIV positive and started HAART":
	not(IMMZCom."Pregnant") and
	IMMZCom."HIV Status" in IMMZc."HIV status - HIV positive Choices" and
	IMMZCom."Patient is receiving HAART" and 
	(

		"Immune reconstitution was achieved" or
		not exists(IMMZCom."Observed CD4% Measurements")
		and IMMZCom."Patient HAART Treatment Started 6 to 12 Months Ago"
	)
*/
