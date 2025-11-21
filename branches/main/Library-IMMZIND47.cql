/*
 * Library: IMMZ.IND.47
 * Immunization coverage for Yellow Fever vaccine (Computed Denominator) 
 * Compares the administered dose of yellow fever vaccine with the number of registered surviving infants expressed as a percentage.
 * 
 * Numerator: Number of administrations of vaccines containing a yellow fever component during reporting period. 
 * Numerator Computation: COUNT immunization events WHERE administered product is a Yellow Fever vaccine (IMMZ.A1.DE23) during reporting period
 * Denominator: Number of registered, surviving infants.
 * Denominator Computation: COUNT Patient WHERE age at reporting period < 12 months AND deceasedDate is not populated.
 * 
 * Disaggregation:
 *   - Geographic Region
 *   - Gender
 * 
 * References: WHO / UNICEF Joint Reporting Form (3 - element 4270)
 */

library IMMZIND47

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
 * Numerator: Number of administrations of vaccines containing a yellow fever component during reporting period.
 * Numerator Computation: COUNT immunization events WHERE administered product is a Yellow Fever vaccine (IMMZ.A1.DE23) during reporting period
 */
define "numerator":
	exists(IMMZIndCom."Yellow Fever Doses Administered to Patient During Measurement Period") // TODO: Write logic here 

/*
 * Denominator: Number of registered, surviving infants.
 * Denominator Computation: COUNT Patient WHERE age at reporting period < 12 months AND deceasedDate is not populated.
 */
define "denominator":
	IMMZIndCom."Patient Under 12 Months Old During Measurement Period"
	and not (IMMZIndCom."Patient Deceased During Measurement Period")

/*
 * Disaggregator: Geographic Region
 */
define "Geographic Region Stratifier":
	IMMZIndCom."By Geographic Region Stratifier" // todo: fill in logic

/*
 * Disaggregator: Administrative Gender (or Biological Sex)
 */
define "Gender Stratifier":
	IMMZIndCom."By Administrative Gender Stratifier"
/* End of IMMZ.IND.47 */
