/**
 * Immunization Common Stratifiers by Patients as Context
 */

library IMMZIndicatorCommon

using FHIR version '4.0.1'

include FHIRHelpers version '4.0.1'
include FHIRCommon called FC
include IMMZCommon called IMMZCom
include IMMZConcepts called IMMZc
include WHOCommon called WCom
include WHOConcepts called WC
codesystem "ISO-8601-Derived Periods": 'http://ohie.org/CodeSystem/iso-8601-derived-periods'
parameter "Measurement Period" Interval<Date> default Interval[@2020-01-01, @2020-12-31]

// Age Groups for Vaccines for infants
code "P0Y--P1Y": 'P0Y--P1Y' from "ISO-8601-Derived Periods" display '< 1 year'
code "P1Y--P9999Y": 'P1Y--P9999Y' from "ISO-8601-Derived Periods" display '> 1 year'

// Age Groups for Vaccines for Toddlers
code "P0Y--P2Y": 'P0Y--P2Y' from "ISO-8601-Derived Periods" display '< 2 years'
code "P1Y--P2Y": 'P1Y--P2Y' from "ISO-8601-Derived Periods" display '1 year'
code "P2Y--P9999Y": 'P2Y--P9999Y' from "ISO-8601-Derived Periods" display '> 2 years'

// Age groups for newborns
code "PT0H--PT24H": 'PT0H--PT24H' from "ISO-8601-Derived Periods" display 'Within 24H of Birth'
code "PT24H--P2W": 'PT24H--P2W' from "ISO-8601-Derived Periods" display '< 2 Weeks'
code "P2W--P9999Y": 'P2W--P9999Y' from "ISO-8601-Derived Periods" display '> 2 Weeks'

// Age groups for adolescent
code "P0Y--P9Y": 'P0Y--P9Y' from "ISO-8601-Derived Periods" display '< 9 years'
code "P9Y--P14Y": 'P9Y--P14Y' from "ISO-8601-Derived Periods" display '9 - 14 years'
code "P15Y--P9999Y": 'P15Y--P9999Y' from "ISO-8601-Derived Periods" display '> 15 years'

// RCV Startifiers
code "P0M--P9M": 'P0M--P9M' from "ISO-8601-Derived Periods" display '< 9 months'
code "P9M--P18M": 'P9M--P18M' from "ISO-8601-Derived Periods" display '9 - 18 months'
code "P18M--P15Y": 'P18M--P15Y' from "ISO-8601-Derived Periods" display '18 months - 15 years'

// Varicella Age groups
code "P0M--P12M": 'P0M--P12M' from "ISO-8601-Derived Periods" display '< 12 months'
code "P12M--P18M": 'P12M--P18M' from "ISO-8601-Derived Periods" display '12 - 18 months'
code "P18M--P36M": 'P18M--P36M' from "ISO-8601-Derived Periods" display '18 - 36 months'
code "P36M--P12Y": 'P36M--P12Y' from "ISO-8601-Derived Periods" display '36 months - 12 years'
code "P12Y--P9999Y": 'P12Y--P9999Y' from "ISO-8601-Derived Periods" display '> 12 years'

// Influenza Age Groups
code "P1Y--P15Y": 'P1Y--P15Y' from "ISO-8601-Derived Periods" display '1 year - 15 years'
code "P15Y--P60Y": 'P15Y--P60Y' from "ISO-8601-Derived Periods" display '15 years - 60 years'
code "P60Y--P9999Y": 'P60Y--P9999Y' from "ISO-8601-Derived Periods" display '> 60 years'

codesystem "Administrative Gender Codes": 'http://hl7.org/fhir/administrative-gender'
code "Males" : 'male' from "Administrative Gender Codes" display 'Males'
code "Females" : 'female' from "Administrative Gender Codes" display 'Females'
code "Other" : 'other' from "Administrative Gender Codes" display 'Other/NA'
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
        when AgeInYearsAt(start of "Measurement Period") < 1 then "P0Y--P1Y"
        when AgeInYearsAt(start of "Measurement Period") < 2 then "P1Y--P2Y"
        when AgeInYearsAt(start of "Measurement Period") >= 2 then "P2Y--P9999Y"
        else null
    end


/** 
 * Toddler By Age Stratifiers
 */
define "Adolescent By Age Stratifier":
    case 
        when AgeInYearsAt(start of "Measurement Period") < 9 then "P0Y--P9Y"
        when AgeInYearsAt(start of "Measurement Period") <= 14 then "P9Y--P14Y"
        when AgeInYearsAt(start of "Measurement Period") > 14 then "P15Y--P9999Y"
        else null
    end

