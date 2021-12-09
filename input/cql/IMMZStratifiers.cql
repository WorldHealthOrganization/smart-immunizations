/**
 * Immunization Common Stratifiers by Patients as Context
 */

library IMMZStratifiers

using FHIR version '4.0.1'

include FHIRHelpers version '4.0.1'
include IMMZCommonIzDataElements called IMMZCommonDataElements

codesystem "ISO-8601-Derived Periods": 'http://ohie.org/CodeSystem/iso-8601-derived-periods'
parameter "Measurement Period" Interval<Date> default Interval[@2020-01-01, @2020-12-31]

// Age Groups for Vaccines for infants
code "P0Y--P1Y": 'P0Y--P1Y' from "ISO-8601-Derived Periods" display '< 1 year'
code "P1Y--P9999Y": 'P1Y--P9999Y' from "ISO-8601-Derived Periods" display '> 1 year'

// Age Groups for Vaccines for Toddlers
code "P0Y--P2Y": 'P0Y--P2Y' from "ISO-8601-Derived Periods" display '< 2 years'
code "P2Y--P9999Y": 'P2Y--P9999Y' from "ISO-8601-Derived Periods" display '> 2 years'

context Patient

// Vaccinations given to infants stratified by age is < 1 yr or > 1 yr
define "Infant By Age Stratifier":
    case 
        when AgeInYearsAt(start of "Measurement Period") < 1 then "P0Y--P1Y"
        when AgeInYearsAt(start of "Measurement Period") >= 1 then "P1Y--P9999Y"
        else null
    end

// Vaccinations given to toddlers stratified by age is < 2 yr or > 2 yr
define "Toddler By Age Stratifier":
    case 
        when AgeInYearsAt(start of "Measurement Period") < 2 then "P0Y--P2Y"
        when AgeInYearsAt(start of "Measurement Period") >= 2 then "P2Y--P9999Y"
        else null
    end

define "By Vaccine Type Stratifier":
    IMMZCommonDataElements."Vaccine Type"

define "By Geographic Region Stratifier":
    IMMZCommonDataElements."Geographic Region"

