/*
 * Library: IMMZ.IND.24
 * Immunization coverage for MCV (Actual / Planned Cohort) 
 * Compares the actual number of children who have a confirmed dose of MCV with the actual number of children which should have received MCV vaccination during the reporting period
 * 
 * Numerator: The number of vaccination events administered for MCV during the reporting period 
 * Numerator Computation: COUNT immunization events WHERE product administered is an MCV vaccines (IMMZ.A1.DE10) during reporting period
 * Denominator: The number of MCV immunization events which were planned/eligible to be administered during the reporting period.
 * Denominator Computation: COUNT immunization recommendations WHERE suggested vaccine product is a MCV vaccine (IMMZ.A1.DE10) during reporting period
 * 
 * Disaggregation:
 *   - Dose Sequence (1, 2)
 *   - Age Group (< 3 months, 3 - 9 months, 9  -12 months, 12 - 18 months, > 18 months)
 *   - Geographic Region 
 * 
 * References: WHO Immunization Facility Analysis Guide (1)
 */

library IMMZIND24

using FHIR version '4.0.1'

include FHIRHelpers version '4.0.1'
include IMMZCommon called IMMZCom
include IMMZConcepts called IMMZc
include IMMZStratifiers called IMMZStratifiers
include IMMZVaccineLibrary called IMMZvl

parameter "Measurement Period" Interval<Date>

context Patient

/*
 * Numerator: The number of vaccination events administered for MCV during the reporting period
 * Numerator Computation: COUNT immunization events WHERE product administered is an MCV vaccines (IMMZ.A1.DE10) during reporting period
 */
define "numerator":
	true // TODO: Write logic here 

/*
 * Denominator: The number of MCV immunization events which were planned/eligible to be administered during the reporting period.
 * Denominator Computation: COUNT immunization recommendations WHERE suggested vaccine product is a MCV vaccine (IMMZ.A1.DE10) during reporting period
 */
define "denominator":
	true // TODO: Write logic here 

/*
 * Disaggregator: Dose Sequence (1, 2)
 */
define "Dose Sequence  Stratifier":
	true // todo: fill in logic

/*
 * Disaggregator: Age Group (< 3 months, 3 - 9 months, 9  -12 months, 12 - 18 months, > 18 months)
 */
define "Age Group  Stratifier":
	true // todo: fill in logic

/*
 * Disaggregator: Geographic Region 
 */
define "Geographic Region  Stratifier":
	true // todo: fill in logic

/*
 * Disaggregator: 
 */
define " Stratifier":
	true // todo: fill in logic

