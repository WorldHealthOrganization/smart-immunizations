/*
 * Library: IMMZ.IND.43
 * Immunization coverage for Varicella vaccinations (Computed Denominator) 
 * Compares the administered doses of varicella containing vaccine with the number of immunization recommendations for varicella vaccines expressed as a percentage.
 * 
 * Numerator: Number of administrations of vaccines containing a varicella component during reporting period 
 * Numerator Computation: COUNT immunization events WHERE administered product is a Varicella vaccine (IMMZ.A1.DE.22) during reporting period
 * Denominator: Number of immunization recommendations for varicella vaccines due during reporting period.
 * Denominator Computation: COUNT immunization recommendation WHERE recommended product is varicella vaccine (IMMZ.A1.DE22) AND due date during reporting period.
 * 
 * Disaggregation:
 *   - Dose Sequence (1, 2)
 *   - Age Group (< 12 months, 12 - 18 months, 18 - 36 months, 36 months - 12 years, > 12 years)
 *   - Geographic Region
 *   - Gender
 * 
 * References: WHO Immunization Facility Analysis Guide (1)
 */

library IMMZIND43

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
 * Numerator: Number of administrations of vaccines containing a varicella component during reporting period
 * Numerator Computation: COUNT immunization events WHERE administered product is a Varicella vaccine (IMMZ.A1.DE.22) during reporting period
 */
define "numerator":
		exists(IMMZIndCom."Varicella Doses Administered to Patient During Measurement Period") // TODO: Write logic here 

/*
 * Denominator: Number of immunization recommendations for varicella vaccines due during reporting period.
 * Denominator Computation: COUNT immunization recommendation WHERE recommended product is varicella vaccine (IMMZ.A1.DE22) AND due date during reporting period.
 * TODO: Should we use recommendation here (like HPV) to allow CDSS to define the "cohort" or should cohort just be anyone under 12?
 */
define "denominator":
	exists(IMMZIndCom."Varicella Doses Recommended During Reporting Period")

/*
 * Disaggregator: Dose Sequence (1, 2)
 */
define "Dose Sequence Stratifier":
	IMMZIndCom."Varicella Doses Administered to Patient During Measurement Period" I
	return (singleton from I.protocolApplied).doseNumber

/*
 * Disaggregator: Age Group (< 12 months, 12 - 18 months, 18 - 36 months, 36 months - 12 years, > 12 years)
 */
define "Age Group Stratifier":
	IMMZIndCom."Varicella By Age Stratifier"

/*
 * Disaggregator: Geographic Region
 */
define "Geographic Region Stratifier":
	IMMZIndCom."By Geographic Region Stratifier"

/*
 * Disaggregator: Administrative Gender (or Biological Sex)
 */
define "Gender Stratifier":
	IMMZIndCom."By Administrative Gender Stratifier"

/* End of IMMZ.IND.43 */
