/*
 * Library: IMMZ.IND.35
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
 * 
 * References: WHO Immunization Facility Analysis Guide (1), WHO / UNICEF Joint Reporting Form (3 - element 4280)
 */

library IMMZIND35

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
 * Denominator: Number of registered, surviving infants.
 * Denominator Computation: COUNT Patient WHERE age at reporting period < 12 months AND deceasedDate is not populated.
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

/* End of IMMZ.IND.35 */
