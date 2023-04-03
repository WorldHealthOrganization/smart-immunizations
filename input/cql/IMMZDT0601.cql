/*
 * Library: IMMZDT06 (IMMZ.DT.06.Pneumococcal)
 * Rule: If child or person has not been vaccinated, give Pneumococcal vaccine minimum age 6 weeks old 
 * Trigger: Patient has never received PCV vaccination
 */
library IMMZDT0601
// Start Skeleton CQL
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1'
include IMMZCommon called IMMZCom
include IMMZConcepts called IMMZc
include IMMZConfig called IMMZConf
include IMMZVaccineLibrary called IMMZvl
include IMMZDT06Common called Com
// End Skeleton CQL
context Patient


/*
 * Expressions for the 2 primary dose + 1 booster Schedule
 */
define "Provision of the Pneumococcal dose":
	"Booster Pneumococcal Dose Administered to Patient" is null

define "Schedule Due Date for Pneumococcal dose":
	ToDateTime(
		case
		when Com."No Pneumococcal Doses Administered to Patient"
			then Patient.birthDate + 6 weeks
		when "Booster Pneumococcal Dose Administered to Patient" is not null
			then null
		when "Second Pneumococcal Dose Administered to Patient" is not null
			then Patient.birthDate + 9 months
		else "Date Last Valid Pneumococcal Dose" + 8 weeks
		end
	)

define "Overdue Date for Pneumococcal dose":
  ToDateTime(
		if "Second Pneumococcal Dose Administered to Patient" is not null
		then Patient.birthDate + 18 months
		else null
	)

define "Expiration Date for Pneumococcal dose":
	null

define "Pneumococcal Next Dose Number":
	case
	when "Second Pneumococcal Dose Administered to Patient" is not null then 'booster'
	when "First Pneumococcal Dose Administered to Patient" is not null then 2
	else 1
	end

define "Number of Required Pneumococcal Doses":
	if "Second Pneumococcal Dose Administered to Patient" is not null
	then 'booster'
	else 2

define "Date Last Valid Pneumococcal Dose":
	case
		when "Booster Pneumococcal Dose Administered to Patient" is not null 
			then "Date Booster Pneumococcal Dose Administered to Patient"		
		when "Second Pneumococcal Dose Administered to Patient" is not null 
			then "Date Second Pneumococcal Dose Administered to Patient"
		when "First Pneumococcal Dose Administered to Patient" is not null 
			then "Date First Pneumococcal Dose Administered to Patient"
		else null
	end

/**
 * @dataElement "First Pneumococcal Dose Administered to Patient"
 */
define "First Pneumococcal Dose Administered to Patient":
  Last(Com."Pneumococcal Doses Administered to Patient" I 
		where I.occurrence after Patient.birthDate + 6 weeks)

/**
 * @dataElement Date First Pneumococcal dose administered
 */
define "Date First Pneumococcal Dose Administered to Patient":
  date from ("First Pneumococcal Dose Administered to Patient".occurrence as FHIR.dateTime)

/**
 * @dataElement "Second Pneumococcal Dose Administered to Patient"
 */
define "Second Pneumococcal Dose Administered to Patient":
  Last(Com."Pneumococcal Doses Administered to Patient" I 
		where I.occurrence after "Date First Pneumococcal Dose Administered to Patient" + 8 weeks)

/**
 * @dataElement Date Second Pneumococcal dose administered
 */
define "Date Second Pneumococcal Dose Administered to Patient":
  date from ("Second Pneumococcal Dose Administered to Patient".occurrence as FHIR.dateTime)

/**
 * @dataElement "Booster Pneumococcal Dose Administered to Patient"
 */
define "Booster Pneumococcal Dose Administered to Patient":
  Last(Com."Pneumococcal Doses Administered to Patient" I 
		where I.occurrence after Patient.birthDate + 9 months)

/**
 * @dataElement Date Booster Pneumococcal dose administered
 */
define "Date Booster Pneumococcal Dose Administered to Patient":
  date from ("Booster Pneumococcal Dose Administered to Patient".occurrence as FHIR.dateTime)