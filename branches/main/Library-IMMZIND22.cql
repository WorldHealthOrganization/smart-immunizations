/*
 * Library: IMMZ.IND.22
 * Immunization coverage for seasonal influenza (Estimated Denominator) 
 * Compares the administered doses of seasonal influenza vaccines with country defined target population (at risk) expressed as a percentage
 * 
 * Numerator: Number of administrations of seasonal influenza vaccines during reporting period. 
 * Numerator Computation: COUNT immunization events WHERE administered product is a seasonal influenza vaccine (IMMZ.A1.DE18) during reporting period.
 * Denominator: Country defined target population of at-risk individuals.
 * Denominator Computation: PARAMETER country defined target population.
 * 
 * Disaggregation:
 *   - Age Group (< 1 year, < 15 year,  > 60 year)
 *   - Geographic Region
 *   - Gender
 * 
 * References: WHO / UNICEF Joint Reporting Form (3 - elements 7030 - 7050)
 */

library IMMZIND22

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
 * Numerator: Number of administrations of seasonal influenza vaccines during reporting period.
 * Numerator Computation: COUNT immunization events WHERE administered product is a seasonal influenza vaccine (IMMZ.A1.DE18) during reporting period.
 */
define "measure-population":
	IMMZIndCom."Seasonal Influenza Doses Administered to Patient During Reporting Period"

/*
 * Disaggregator: Age Group (< 1 year, < 15 year,  > 60 year)
 */
define "Age Group Stratifier":
	IMMZIndCom."Seasonal Influenza By Age Stratifier" // todo: fill in logic

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

/* End of IMMZ.IND.22 */
