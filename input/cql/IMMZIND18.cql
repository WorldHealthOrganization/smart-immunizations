/*
 * Library: IMMZ.IND.18
 * Immunization coverage for Yellow Fever vaccine (Estimated Denominator) 
 * Compares the administered dose of yellow fever vaccine with the number of surviving infants.
 * 
 * Numerator: Number of administrations of vaccines containing a yellow fever component during reporting period. 
 * Numerator Computation: COUNT immunization events WHERE administered product is a Yellow Fever vaccine (IMMZ.A1.DE23) during reporting period
 * Denominator: Number of surviving infants 
 * Denominator Computation: PARAMETER number of surviving infants
 * 
 * Disaggregation:
 *   - Geographic Region
 *   - Administrative Gender (or Biological Sex)
 * 
 * References: WHO / UNICEF Joint Reporting Form (3 - element 4270)
 */

library IMMZIND18

// Start Skeleton CQL
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1'
include IMMZCommon called IMMZCom
include IMMZConcepts called IMMZc
include IMMZConfig called IMMZCon
include IMMZStratifiers called IMMZStratifiers
include IMMZVaccineLibrary called IMMZvl
// End Skeleton CQL
parameter "Measurement Period" Interval<Date> default Interval[@2022-01-01, @2022-01-31]
context Patient

/*
 * Numerator: Number of administrations of vaccines containing a yellow fever component during reporting period.
 * Numerator Computation: COUNT immunization events WHERE administered product is a Yellow Fever vaccine (IMMZ.A1.DE23) during reporting period
 */
define "numerator":
	true // TODO: Write logic here
/*
 * Denominator: Number of surviving infants 
 * Denominator Computation: PARAMETER number of surviving infants
 */
define "denominator":
	true // TODO: Write logic here
/*
 * Disaggregator: Geographic Region
 */
define "Geographic Region Stratifier":
	IMMZStratifiers."By Geographic Region Stratifier"
/*
 * Disaggregator: Administrative Gender (or Biological Sex)
 */
define "Administrative Gender Stratifier":
	true // todo: fill in logic

/* End of IMMZ.IND.18 */
