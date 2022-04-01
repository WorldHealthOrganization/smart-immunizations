/*
 * Library: IMMZ.IND.42
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

library IMMZIND42

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
 * Numerator: Number of administrations of vaccines containing a varicella component during reporting period
 * Numerator Computation: COUNT immunization events WHERE administered product is a Varicella vaccine (IMMZ.A1.DE.22) during reporting period
 */
define "numerator":
	true // TODO: Write logic here
/*
 * Denominator: Number of immunization recommendations for varicella vaccines due during reporting period.
 * Denominator Computation: COUNT immunization recommendation WHERE recommended product is varicella vaccine (IMMZ.A1.DE22) AND due date during reporting period.
 */
define "denominator":
	true // TODO: Write logic here
/*
 * Disaggregator: Dose Sequence (1, 2)
 */
define "Dose Sequence  Stratifier":
	true // todo: fill in logic

/*
 * Disaggregator: Age Group (< 12 months, 12 - 18 months, 18 - 36 months, 36 months - 12 years, > 12 years)
 */
define "Age Group  Stratifier":
	true // todo: fill in logic

/*
 * Disaggregator: Geographic Region
 */
define "Geographic Region Stratifier":
	IMMZStratifiers."By Geographic Region Stratifier"
/*
 * Disaggregator: Gender
 */
define "Gender Stratifier":
	true // todo: fill in logic

/* End of IMMZ.IND.42 */
