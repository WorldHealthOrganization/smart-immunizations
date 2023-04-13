/*
 * Library: IMMZDT03 (IMMZ.DT.03.Polio)
 * Rule: If child or person has not been vaccinated, give Polio vaccine 
 * Trigger: Patient has never had Polio vaccination
 */
library IMMZDT0302
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
 * Expressions for the Sequential IPV-OPV Schedule
 */
define "Provision of the IPV dose":
	if IMMZConf."Polio-endemic country with high risk of spread"
	then "Second IPV Dose Administered to Patient" is null
	else "First IPV Dose Administered to Patient" is null

define "Provision of the bOPV dose":
	case
		when "Second bOPV Dose Administered to Patient" is not null
			then false
		when "First bOPV Dose Administered to Patient" is not null
			then true
		when IMMZConf."Polio-endemic country with high risk of spread" and "Second IPV Dose Administered to Patient" is not null
			then true
		when not(IMMZConf."Polio-endemic country with high risk of spread") and "First IPV Dose Administered to Patient" is not null
			then true
		else false
	end

define "Schedule Due Date for IPV dose":
	ToDateTime(
		case
		when Com."No IPV Doses Administered to Patient"
			then Patient.birthDate + 8 weeks
		when "First IPV Dose Administered to Patient" is not null and IMMZConf."Polio-endemic country with high risk of spread"
			then "Date First IPV Dose Administered to Patient" + 4 weeks
		else null
		end
	)

define "Schedule Due Date for bOPV dose":
  ToDateTime(
		case
		when "Second bOPV Dose Administered to Patient" is null and "First bOPV Dose Administered to Patient" is not null
			then "Date First bOPV Dose Administered to Patient" + 4 weeks
		when not (IMMZConf."Polio-endemic country with high risk of spread") and "First IPV Dose Administered to Patient" is not null
			then "Date First IPV Dose Administered to Patient" + 4 weeks
		when IMMZConf."Polio-endemic country with high risk of spread" and "Second IPV Dose Administered to Patient" is not null
			then "Date Second IPV Dose Administered to Patient" + 4 weeks
		else null
		end
	)

define "Overdue Date for IPV dose":
	ToDateTime(
		if "First IPV Dose Administered to Patient" is not null and IMMZConf."Polio-endemic country with high risk of spread"
				and "Second IPV Dose Administered to Patient" is null
			then "Date First IPV Dose Administered to Patient" + 8 weeks
		else null
	)

define "Overdue Date for bOPV dose":
  ToDateTime(
		case
		when "Second bOPV Dose Administered to Patient" is null and "First bOPV Dose Administered to Patient" is not null
			then "Date First bOPV Dose Administered to Patient" + 8 weeks
		when not (IMMZConf."Polio-endemic country with high risk of spread") and "First IPV Dose Administered to Patient" is not null
			then "Date First IPV Dose Administered to Patient" + 8 weeks
		when IMMZConf."Polio-endemic country with high risk of spread" and "Second IPV Dose Administered to Patient" is not null
			then "Date Second IPV Dose Administered to Patient" + 8 weeks
		else null
		end
	)

define "Expiration Date for IPV dose":
	null

define "Expiration Date for bOPV dose":
	null

define "IPV Next Dose Number":
	case 
	when "First IPV Dose Administered to Patient" is not null then 2
	else 1
	end

define "bOPV Next Dose Number":
	case 
	when "First bOPV Dose Administered to Patient" is not null then 2
	else 1
	end

define "Number of Required IPV Doses":
	if 	IMMZConf."Polio-endemic country with high risk of spread"
	then 2
	else 1

define "Number of Required bOPV Doses":
	2

/**
 * @dataElement "First bOPV Dose Administered to Patient"
 */
define "First bOPV Dose Administered to Patient":
	if IMMZConf."Polio-endemic country with high risk of spread"
	then 
		Last(Com."bOPV Doses Administered to Patient" I 
		where I.occurrence after "Date Second IPV Dose Administered to Patient" + 4 weeks)
	else
		Last(Com."bOPV Doses Administered to Patient" I 
			where I.occurrence after "Date First IPV Dose Administered to Patient" + 4 weeks)

/**
 * @dataElement Date First bOPV dose administered
 */
define "Date First bOPV Dose Administered to Patient":
  date from ("First bOPV Dose Administered to Patient".occurrence as FHIR.dateTime)

/**
 * @dataElement "Second bOPV Dose Administered to Patient"
 */
define "Second bOPV Dose Administered to Patient":
	Last(Com."bOPV Doses Administered to Patient" I 
		where I.occurrence after Com."Date First bOPV Dose Administered to Patient" + 4 weeks)

/**
 * @dataElement Date second bOPV dose administered
 */
define "Date Second bOPV Dose Administered to Patient":
  date from ("Second bOPV Dose Administered to Patient".occurrence as FHIR.dateTime)

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
  if IMMZConf."Polio-endemic country with high risk of spread"
	then Last(Com."IPV Doses Administered to Patient" I 
		where I.occurrence after Com."Date First IPV Dose Administered to Patient" + 4 weeks)
	else null

/**
 * @dataElement Date second IPV dose administered
 */
define "Date Second IPV Dose Administered to Patient":
  date from ("Second IPV Dose Administered to Patient".occurrence as FHIR.dateTime)
