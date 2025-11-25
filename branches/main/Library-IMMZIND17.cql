/*
 * Library: IMMZ.IND.17
 * Immunization coverage for Pertussis containing vaccine boosters (Estimated Denominator) 
 * Compares the administered booster dose of pertussis containing vaccine (dose 4) with a country specified denominator expressed as a percentage.
 * 
 * Numerator: Number of administrations of booster vaccine containing a pertussis component during the reporting period 
 * Numerator Computation: COUNT immunization events WHERE administered product is a Pertussis containing vaccine (IMMZ.A1.DE12) and dose > 3 during reporting period.
 * Denominator: Country defined target population.
 * Denominator Computation: PARAMETER country defined target population.
 * 
 * Disaggregation:
 *   - Geographic Region
 *   - Administrative Gender (or Biological Sex)
 * 
 * References: WHO / UNICEF Joint Reporting Form (3 - element 4090)
 */

library IMMZIND17

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
define "measure-population":
	exists(IMMZIndCom."Pertussis Booster Doses Administered to Patient During Measurement Period")

/*
 * Disaggregator: Dose Sequence (4, 5, 6)
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
define "Administrative Gender Stratifier":
	IMMZIndCom."By Administrative Gender Stratifier"

/* End of IMMZ.IND.17 */
