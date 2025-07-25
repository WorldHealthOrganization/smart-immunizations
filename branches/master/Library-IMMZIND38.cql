/*
 * Library: IMMZ.IND.38
 * Immunization coverage for Meningococcal containing vaccine (Computed Denominator) 
 * Compares the administered doses of a meningococcal containing vaccine with the number of registered surviving infants.
 * 
 * Numerator: Number of administrations of vaccines containing an Meningococcal component during reporting period 
 * Numerator Computation: COUNT immunization events WHERE administered product is  a Meningococcal vaccine (IMMZ.A1.DE10) during reporting period
 * Denominator: Number of registered, surviving infants.
 * Denominator Computation: COUNT Patient WHERE age at reporting period < 12 months AND deceasedDate is not populated.
 * 
 * Disaggregation:
 *   - Dose Sequence (1, 2)
 *   - Age Group (< 1 year or > 1 year)
 *   - Geographic Region 
 *   - Gender
 * 
 * References: WHO Immunization Facility Analysis Guide (1), WHO / UNICEF Joint Reporting Form (3 - element 4280)
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
include FHIRCommon called FC
// End Skeleton CQL
parameter "Measurement Period" Interval<Date>
context Patient

/*
 * Numerator: Number of administrations of vaccines containing an Meningococcal component during reporting period
 * Numerator Computation: COUNT immunization events WHERE administered product is  a Meningococcal vaccine (IMMZ.A1.DE10) during reporting period
 */
define "numerator":
	exists(IMMZIndCom."Meningococcal Doses Administered to Patient During Measurement Period") // TODO: Write logic here
	
/*
 * Denominator: Number of registered, surviving infants.
 * Denominator Computation: COUNT Patient WHERE age at reporting period < 12 months AND deceasedDate is not populated.
 */
define "denominator":
	IMMZIndCom."Patient Under 12 Months Old During Measurement Period"
	and not (IMMZIndCom."Patient Deceased During Measurement Period")
/*
 * Disaggregator: Dose Sequence (1, 2)
 */
define "Dose Sequence Stratifier":
	IMMZIndCom."Meningococcal Doses Administered to Patient During Measurement Period" I
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
 * Disaggregator: Gender
 */
define "Gender Stratifier":
	IMMZIndCom."By Administrative Gender Stratifier"

/* End of IMMZ.IND.38 */
