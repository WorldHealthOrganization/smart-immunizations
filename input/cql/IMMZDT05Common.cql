/*
 * Library: IMMZDT03 (IMMZ.DT.05.Hib)
 * Rule: if child or person has not been vaccinated, give Hib vaccine between 6 weeks and 59 months 
 * Trigger: Patient has never received Hib vaccination
 */
library IMMZDT05Common
// Start Skeleton CQL
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1'
include IMMZCommon called IMMZCom
include IMMZConcepts called IMMZc
include IMMZConfig called IMMZConf
include IMMZVaccineLibrary called IMMZvl
// End Skeleton CQL
context Patient


define "Valid schemes": { '1p', '3p', '3p+1', '2p+1' }

define "Dose scheme":
  if IMMZConf."Hib dose scheme" in "Valid schemes"
	then IMMZConf."Hib dose scheme"
	else 
		case
		when IMMZConf."In a country where the peak burden of severe Hib disease occurs in young infants" 
			then '3p'
		when IMMZConf."In a setting where the greatest disease morbidity and mortality occur later, or whererate reductions of disease are not fully sustained after the routine use of Hib vaccine"
			then '3p+1'
		else '1p' 
		end

define "Hib One Dose Schedule":
	"Dose scheme" = '1p'

define "Hib Three Primary Dose Schedule":
	"Dose scheme" = '3p'

define "Hib Three Primary plus One Booster Schedule":
	"Dose scheme" = '3p+1'

define "Hib Two Primary plus One Booster Schedule":
	"Dose scheme" = 'ip2p+1v'


/**
 * @dataElement Hib containing Doses Administered to Patient
 */
define "Hib Doses Administered to Patient":
  IMMZCom."Doses Administered to Patient" I
  where
    I.vaccineCode in IMMZc."Hib Vaccine"

/**
 * @dataElement Hib containing Doses Administered to Patient
 */
define "No Hib Doses Administered to Patient":
  not exists("Hib Doses Administered to Patient")

/**
 * @dataElement Number of Hib Doses Administered to Patient excluding the birth dose
 */
define "Number of Hib Doses Administered to Patient":
  Count("Hib Doses Administered to Patient")// O return ToPositiveInt((singleton from O.protocolApplied).doseNumber))

/**
 * @dataElement 
 */
define "Date Last Hib Dose Administered to Patient":
  date from (First("Hib Doses Administered to Patient").occurrence as FHIR.dateTime)

/**
 * @dataElement 
 */
define "Date First Hib Dose Administered to Patient":
  date from (First("Hib Doses Administered to Patient").occurrence as FHIR.dateTime)

