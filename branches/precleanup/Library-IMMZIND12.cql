/*
 * Library: IMMZ.IND.12
 * Immunization coverage for Hemophilus containing vaccine (Estimated Denominator) 
 * Compares the administered doses of haemophilus containing vaccine with the estimated number of surviving infants expressed as a percentage 
 * 
 * Numerator: Number of administrations of vaccines containing an Haemophilus component during the reporting period. 
 * Numerator Computation: COUNT immunization events WHERE administered product is a Haemophilus vaccine (IMMZ.A1.DE4) during reporting period.
 * Denominator: Estimated number of surviving infants
 * Denominator Computation: PARAMETER number of surviving infants.
 * 
 * Disaggregation:
 *   - Age Group (<1 year or > 1 year)
 *   - Geographic Region
 *   - Administrative Gender (or Biological Sex)
 * 
 * References: WHO Immunization Facility Analysis Guide (1), WHO / UNICEF Joint Reporting Form (3 - element 4180)
 */

library IMMZIND12

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
 * Numerator: Number of administrations of vaccines containing an Hib component during the reporting period.
 * Numerator Computation: COUNT immunization events WHERE administered product is a Hib vaccine (IMMZ.A1.DE4) during reporting period.
 */
define "measure-population":
	exists(IMMZIndCom."Hib Doses Administered to Patient During Measurement Period")


/*
 * Disaggregator: Age Group (<1 year or > 1 year)
 */
define "Age Group Stratifier":
	IMMZIndCom."Infant By Age Stratifier" // todo: fill in logic

/*
 * Disaggregator: Geographic Region
 */
define "Geographic Region Stratifier":
	IMMZIndCom."By Geographic Region Stratifier" // todo: fill in logic

/*
 * Disaggregator: Administrative Gender (or Biological Sex)
 */
define "Administrative Gender Stratifier":
	IMMZIndCom."By Administrative Gender Stratifier"

/* End of IMMZ.IND.12 */
