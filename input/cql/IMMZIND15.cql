/*
 * Library: IMMZ.IND.15
 * Immunization coverage for Tetanus containing vaccine boosters (Estimated Denominator) 
 * Compares the administered booster dose of tetanus containing vaccines (doses 4, 5, 6) with a country specified denominator expressed as a percentage
 * 
 * Numerator: Number of administrations of booster containing tetanus component during the reporting period. 
 * Numerator Computation: COUNT immunization events WHERE administered product is a Tetanus containing vaccine (IMMZ.A1.DE19) and dose > 3 during reporting period
 * Denominator: Country defined target population.
 * Denominator Computation: PARAMETER country defined target population.
 * 
 * Disaggregation:
 *   - Dose Sequence (4, 5, 6)
 *   - Geographic Region
 * 
 * References: WHO / UNICEF Joint Reporting Form (3 - element 4100, 4110, 4120)
 */

library IMMZIND15

using FHIR version '4.0.1'

include FHIRHelpers version '4.0.1'
include IMMZCommon called IMMZCom
include IMMZConcepts called IMMZc
include IMMZStratifiers called IMMZStratifiers
include IMMZVaccineLibrary called IMMZvl

parameter "Measurement Period" Interval<Date>
context Patient

/*
 * Numerator: Number of administrations of booster containing tetanus component during the reporting period.
 * Numerator Computation: COUNT immunization events WHERE administered product is a Tetanus containing vaccine (IMMZ.A1.DE19) and dose > 3 during reporting period
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
 * Disaggregator: Dose Sequence (4, 5, 6)
 */
define "Dose Sequence  Stratifier":
	true // todo: fill in logic
/*
 * Disaggregator: Geographic Region
 */
define "Geographic Region Stratifier":
	IMMZStratifiers."By Geographic Region Stratifier"
/* End of IMMZ.IND.15 */
