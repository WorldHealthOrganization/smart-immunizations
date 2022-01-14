/*
 * Library: IMMZ.IND.19
 * Immunization coverage for BCG (Actual / Planned Cohort) 
 * Compares the actual number of children who have a confirmed dose of BCG with the actual number of children which should have received a BCG vaccination for the reporting period (those infants who have not died)
 * 
 * Numerator: The number of BCG immunizations administered during the report period 
 * Numerator Computation: COUNT immunization events WHERE product administered is a BCG vaccine (IMMZ.A1.DE1) during reporting period
 * Denominator: The number of non-dead infants born during the reporting period.
 * Denominator Computation: COUNT patients WHERE deceased is null and date of birth is during report period
 * 
 * Disaggregation:
 *   - Geographic Region
 * 
 * References: WHO Immunization Facility Analysis Guide (1)
 */

library IMMZIND19

using FHIR version '4.0.1'

include FHIRHelpers version '4.0.1'
include IMMZCommon called IMMZCom
include IMMZConcepts called IMMZc
include IMMZStratifiers called IMMZStratifiers
include IMMZVaccineLibrary called IMMZvl

parameter "Measurement Period" Interval<Date>

context Patient

/*
 * Numerator: The number of BCG immunizations administered during the report period
 * Numerator Computation: COUNT immunization events WHERE product administered is a BCG vaccine (IMMZ.A1.DE1) during reporting period
 */
define "numerator":
	true // TODO: Write logic here 

/*
 * Denominator: The number of non-dead infants born during the reporting period.
 * Denominator Computation: COUNT patients WHERE deceased is null and date of birth is during report period
 */
define "denominator":
	true // TODO: Write logic here 

/*
 * Disaggregator: Geographic Region
 */
define "Geographic Region Stratifier":
	true // todo: fill in logic

