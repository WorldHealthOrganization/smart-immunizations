/*
 * Library: IMMZ.IND.20
 * Immunization coverage for Typhoid vaccines (Estimated Denominator) 
 * Compares the administered doses of Typhoid vaccines with a country defined target population expressed as a percentage.
 * 
 * Numerator: Number of administrations of vaccines which contain a typhoid component during the reporting period. 
 * Numerator Computation: COUNT immunization events WHERE administered product is a Typhoid vaccine (IMMZ.A1.DE21) during reporting period.
 * Denominator: Country defined target population.
 * Denominator Computation: PARAMETER country defined target population.
 * 
 * Disaggregation:
 *   - Dose Sequence (1, 2, 3)
 *   - Geographic Region
 *   - Administrative Gender (or Biological Sex)
 * 
 * References: WHO / UNICEF Joint Reporting Form (3- element 4350)
 */

library IMMZIND20

// Start Skeleton CQL
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1'
include IMMZCommon called IMMZCom
include IMMZConcepts called IMMZc
include IMMZConfig called IMMZCon
include IMMZIndicatorCommon called IMMZIndCom
include IMMZVaccineLibrary called IMMZvl
// End Skeleton CQL
parameter "Measurement Period" Interval<Date> default Interval[@2022-01-01, @2022-01-31]
context Patient

/*
 * Numerator: Number of administrations of vaccines which contain a typhoid component during the reporting period.
 * Numerator Computation: COUNT immunization events WHERE administered product is a Typhoid vaccine (IMMZ.A1.DE21) during reporting period.
 */
define "measure-population":
	true // TODO: Write logic here
/*
 * Denominator: Country defined target population.
 * Denominator Computation: PARAMETER country defined target population.
 */
define "denominator":
	true // TODO: Write logic here
/*
 * Disaggregator: Dose Sequence (1, 2, 3)
 */
define "Dose Sequence  Stratifier":
	true // todo: fill in logic

/*
 * Disaggregator: Geographic Region
 */
define "Geographic Region Stratifier":
	IMMZIndCom."By Geographic Region Stratifier"
/*
 * Disaggregator: Administrative Gender (or Biological Sex)
 */
define "Administrative Gender Stratifier":
	true // todo: fill in logic

/* End of IMMZ.IND.20 */
