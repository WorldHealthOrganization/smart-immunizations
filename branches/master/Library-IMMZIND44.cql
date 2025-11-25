/*
 * Library: IMMZ.IND.44
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
 *   - Gender
 * 
 * References: WHO / UNICEF Join Reporting Form (3 - element 4060, 4070, 4080)
 */

library IMMZIND44

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
 * Numerator: Number of administrations of booster vaccines containing a diphtheria component during the reporting period.
 * Numerator Computation: COUNT immunization events WHERE administered product is a Diphtheria containing vaccine (IMMZ.A1.DE3) and dose > 3 during reporting period
 */
define "numerator":
	exists(IMMZIndCom."Diphtheria Booster Doses Administered to Patient During Measurement Period")

/*
 * Denominator: Number of immunization recommendations for diphtheria boosters (doses >= 4) due during reporting period.
 * Denominator Computation: COUNT immunization recommendation WHERE recommended product is diphtheria containing vaccine (IMMZ.A1.DE3) AND due date during reporting period.
 */
define "denominator":
	exists(IMMZIndCom."Diphtheria Booster Doses Recommended During Reporting Period")


/*
 * Disaggregator: Dose Sequence (4, 5, 6)
 */
define "Dose Sequence Stratifier":
	IMMZIndCom."Diphtheria Booster Doses Administered to Patient During Measurement Period" I
	return (singleton from I.protocolApplied).doseNumber

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

/* End of IMMZ.IND.44 */
