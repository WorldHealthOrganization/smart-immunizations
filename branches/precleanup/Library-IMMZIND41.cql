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
include IMMZIndicatorCommon called IMMZIndCom
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
	exists(IMMZIndCom."Rotavirus Doses Administered to Patient During Measurement Period")
	
/*
 * Denominator: Number of non-deceased children under 2.
 * Denominator Computation: COUNT Patient WHERE age at reporting period < 2 yr. AND deceasedDate is not populated.
 */
define "denominator":
	IMMZIndCom."Patient Under 2 Years Old During Measurement Period"
	and not (IMMZIndCom."Patient Deceased During Measurement Period")

/*
 * Disaggregator: Dose Sequence (1, 2, 3)
 */
define "Dose Sequence Stratifier":
	IMMZIndCom."Rotavirus Doses Administered to Patient During Measurement Period" I
	return (singleton from I.protocolApplied).doseNumber

/*
 * Disaggregator: Age Group (< 1 year or > 1 year)
 */
define "Age Group Stratifier":
	IMMZIndCom."Infant By Age Stratifier"

/*
 * Disaggregator: Geographic Region
 */
define "Geographic Region Stratifier":
	IMMZIndCom."By Geographic Region Stratifier"

/*
 * Disaggregator: Administrative Gender (or Biological Sex)
 */
define "Gender Stratifier":
	IMMZIndCom."By Administrative Gender Stratifier"

/* End of IMMZ.IND.41 */
