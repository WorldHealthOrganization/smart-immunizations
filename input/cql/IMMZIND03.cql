/*
 * Library: IMMZ.IND.03
 * Immunization coverage for OPV and IPV (Target / Reported Cohort) 
 * Compares the actual doses of each of IPV, OPV over the estimated number of surviving infants
 * 
 * Numerator: Number of administrations of IPV or OPV during reporting period 
 * Numerator Computation: COUNT immunization events WHERE administered product is a polio vaccine (IMMZ.A1.DE14) during reporting period
 * Denominator: Estimated number of surviving infants (number of births minus infant deaths) for reporting area.
 * Denominator Computation: PARAMETER number of births MINUS PARAMETER number of infant deaths
 * 
 * Disaggregation:
 *   - Dose sequence (1, 2, 3)
 *   - Age Group (0 to 3 months / 0 to 14 weeks, 3 to 6 months / 14 to 24 weeks, > 6 months / > 24 weeks )
 *   - Geographic Region
 * 
 * References: WHO Immunization Facility Analysis Guide (1), WHO recommendations for routine immunization (2)
 */

library IMMZIND03

using FHIR version '4.0.1'

include FHIRHelpers version '4.0.1'
include IMMZCommon called IMMZCom
include IMMZConcepts called IMMZc
include IMMZStratifiers called IMMZStratifiers
include IMMZVaccineLibrary called IMMZvl

parameter "Measurement Period" Interval<Date>
parameter "Census Estimated Births" Integer
parameter "Census Estimated Infant Deaths" Integer

context Patient

/*
 * Numerator: Number of administrations of IPV or OPV during reporting period
 * Numerator Computation: COUNT immunization events WHERE administered product is a polio vaccine (IMMZ.A1.DE14) during reporting period
 */
define "numerator":
	true // TODO: Write logic here 

/*
 * Denominator: Estimated number of surviving infants (number of births minus infant deaths) for reporting area.
 * Denominator Computation: PARAMETER number of births MINUS PARAMETER number of infant deaths
 */
define "denominator":
	"Census Estimated Births" - "Census Target Infant Deaths"

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


