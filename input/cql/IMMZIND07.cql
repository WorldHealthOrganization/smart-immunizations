/*
 * Library: IMMZ.IND.07
 * Immunization coverage for Meningococcal containing vaccine (Estimated Denominator) 
 * Compares the administered doses of meningococcal containing vaccine with the number of estimated surviving infants expressed as a percentage. 
 * 
 * Numerator: Number of administrations of vaccines containing an Meningococcal component during reporting period 
 * Numerator Computation: COUNT immunization events WHERE administered product is  a Meningococcal vaccine (IMMZ.A1.DE10) during reporting period
 * Denominator: Estimated number of surviving infants
 * Denominator Computation: PARAMETER number of surviving infants
 * 
 * Disaggregation:
 *   - Dose Sequence (1, 2)
 *   - Age Group (< 1 year or > 1 year)
 *   - Geographic Region 
 * 
 * References: WHO Immunization Facility Analysis Guide (1), WHO / UNICEF Joint Reporting Form (3 - element 4280)
 */

library IMMZIND07

// Start Skeleton CQL
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1'
include IMMZCommon called IMMZCom
include IMMZConcepts called IMMZc
include IMMZStratifiers called IMMZStratifiers
include IMMZVaccineLibrary called IMMZvl
// End Skeleton CQL
parameter "Measurement Period" Interval<Date>

context Patient

/*
 * Numerator: Number of administrations of vaccines containing an Meningococcal component during reporting period
 * Numerator Computation: COUNT immunization events WHERE administered product is  a Meningococcal vaccine (IMMZ.A1.DE10) during reporting period
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
 * Disaggregator: Dose Sequence (1, 2)
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
define "Geographic Region  Stratifier":
	true // todo: fill in logic

/*
 * Disaggregator: 
 */
define " Stratifier":
	true // todo: fill in logic

/* End of IMMZ.IND.07 */
