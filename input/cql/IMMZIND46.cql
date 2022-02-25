/*
 * Library: IMMZ.IND.46
 * Immunization coverage for Typhoid vaccines (Computed Denominator) 
 * Compares the administered doses of Typhoid vaccines with the number of immunization recommendations for typhoid vaccines expressed as a percentage.
 * 
 * Numerator: Number of administrations of vaccines which contain a typhoid component during the reporting period. 
 * Numerator Computation: COUNT immunization events WHERE administered product is a Typhoid vaccine (IMMZ.A1.DE21) during reporting period.
 * Denominator: Number of immunization recommendations for typhoid vaccines dur during reporting period.
 * Denominator Computation: COUNT Immunization recommendation WHERE recommended product is typhoid vaccine (IMMZ.A1.DE21) during reporting period.
 * 
 * Disaggregation:
 *   - Dose Sequence (1, 2, 3)
 *   - Geographic Region
 * 
 * References: WHO / UNICEF Joint Reporting Form (3- element 4350)
 */

library IMMZIND46

using FHIR version '4.0.1'

include FHIRHelpers version '4.0.1'
include IMMZCommon called IMMZCom
include IMMZConcepts called IMMZc
include IMMZStratifiers called IMMZStratifiers
include IMMZVaccineLibrary called IMMZvl

parameter "Measurement Period" Interval<Date>
context Patient

/*
 * Numerator: Number of administrations of vaccines which contain a typhoid component during the reporting period.
 * Numerator Computation: COUNT immunization events WHERE administered product is a Typhoid vaccine (IMMZ.A1.DE21) during reporting period.
 */
define "numerator":
	true // TODO: Write logic here
/*
 * Denominator: Number of immunization recommendations for typhoid vaccines dur during reporting period.
 * Denominator Computation: COUNT Immunization recommendation WHERE recommended product is typhoid vaccine (IMMZ.A1.DE21) during reporting period.
 */
define "denominator":
	true // TODO: Write logic here
/*
 * Disaggregator: Dose Sequence (1, 2, 3)
 */
define "Dose Sequence  Stratifier":
	true // todo: fill in logic
/*
 * Disaggregator: Geographic Region
 */
define "Geographic Region Stratifier":
	IMMZStratifiers."By Geographic Region Stratifier"
/* End of IMMZ.IND.46 */
