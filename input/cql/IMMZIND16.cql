/*
 * Library: IMMZ.IND.16
 * Immunization coverage for Pertussis containing vaccine boosters (Estimated Denominator) 
 * Compares the administered booster dose of pertussis containing vaccine (dose 4) with a country specified denominator expressed as a percentage.
 * 
 * Numerator: Number of administrations of booster vaccine containing a pertussis component during the reporting period 
 * Numerator Computation: COUNT immunization events WHERE administered product is a Pertussis containing vaccine (IMMZ.A1.DE12) and dose > 3 during reporting period.
 * Denominator: Country defined target population.
 * Denominator Computation: PARAMETER country defined target population.
 * 
 * Disaggregation:
 *   - Geographic Region
 *   - Administrative Gender (or Biological Sex)
 * 
 * References: WHO / UNICEF Joint Reporting Form (3 - element 4090)
 */

library IMMZIND16

// Start Skeleton CQL
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1'
include IMMZCommon called IMMZCom
include IMMZConcepts called IMMZc
include IMMZConfig called IMMZCon
include IMMZStratifiers called IMMZStratifiers
include IMMZVaccineLibrary called IMMZvl
// End Skeleton CQL
parameter "Measurement Period" Interval<Date> default Interval[@2022-01-01, @2022-01-31]
context Patient

/*
 * Numerator: Number of administrations of booster vaccine containing a pertussis component during the reporting period
 * Numerator Computation: COUNT immunization events WHERE administered product is a Pertussis containing vaccine (IMMZ.A1.DE12) and dose > 3 during reporting period.
 */
define "numerator":
	true // TODO: Write logic here
/*
 * Denominator: Country defined target population.
 * Denominator Computation: PARAMETER country defined target population.
 */
define "denominator":
	true // TODO: Write logic here
/*
 * Disaggregator: Geographic Region
 */
define "Geographic Region Stratifier":
	IMMZStratifiers."By Geographic Region Stratifier"
/*
 * Disaggregator: Administrative Gender (or Biological Sex)
 */
define "Administrative Gender Stratifier":
	true // todo: fill in logic

/* End of IMMZ.IND.16 */
