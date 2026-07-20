/*
 * Library: IMMZ.IND.09
 * Immunization coverage for HPV (Estimated Denominator) 
 * Compares the administered doses of HPV vaccines with the country specified denominator for HPV coverage expressed as a percentage.
 * 
 * Numerator: Number of administrations of vaccines containing an HPV component during reporting period 
 * Numerator Computation: COUNT immunization events WHERE administered product is an HPV vaccine (IMMZ.A1.DE7) during reporting period
 * Denominator: Country defined target population (see comments)
 * Denominator Computation: PARAMETER country defined target population.
 * 
 * Disaggregation:
 *   - Dose Sequence (1, 2, 3)
 *   - Age Group (<= 9 years, 9  - 14 years, >= 15 years)
 *   - Geographic Region
 *   - Administrative Gender (or Biological Sex)
 * 
 * References: WHO Immunization Facility Analysis Guide (1), WHO / UNICEF Joint Reporting Form (3 - elements 4330, 4340)
 */

library IMMZIND09

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
 * Numerator: Number of administrations of vaccines containing an HPV component during reporting period
 * Numerator Computation: COUNT immunization events WHERE administered product is an HPV vaccine (IMMZ.A1.DE7) during reporting period
 */
define "measure-population":
	exists(IMMZIndCom."HPV Doses Administered to Patient During Measurement Period") // TODO: Write logic here 

/*
 * Disaggregator: Dose Sequence (1, 2, 3)
 */
define "Dose Sequence Stratifier":
	IMMZIndCom."HPV Doses Administered to Patient During Measurement Period" I
	return (singleton from I.protocolApplied).doseNumber
/*
 * Disaggregator: Age Group (<= 9 years, 9  - 14 years, >= 15 years)
 */
define "Age Group Stratifier":
	IMMZIndCom."Adolescent By Age Stratifier"

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

/* End of IMMZ.IND.09 */
