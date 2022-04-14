/*
 * Library: IMMZ.IND.38
 * Immunization coverage for Pneumococcal containing vaccine (Computed Denominator) 
 * Compares the administered doses of a pneumococcal containing vaccine with the number of registered surviving infants expressed as a percentage.
 * 
 * Numerator: Number of administrations of vaccines containing an Pneumococcal component during the reporting period. 
 * Numerator Computation: COUNT immunization events WHERE administered product is a Pneumococcal vaccine (IMMZ.A1.DE13) during reporting period.
 * Denominator: Number of registered, surviving infants.
 * Denominator Computation: COUNT Patient WHERE age at reporting period < 12 months AND deceasedDate is not populated.
 * 
 * Disaggregation:
 *   - Dose Sequence (1, 2, 3)
 *   - Age Group (< 1 year or > 1 year)
 *   - Geographic Region
 *   - Gender
 * 
 * References: WHO Immunization Facility Analysis Guide (1), WHO / UNICEF Joint Reporting Form (3- elements 4190, 4200, 4210)
 */

library IMMZIND38

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
 * Numerator: Number of administrations of vaccines containing an Pneumococcal component during the reporting period.
 * Numerator Computation: COUNT immunization events WHERE administered product is a Pneumococcal vaccine (IMMZ.A1.DE13) during reporting period.
 */
define "numerator":
	true // TODO: Write logic here
/*
 * Denominator: Number of registered, surviving infants.
 * Denominator Computation: COUNT Patient WHERE age at reporting period < 12 months AND deceasedDate is not populated.
 */
define "denominator":
	true // TODO: Write logic here
/*
 * Disaggregator: Dose Sequence (1, 2, 3)
 */
define "Dose Sequence  Stratifier":
	true // todo: fill in logic
/*
 * Disaggregator: Age Group (< 1 year or > 1 year)
 */
define "Age Group  Stratifier":
	true // todo: fill in logic
/*
 * Disaggregator: Geographic Region
 */
define "Geographic Region Stratifier":
	IMMZIndCom."By Geographic Region Stratifier"
/*
 * Disaggregator: Gender
 */
define "Gender Stratifier":
	true // todo: fill in logic

/* End of IMMZ.IND.38 */
