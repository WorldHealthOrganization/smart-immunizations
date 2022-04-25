/*
 * Library: IMMZ.IND.33
 * Immunization coverage for DTP containing vaccines (Computed Denominator) 
 * Compares the administered doses of a DTP containing vaccine with the registered number of surviving infants expressed as a percentage.
 * 
 * Numerator: Number of patients WHERE age at reporting period < 12 months and deceasedDate is not populated 
HAVING administration of vaccine product containing DTP component during the reporting period 
 * Numerator Computation: COUNT patients WHERE age at reporting period < 12 months AND deceasedDate is not populated 
HAVING immunization event WHERE administered product is a DTP vaccine (IMMZ.A1.DE24)
 * Denominator: Number of registered, surviving infants whose age is less than 12 months during reporting period.
 * Denominator Computation: COUNT Patient WHERE age at reporting period < 12 months AND deceasedDate is not populated.
 * 
 * Disaggregation:
 *   - Dose Sequence (1, 2, 3)
 *   - Age Group (< 1 year or >1 year)
 *   - Geographic Region
 *   - Gender
 * 
 * References: WHO Immunization Facility Analysis Guide (1), WHO / UNICEF Joint Reporting Form (3 - element 4040, 4050)
 */

library IMMZIND33

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
 * Numerator: Number of patients WHERE age at reporting period < 12 months and deceasedDate is not populated 
HAVING administration of vaccine product containing DTP component during the reporting period
 * Numerator Computation: COUNT patients WHERE age at reporting period < 12 months AND deceasedDate is not populated 
HAVING immunization event WHERE administered product is a DTP vaccine (IMMZ.A1.DE24)
 */
define "numerator":
	true // TODO: Write logic here 

/*
 * Denominator: Number of registered, surviving infants whose age is less than 12 months during reporting period.
 * Denominator Computation: COUNT Patient WHERE age at reporting period < 12 months AND deceasedDate is not populated.
 */
define "denominator":
	true // TODO: Write logic here 

/*
 * Disaggregator: Dose Sequence (1, 2, 3)
 */
define "Dose Sequence Stratifier":
	true // todo: fill in logic

/*
 * Disaggregator: Age Group (< 1 year or >1 year)
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

/* End of IMMZ.IND.33 */
