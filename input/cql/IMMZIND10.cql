/*
 * Library: IMMZ.IND.10
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
 * 
 * References: WHO Immunization Facility Analysis Guide (1), WHO / UNICEF Joint Reporting Form (3 - elements 4220, 4230)
 */

library IMMZIND10

using FHIR version '4.0.1'

include FHIRHelpers version '4.0.1'
include IMMZCommon called IMMZCom
include IMMZConcepts called IMMZc
include IMMZStratifiers called IMMZStratifiers
include IMMZVaccineLibrary called IMMZvl

parameter "Measurement Period" Interval<Date>
context Patient

/*
 * Numerator: Number of administrations of vaccines containing a rotavirus component during reporting period.
 * Numerator Computation: COUNT immunization events where administered product is a rotavirus vaccine (IMMZ.A1.DE16) during reporting period
 */
define "numerator":
	true // TODO: Write logic here
/*
 * Denominator: Estimated number of surviving infants
 * Denominator Computation: PARAMETER number of surviving infants
 */
define "denominator":
	true // TODO: Write logic here
/*
 * Disaggregator: Dose Sequence (1, 2, 3)
 */
define "Dose Sequence  Stratifier":
	true // todo: fill in logic
/*
 * Disaggregator: Age Group (< 1 year or > 1 year)
 */
define "Age Group  Stratifier":
	true // todo: fill in logic
/*
 * Disaggregator: Geographic Region
 */
define "Geographic Region Stratifier":
	IMMZStratifiers."By Geographic Region Stratifier"
/* End of IMMZ.IND.10 */
