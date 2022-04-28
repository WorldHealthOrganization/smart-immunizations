/*
 * Library: IMMZ.IND.49
 * Immunization coverage for Typhoid vaccines (Computed Denominator) 
 * Compares the administered doses of Typhoid vaccines with the number of immunization recommendations for typhoid vaccines expressed as a percentage.
 * 
 * Numerator: Number of administrations of vaccines which contain a typhoid component during the reporting period. 
 * Numerator Computation: COUNT immunization events WHERE administered product is a Typhoid vaccine (IMMZ.A1.DE21) during reporting period.
 * Denominator: Number of immunization recommendations for typhoid vaccines dur during reporting period.
 * Denominator Computation: COUNT Immunization recommendation WHERE recommended product is typhoid vaccine (IMMZ.A1.DE21) during reporting period.
 * 
 * Disaggregation:
 *   - Dose Sequence (1, 2, 3)
 *   - Geographic Region
 *   - Gender
 * 
 * References: WHO / UNICEF Joint Reporting Form (3- element 4350)
 */

library IMMZIND49

// Start Skeleton CQL
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1'
include IMMZCommon called IMMZCom
include IMMZConcepts called IMMZc
include IMMZConfig called IMMZCon
include IMMZIndicatorCommon called IMMZIndCom
include IMMZVaccineLibrary called IMMZvl
include FHIRCommon called FC
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
 * Denominator: Number of immunization recommendations for typhoid vaccines dur during reporting period.
 * Denominator Computation: COUNT Immunization recommendation WHERE recommended product is typhoid vaccine (IMMZ.A1.DE21) during reporting period.
 */
define "denominator":
	true // TODO: Write logic here 

/*
 * Disaggregator: Dose Sequence (1, 2, 3)
 */
define "Dose Sequence Stratifier":
	true // todo: fill in logic

/*
 * Disaggregator: Geographic Region
 */
define "Geographic Region Stratifier":
	true // todo: fill in logic

/*
 * Disaggregator: Gender
 */
define "Gender Stratifier":
	true // todo: fill in logic

/* End of IMMZ.IND.49 */
