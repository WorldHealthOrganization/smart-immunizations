/*
 * Library: IMMZStratifiers (IMMZStratifiers)
 * Stratifiers for indicators
 */
library IMMZStratifiers version '0.1.0'

using FHIR version '4.0.1'

// Start Skeleton CQL
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1'
include IMMZCommon called IMMZCom
include IMMZConcepts called IMMZc
include IMMZConfig called IMMZCon
include IMMZVaccineLibrary called IMMZvl
include FHIRCommon called FC


// End Skeleton CQL


// ISO-8601-Derived Periods
codesystem "ISO-8601-Derived Periods": 'http://ohie.org/CodeSystem/iso-8601-derived-periods' // { 'P0Y--P1Y', 'P1Y--P5Y', ... }
code "P0Y--P1Y": 'P0Y--P1Y' from "ISO-8601-Derived Periods" display '< 1 year'
code "P1Y--P5Y": 'P1Y--P5Y' from "ISO-8601-Derived Periods" display '1-4 years'
code "P5Y--P10Y": 'P5Y--P10Y' from "ISO-8601-Derived Periods" display '5-9 year'
code "P10Y--P15Y": 'P10Y--P15Y' from "ISO-8601-Derived Periods" display '10-14 year'
code "P15Y--P20Y": 'P15Y--P20Y' from "ISO-8601-Derived Periods" display '15-19 year'
code "P20Y--P25Y": 'P20Y--P25Y' from "ISO-8601-Derived Periods" display '20-24 year'
code "P25Y--P30Y": 'P25Y--P30Y' from "ISO-8601-Derived Periods" display '25-29 year'
code "P30Y--P35Y": 'P30Y--P35Y' from "ISO-8601-Derived Periods" display '30-34 year'
code "P35Y--P40Y": 'P35Y--P40Y' from "ISO-8601-Derived Periods" display '35-39 year'
code "P40Y--P45Y": 'P40Y--P45Y' from "ISO-8601-Derived Periods" display '40-45 year'
code "P45Y--P50Y": 'P45Y--P50Y' from "ISO-8601-Derived Periods" display '45-50 year'
code "P50Y--P9999Y": 'P50Y--P9999Y' from "ISO-8601-Derived Periods" display '50+ years'
code "P50Y--P55Y": 'P50Y--P55Y' from "ISO-8601-Derived Periods" display '50-55 year'
code "P55Y--P60Y": 'P55Y--P60Y' from "ISO-8601-Derived Periods" display '55-60 year'
code "P60Y--P65Y": 'P60Y--P65Y' from "ISO-8601-Derived Periods" display '60-65 year'
code "P65Y--P9999Y": 'P65Y--P9999Y' from "ISO-8601-Derived Periods" display '65+ years'

parameter "Measurement Period" Interval<DateTime> default Interval[@2023-01-01T00:00:00.0, @2023-12-31T23:59:59.9]

context Patient


// unknown and other is included in fhir core patient
// mer guidance requires m, f, unknown, kenya emr uses only mf
define "Sex":
  Patient.gender.value

// Age in Years
define "Age":
  AgeInYearsAt(end of "Measurement Period")

// Age Group
define "Age Group":
  case
    when "Age" in Interval[0, 1) then "P0Y--P1Y"
    when "Age" in Interval[1, 5) then "P1Y--P5Y"
    when "Age" in Interval[5, 10) then "P5Y--P10Y"
    when "Age" in Interval[10, 15) then "P10Y--P15Y"
    when "Age" in Interval[15, 20) then "P15Y--P20Y"
    when "Age" in Interval[20, 25) then "P20Y--P25Y"
    when "Age" in Interval[25, 30) then "P25Y--P30Y"
    when "Age" in Interval[30, 35) then "P30Y--P35Y"
    when "Age" in Interval[35, 40) then "P35Y--P40Y"
    when "Age" in Interval[40, 45) then "P40Y--P45Y"
    when "Age" in Interval[45, 50) then "P45Y--P50Y"
    when "Age" in Interval[50, 55] then "P50Y--P55Y"
    when "Age" in Interval[55, 60] then "P55Y--P60Y"
    when "Age" in Interval[60, 65] then "P60Y--P65Y"
    when "Age" in Interval[65, null] then "P65Y--P9999Y"
    else null
  end


define "Administrative Area":
  Last([Encounter] E
    return singleton from (E.location L
      return L.location.reference
    ).value
  )
