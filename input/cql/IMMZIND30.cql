/*
 * Library: IMMZ.IND.30
 * Dropout Rate of MCV1 to MCV2 (Actual / Planned Cohort) 
 * Compares the actual number of children who have a confirmed dose of MCV2 with the actual number of children which should have received MCV2 vaccination during the reporting period
 * 
 * Numerator: Number of patients with a confirmed dose of MCV1 who are past due (have a recommendation) for MCV2 and have not received MCV2 
 * Numerator Computation: COUNT patients
HAVING immunization where vaccine is MCV (IMMZ.A1.DE10) and dose 1
HAVING immunization recommendation of MCV dose 2 and recommendation date during reporting period
NOT HAVING immunization where vaccine is MCV and dose is 2
 * Denominator: The number of patients who have a confirmed dose of MCV1
 * Denominator Computation: COUNT patients 
HAVING immunization where vaccine is MCV (IMMZ.A1.DE1) and dose is 1
HAVING immunization recommendation where vaccine is MCV and dose is 2 and recommendation date during reporting period
 * 
 * Disaggregation:
 *   - Geographic Region
 * 
 * References: WHO Immunization Facility Analysis Guide (1)
 */

library IMMZIND30

using FHIR version '4.0.1'

include FHIRHelpers version '4.0.1'
include IMMZCommon called IMMZCom
include IMMZConcepts called IMMZc
include IMMZStratifiers called IMMZStratifiers
include IMMZVaccineLibrary called IMMZvl

parameter "Measurement Period" Interval<Date>

context Patient

/*
 * Numerator: Number of patients with a confirmed dose of MCV1 who are past due (have a recommendation) for MCV2 and have not received MCV2
 * Numerator Computation: COUNT patients
HAVING immunization where vaccine is MCV (IMMZ.A1.DE10) and dose 1
HAVING immunization recommendation of MCV dose 2 and recommendation date during reporting period
NOT HAVING immunization where vaccine is MCV and dose is 2
 */
define "numerator":
	true // TODO: Write logic here 

/*
 * Denominator: The number of patients who have a confirmed dose of MCV1
 * Denominator Computation: COUNT patients 
HAVING immunization where vaccine is MCV (IMMZ.A1.DE1) and dose is 1
HAVING immunization recommendation where vaccine is MCV and dose is 2 and recommendation date during reporting period
 */
define "denominator":
	true // TODO: Write logic here 

/*
 * Disaggregator: Geographic Region
 */
define "Geographic Region Stratifier":
	true // todo: fill in logic

