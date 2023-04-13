/*
 * Library: IMMZDT03 (IMMZ.DT.03.Polio)
 * Rule: If child or person has not been vaccinated, give Polio vaccine 
 * Trigger: Patient has never had Polio vaccination
 */
library IMMZDT0301
// Start Skeleton CQL
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1'
include IMMZCommon called IMMZCom
include IMMZConcepts called IMMZc
include IMMZConfig called IMMZConf
include IMMZVaccineLibrary called IMMZvl
include IMMZDT03Common called Com
// End Skeleton CQL
context Patient


/*
 * Expressions for the Combined IPV-OPV Schedule
 */
define "Provision of the IPV dose":
	"Second IPV Dose Administered to Patient" is null

define "Provision of the bOPV dose":
	if ( "Third bOPV Dose Administered to Patient" is not null and not "bOPV Birth Dose Administered to Patient")
		or "Fourth bOPV Dose Administered to Patient" is not null
	then false
	else true

define "Schedule Due Date for IPV dose":
	ToDateTime(
		case
		when Com."No IPV Doses Administered to Patient"
			then Patient.birthDate + 14 weeks
		when "First IPV Dose Administered to Patient" is not null
			then "Date First IPV Dose Administered to Patient" + 4 months
		else Patient.birthDate + 14 weeks
		end
	)

define "Schedule Due Date for bOPV dose":
  ToDateTime(
		case
		when "Needs bOPV Birth Dose"
			then Patient.birthDate
		when Com."No bOPV Doses Administered to Patient"
			then Patient.birthDate + 6 weeks
		when "bOPV Birth Dose Administered to Patient" 
				and "Second bOPV Dose Administered to Patient" is null
			then Patient.birthDate + 6 weeks
		else "Date Last Valid bOPV Dose" + 4 weeks
		end
	)

define "Overdue Date for IPV dose":
  null

define "Overdue Date for bOPV dose":
  null

define "Expiration Date for IPV dose":
	null

define "Expiration Date for bOPV dose":
  ToDateTime( 
		if "Needs bOPV Birth Dose" 
		then Patient.birthDate + 2 weeks
		else null
	)

define "IPV Next Dose Number":
	case 
	when "First IPV Dose Administered to Patient" is not null then 2
	else 1
	end

define "bOPV Next Dose Number":
	case 
	when "Third bOPV Dose Administered to Patient" is not null then 4
	when "Second bOPV Dose Administered to Patient" is not null then 3
	when "First bOPV Dose Administered to Patient" is not null then 2
	else 1
	end

define "Number of Required IPV Doses":
	2

define "Number of Required bOPV Doses":
	if "bOPV Birth Dose Administered to Patient" or "Needs bOPV Birth Dose"
	then 4 
	else 3

define "Needs bOPV Birth Dose":
	Com."No IPV Doses Administered to Patient" and 
	Com."No bOPV Doses Administered to Patient" and 
	IMMZCom."Current Patient Age In Weeks" < 2 and 
	IMMZConf."Polio-endemic country with high risk of spread"

define "bOPV Birth Dose Administered to Patient":
	AgeInWeeksAt(Com."Date First bOPV Dose Administered to Patient") < 2

define "Date Last Valid bOPV Dose":
	case
		when "Fourth bOPV Dose Administered to Patient" is not null 
			then "Date Fourth bOPV Dose Administered to Patient"
		when "Third bOPV Dose Administered to Patient" is not null 
			then "Date Third bOPV Dose Administered to Patient"
		when "Second bOPV Dose Administered to Patient" is not null 
			then "Date Second bOPV Dose Administered to Patient"
		when "First bOPV Dose Administered to Patient" is not null 
			then "Date First bOPV Dose Administered to Patient"
		else null
	end

/**
 * @dataElement "First bOPV Dose Administered to Patient"
 */
define "First bOPV Dose Administered to Patient":
	if "bOPV Birth Dose Administered to Patient"
	then Com."First bOPV Dose Administered to Patient" 
	else Last(Com."bOPV Doses Administered to Patient" I 
		where I.occurrence after Patient.birthDate + 6 weeks)

/**
 * @dataElement Date First bOPV dose administered
 */
define "Date First bOPV Dose Administered to Patient":
  date from ("First bOPV Dose Administered to Patient".occurrence as FHIR.dateTime)

/**
 * @dataElement "Second bOPV Dose Administered to Patient"
 */
define "Second bOPV Dose Administered to Patient":
	if "bOPV Birth Dose Administered to Patient"
	then Last(Com."bOPV Doses Administered to Patient" I 
		where I.occurrence after Patient.birthDate + 6 weeks)
	else Last(Com."bOPV Doses Administered to Patient" I 
		where I.occurrence after Com."Date First bOPV Dose Administered to Patient" + 4 weeks)

/**
 * @dataElement Date second bOPV dose administered
 */
define "Date Second bOPV Dose Administered to Patient":
  date from ("Second bOPV Dose Administered to Patient".occurrence as FHIR.dateTime)

/**
 * @dataElement "Third bOPV Dose Administered to Patient"
 */
define "Third bOPV Dose Administered to Patient":
  Last(Com."bOPV Doses Administered to Patient" I 
		where I.occurrence after "Date Second bOPV Dose Administered to Patient" + 4 weeks)

/**
 * @dataElement Date third bOPV dose administered
 */
define "Date Third bOPV Dose Administered to Patient":
  date from ("Third bOPV Dose Administered to Patient".occurrence as FHIR.dateTime)

/**
 * @dataElement "Fourth bOPV Dose Administered to Patient"
 */
define "Fourth bOPV Dose Administered to Patient":
  Last(Com."bOPV Doses Administered to Patient" I 
		where I.occurrence after "Date Third bOPV Dose Administered to Patient" + 4 weeks)

/**
 * @dataElement Date Fourth bOPV dose administered
 */
define "Date Fourth bOPV Dose Administered to Patient":
  date from ("Fourth bOPV Dose Administered to Patient".occurrence as FHIR.dateTime)

/**
 * @dataElement "First IPV Dose Administered to Patient"
 */
define "First IPV Dose Administered to Patient":
  Last(Com."IPV Doses Administered to Patient" I 
		where I.occurrence after Patient.birthDate + 14 weeks)

/**
 * @dataElement Date First IPV dose administered
 */
define "Date First IPV Dose Administered to Patient":
  date from ("First IPV Dose Administered to Patient".occurrence as FHIR.dateTime)

/**
 * @dataElement "Second IPV Dose Administered to Patient"
 */
define "Second IPV Dose Administered to Patient":
  Last(Com."IPV Doses Administered to Patient" I 
		where I.occurrence after Com."Date First IPV Dose Administered to Patient" + 4 months)

/**
 * @dataElement Date second IPV dose administered
 */
define "Date Second IPV Dose Administered to Patient":
  date from ("Second IPV Dose Administered to Patient".occurrence as FHIR.dateTime)

