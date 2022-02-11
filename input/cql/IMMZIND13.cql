/*
 * Library: IMMZ.IND.13
 * Immunization coverage for Diphtheria containing vaccine boosters (Estimated Denominator) 
 * Compares the administered booster doses (4, 5, 6) for diphtheria containing vaccine with a country specified denominator expressed as a percentage.
 * 
 * Numerator: Number of administrations of booster vaccines containing a diphtheria component during the reporting period. 
 * Numerator Computation: COUNT immunization events WHERE administered product is a Diphtheria containing vaccine (IMMZ.A1.DE3) and dose > 3 during reporting period
 * Denominator: Country defined target population (see comments)
 * Denominator Computation: PARAMETER country defined target population.
 * 
 * Disaggregation:
 *   - Dose Sequence (4, 5, 6)
 *   - Geographic Region
 * 
 * References: WHO / UNICEF Join Reporting Form (3 - element 4060, 4070, 4080)
 */

library IMMZIND13

using FHIR version '4.0.1'

include FHIRHelpers version '4.0.1'
include IMMZCommon called IMMZCom
include IMMZConcepts called IMMZc
include IMMZStratifiers called IMMZStratifiers
include IMMZVaccineLibrary called IMMZvl

parameter "Measurement Period" Interval<Date>

context Patient

/*
 * Numerator: Number of administrations of booster vaccines containing a diphtheria component during the reporting period.
 * Numerator Computation: COUNT immunization events WHERE administered product is a Diphtheria containing vaccine (IMMZ.A1.DE3) and dose > 3 during reporting period
 */
define "numerator":
	true // TODO: Write logic here 

/*
 * Denominator: Country defined target population (see comments)
 * Denominator Computation: PARAMETER country defined target population.
 */
define "denominator":
	true // TODO: Write logic here 

/*
 * Disaggregator: Dose Sequence (4, 5, 6)
 */
define "Dose Sequence  Stratifier":
	true // todo: fill in logic

/*
 * Disaggregator: Geographic Region
 */
define "Geographic Region Stratifier":
	IMMZStratifiers."By Geographic Region Stratifier"

