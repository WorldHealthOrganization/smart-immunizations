/*
 * Library: IMMZ.IND.45
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
 * 
 * References: WHO / UNICEF Joint Reporting Form (3 - element 4300)
 */

library IMMZIND45

using FHIR version '4.0.1'

include FHIRHelpers version '4.0.1'
include IMMZCommon called IMMZCom
include IMMZConcepts called IMMZc
include IMMZStratifiers called IMMZStratifiers
include IMMZVaccineLibrary called IMMZvl

parameter "Measurement Period" Interval<Date> default Interval[@2022-01-01, @2022-01-31]
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
	IMMZStratifiers."By Geographic Region Stratifier"
/* End of IMMZ.IND.45 */
