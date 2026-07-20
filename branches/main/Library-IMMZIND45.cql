/*
 * Library: IMMZ.IND.45
 * Immunization coverage for Pertussis containing vaccine boosters (Computed Denominator) 
 * Compares the administered booster dose of pertussis containing vaccine (dose 4) with the number of immunization recommendations for boosters of pertussis containing vaccines expressed as a percentage.
 * 
 * Numerator: Number of administrations of booster vaccine containing a pertussis component during the reporting period 
 * Numerator Computation: COUNT immunization events WHERE administered product is a Pertussis containing vaccine (IMMZ.A1.DE12) and dose > 3 during reporting period.
 * Denominator: Number of immunization recommendations for pertussis boosters (doses >= 4) due during reporting period.
 * Denominator Computation: COUNT immunization recommendation WHERE recommended product is pertussis containing vaccine (IMMZ.A1.DE12) AND due date during reporting period.
 * 
 * Disaggregation:
 *   - Geographic Region
 *   - Gender
 * 
 * References: WHO / UNICEF Joint Reporting Form (3 - element 4090)
 */

library IMMZIND45

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
 * Numerator: Number of administrations of booster vaccine containing a pertussis component during the reporting period
 * Numerator Computation: COUNT immunization events WHERE administered product is a Pertussis containing vaccine (IMMZ.A1.DE12) and dose > 3 during reporting period.
 */
define "numerator":
	exists(IMMZIndCom."Pertussis Booster Doses Administered to Patient During Measurement Period")

/*
 * Denominator: Number of immunization recommendations for pertussis boosters (doses >= 4) due during reporting period.
 * Denominator Computation: COUNT immunization recommendation WHERE recommended product is pertussis containing vaccine (IMMZ.A1.DE12) AND due date during reporting period.
 */
define "denominator":
	exists(IMMZIndCom."Pertussis Booster Doses Recommended During Reporting Period")

/** 
 * Disaggregator: Dose Sequence
 */
define "Dose Sequence Stratifier":
	IMMZIndCom."Pertussis Booster Doses Administered to Patient During Measurement Period" I
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
/* End of IMMZ.IND.45 */
