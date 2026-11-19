/*
 * Library: IMMZ.IND.53
 * Immunization coverage for HepB containing vaccines birth dose (computed denominator) 
 * Compares the administered dosesof Hepatitus B containing vaccine given at birth (dose sequence 0) with the actual number of live births.
 * 
 * Numerator: Number of administrations of vaccines containing a Hepatitis B component at birth (dose sequence 0) 
 * Numerator Computation: COUNT immunization events WHERE administered product is a HepB (IMMZ.A1.DE6) during reporting period and dose sequence = 0
 * Denominator: Number of registered surviving newborns
 * Denominator Computation: COUNT Patient WHERE birthDate during reporting period AND deceasedDate is not populated.
 * 
 * Disaggregation:
 *   - Age Group (<24 H of Birth , < 2 weeks)
 *   - Geographic Region
 *   - Administrative Gender (or Biological Sex)
 * 
 * References: WHO / UNICEF Join Reporting Form (3 - element 4030)
 */

library IMMZIND53

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
 * Numerator: Number of administrations of vaccines containing a Hepatitis B component at birth (dose sequence 0)
 * Numerator Computation: COUNT immunization events WHERE administered product is a HepB (IMMZ.A1.DE6) during reporting period and dose sequence = 0
 */
define "numerator":
	exists(IMMZIndCom."HepB Birth Doses Administered to Patient During Measurement Period")
	
/*
 * Denominator: Number of registered, surviving infants whose ages is less than 12 months during reporting period.
 * Denominator Computation: COUNT Patient WHERE age at reporting period < 12 months AND deceasedDate is not populated.
 */
define "denominator":
	IMMZIndCom."Patient Born During Measurement Period"
	and not (IMMZIndCom."Patient Deceased During Measurement Period")

/*
 * Disaggregator: Age Group (<24 H of Birth)
 */
define "Age Group Stratifier":
	IMMZIndCom."Infant By Age Stratifier"

/*
 * Disaggregator: Geographic Region
 */
define "Geographic Region Stratifier":
	IMMZIndCom."By Geographic Region Stratifier"
/*
 * Disaggregator: Gender
 */
define "Gender Stratifier":
	IMMZIndCom."By Administrative Gender Stratifier"


/* End of IMMZ.IND.53 */
