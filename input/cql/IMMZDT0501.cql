/*
 * Library: IMMZDT03 (IMMZ.DT.05.Hib)
 * Rule: if child or person has not been vaccinated, give Hib vaccine between 6 weeks and 59 months 
 * Trigger: Patient has never received Hib vaccination
 */
library IMMZDT0501
// Start Skeleton CQL
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1'
include IMMZCommon called IMMZCom
include IMMZConcepts called IMMZc
include IMMZConfig called IMMZConf
include IMMZVaccineLibrary called IMMZvl
include IMMZDT05Common called Com
// End Skeleton CQL
context Patient


/*
 * Expressions for the 1 primary dose Schedule
 */
define "Provision of the Hib dose":
	"First Hib Dose Administered to Patient" is null and Patient.birthDate + 59 months >= Now()

define "Schedule Due Date for Hib dose":
	ToDateTime( Patient.birthDate + 12 months )

define "Overdue Date for Hib dose":
  null

define "Expiration Date for Hib dose":
	Patient.birthDate + 59 months

define "Hib Next Dose Number":
	1

define "Number of Required Hib Doses":
	1

/**
 * @dataElement "First Hib Dose Administered to Patient"
 */
define "First Hib Dose Administered to Patient":
  Last(Com."Hib Doses Administered to Patient" I 
		where I.occurrence after Patient.birthDate + 12 months)

/**
 * @dataElement Date First Hib dose administered
 */
define "Date First Hib Dose Administered to Patient":
  date from ("First Hib Dose Administered to Patient".occurrence as FHIR.dateTime)

