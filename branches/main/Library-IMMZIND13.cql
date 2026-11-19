/*
 * Library: IMMZ.IND.13
 * Immunization coverage for Rotavirus containing vaccines (Estimated Denominator) 
 * Compares the administered doses of rotavirus containing vaccine with the number of surviving infants expressed as a percentage
 * 
 * Numerator: Number of administrations of vaccines containing a rotavirus component during reporting period. 
 * Numerator Computation: COUNT immunization events where administered product is a rotavirus vaccine (IMMZ.A1.DE16) during reporting period
 * Denominator: Estimated number of surviving infants
 * Denominator Computation: PARAMETER number of surviving infants
 * 
 * Disaggregation:
 *   - Dose Sequence (1, 2, 3)
 *   - Age Group (< 1 year or > 1 year)
 *   - Geographic Region
 *   - Administrative Gender (or Biological Sex)
 * 
 * References: WHO Immunization Facility Analysis Guide (1), WHO / UNICEF Joint Reporting Form (3 - elements 4220, 4230)
 */

library IMMZIND13

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
define "measure-population":
	exists(IMMZIndCom."Rotavirus Doses Administered to Patient During Measurement Period")


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
define "Administrative Gender Stratifier":
	IMMZIndCom."By Administrative Gender Stratifier"

/* End of IMMZ.IND.13 */
