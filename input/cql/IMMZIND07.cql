/*
 * Library: IMMZ.IND.07
 * Immunization coverage for Mumps (Target / Reported Cohort) 
 * Compares the actual doses of Mumps vaccinations administered with the estimated population of surviving infants
 * 
 * Numerator: Number of administrations of vaccines containing a Mumps component during reporting period 
 * Numerator Computation: COUNT immunization events WHERE administered product is a Mumps vaccine (IMMZ.A1.DE11) during reporting period
 * Denominator: Estimated number of surviving infants (number of births minus infant deaths) for reporting area.
 * Denominator Computation: PARAMETER number of births MINUS PARAMETER number of infant deaths
 * 
 * Disaggregation:
 *   - Dose Sequence (1, 2)
 *   - Age Group (< 11 months, 11 - 19 months, > 19 months)
 *   - Geographic Region
 * 
 * References: WHO Immunization Facility Analysis Guide (1), WHO recommendations for routine immunization (2)
 */

library IMMZIND07

using FHIR version '4.0.1'

include FHIRHelpers version '4.0.1'
include IMMZCommon called IMMZCom
include IMMZConcepts called IMMZc
include IMMZStratifiers called IMMZStratifiers
include IMMZVaccineLibrary called IMMZvl

parameter "Measurement Period" Interval<Date>

context Patient

/*
 * Numerator: Number of administrations of vaccines containing a Mumps component during reporting period
 * Numerator Computation: COUNT immunization events WHERE administered product is a Mumps vaccine (IMMZ.A1.DE11) during reporting period
 */
define "numerator":
	true // TODO: Write logic here 

/*
 * Denominator: Estimated number of surviving infants (number of births minus infant deaths) for reporting area.
 * Denominator Computation: PARAMETER number of births MINUS PARAMETER number of infant deaths
 */
define "denominator":
	true // TODO: Write logic here 

/*
 * Disaggregator: Dose Sequence (1, 2)
 */
define "Dose Sequence  Stratifier":
	true // todo: fill in logic

/*
 * Disaggregator: Age Group (< 11 months, 11 - 19 months, > 19 months)
 */
define "Age Group  Stratifier":
	true // todo: fill in logic

/*
 * Disaggregator: Geographic Region
 */
define "Geographic Region Stratifier":
	true // todo: fill in logic

