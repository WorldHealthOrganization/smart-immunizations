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
	true // TODO: Write logic here 

/*
 * Denominator: Number of immunization recommendations for pertussis boosters (doses >= 4) due during reporting period.
 * Denominator Computation: COUNT immunization recommendation WHERE recommended product is pertussis containing vaccine (IMMZ.A1.DE12) AND due date during reporting period.
 */
define "denominator":
	true // TODO: Write logic here 

/*
 * Disaggregator: Geographic Region
 */
define "Geographic Region Stratifier":
	true // todo: fill in logic

/*
 * Disaggregator: Gender
 */
define "Gender Stratifier":
	true // todo: fill in logic

/* End of IMMZ.IND.45 */
