/*
 * Library: IMMZ.IND.01
 * Immunization coverage for BCG (Estimated Denominator) 
 * Compares the doses of BCG vaccine administered with the estimated number of live births as a percentage.
 * 
 * Numerator: Number of administrations of BCG during the reporting period 
 * Numerator Computation: COUNT immunization events WHERE administered product is a BCG vaccine (IMMZ.A1.DE1) during reporting period
 * Denominator: Estimated number of live births.
 * Denominator Computation: PARAMETER number of live births
 * 
 * Disaggregation:
 *   - Geographic Region
 *   - Administrative Gender (or Biological Sex)
 * 
 * References: WHO Immunization Facility Analysis Guide (1), WHO / UNICEF Joint Reporting Form (3 - element 4010)
 */

library IMMZIND01

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
//parameter "Estimated Number of Live Births" Integer default 10

context Patient

/*
 * Numerator: Number of administrations of BCG during the reporting period
 * Numerator Computation: COUNT immunization events WHERE administered product is a BCG vaccine (IMMZ.A1.DE1) during reporting period
 */
define "measure-population":
	exists(IMMZIndCom."BCG Doses Administered to Patient During Measurement Period")

/*
 * Disaggregator: Geographic Region
 */
define "Geographic Region Stratifier":
    IMMZIndCom."By Geographic Region Stratifier"
	// If geographic region is by place of administration
	//IMMZIndCom."BCG Doses Administered to Patient During Measurement Period" I
	//return IMMZIndCom.GetGeographicRegionForImmunization(I)
	
/*
 * Disaggregator: Administrative Gender (or Biological Sex)
 */
define "Administrative Gender Stratifier":
	IMMZIndCom."By Administrative Gender Stratifier"


/* End of IMMZ.IND.01 */
