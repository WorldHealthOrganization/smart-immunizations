/*
 * Library: IMMZ.IND.40
 * Immunization coverage for Haemophilus containing vaccine (Computed Denominator) 
 * Compares the administered doses of haemophilus containing vaccine with the registered number of surviving infants, expressed as a percentage .
 * 
 * Numerator: Number of administrations of vaccines containing an Haemophilus component during the reporting period. 
 * Numerator Computation: COUNT immunization events WHERE administered product is a Haemophilus vaccine (IMMZ.A1.DE4) during reporting period.
 * Denominator: Number of registered, surviving infants.
 * Denominator Computation: COUNT Patient WHERE age at reporting period < 12 months AND deceasedDate is not populated.
 * 
 * Disaggregation:
 *   - Age Group (<1 year or > 1 year)
 *   - Geographic Region
 *   - Gender
 * 
 * References: WHO Immunization Facility Analysis Guide (1), WHO / UNICEF Joint Reporting Form (3 - element 4180)
 */

library IMMZIND40

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
 * Numerator: Number of administrations of vaccines containing an Haemophilus component during the reporting period.
 * Numerator Computation: COUNT immunization events WHERE administered product is a Haemophilus vaccine (IMMZ.A1.DE4) during reporting period.
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
 * Disaggregator: Age Group (<1 year or > 1 year)
 */
define "Age Group Stratifier":
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
/* End of IMMZ.IND.40 */
