/*
 * Library: IMMZ.IND.48
 * Immunization coverage for Japanese encephalitis vaccines (Computed Denominator) 
 * Compares the administered doses of Japanese encephalitis vaccines with the number of immunization recommendations for Japanese encephalitis expressed as a percentage.
 * 
 * Numerator: Number of administrations of vaccines which contain Japanese encephalitis component during the reporting period. 
 * Numerator Computation: COUNT immunization events WHERE administered product is a Japanese Encephalitis vaccine (IMMZ.A1.DE8) during reporting period.
 * Denominator: Number of immunization recommendations for Japanese encephalitis containing vaccines dur during reporting period.
 * Denominator Computation: COUNT Immunization recommendation WHERE recommended product is Japanese encephalitis (IMMZ.A1.DE8) during reporting period.
 * 
 * Disaggregation:
 *   - Geographic Region
 *   - Gender
 * 
 * References: WHO / UNICEF Joint Reporting Form (3 - element 4300)
 */

library IMMZIND48

// Start Skeleton CQL
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1'
include IMMZCommon called IMMZCom
include IMMZConcepts called IMMZc
include IMMZConfig called IMMZCon
include IMMZStratifiers called IMMZStratifiers
include IMMZVaccineLibrary called IMMZvl
include FHIRCommon called FC
// End Skeleton CQL
parameter "Measurement Period" Interval<Date>

context Patient

/*
 * Numerator: Number of administrations of vaccines which contain Japanese encephalitis component during the reporting period.
 * Numerator Computation: COUNT immunization events WHERE administered product is a Japanese Encephalitis vaccine (IMMZ.A1.DE8) during reporting period.
 */
define "numerator":
	true // TODO: Write logic here 

/*
 * Denominator: Number of immunization recommendations for Japanese encephalitis containing vaccines dur during reporting period.
 * Denominator Computation: COUNT Immunization recommendation WHERE recommended product is Japanese encephalitis (IMMZ.A1.DE8) during reporting period.
 */
define "denominator":
	true // TODO: Write logic here 

/*
 * Disaggregator: Geographic Region
 */
define "Geographic Region Stratifier":
	true // todo: fill in logic

/*
 * Disaggregator: Gender
 */
define "Gender Stratifier":
	true // todo: fill in logic

/* End of IMMZ.IND.48 */
