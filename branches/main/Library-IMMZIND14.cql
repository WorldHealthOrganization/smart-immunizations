/*
 * Library: IMMZ.IND.14
 * Immunization coverage for Rubella containing vaccines (Estimated Denominator) 
 * Compares the administered doses of rubella containing vaccine (RCV) with a country specified denominator expressed as a percentage.
 * 
 * Numerator: Number of administrations of vaccines containing a Rubella component during reporting period 
 * Numerator Computation: COUNT immunization events WHERE administered product is a Rubella vaccine (IMMZ.A1.DE17) during reporting period
 * Denominator: Country defined target population (see comments)
 * Denominator Computation: PARAMETER country defined target population.
 * 
 * Disaggregation:
 *   - Age Group (< 9 months, 9 - 18 months, 18 months - 15 years, > 15 years)
 *   - Geographic Region
 *   - Administrative Gender (or Biological Sex)
 * 
 * References: WHO Immunization Facility Analysis Guide (1), WHO / UNICEF Joint Reporting Form (3 - element 4250)
 */

library IMMZIND14

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
 * Numerator: Number of administrations of vaccines containing a Rubella component during reporting period
 * Numerator Computation: COUNT immunization events WHERE administered product is a Rubella vaccine (IMMZ.A1.DE17) during reporting period
 */
define "measure-population":
	exists(IMMZIndCom."Rubella Doses Administered to Patient During Measurement Period")

/*
 * Disaggregator: Age Group (< 9 months, 9 - 18 months, 18 months - 15 years, > 15 years)
 */
define "Age Group Stratifier":
	IMMZIndCom."RCV By Age Stratifier" // todo: fill in logic

/*
 * Disaggregator: Geographic Region
 */
define "Geographic Region Stratifier":
	IMMZIndCom."By Geographic Region Stratifier" // todo: fill in logic

/*
 * Disaggregator: Administrative Gender (or Biological Sex)
 */
define "Administrative Gender Stratifier":
	IMMZIndCom."By Administrative Gender Stratifier"

/* End of IMMZ.IND.14 */
