/*
 * Library: IMMZ.IND.11
 * Immunization coverage for Pneumococcal containing vaccine (Estimated Denominator) 
 * Compares the administered doses of pneumococcal containing vaccine with the number of surviving infants (with the exception of final dose which is country supplied denominator definition) expressed as a percentage
 * 
 * Numerator: Number of administrations of vaccines containing an Pneumococcal component during the reporting period. 
 * Numerator Computation: COUNT immunization events WHERE administered product is a Pneumococcal vaccine (IMMZ.A1.DE13) during reporting period.
 * Denominator: Estimated number of surviving infants (dose 1 and 2) or country supplied denominator definition (dose 3)
 * Denominator Computation: PARAMETER number of surviving infants and PARAMETER of country supplied denominator (if dose sequence = 3)
 * 
 * Disaggregation:
 *   - Dose Sequence (1, 2, 3)
 *   - Age Group (< 1 year or > 1 year)
 *   - Geographic Region
 *   - Administrative Gender (or Biological Sex)
 * 
 * References: WHO Immunization Facility Analysis Guide (1), WHO / UNICEF Joint Reporting Form (3- elements 4190, 4200, 4210)
 */

library IMMZIND11

// Start Skeleton CQL
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1'
include IMMZCommon called IMMZCom
include IMMZConcepts called IMMZc
include IMMZConfig called IMMZCon
include IMMZStratifiers called IMMZStratifiers
include IMMZVaccineLibrary called IMMZvl
include FHIRCommon called FC
// End Skeleton CQL
parameter "Measurement Period" Interval<Date>

context Patient

/*
 * Numerator: Number of administrations of vaccines containing an Pneumococcal component during the reporting period.
 * Numerator Computation: COUNT immunization events WHERE administered product is a Pneumococcal vaccine (IMMZ.A1.DE13) during reporting period.
 */
define "measure-population":
	true // TODO: Write logic here 


/*
 * Disaggregator: Dose Sequence (1, 2, 3)
 */
define "Dose Sequence Stratifier":
	true // todo: fill in logic

/*
 * Disaggregator: Age Group (< 1 year or > 1 year)
 */
define "Age Group Stratifier":
	true // todo: fill in logic

/*
 * Disaggregator: Geographic Region
 */
define "Geographic Region Stratifier":
	true // todo: fill in logic

/*
 * Disaggregator: Administrative Gender (or Biological Sex)
 */
define "Administrative Gender Stratifier":
	true // todo: fill in logic

/* End of IMMZ.IND.11 */
