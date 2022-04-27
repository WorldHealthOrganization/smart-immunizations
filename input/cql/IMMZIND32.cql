/*
 * Library: IMMZ.IND.32
 * Immunization coverage for BCG (Computed Denominator) 
 * Compares the administered doses of BCG vaccine with the actual number of registered, surviving infants expressed as a percentage.
 * 
 * Numerator: Number of registered patients born during reporting period who were administered BCG 
 * Numerator Computation: COUNT patients WHERE birthDate during reporting period AND deceasedDate is not populated
HAVING immunization event WHERE administered product is BCG vaccine (IMMZ.A1.DE1)
 * Denominator: Number of registered, surviving infants born during reporting period.
 * Denominator Computation: COUNT Patient WHERE birthDate during reporting period AND deceasedDate is not populated.
 * 
 * Disaggregation:
 *   - Geographic Region
 *   - Gender
 * 
 * References: WHO Immunization Facility Analysis Guide (1), WHO / UNICEF Joint Reporting Form (3 - element 4010)
 */

library IMMZIND32

// Start Skeleton CQL
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1'
include IMMZCommon called IMMZCom
include IMMZConcepts called IMMZc
include IMMZConfig called IMMZCon
include IMMZStratifiers called IMMZStratifiers
include IMMZVaccineLibrary called IMMZvl
include FHIRCommon called FC
// End Skeleton CQL
parameter "Measurement Period" Interval<Date>

context Patient

/*
 * Numerator: Number of registered patients born during reporting period who were administered BCG
 * Numerator Computation: COUNT patients WHERE birthDate during reporting period AND deceasedDate is not populated
HAVING immunization event WHERE administered product is BCG vaccine (IMMZ.A1.DE1)
 */
define "numerator":
	true // TODO: Write logic here 

/*
 * Denominator: Number of registered, surviving infants born during reporting period.
 * Denominator Computation: COUNT Patient WHERE birthDate during reporting period AND deceasedDate is not populated.
 */
define "denominator":
	true // TODO: Write logic here 

/*
 * Disaggregator: Geographic Region
 */
define "Geographic Region Stratifier":
	true // todo: fill in logic

/*
 * Disaggregator: Gender
 */
define "Gender Stratifier":
	true // todo: fill in logic

/* End of IMMZ.IND.32 */
