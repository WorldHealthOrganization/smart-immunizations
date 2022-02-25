/*
 * Library: IMMZ.IND.06
 * Immunization coverage for HPV (Estimated Denominator) 
 * Compares the administered doses of HPV vaccines with the country specified denominator for HPV coverage expressed as a percentage.
 * 
 * Numerator: Number of administrations of vaccines containing an HPV component during reporting period 
 * Numerator Computation: COUNT immunization events WHERE administered product is an HPV vaccine (IMMZ.A1.DE7) during reporting period
 * Denominator: Country defined target population (see comments)
 * Denominator Computation: PARAMETER country defined target population.
 * 
 * Disaggregation:
 *   - Dose Sequence (1, 2, 3)
 *   - Age Group (<= 9 years, 9  - 14 years, >= 15 years)
 *   - Geographic Region
 * 
 * References: WHO Immunization Facility Analysis Guide (1), WHO / UNICEF Joint Reporting Form (3 - elements 4330, 4340)
 */

library IMMZIND06

using FHIR version '4.0.1'

include FHIRHelpers version '4.0.1'
include IMMZCommon called IMMZCom
include IMMZConcepts called IMMZc
include IMMZStratifiers called IMMZStratifiers
include IMMZVaccineLibrary called IMMZvl

parameter "Measurement Period" Interval<Date>
context Patient

/*
 * Numerator: Number of administrations of vaccines containing an HPV component during reporting period
 * Numerator Computation: COUNT immunization events WHERE administered product is an HPV vaccine (IMMZ.A1.DE7) during reporting period
 */
define "numerator":
	true // TODO: Write logic here
/*
 * Denominator: Country defined target population (see comments)
 * Denominator Computation: PARAMETER country defined target population.
 */
define "denominator":
	true // TODO: Write logic here
/*
 * Disaggregator: Dose Sequence (1, 2, 3)
 */
define "Dose Sequence  Stratifier":
	true // todo: fill in logic
/*
 * Disaggregator: Age Group (<= 9 years, 9  - 14 years, >= 15 years)
 */
define "Age Group  Stratifier":
	true // todo: fill in logic
/*
 * Disaggregator: Geographic Region
 */
define "Geographic Region Stratifier":
	IMMZStratifiers."By Geographic Region Stratifier"
/* End of IMMZ.IND.06 */
