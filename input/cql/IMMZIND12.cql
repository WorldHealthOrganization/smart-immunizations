/*
 * Library: IMMZ.IND.12
 * Immunization coverage for Varicella vaccinations (Estimated Denominator) 
 * Compares the administered doses of varicella containing vaccine with a country specified denominator expressed as a percentage.
 * 
 * Numerator: Number of administrations of vaccines containing a varicella component during reporting period 
 * Numerator Computation: COUNT immunization events WHERE administered product is a Varicella vaccine (IMMZ.A1.DE.22) during reporting period
 * Denominator: Country defined denominator (no guidance on JRF)
 * Denominator Computation: PARAMETER country defined target population.
 * 
 * Disaggregation:
 *   - Dose Sequence (1, 2)
 *   - Age Group (< 12 months, 12 - 18 months, 18 - 36 months, 36 months - 12 years, > 12 years)
 *   - Geographic Region
 * 
 * References: WHO Immunization Facility Analysis Guide (1)
 */

library IMMZIND12

using FHIR version '4.0.1'

include FHIRHelpers version '4.0.1'
include IMMZCommon called IMMZCom
include IMMZConcepts called IMMZc
include IMMZStratifiers called IMMZStratifiers
include IMMZVaccineLibrary called IMMZvl

parameter "Measurement Period" Interval<Date>

context Patient

/*
 * Numerator: Number of administrations of vaccines containing a varicella component during reporting period
 * Numerator Computation: COUNT immunization events WHERE administered product is a Varicella vaccine (IMMZ.A1.DE.22) during reporting period
 */
define "numerator":
	true // TODO: Write logic here 

/*
 * Denominator: Country defined denominator (no guidance on JRF)
 * Denominator Computation: PARAMETER country defined target population.
 */
define "denominator":
	true // TODO: Write logic here 

/*
 * Disaggregator: Dose Sequence (1, 2)
 */
define "Dose Sequence  Stratifier":
	true // todo: fill in logic

/*
 * Disaggregator: Age Group (< 12 months, 12 - 18 months, 18 - 36 months, 36 months - 12 years, > 12 years)
 */
define "Age Group  Stratifier":
	true // todo: fill in logic

/*
 * Disaggregator: Geographic Region
 */
define "Geographic Region Stratifier":
	IMMZStratifiers."By Geographic Region Stratifier"

