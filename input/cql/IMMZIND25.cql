/*
 * Library: IMMZ.IND.25
 * Availability of vaccine stock and supplies 
 * The proportion of clinics which have had no stock outs for vaccine or injection supplies when they are demanded/required.
 * 
 * Numerator: The number of vaccination clinics which had no stock outs for the reporting period (i.e. they were able to fully meet all vaccine demand) 
 * Numerator Computation: COUNT of facilities which were able to fulfill all vaccination activities.
 * Denominator: Total number of facilities.
 * Denominator Computation: COUNT all locations in the region
 * 
 * Disaggregation:
 *   - Geographic Region
 * 
 * References: WHO Immunization Facility Analysis Guide (1)
 */

library IMMZIND25

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
 * Numerator: The number of vaccination clinics which had no stock outs for the reporting period (i.e. they were able to fully meet all vaccine demand)
 * Numerator Computation: COUNT of facilities which were able to fulfill all vaccination activities.
 */
define "numerator":
	true // TODO: Write logic here 

/*
 * Denominator: Total number of facilities.
 * Denominator Computation: COUNT all locations in the region
 */
define "denominator":
	true // TODO: Write logic here 

/*
 * Disaggregator: Geographic Region
 */
define "Geographic Region Stratifier":
	true // todo: fill in logic

/* End of IMMZ.IND.25 */
