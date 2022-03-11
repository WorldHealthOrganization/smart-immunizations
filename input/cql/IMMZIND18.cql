/*
 * Library: IMMZ.IND.18
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
 * 
 * References: WHO / UNICEF Joint Reporting Form (3- element 4350)
 */

library IMMZIND18

// Start Skeleton CQL
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1'
include IMMZCommon called IMMZCom
include IMMZConcepts called IMMZc
include IMMZStratifiers called IMMZStratifiers
include IMMZVaccineLibrary called IMMZvl
// End Skeleton CQL
parameter "Measurement Period" Interval<Date>

context Patient

/*
 * Numerator: Number of administrations of vaccines which contain a typhoid component during the reporting period.
 * Numerator Computation: COUNT immunization events WHERE administered product is a Typhoid vaccine (IMMZ.A1.DE21) during reporting period.
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
 * Disaggregator: Dose Sequence (1, 2, 3)
 */
define "Dose Sequence  Stratifier":
	true // todo: fill in logic

/*
 * Disaggregator: Geographic Region
 */
define "Geographic Region Stratifier":
	true // todo: fill in logic

/* End of IMMZ.IND.18 */
