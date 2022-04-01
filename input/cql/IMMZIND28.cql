/*
 * Library: IMMZ.IND.28
 * Functional status of cold-chain storage equipment. 
 * The proportion of refrigerators which are functional within a clinic.
 * 
 * Numerator: The number of functional refrigerators in the clinic. 
 * Numerator Computation: COUNT refrigerators which are functional during the reporting period
 * Denominator: The number of refrigerators which are present in the clinic.
 * Denominator Computation: COUNT total refrigerators (regardless of status)
 * 
 * Disaggregation:
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
include IMMZConfig called IMMZCon
include IMMZStratifiers called IMMZStratifiers
include IMMZVaccineLibrary called IMMZvl
// End Skeleton CQL
parameter "Measurement Period" Interval<Date> default Interval[@2022-01-01, @2022-01-31]
context Patient

/*
 * Numerator: The number of functional refrigerators in the clinic.
 * Numerator Computation: COUNT refrigerators which are functional during the reporting period
 */
define "numerator":
	true // TODO: Write logic here
/*
 * Denominator: The number of refrigerators which are present in the clinic.
 * Denominator Computation: COUNT total refrigerators (regardless of status)
 */
define "denominator":
	true // TODO: Write logic here
/*
 * Disaggregator: Geographic Region
 */
define "Geographic Region Stratifier":
	IMMZStratifiers."By Geographic Region Stratifier"
/* End of IMMZ.IND.28 */
