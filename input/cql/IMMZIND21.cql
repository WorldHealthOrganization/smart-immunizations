/*
 * Library: IMMZ.IND.21
 * Immunization coverage for seasonal influenza (Estimated Denominator) 
 * Compares the administered doses of seasonal influenza vaccines with country defined target population (at risk) expressed as a percentage
 * 
 * Numerator: Number of administrations of seasonal influenza vaccines during reporting period. 
 * Numerator Computation: COUNT immunization events WHERE administered product is a seasonal influenza vaccine (IMMZ.A1.DE18) during reporting period.
 * Denominator: Country defined target population of at-risk individuals.
 * Denominator Computation: PARAMETER country defined target population.
 * 
 * Disaggregation:
 *   - Age Group (< 1 year, < 15 year,  > 60 year)
 *   - Geographic Region
 *   - Gender
 * 
 * References: WHO / UNICEF Joint Reporting Form (3 - elements 7030 - 7050)
 */

library IMMZIND21

// Start Skeleton CQL
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1'
include IMMZCommon called IMMZCom
include IMMZConcepts called IMMZc
include IMMZConfig called IMMZCon
include IMMZIndicatorCommon called IMMZIndCom
include IMMZVaccineLibrary called IMMZvl
// End Skeleton CQL
parameter "Measurement Period" Interval<Date> default Interval[@2022-01-01, @2022-01-31]
context Patient

/*
 * Numerator: Number of administrations of seasonal influenza vaccines during reporting period.
 * Numerator Computation: COUNT immunization events WHERE administered product is a seasonal influenza vaccine (IMMZ.A1.DE18) during reporting period.
 */
define "measure-population":
	true // TODO: Write logic here
/*
 * Denominator: Country defined target population of at-risk individuals.
 * Denominator Computation: PARAMETER country defined target population.
 */
define "denominator":
	true // TODO: Write logic here
/*
 * Disaggregator: Age Group (< 1 year, < 15 year,  > 60 year)
 */
define "Age Group  Stratifier":
	true // todo: fill in logic

/*
 * Disaggregator: Geographic Region
 */
define "Geographic Region Stratifier":
	IMMZIndCom."By Geographic Region Stratifier"
/*
 * Disaggregator: Gender
 */
define "Gender Stratifier":
	true // todo: fill in logic

/* End of IMMZ.IND.21 */
