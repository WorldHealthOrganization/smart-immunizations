/**
 * Immunization Common Stratifiers by Patients as Context
 */

library IMMZIndicatorCommon

using FHIR version '4.0.1'

include FHIRHelpers version '4.0.1'
include IMMZCommon called IMMZCom
include WHOCommon called WCom
codesystem "ISO-8601-Derived Periods": 'http://ohie.org/CodeSystem/iso-8601-derived-periods'
parameter "Measurement Period" Interval<Date> default Interval[@2020-01-01, @2020-12-31]

// Age Groups for Vaccines for infants
code "P0Y--P1Y": 'P0Y--P1Y' from "ISO-8601-Derived Periods" display '< 1 year'
code "P1Y--P9999Y": 'P1Y--P9999Y' from "ISO-8601-Derived Periods" display '> 1 year'

// Age Groups for Vaccines for Toddlers
code "P0Y--P2Y": 'P0Y--P2Y' from "ISO-8601-Derived Periods" display '< 2 years'
code "P2Y--P9999Y": 'P2Y--P9999Y' from "ISO-8601-Derived Periods" display '> 2 years'

// Age groups for newborns
code "PT0H--PT24H": 'PT0H--PT24H' from "ISO-8601-Derived Periods" display 'Within 24H of Birth'
code "PT24H--P2W": 'PT24H--P2W' from "ISO-8601-Derived Periods" display '< 2 Weeks'
code "P2W--P9999Y": 'P2W--P9999Y' from "ISO-8601-Derived Periods" display '> 2 Weeks'

context Patient


/** 
 * Infant disaggregations by age
 */
define "Newborn By Age Stratifier":
    case 
        when AgeInHoursAt(start of "Measurement Period") <= 24 then "PT0H--PT24H"
        when AgeInWeeksAt(start of "Measurement Period") <= 2 then "PT24H--P2W"
        when AgeInWeeksAt(start of "Measurement Period") > 2 then "P2W--P9999Y"
        else null
    end

/** 
 * Infant disaggregations by age
 */
define "Infant By Age Stratifier":
    case 
        when AgeInYearsAt(start of "Measurement Period") < 1 then "P0Y--P1Y"
        when AgeInYearsAt(start of "Measurement Period") >= 1 then "P1Y--P9999Y"
        else null
    end

/** 
 * Toddler By Age Stratifiers
 */
define "Toddler By Age Stratifier":
    case 
        when AgeInYearsAt(start of "Measurement Period") < 2 then "P0Y--P2Y"
        when AgeInYearsAt(start of "Measurement Period") >= 2 then "P2Y--P9999Y"
        else null
    end

/*
 * BCG Doses administered to the patient during the measurement period
 */
define "BCG Doses Administered to Patient During Measurement Period":
    IMMZCom."BCG Doses Administered to Patient" I
		where IMMZCom.ToDate(I.occurrence) during "Measurement Period"

/*
 * DTP Doses administered to the patient during the measurement period
 */
define "DTP Doses Administered to Patient During Measurement Period":
    IMMZCom."DTP Doses Administered to Patient" I
		where IMMZCom.ToDate(I.occurrence) during "Measurement Period"

/*
 * HepB Doses administered to the patient during the measurement period
 */
define "HepB Birth Doses Administered to Patient During Measurement Period":
    IMMZCom."HepB Doses Administered to Patient" I
		where IMMZCom.ToDate(I.occurrence) during "Measurement Period"
        and (singleton from I.protocolApplied).doseNumber = 0

/**
 * Non-Birth HepB doses administered to patient
 */
define "HepB Non-Birth Doses Administered to Patient During Measurement Period":
    IMMZCom."HepB Doses Administered to Patient" I
		where IMMZCom.ToDate(I.occurrence) during "Measurement Period"
        and (singleton from I.protocolApplied).doseNumber > 0

/**
 * IPV Doses Administered to Patient
 */
define "IPV Doses Administered to Patient During Measurement Period":
    IMMZCom."IPV Doses Administered to Patient" I 
    where IMMZCom.ToDate(I.occurrence) during "Measurement Period"

/**
 * By Administrative Gender of Patient Stratifier
 */
define "By Administrative Gender Stratifier":
    Patient.gender

/**
 * By Administrative Gender of Patient Stratifier
 */
define "By Geographic Region Stratifier":
    WCom.Official(Patient.address).state

/** 
 * @function
 * @param immunization The immunization record for which the location should be retrieved
 * @return FHIR.address The location that the immunization event occurred
 */
define function GetGeographicRegionForImmunization(immunization Immunization):
    WCom.Official([Location] L 
        where L.id = Last(Split(immunization.location.reference, '/'))
        return L.address).state