/*
 * Library: IMMZ.IND.28
 * Immunization session completion rates. 
 * This indicator allows for supervisors to follow-up on planned and completed immunization sessions - which can give an indication of planning, operational or budget issues at a facility.
 * 
 * Numerator: The number of conducted immunization sessions performed at the facility. 
 * Numerator Computation: COUNT number of vaccination sessions
 * Denominator: The planned number of vaccination sessions for a facility.
 * Denominator Computation: COUNT number of planned sessions
 * 
 * Disaggregation:
 *   - Facility
 *   - Geographic Region
 * 
 * References: WHO Immunization Facility Analysis Guide (1)
 */

library IMMZIND28

// Start Skeleton CQL
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1'
include IMMZCommon called IMMZCom
include IMMZConcepts called IMMZc
include IMMZStratifiers called IMMZStratifiers
include IMMZVaccineLibrary called IMMZvl
// End Skeleton CQL
parameter "Measurement Period" Interval<Date>

context Patient

/*
 * Numerator: The number of conducted immunization sessions performed at the facility.
 * Numerator Computation: COUNT number of vaccination sessions
 */
define "numerator":
	true // TODO: Write logic here 

/*
 * Denominator: The planned number of vaccination sessions for a facility.
 * Denominator Computation: COUNT number of planned sessions
 */
define "denominator":
	true // TODO: Write logic here 

/*
 * Disaggregator: Facility
 */
define "Facility Stratifier":
	true // todo: fill in logic

/*
 * Disaggregator: Geographic Region
 */
define "Geographic Region Stratifier":
	true // todo: fill in logic

/* End of IMMZ.IND.28 */
