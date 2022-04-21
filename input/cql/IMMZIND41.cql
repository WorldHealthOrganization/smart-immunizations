/*
 * Library: IMMZ.IND.41
 * Immunization coverage for Rotavirus containing vaccines (Computed Denominator) 
 * Compares the administered doses of rotavirus containing vaccine with the number of registered children (under 2) expressed as a percentage
 * 
 * Numerator: Number of administrations of vaccines containing a rotavirus component during reporting period. 
 * Numerator Computation: COUNT immunization events where administered product is a rotavirus vaccine (IMMZ.A1.DE16) during reporting period
 * Denominator: Number of non-deceased children under 2.
 * Denominator Computation: COUNT Patient WHERE age at reporting period < 2 yr. AND deceasedDate is not populated.
 * 
 * Disaggregation:
 *   - Dose Sequence (1, 2, 3)
 *   - Age Group (< 1 year or > 1 year)
 *   - Geographic Region
 *   - Gender
 * 
 * References: WHO Immunization Facility Analysis Guide (1), WHO / UNICEF Joint Reporting Form (3 - elements 4220, 4230)
 */

library IMMZIND41

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
 * Numerator: Number of administrations of vaccines containing a rotavirus component during reporting period.
 * Numerator Computation: COUNT immunization events where administered product is a rotavirus vaccine (IMMZ.A1.DE16) during reporting period
 */
define "numerator":
	true // TODO: Write logic here 

/*
 * Denominator: Number of non-deceased children under 2.
 * Denominator Computation: COUNT Patient WHERE age at reporting period < 2 yr. AND deceasedDate is not populated.
 */
define "denominator":
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
 * Disaggregator: Gender
 */
define "Gender Stratifier":
	true // todo: fill in logic

/* End of IMMZ.IND.41 */
