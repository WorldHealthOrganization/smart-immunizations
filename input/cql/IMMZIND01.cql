/*
 * Library: IMMZ.IND.01
 * Immunization coverage for BCG (Target / Reported Population) 
 * Compares the actual doses of BCG derived vaccinations administered over the estimated number of suviving newborns.
 * 
 * Numerator: Number of administrations of BCG during the reporting period 
 * Numerator Computation: COUNT immunization events WHERE administered product is a BCG vaccine (IMMZ.A1.DE1) during reporting period
 * Denominator: Estimated number of surviving infants (number of births minus infant deaths) for reporting area.
 * Denominator Computation: PARAMETER number of births MINUS PARAMETER number of infant deaths
 * 
 * Disaggregation:
 *   - Geographic Region
 * 
 * References: WHO Immunization Facility Analysis Guide (1), WHO recommendations for routine immunization (2)
 */

library IMMZIND01

using FHIR version '4.0.1'

include FHIRHelpers version '4.0.1'
include IMMZCommon called IMMZCom
include IMMZConcepts called IMMZc
include IMMZStratifiers called IMMZStratifiers
include IMMZVaccineLibrary called IMMZvl

parameter "Measurement Period" Interval<Date>
parameter "Census Target Births" Integer
parameter "Census Target Infant Deaths" Integer

context Patient

/*
 * Numerator: Number of administrations of BCG during the reporting period
 * Numerator Computation: COUNT immunization events WHERE administered product is a BCG vaccine (IMMZ.A1.DE1) during reporting period
 */
define "numerator":
	true // TODO: Write logic here 

/*
 * Denominator: Estimated number of surviving infants (number of births minus infant deaths) for reporting area.
 * Denominator Computation: PARAMETER number of births MINUS PARAMETER number of infant deaths
 */
define "denominator":
	"Census Target Surviving Infants"

/*
 * Disaggregator: Geographic Region
 */
define "Geographic Region Stratifier":
	IMMZStratifiers."By Geographic Region Stratifier"

