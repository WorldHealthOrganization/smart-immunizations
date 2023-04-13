/*
 * Library: IMMZDT06 (IMMZ.DT.06.Pneumococcal)
 * Rule: If child or person has not been vaccinated, give Pneumococcal vaccine minimum age 6 weeks old 
 * Trigger: Patient has never received PCV vaccination
 */
library IMMZDT0602
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
 * Expressions for the 3 primary dose Schedule
 */
define "Provision of the Pneumococcal dose":
	"Third Pneumococcal Dose Administered to Patient" is null

define "Schedule Due Date for Pneumococcal dose":
	if Com."No Pneumococcal Doses Administered to Patient"
	then Patient.birthDate + 6 weeks
	else "Date Last Valid Pneumococcal Dose" + 4 weeks

define "Overdue Date for Pneumococcal dose":
  null

define "Expiration Date for Pneumococcal dose":
	null

define "Pneumococcal Next Dose Number":
	case
	when "Second Pneumococcal Dose Administered to Patient" is not null then 3
	when "First Pneumococcal Dose Administered to Patient" is not null then 2
	else 1
	end

define "Number of Required Pneumococcal Doses":
	3

define "Date Last Valid Pneumococcal Dose":
	case
		when "Third Pneumococcal Dose Administered to Patient" is not null 
			then "Date Third Pneumococcal Dose Administered to Patient"
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
		where I.occurrence after "Date First Pneumococcal Dose Administered to Patient" + 4 weeks)

/**
 * @dataElement Date Second Pneumococcal dose administered
 */
define "Date Second Pneumococcal Dose Administered to Patient":
  date from ("Second Pneumococcal Dose Administered to Patient".occurrence as FHIR.dateTime)

/**
 * @dataElement "Third Pneumococcal Dose Administered to Patient"
 */
define "Third Pneumococcal Dose Administered to Patient":
  Last(Com."Pneumococcal Doses Administered to Patient" I 
		where I.occurrence after "Date Second Pneumococcal Dose Administered to Patient" + 4 weeks)

/**
 * @dataElement Date Third Pneumococcal dose administered
 */
define "Date Third Pneumococcal Dose Administered to Patient":
  date from ("Third Pneumococcal Dose Administered to Patient".occurrence as FHIR.dateTime)