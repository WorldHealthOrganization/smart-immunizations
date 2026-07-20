/*
 * Library: IMMZ.IND.03
 * Immunization coverage for HepB containing vaccines birth dose (estimated denominator) 
 * Compares the administered dosesof Hepatitus B containing vaccine given at birth (dose sequence 0) with the number of live births.
 * 
 * Numerator: Number of administrations of vaccines containing a Hepatitis B component at birth (dose sequence 0) 
 * Numerator Computation: COUNT immunization events WHERE administered product is a HepB (IMMZ.A1.DE6) during reporting period and dose sequence = 0
 * Denominator: Estimated number of live births.
 * Denominator Computation: PARAMETER number of live births or PARAMETER number of live births (see comments)
 * 
 * Disaggregation:
 *   - Age Group (<24 H of Birth , < 2 weeks)
 *   - Geographic Region
 *   - Administrative Gender (or Biological Sex)
 * 
 * References: WHO / UNICEF Join Reporting Form (3 - element 4030)
 */

library IMMZIND03

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
 * Numerator: Number of administrations of vaccines containing a Hepatitis B component at birth (dose sequence 0)
 * Numerator Computation: COUNT immunization events WHERE administered product is a HepB (IMMZ.A1.DE6) during reporting period and dose sequence = 0
 */
define "measure-population":
	exists(IMMZIndCom."HepB Birth Doses Administered to Patient During Measurement Period")

/*
 * Disaggregator: Age Group (<24 H of Birth , < 2 weeks)
 */
define "Age Group  Stratifier":
	IMMZIndCom."Newborn By Age Stratifier"
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

/* End of IMMZ.IND.03 */
