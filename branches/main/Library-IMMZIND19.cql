/*
 * Library: IMMZ.IND.19
 * Immunization coverage for Yellow Fever vaccine (Estimated Denominator) 
 * Compares the administered dose of yellow fever vaccine with the number of surviving infants.
 * 
 * Numerator: Number of administrations of vaccines containing a yellow fever component during reporting period. 
 * Numerator Computation: COUNT immunization events WHERE administered product is a Yellow Fever vaccine (IMMZ.A1.DE23) during reporting period
 * Denominator: Number of surviving infants 
 * Denominator Computation: PARAMETER number of surviving infants
 * 
 * Disaggregation:
 *   - Geographic Region
 *   - Administrative Gender (or Biological Sex)
 * 
 * References: WHO / UNICEF Joint Reporting Form (3 - element 4270)
 */

library IMMZIND19

// Start Skeleton CQL
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1'
include IMMZCommon called IMMZCom
include IMMZConcepts called IMMZc
include IMMZConfig called IMMZCon
include IMMZIndicatorCommon called IMMZIndCom
include IMMZVaccineLibrary called IMMZvl
include FHIRCommon called FC
// End Skeleton CQL
parameter "Measurement Period" Interval<Date>

context Patient

/*
 * Numerator: Number of administrations of vaccines containing a yellow fever component during reporting period.
 * Numerator Computation: COUNT immunization events WHERE administered product is a Yellow Fever vaccine (IMMZ.A1.DE23) during reporting period
 */
define "measure-population":
	exists(IMMZIndCom."Yellow Fever Doses Administered to Patient During Measurement Period") // TODO: Write logic here 

/*
 * Disaggregator: Geographic Region
 */
define "Geographic Region Stratifier":
	IMMZIndCom."By Geographic Region Stratifier" // todo: fill in logic

/*
 * Disaggregator: Administrative Gender (or Biological Sex)
 */
define "Administrative Gender Stratifier":
	IMMZIndCom."By Administrative Gender Stratifier"

/* End of IMMZ.IND.19 */
