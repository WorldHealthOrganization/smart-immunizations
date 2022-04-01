/*
 * Library: IMMZ.IND.05
 * Immunization coverage for inactivated polio containing vaccine (Estimated Denominator) 
 * Compares the administered doses of inactivated polio containing vaccines (IPV) with the estimated number of surviving infants expressed as a percentage.
 * 
 * Numerator: Number of administrations of vaccinations using an inactivated polio vaccine (IPV) during the reporting period. 
 * Numerator Computation: COUNT immunization events WHERE administered product is a polio vaccine (IMMZ.A1.DE25) during reporting period
 * Denominator: Estimated number of surviving infants
 * Denominator Computation: PARAMETER surviving number of infants
 * 
 * Disaggregation:
 *   - Dose sequence (1, 2, 3)
 *   - Age Group (< 1 year or > 1 year)
 *   - Geographic Region
 *   - Administrative Gender (or Biological Sex)
 * 
 * References: WHO Immunization Facility Analysis Guide (1), WHO / UNICEF Joint Reporting Form (3 - elements 4130 - 4160)
 */

library IMMZIND05

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
parameter "Estimated Number of Surviving Infants Dose 1" Integer
parameter "Country Specified Denominator" Integer
context Patient

/*
 * Numerator: Number of administrations of vaccinations using an inactivated polio vaccine (IPV) during the reporting period.
 * Numerator Computation: COUNT immunization events WHERE administered product is a polio vaccine (IMMZ.A1.DE25) during reporting period
 */
define "numerator":
	true // TODO: Write logic here
/*
 * Denominator: Estimated number of surviving infants
 * Denominator Computation: PARAMETER surviving number of infants
 */
define "denominator":
	true // TODO: Write logic here
/*
 * Disaggregator: Dose sequence (1, 2, 3)
 */
define "Dose sequence  Stratifier":
	true // todo: fill in logic

/*
 * Disaggregator: Age Group (< 1 year or > 1 year)
 */
define "Age Group  Stratifier":
	true // todo: fill in logic
/*
 * Disaggregator: Geographic Region
 */
define "Geographic Region Stratifier":
	IMMZStratifiers."By Geographic Region Stratifier"
/*
 * Disaggregator: Administrative Gender (or Biological Sex)
 */
define "Administrative Gender Stratifier":
	true // todo: fill in logic

/* End of IMMZ.IND.05 */
