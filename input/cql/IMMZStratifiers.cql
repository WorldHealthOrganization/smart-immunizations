/**
 * Immunization Common Stratifiers by Patients as Context
 */

library IMMZStratifiers

using FHIR version '4.0.1'

include FHIRHelpers version '4.0.1'
include IMMZCommonIzDataElements called IMMZCommonDataElements

codesystem "ISO-8601-Derived Periods": 'http://ohie.org/CodeSystem/iso-8601-derived-periods'
parameter "Measurement Period" Interval<Date> default Interval[@2020-01-01, @2020-12-31]

// Age Groups for Vaccines for newborns
code "P0D--P1D": 'P0D--P1D' from "ISO-8601-Derived Periods" display '< 24 h'
code "P1D--P9999D": 'P1D--P9999D' from "ISO-8601-Derived Periods" display '> 24 h'

// Age Groups for Vaccines for infants
code "P0Y--P1Y": 'P0Y--P1Y' from "ISO-8601-Derived Periods" display '< 1 year'
code "P1Y--P9999Y": 'P1Y--P9999Y' from "ISO-8601-Derived Periods" display '> 1 year'

// Age Groups for Vaccines for Toddlers
code "P0Y--P2Y": 'P0Y--P2Y' from "ISO-8601-Derived Periods" display '< 2 years'
code "P2Y--P9999Y": 'P2Y--P9999Y' from "ISO-8601-Derived Periods" display '> 2 years'

context Patient

// Vaccinations given to newborns stratified by age is < 24 h or > 24 h
define "Newborn By Age Stratifier":
    case 
        when AgeInDaysAt(start of "Measurement Period") < 1 then "P0D--P1D"
        when AgeInDaysAt(start of "Measurement Period") >= 1 then "P1D--P9999D"
        else null
    end

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

// Vaccine code stratifier (used to disaggregate based on code, for example determining OPV vs IPV in country)
define "By Vaccine Code Stratifier":
    IMMZCommonDataElements."Vaccine Code"

// Geographic region (state) in which the vaccination was given/administered
define "By Geographic Region Stratifier":
    IMMZCommonDataElements."Geographic Region"

// Dose sequence/number of antigen
define "By Dose Number Stratifier":
    IMMZCommonDataElements."Dose Number"
