/*
 * Library: IMMZ.IND.07
 * Immunization coverage for Measles containing vaccine (Estimated Denominator) 
 * Compares the administered doses of measles containing vaccines (MCV) with the estimated number of surviving infants (if dose 1) or a country supplied denominator (if dose 2) expressed as a percentage. 
 * 
 * Numerator: Number of administrations of vaccinations containing a Measles component during reporting period 
 * Numerator Computation: COUNT immunization events WHERE administered product is a Measles vaccine (IMMZ.A1.DE9) during reporting period
 * Denominator: Estimated number of surviving infants (for dose 1) and country supplied denominator for dose sequence 2 (see comments)
 * Denominator Computation: PARAMETER number of surviving infants (if Dose Sequence = 1) or PARAMETER of country supplied denominator (if Dose Sequence = 2)
 * 
 * Disaggregation:
 *   - Dose Sequence (1, 2)
 *   - Age Group (< 1 year or > 1 year)
 *   - Geographic Region
 *   - Administrative Gender (or Biological Sex)
 * 
 * References: WHO Immunization Facility Analysis Guide (1), WHO / UNICEF Joint Reporting Form (3 - elements 4240 and 4260 )
 */

library IMMZIND07

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
 * Numerator: Number of administrations of vaccinations containing a Measles component during reporting period
 * Numerator Computation: COUNT immunization events WHERE administered product is a Measles vaccine (IMMZ.A1.DE9) during reporting period
 */
define "measure-population":
	true // TODO: Write logic here
/*
 * Denominator: Estimated number of surviving infants (for dose 1) and country supplied denominator for dose sequence 2 (see comments)
 * Denominator Computation: PARAMETER number of surviving infants (if Dose Sequence = 1) or PARAMETER of country supplied denominator (if Dose Sequence = 2)
 */
define "denominator":
	true // TODO: Write logic here
/*
 * Disaggregator: Dose Sequence (1, 2)
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
	true // todo: fill in logic

/*
 * Disaggregator: Administrative Gender (or Biological Sex)
 */
define "Administrative Gender Stratifier":
	IMMZIndCom."By Administrative Gender Stratifier"

/* End of IMMZ.IND.07 */
