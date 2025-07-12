/*
 * Library: IMMZ.IND.20
 * Immunization coverage for Japanese encephalitis vaccines (Estimated Denominator) 
 * Compares the administered doses of Japanese encephalitis vaccines with a country specified target population expressed as a percentage.
 * 
 * Numerator: Number of administrations of vaccines which contain Japanese encephalitis component during the reporting period. 
 * Numerator Computation: COUNT immunization events WHERE administered product is a Japanese Encephalitis vaccine (IMMZ.A1.DE8) during reporting period.
 * Denominator: Country defined target population.
 * Denominator Computation: PARAMETER country defined target population.
 * 
 * Disaggregation:
 *   - Geographic Region
 *   - Administrative Gender (or Biological Sex)
 * 
 * References: WHO / UNICEF Joint Reporting Form (3 - element 4300)
 */

library IMMZIND20

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
 * Numerator: Number of administrations of vaccines which contain Japanese encephalitis component during the reporting period.
 * Numerator Computation: COUNT immunization events WHERE administered product is a Japanese Encephalitis vaccine (IMMZ.A1.DE8) during reporting period.
 */
define "measure-population":
	exists(IMMZIndCom."JE Doses Administered to Patient During Measurement Period") // TODO: Write logic here 


/*
 * Disaggregator: Geographic Region
 */
define "Geographic Region Stratifier":
	IMMZIndCom."By Geographic Region Stratifier" // todo: fill in logic

/*
 * Disaggregator: Administrative Gender (or Biological Sex)
 */
define "Administrative Gender Stratifier":
	IMMZIndCom."By Administrative Gender Stratifier" // todo: fill in logic

/* End of IMMZ.IND.20 */
