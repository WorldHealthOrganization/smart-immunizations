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
include IMMZIndicatorCommon called IMMZIndCom
include IMMZVaccineLibrary called IMMZvl
// End Skeleton CQL
parameter "Measurement Period" Interval<Date> default Interval[@2022-01-01, @2022-01-31]
// TODO: This denominator may not be possible to compute using CQL since
// 		  the numerator and denominator are indicators of whether a patient should
//		  or should not appear in the numerator or denominator respectively. Since
//		  this is not possible on estimates from census, we may need to only
//	 	  produce the numerator in the indicator with instructions that the denominator
//		  will have to be applied manually (i.e. change numerator to measure-population)
// "Estimated Number of Surviving Infants Dose 1" Integer
//parameter "Country Specified Denominator" Integer
context Patient

/*
 * Numerator: Number of administrations of vaccinations using an inactivated polio vaccine (IPV) during the reporting period.
 * Numerator Computation: COUNT immunization events WHERE administered product is a polio vaccine (IMMZ.A1.DE25) during reporting period
 */
define "measure-population":
	exists(IMMZIndCom."IPV Doses Administered to Patient During Measurement Period")

/*
 * Disaggregator: Dose sequence (1, 2, 3)
 */
define "Dose sequence  Stratifier":
	IMMZIndCom."IPV Doses Administered to Patient During Measurement Period" I
	return (singleton from I.protocolApplied).doseNumber

/*
 * Disaggregator: Age Group (< 1 year or > 1 year)
 */
define "Age Group Stratifier":
	IMMZIndCom."Infant By Age Stratifier"

/*
 * Disaggregator: Geographic Region
 */
define "Geographic Region Stratifier":
	IMMZIndCom."By Geographic Region Stratifier"

/*
 * Disaggregator: Administrative Gender (or Biological Sex)
 */
define "Administrative Gender Stratifier":
	IMMZIndCom."By Administrative Gender Stratifier"

/* End of IMMZ.IND.05 */
