/*
 * Library: IMMZDT03 (IMMZ.DT.03.Polio)
 * Rule: If child or person has not been vaccinated, give Polio vaccine 
 * Trigger: Patient has never had Polio vaccination
 */
library IMMZDT0303
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
 * Expressions for the IPVOnly IPV-OPV Schedule
 */
define "Provision of the IPV dose":
	"Booster IPV Dose Administered to Patient" is not null

define "Provision of the bOPV dose":
	false

define "Schedule Due Date for IPV dose":
	ToDateTime(
		case
		when Com."No IPV Doses Administered to Patient"
			then Patient.birthDate + 8 weeks
		when "Third IPV Dose Administered to Patient" is not null
			then Patient.birthDate + 6 months
		when "Booster IPV Dose Administered to Patient" is not null
			then null
		else "Date Last Valid IPV Dose" + 4 weeks
		end
	)

define "Schedule Due Date for bOPV dose":
	null

define "Overdue Date for IPV dose":
  ToDateTime(
		case
			when "Third IPV Dose Administered to Patient" is null and "Second IPV Dose Administered to Patient" is not null
				then "Date Second IPV Dose Administered to Patient" + 8 weeks
			when "Second IPV Dose Administered to Patient" is null and "First IPV Dose Administered to Patient" is not null
				then "Date First IPV Dose Administered to Patient" + 8 weeks
			else null
		end
	)

define "Overdue Date for bOPV dose":
  null

define "Expiration Date for IPV dose":
	null

define "Expiration Date for bOPV dose":
	null

define "IPV Next Dose Number":
	case 
	when "Third IPV Dose Administered to Patient" is not null then 'booster'
	when "Second IPV Dose Administered to Patient" is not null then 3
	when "First IPV Dose Administered to Patient" is not null then 2
	else 1
	end

define "bOPV Next Dose Number":
	null

define "Number of Required IPV Doses":
	3

define "Number of Required bOPV Doses":
	null

define "Date Last Valid IPV Dose":
	case
		when "Booster IPV Dose Administered to Patient" is not null 
			then "Date Booster IPV Dose Administered to Patient"
		when "Third IPV Dose Administered to Patient" is not null 
			then "Date Third IPV Dose Administered to Patient"
		when "Second IPV Dose Administered to Patient" is not null 
			then "Date Second IPV Dose Administered to Patient"
		when "First IPV Dose Administered to Patient" is not null 
			then "Date First IPV Dose Administered to Patient"
		else null
	end

/**
 * @dataElement "First IPV Dose Administered to Patient"
 */
define "First IPV Dose Administered to Patient":
  Last(Com."IPV Doses Administered to Patient" I 
		where I.occurrence after Patient.birthDate + 8 weeks)

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
		where I.occurrence after Com."Date First IPV Dose Administered to Patient" + 4 weeks)

/**
 * @dataElement Date second IPV dose administered
 */
define "Date Second IPV Dose Administered to Patient":
  date from ("Second IPV Dose Administered to Patient".occurrence as FHIR.dateTime)

/**
 * @dataElement "Third IPV Dose Administered to Patient"
 */
define "Third IPV Dose Administered to Patient":
  Last(Com."IPV Doses Administered to Patient" I 
		where I.occurrence after "Date Second IPV Dose Administered to Patient" + 4 weeks)

/**
 * @dataElement Date Third IPV dose administered
 */
define "Date Third IPV Dose Administered to Patient":
  date from ("Third IPV Dose Administered to Patient".occurrence as FHIR.dateTime)


/**
 * @dataElement "Booster IPV Dose Administered to Patient"
 */
define "Booster IPV Dose Administered to Patient":
  Last(Com."IPV Doses Administered to Patient" I 
		where I.occurrence after Patient.birthDate + 6 months)

/**
 * @dataElement Date Booster IPV dose administered
 */
define "Date Booster IPV Dose Administered to Patient":
  date from ("Booster IPV Dose Administered to Patient".occurrence as FHIR.dateTime)
