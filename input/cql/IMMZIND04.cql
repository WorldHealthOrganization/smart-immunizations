/*
 * Library: IMMZ.IND.04
 * Immunization coverage for Measles (Target / Reported Cohort) 
 * Compares the actual doses of Measles vaccinations over the estimated population of children (> 1 year old)
 * 
 * Numerator: Number of administrations of vaccinations containing a Measles component during reporting period 
 * Numerator Computation: COUNT immunization events WHERE administered product is a Measles vaccine (IMMZ.A1.DE3) during reporting period
 * Denominator: Estimated census sample of children over one year of age in reporting area.
 * Denominator Computation: PARAMETER number of chilren from census over one year of age
 * 
 * Disaggregation:
 *   - Dose Sequence (1, 2)
 *   - Age Group (0 - 9 months, 9 - 18 months, > 18 months)
 *   - Geographic Region
 * 
 * References: WHO Immunization Facility Analysis Guide (1), WHO recommendations for routine immunization (2)
 */

library IMMZIND04

using FHIR version '4.0.1'

include FHIRHelpers version '4.0.1'
include IMMZCommon called IMMZCom
include IMMZConcepts called IMMZc
include IMMZStratifiers called IMMZStratifiers
include IMMZVaccineLibrary called IMMZvl

parameter "Measurement Period" Interval<Date>

context Patient

/*
 * Numerator: Number of administrations of vaccinations containing a Measles component during reporting period
 * Numerator Computation: COUNT immunization events WHERE administered product is a Measles vaccine (IMMZ.A1.DE3) during reporting period
 */
define "numerator":
	true // TODO: Write logic here 

/*
 * Denominator: Estimated census sample of children over one year of age in reporting area.
 * Denominator Computation: PARAMETER number of chilren from census over one year of age
 */
define "denominator":
	true // TODO: Write logic here 

/*
 * Disaggregator: Dose Sequence (1, 2)
 */
define "Dose Sequence  Stratifier":
	true // todo: fill in logic

/*
 * Disaggregator: Age Group (0 - 9 months, 9 - 18 months, > 18 months)
 */
define "Age Group  Stratifier":
	true // todo: fill in logic

/*
 * Disaggregator: Geographic Region
 */
define "Geographic Region Stratifier":
	true // todo: fill in logic

/*
 * Disaggregator: 
 */
define " Stratifier":
	true // todo: fill in logic

