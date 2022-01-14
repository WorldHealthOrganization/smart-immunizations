/*
 * Library: IMMZ.IND.28
 * Dropout Rate of DTP1 to DTP3 (Actual / Planned Cohort) 
 * Compares the actual number of children who have a confirmed dose of DTP3 with the actual number of children which should have received DTP3 vaccination during the reporting period
 * 
 * Numerator: Number of patients with a confirmed dose of DTP1 who are past due (have a recommendation) for DTP3 and have not received a dose of DTP3 
 * Numerator Computation: COUNT patients 
HAVING immunization where vaccine is DTP (IMMZ.A1.24) and dose is 1
HAVING immunization recommendation where vaccine is DTP and dose is 3 and recommendation date during reporting period 
NOT HAVING immunization where vaccine is DTP (IMMZ.A1.24) and dose is 3
 * Denominator: The number of patients who have a confirmed dose of DTP1
 * Denominator Computation: COUNT patients 
HAVING immunization where vaccine is DTP (IMMZ.A1.24) and dose is 1 
HAVING immunization recommendation where vaccine is DTP and dose 3 and recommendation date during reporting period
 * 
 * Disaggregation:
 *   - Geographic Region
 * 
 * References: WHO Immunization Facility Analysis Guide (1)
 */

library IMMZIND28

using FHIR version '4.0.1'

include FHIRHelpers version '4.0.1'
include IMMZCommon called IMMZCom
include IMMZConcepts called IMMZc
include IMMZStratifiers called IMMZStratifiers
include IMMZVaccineLibrary called IMMZvl

parameter "Measurement Period" Interval<Date>

context Patient

/*
 * Numerator: Number of patients with a confirmed dose of DTP1 who are past due (have a recommendation) for DTP3 and have not received a dose of DTP3
 * Numerator Computation: COUNT patients 
HAVING immunization where vaccine is DTP (IMMZ.A1.24) and dose is 1
HAVING immunization recommendation where vaccine is DTP and dose is 3 and recommendation date during reporting period 
NOT HAVING immunization where vaccine is DTP (IMMZ.A1.24) and dose is 3
 */
define "numerator":
	true // TODO: Write logic here 

/*
 * Denominator: The number of patients who have a confirmed dose of DTP1
 * Denominator Computation: COUNT patients 
HAVING immunization where vaccine is DTP (IMMZ.A1.24) and dose is 1 
HAVING immunization recommendation where vaccine is DTP and dose 3 and recommendation date during reporting period
 */
define "denominator":
	true // TODO: Write logic here 

/*
 * Disaggregator: Geographic Region
 */
define "Geographic Region Stratifier":
	true // todo: fill in logic

