/*
 * Library: IMMZ.IND.17
 * Immunization coverage for Japanese encephalitis vaccines (Estimated Denominator) 
 * Compares the administered doses of Japanese encephalitis vaccines with a country specified target population expressed as a percentage.
 * 
 * Numerator: Number of administrations of vaccines which contain Japanese encephalitis component during the reporting period. 
 * Numerator Computation: COUNT immunization events WHERE administered product is a Japanese Encephalitis vaccine (IMMZ.A1.DE8) during reporting period.
 * Denominator: Country defined target population.
 * Denominator Computation: PARAMETER country defined target population.
 * 
 * Disaggregation:
 *   - Geographic Region
 * 
 * References: WHO / UNICEF Joint Reporting Form (3 - element 4300)
 */

library IMMZIND17

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
 * Denominator: Country defined target population.
 * Denominator Computation: PARAMETER country defined target population.
 */
define "denominator":
	true // TODO: Write logic here
/*
 * Disaggregator: Geographic Region
 */
define "Geographic Region Stratifier":
	IMMZStratifiers."By Geographic Region Stratifier"
/* End of IMMZ.IND.17 */
