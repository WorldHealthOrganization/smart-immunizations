/*
 * Library: IMMZ.IND.41
 * Immunization coverage for Diphtheria containing vaccine boosters (Computed Denominator) 
 * Compares the administered booster doses (4, 5, 6) for diphtheria containing vaccine with the number of immunization recommendations for boosters of diphtheria containing vaccines expressed as a percentage.
 * 
 * Numerator: Number of administrations of booster vaccines containing a diphtheria component during the reporting period. 
 * Numerator Computation: COUNT immunization events WHERE administered product is a Diphtheria containing vaccine (IMMZ.A1.DE3) and dose > 3 during reporting period
 * Denominator: Number of immunization recommendations for diphtheria boosters (doses >= 4) due during reporting period.
 * Denominator Computation: COUNT immunization recommendation WHERE recommended product is diphtheria containing vaccine (IMMZ.A1.DE3) AND due date during reporting period.
 * 
 * Disaggregation:
 *   - Dose Sequence (4, 5, 6)
 *   - Geographic Region
 * 
 * References: WHO / UNICEF Join Reporting Form (3 - element 4060, 4070, 4080)
 */

library IMMZIND41

using FHIR version '4.0.1'

include FHIRHelpers version '4.0.1'
include IMMZCommon called IMMZCom
include IMMZConcepts called IMMZc
include IMMZStratifiers called IMMZStratifiers
include IMMZVaccineLibrary called IMMZvl

parameter "Measurement Period" Interval<Date> default Interval[@2022-01-01, @2022-01-31]
context Patient

/*
 * Numerator: Number of administrations of booster vaccines containing a diphtheria component during the reporting period.
 * Numerator Computation: COUNT immunization events WHERE administered product is a Diphtheria containing vaccine (IMMZ.A1.DE3) and dose > 3 during reporting period
 */
define "numerator":
	true // TODO: Write logic here
/*
 * Denominator: Number of immunization recommendations for diphtheria boosters (doses >= 4) due during reporting period.
 * Denominator Computation: COUNT immunization recommendation WHERE recommended product is diphtheria containing vaccine (IMMZ.A1.DE3) AND due date during reporting period.
 */
define "denominator":
	true // TODO: Write logic here
/*
 * Disaggregator: Dose Sequence (4, 5, 6)
 */
define "Dose Sequence  Stratifier":
	true // todo: fill in logic
/*
 * Disaggregator: Geographic Region
 */
define "Geographic Region Stratifier":
	IMMZStratifiers."By Geographic Region Stratifier"
/* End of IMMZ.IND.41 */
