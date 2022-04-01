/*
 * Library: IMMZ.IND.15
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
 *   - Administrative Gender (or Biological Sex)
 * 
 * References: WHO / UNICEF Join Reporting Form (3 - element 4060, 4070, 4080)
 */

library IMMZIND15

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
/*
 * Disaggregator: Administrative Gender (or Biological Sex)
 */
define "Administrative Gender Stratifier":
	true // todo: fill in logic

/* End of IMMZ.IND.15 */
