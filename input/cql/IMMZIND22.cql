/*
 * Library: IMMZ.IND.22
 * Immunization coverage for Measles (Actual / Planned Cohort) 
 * Compares the actual number of children who have a confirmed dose of a measles vaccination with the actual number of children which should have received a measles vaccination during the reporting period.
 * 
 * Numerator: The number of vaccination events administered for a measles vaccine during the reporting period. 
 * Numerator Computation: COUNT immunization events
WHERE product administered is a measles vaccine (IMMZ.A1.DE3) during reporting period
 * Denominator: The number of measles immunization events which were planned/eligible to be administered during the reporting period.
 * Denominator Computation: COUNT immunization recommendations WHERE suggested vaccine product is a measles vaccine (IMMZ.A1.DE3) during reporting period
 * 
 * Disaggregation:
 *   - Dose Sequence (1, 2)
 *   - Age Group (0 - 9 months, 9 - 18 months, > 18 months)
 *   - Geographic Region
 * 
 * References: WHO Immunization Facility Analysis Guide (1)
 */

library IMMZIND22

using FHIR version '4.0.1'

include FHIRHelpers version '4.0.1'
include IMMZCommon called IMMZCom
include IMMZConcepts called IMMZc
include IMMZStratifiers called IMMZStratifiers
include IMMZVaccineLibrary called IMMZvl

parameter "Measurement Period" Interval<Date>

context Patient

/*
 * Numerator: The number of vaccination events administered for a measles vaccine during the reporting period.
 * Numerator Computation: COUNT immunization events
WHERE product administered is a measles vaccine (IMMZ.A1.DE3) during reporting period
 */
define "numerator":
	true // TODO: Write logic here 

/*
 * Denominator: The number of measles immunization events which were planned/eligible to be administered during the reporting period.
 * Denominator Computation: COUNT immunization recommendations WHERE suggested vaccine product is a measles vaccine (IMMZ.A1.DE3) during reporting period
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

