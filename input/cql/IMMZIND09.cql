/*
 * Library: IMMZ.IND.09
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
 * 
 * References: WHO Immunization Facility Analysis Guide (1), WHO / UNICEF Joint Reporting Form (3 - element 4180)
 */

library IMMZIND09

using FHIR version '4.0.1'

include FHIRHelpers version '4.0.1'
include IMMZCommon called IMMZCom
include IMMZConcepts called IMMZc
include IMMZStratifiers called IMMZStratifiers
include IMMZVaccineLibrary called IMMZvl

parameter "Measurement Period" Interval<Date> default Interval[@2022-01-01, @2022-01-31]
context Patient

/*
 * Numerator: Number of administrations of vaccines containing an Haemophilus component during the reporting period.
 * Numerator Computation: COUNT immunization events WHERE administered product is a Haemophilus vaccine (IMMZ.A1.DE4) during reporting period.
 */
define "numerator":
	true // TODO: Write logic here
/*
 * Denominator: Estimated number of surviving infants
 * Denominator Computation: PARAMETER number of surviving infants.
 */
define "denominator":
	true // TODO: Write logic here
/*
 * Disaggregator: Age Group (<1 year or > 1 year)
 */
define "Age Group  Stratifier":
	true // todo: fill in logic
/*
 * Disaggregator: Geographic Region
 */
define "Geographic Region Stratifier":
	IMMZStratifiers."By Geographic Region Stratifier"
/* End of IMMZ.IND.09 */
