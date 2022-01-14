/*
 * Library: IMMZ.IND.29
 * Dropout Rate of BCG to MCV1 (Actual / Planned Cohort) 
 * Compares the actual number of children who have a confirmed dose of MCV1 with the actual number of children which should have received MCV1 vaccination during the reporting period
 * 
 * Numerator: Number of patients with a confirmed dose of BCG1 who are past due (have a recommendation) for MCV1 and have not received MCV1 
 * Numerator Computation: COUNT patients 
HAVING immunization where vaccine is BCG (IMMZ.A1.DE1) 
HAVING immunization recommendation of MCV (IMMZ.A1.DE10) dose 1 and recommendation date during reporting period 
NOT HAVING immunization where vaccine is MCV dose 1.
 * Denominator: The number of patients who have a confirmed dose of BCG
 * Denominator Computation: COUNT patients
HAVING immunization where vaccine is BCG (IMMZ.A1.DE1)
HAVING immunization recommendation where vaccine is MCV (IMMZ.A1.DE10) and recommendation date during reporting period
 * 
 * Disaggregation:
 *   - Geographic Region
 * 
 * References: WHO Immunization Facility Analysis Guide (1)
 */

library IMMZIND29

using FHIR version '4.0.1'

include FHIRHelpers version '4.0.1'
include IMMZCommon called IMMZCom
include IMMZConcepts called IMMZc
include IMMZStratifiers called IMMZStratifiers
include IMMZVaccineLibrary called IMMZvl

parameter "Measurement Period" Interval<Date>

context Patient

/*
 * Numerator: Number of patients with a confirmed dose of BCG1 who are past due (have a recommendation) for MCV1 and have not received MCV1
 * Numerator Computation: COUNT patients 
HAVING immunization where vaccine is BCG (IMMZ.A1.DE1) 
HAVING immunization recommendation of MCV (IMMZ.A1.DE10) dose 1 and recommendation date during reporting period 
NOT HAVING immunization where vaccine is MCV dose 1.
 */
define "numerator":
	true // TODO: Write logic here 

/*
 * Denominator: The number of patients who have a confirmed dose of BCG
 * Denominator Computation: COUNT patients
HAVING immunization where vaccine is BCG (IMMZ.A1.DE1)
HAVING immunization recommendation where vaccine is MCV (IMMZ.A1.DE10) and recommendation date during reporting period
 */
define "denominator":
	true // TODO: Write logic here 

/*
 * Disaggregator: Geographic Region
 */
define "Geographic Region Stratifier":
	IMMZStratifiers."By Geographic Region Stratifier"

