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
include IMMZIndicatorCommon called IMMZIndCom
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
	exists(IMMZIndCom."DTP Doses Administered to Patient During Measurement Period")
/*
 * Denominator: Number of registered, surviving infants whose age is less than 12 months during reporting period.
 * Denominator Computation: COUNT Patient WHERE age at reporting period < 12 months AND deceasedDate is not populated.
 */
define "denominator":
	IMMZIndCom."Patient Under 12 Months Old During Measurement Period"
	and not (IMMZIndCom."Patient Deceased During Measurement Period")
/*
 * Disaggregator: Dose Sequence (1, 2, 3)
 */
define "Dose Sequence Stratifier":
	IMMZIndCom."DTP Doses Administered to Patient During Measurement Period" I
	return (singleton from I.protocolApplied).doseNumber
/*
 * Disaggregator: Age Group (< 1 year or >1 year)
 */
define "Age Group Stratifier":
	IMMZIndCom."Infant By Age Stratifier"

/*
 * Disaggregator: Geographic Region
 */
define "Geographic Region Stratifier":
	    IMMZIndCom."By Geographic Region Stratifier"
/*
 * Disaggregator: Gender
 */
define "Gender Stratifier":
	IMMZIndCom."By Administrative Gender Stratifier"

/* End of IMMZ.IND.33 */