/** 
 * RCV age disaggregators
 */
define "RCV By Age Stratifier":
    case 
        when AgeInMonthsAt(start of "Measurement Period") < 9 then "P0M--P9M"
        when AgeInMonthsAt(start of "Measurement Period") < 18 then "P9M--P18M"
        when AgeInYearsAt(start of "Measurement Period") < 15 then "P18M--P15Y"
        when AgeInYearsAt(start of "Measurement Period") >= 15 then "P15Y--P9999Y"
        else null
    end

/** 
 * Varicella age disaggregators
 */
define "Varicella By Age Stratifier":
    case 
        when AgeInMonthsAt(start of "Measurement Period") < 12 then "P0M--P12M"
        when AgeInMonthsAt(start of "Measurement Period") < 18 then "P12M--P18M"
        when AgeInMonthsAt(start of "Measurement Period") < 36 then "P18M--P36M"
        when AgeInYearsAt(start of "Measurement Period") < 12 then "P36M--P12Y"
        when AgeInYearsAt(start of "Measurement Period") >= 12 then "P12Y--P9999Y"
        else null
    end


/** 
 * Seasonal Influenza age disaggregators
 */
define "Seasonal Influenza By Age Stratifier":
    case 
        when AgeInYearsAt(start of "Measurement Period") < 1 then "P0Y--P1Y"
        when AgeInYearsAt(start of "Measurement Period") < 15 then "P1Y--P15Y"
        when AgeInYearsAt(start of "Measurement Period") < 60 then "P15Y--P60Y"
        when AgeInYearsAt(start of "Measurement Period") >= 60 then "P60Y--P9999Y"
        else null
    end

/**
 * By Administrative Gender of Patient Stratifier
 */
define "By Administrative Gender Stratifier":
    case 
        when Patient.gender = 'male' then "Males"
        when Patient.gender = 'female' then "Females"
        else "Other"
    end

/**
 * By Administrative Gender of Patient Stratifier
 */
define "By Geographic Region Stratifier":
    First(Patient.address A where A.use in { 'home' }).state

/** 
 * @dataElement Patient is deceased
 */
define "Patient Deceased During Measurement Period":
  case 
    when Patient.deceased is FHIR.boolean then Patient.deceased as FHIR.boolean
    when Patient.deceased is FHIR.dateTime then Patient.deceased as FHIR.dateTime before end of "Measurement Period"
    else false
  end

/** 
 * Patient was born during measurement period
 */
define "Patient Born During Measurement Period":
    Patient.birthDate during "Measurement Period"

/** 
 * Patient is < 12 months old at the end of the measurement period
 */
define "Patient Under 12 Months Old During Measurement Period":
    Patient.birthDate more than 12 month before end of "Measurement Period"

/** 
 * Patient is < 12 years old at the end of the measurement period
 */
define "Patient Under 2 Years Old During Measurement Period":
    Patient.birthDate more than 2 year before end of "Measurement Period"


/** 
 * @define Adverse events for immunizations which occurred during (or observed) during measurement period
 */
define "Immunizations with Adverse Events During Measurement Period":
    IMMZCom."Doses Administered to Patient" I
    with [Observation: code in WC."Adverse Events"] O
    such that exists(I.reaction R where O.id = Last(Split(R.detail.reference, '/')))
    and FC.ToInterval(O.effective) during "Measurement Period"


/** 
 * @define Adverse events for immunizations which occurred during (or observed) during measurement period
 */
define "Adverse Event Reactions During Measurement Period":
    [Observation: code in WC."Adverse Events"] O
    with IMMZCom."Doses Administered to Patient" I
    such that exists(I.reaction R where O.id = Last(Split(R.detail.reference, '/')))
    where FC.ToInterval(O.effective) during "Measurement Period"

/** 
 * @define Doses which were 
 */
define "Doses Administered to Patient During Measurement Period":
    IMMZCom."Doses Administered to Patient"  I
    where IMMZCom.ToDate(I.occurrence) during "Measurement Period"

/** 
 * @function
 * @param immunization The immunization record for which the location should be retrieved
 * @return FHIR.address The location that the immunization event occurred
 */
define function GetGeographicRegionForImmunization(immunization Immunization):
    WCom.Official([Location] L 
        where L.id = Last(Split(immunization.location.reference, '/'))
        return L.address).state