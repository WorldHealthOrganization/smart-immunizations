/*
 * Library: IMMZ.IND.04
 * Immunization coverage for HepB containing vaccines (Estimated Denominator) 
 * Compares the administered doses of Hepatitis B containing vaccine with the estimated number of live births (if dose sequence is 1 or 2) or number of surviving infants (for dose 3 - if given)
 * 
 * Numerator: Number of administrations of vaccinations containing a Hepatitis B component. 
 * Numerator Computation: COUNT immunization events WHERE administered product is a HepB (IMMZ.A1.DE6) during reporting period.
 * Denominator: Estimated number of surviving infants
 * Denominator Computation: PARAMETER number of surviving infants (see comments)
 * 
 * Disaggregation:
 *   - Dose Sequence (1, 2, 3)
 *   - Age Group (<1 year or > 1year)
 *   - Geographic Region
 *   - Administrative Gender (or Biological Sex)
 * 
 * References: WHO / UNICEF Join Reporting Form (3 - element 4030)
 */

library IMMZIND04

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
//parameter "Estimated Number of Surviving Infants" Integer
context Patient

/*
 * Numerator: Number of administrations of vaccinations containing a Hepatitis B component.
 * Numerator Computation: COUNT immunization events WHERE administered product is a HepB (IMMZ.A1.DE6) during reporting period.
 */
define "measure-population":
	exists(IMMZIndCom."HepB Non-Birth Doses Administered to Patient During Measurement Period")


/*
 * Disaggregator: Dose Sequence (1, 2, 3)
 */
define "Dose Sequence  Stratifier":
	IMMZIndCom."HepB Non-Birth Doses Administered to Patient During Measurement Period" I
	return (singleton from I.protocolApplied).doseNumber

/*
 * Disaggregator: Age Group (<1 year or > 1year)
 */
define "Age Group  Stratifier":
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

/* End of IMMZ.IND.04 */
