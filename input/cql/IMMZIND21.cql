/*
 * Library: IMMZ.IND.21
 * Immunization coverage for OPV and IPV (Actual / Planned Cohort) 
 * Compares the actual number of children who have a confirmed dose of OPV or IPV with the actual number of children which should have received an IPV or OPV vaccination during the reporting period.
 * 
 * Numerator: The number of IPV or OPV vaccination events administered during the reporting period. 
 * Numerator Computation: COUNT immunization events 
WHERE product administered is IPV or OPV vaccine (IMMZ.A1.DE14) during reporting period
 * Denominator: The number of IPV or OPV immunizations which were planned/eligible to be administered during the reporting period
 * Denominator Computation: COUNT immunization recommendations WHERE suggested vaccine product is IPV or OPV vaccine (IMMZ.A1.DE14) during reporting period
 * 
 * Disaggregation:
 *   - Dose sequence (1, 2, 3)
 *   - Age Group (0 to 3 months / 0 to 14 weeks, 3 to 6 months / 14 to 24 weeks, > 6 months / > 24 weeks )
 *   - Geographic Region
 * 
 * References: WHO Immunization Facility Analysis Guide (1)
 */

library IMMZIND21

using FHIR version '4.0.1'

include FHIRHelpers version '4.0.1'
include IMMZCommon called IMMZCom
include IMMZConcepts called IMMZc
include IMMZStratifiers called IMMZStratifiers
include IMMZVaccineLibrary called IMMZvl

parameter "Measurement Period" Interval<Date>

context Patient

/*
 * Numerator: The number of IPV or OPV vaccination events administered during the reporting period.
 * Numerator Computation: COUNT immunization events 
WHERE product administered is IPV or OPV vaccine (IMMZ.A1.DE14) during reporting period
 */
define "numerator":
	true // TODO: Write logic here 

/*
 * Denominator: The number of IPV or OPV immunizations which were planned/eligible to be administered during the reporting period
 * Denominator Computation: COUNT immunization recommendations WHERE suggested vaccine product is IPV or OPV vaccine (IMMZ.A1.DE14) during reporting period
 */
define "denominator":
	true // TODO: Write logic here 

/*
 * Disaggregator: Dose sequence (1, 2, 3)
 */
define "Dose sequence  Stratifier":
	true // todo: fill in logic

/*
 * Disaggregator: Age Group (0 to 3 months / 0 to 14 weeks, 3 to 6 months / 14 to 24 weeks, > 6 months / > 24 weeks )
 */
define "Age Group  Stratifier":
	true // todo: fill in logic

/*
 * Disaggregator: Geographic Region
 */
define "Geographic Region Stratifier":
	IMMZStratifiers."By Geographic Region Stratifier"

