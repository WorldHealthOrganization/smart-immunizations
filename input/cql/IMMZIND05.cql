/*
 * Library: IMMZ.IND.05
 * Immunization coverage for HPV (Target / Reported Cohort) 
 * Compares the actual doses of HPV vaccinations administered over the estimated population of adolescants
 * 
 * Numerator: Number of administrations of vaccines containing an HPV component during reporting period 
 * Numerator Computation: COUNT immunization events WHERE administered product is an HPV vaccine (IMMZ.A1.DE7) during reporting period
 * Denominator: Estimated census sample of adolescants in reporting area.
 * Denominator Computation: PARAMETER number of adolescants from census
 * 
 * Disaggregation:
 *   - Dose Sequence (1, 2, 3)
 *   - Age Group (< 9 years, 9 - 14 years, > 15 years)
 *   - Geographic Region
 * 
 * References: WHO Immunization Facility Analysis Guide (1), WHO recommendations for routine immunization (2)
 */

library IMMZIND05

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
 * Denominator: Estimated census sample of adolescants in reporting area.
 * Denominator Computation: PARAMETER number of adolescants from census
 */
define "denominator":
	true // TODO: Write logic here 

/*
 * Disaggregator: Dose Sequence (1, 2, 3)
 */
define "Dose Sequence  Stratifier":
	true // todo: fill in logic

/*
 * Disaggregator: Age Group (< 9 years, 9 - 14 years, > 15 years)
 */
define "Age Group  Stratifier":
	true // todo: fill in logic

/*
 * Disaggregator: Geographic Region
 */
define "Geographic Region Stratifier":
	true // todo: fill in logic

