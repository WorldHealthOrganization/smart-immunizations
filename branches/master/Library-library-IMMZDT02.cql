/*
 * Library: IMMZDT02 (IMMZ.DT.02.HepatitisB)
 * Rule: If child or person has not been vaccinated, give Hepatitis B vaccine as soon as possible after birth 
 * Trigger: Patient has never had Hepatitis B vaccination, or missing doses in the vaccination schedule
 */
library IMMZDT02
// Start Skeleton CQL
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1'
include IMMZCommon called IMMZCom
include IMMZConcepts called IMMZc
include IMMZConfig called IMMZCon
include IMMZVaccineLibrary called IMMZvl

// End Skeleton CQL
context Patient

/**
 * @dataElement Should provision HepB Dose
 */
define "Provision of the HepB dose":
	if ( "Third HepB Dose Administered to Patient" is not null and not "HepB Birth Dose Administered to Patient")
		or "Fourth HepB Dose Administered to Patient" is not null
	then false
	else true

define "Schedule Due Date for HepB dose":
	ToDateTime(
		case 
		when "Needs HepB Birth Dose" 
			then Patient.birthDate
		when "No HepB Dose Administered to Patient"
			then Patient.birthDate + 2 weeks
		else "Date Last Valid HepB Dose" + 4 weeks
		end
	)

define "HepB Next Dose Number":
	case 
	when "Third HepB Dose Administered to Patient" is not null then 4
	when "Second HepB Dose Administered to Patient" is not null then 3
	when "First HepB Dose Administered to Patient" is not null then 2
	else 1
	end

define "Expiration Date for HepB dose":
	ToDateTime(
		if "Needs HepB Birth Dose" then Patient.birthDate + 2 weeks
		else null
	)

define "Date Last Valid HepB Dose":
	case 
	when "Fourth HepB Dose Administered to Patient" is not null then "Date Fourth HepB Dose Administered to Patient"
	when "Third HepB Dose Administered to Patient" is not null then "Date Third HepB Dose Administered to Patient"
	when "Second HepB Dose Administered to Patient" is not null then "Date Second HepB Dose Administered to Patient"
	when "First HepB Dose Administered to Patient" is not null then "Date First HepB Dose Administered to Patient"
	else null
	end

define "Should vaccinate patient for HepB":
	"Provision of the HepB dose" and ("Schedule Due Date for HepB dose" <= (Now()))


/**
 * @dataElement Number of doses required for this patient
 * 4 is a birth dose was given for premature birth or low birth weight, 3 if not.
 */
 define "Number of Required HepB Doses":
	if "HepB Birth Dose Administered to Patient" or "Needs HepB Birth Dose"
	then 4 
	else 3

define "Needs HepB Birth Dose":
	"No HepB Dose Administered to Patient" and
		IMMZCom."Current Patient Age In Weeks" < 2 and
		(
			"Patient birth weight observation value" < "2000g" or
			exists(IMMZCom."Preterm Birth")
		)

/**
 * @dataElement HepB containing Doses Administered to Patient
 */
define "HepB Doses Administered to Patient":
  IMMZCom."Doses Administered to Patient" I
  where
    I.vaccineCode in IMMZc."HepB Vaccine"

/**
 * @dataElement Number of HepB Doses Administered to Patient
 */
define "Number of HepB Doses Administered to Patient":
  Count("HepB Doses Administered to Patient" O)


/**
 * @dataElement No HepB containing Birth Dose Administered to Patient
 */
define "No HepB Dose Administered to Patient":
  not exists("HepB Doses Administered to Patient" I)

//Date last administered HepB
define "Date Last HepB Dose Administered to Patient":
  date from (First("HepB Doses Administered to Patient").occurrence as FHIR.dateTime)

/**
 * @dataElement First HepB dose given to Patient
 */
define "First HepB Dose Administered to Patient":
	Last("HepB Doses Administered to Patient")

/**
 * @dataElement Date first HepB dose administered
 */
define "Date First HepB Dose Administered to Patient":
  date from ("First HepB Dose Administered to Patient".occurrence as FHIR.dateTime)

/**
 * @dataElement If the birth dose has been administered to the Patient
 * given for low weight or premature birth within the first 2 weeks
 */
define "HepB Birth Dose Administered to Patient":
	AgeInWeeksAt("Date First HepB Dose Administered to Patient") < 2 and
	(
		"Patient birth weight observation value" < "2000g" or
		exists(IMMZCom."Preterm Birth")
	)



/**
 * @dataElement "Second HepB Dose Administered to Patient"
 * only valid if 4 weeks after first dose
 */
define "Second HepB Dose Administered to Patient":
  Last("HepB Doses Administered to Patient" I where I.occurrence after "Date First HepB Dose Administered to Patient" + 4 weeks)

/**
 * @dataElement Date second HepB dose administered
 */
define "Date Second HepB Dose Administered to Patient":
  date from ("Second HepB Dose Administered to Patient".occurrence as FHIR.dateTime)

/**
 * @dataElement "Third HepB Dose Administered to Patient"
 * only valid if 4 weeks after second dose
 */
define "Third HepB Dose Administered to Patient":
  Last("HepB Doses Administered to Patient" I where I.occurrence after "Date Second HepB Dose Administered to Patient" + 4 weeks)

/**
 * @dataElement Date third HepB dose administered
 */
define "Date Third HepB Dose Administered to Patient":
  date from ("Third HepB Dose Administered to Patient".occurrence as FHIR.dateTime)

/**
 * @dataElement "Fourth HepB Dose Administered to Patient"
 * only valid if 4 weeks after third dose
 */
define "Fourth HepB Dose Administered to Patient":
  Last("HepB Doses Administered to Patient" I where I.occurrence after "Date Third HepB Dose Administered to Patient" + 4 weeks)

/**
 * @dataElement Date third HepB dose administered
 */
define "Date Fourth HepB Dose Administered to Patient":
  date from ("Fourth HepB Dose Administered to Patient".occurrence as FHIR.dateTime)

/* 
 * @dataElement Patient birth weight observation value
 */
define "Patient birth weight observation value":
	First(IMMZCom."Patient birth weight observation value")

define "2000g":
	2000 'g'