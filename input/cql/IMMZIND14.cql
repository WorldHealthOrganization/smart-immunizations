/*
 * Library: IMMZ.IND.14
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
 * 
 * References: WHO / UNICEF Joint Reporting Form (3 - element 4090)
 */

library IMMZIND14

using FHIR version '4.0.1'

include FHIRHelpers version '4.0.1'
include IMMZCommon called IMMZCom
include IMMZConcepts called IMMZc
include IMMZStratifiers called IMMZStratifiers
include IMMZVaccineLibrary called IMMZvl

parameter "Measurement Period" Interval<Date>
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
/* End of IMMZ.IND.14 */
