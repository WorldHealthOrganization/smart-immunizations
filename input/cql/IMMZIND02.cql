/*
 * Library: IMMZ.IND.02
 * Immunization coverage for DTP (Target / Reported Population) 
 * Compares the actual doses of DTP derived vaccinations administered over the estimated number of suviving infants. 
 * 
 * Numerator: Number of administrations of vaccinations containing a Diptheria, Tetanus, and Pertussis component during the reporting period 
 * Numerator Computation: COUNT immunization events WHERE administered product is a DTP vaccine (IMMZ.A1.DE24)  during reporting period
 * Denominator: Estimated number of surviving infants (number of births minus infant deaths) for reporting area.
 * Denominator Computation: PARAMETER number of births MINUS PARAMETER number of infant deaths
 * 
 * Disaggregation:
 *   - Dose Sequence (1, 2, 3)
 *   - Age Group (< 1 year or >1 year)
 *   - Geographic Region
 * 
 * References: WHO Immunization Facility Analysis Guide (1), WHO recommendations for routine immunization (2)
 */

library IMMZIND02

using FHIR version '4.0.1'

include FHIRHelpers version '4.0.1'
include IMMZCommon called IMMZCom
include IMMZConcepts called IMMZc
include IMMZStratifiers called IMMZStratifiers
include IMMZVaccineLibrary called IMMZvl

parameter "Measurement Period" Interval<Date>

context Patient

/*
 * Numerator: Number of administrations of vaccinations containing a Diptheria, Tetanus, and Pertussis component during the reporting period
 * Numerator Computation: COUNT immunization events WHERE administered product is a DTP vaccine (IMMZ.A1.DE24)  during reporting period
 */
define "numerator":
	true // TODO: Write logic here 

/*
 * Denominator: Estimated number of surviving infants (number of births minus infant deaths) for reporting area.
 * Denominator Computation: PARAMETER number of births MINUS PARAMETER number of infant deaths
 */
define "denominator":
	true // TODO: Write logic here 

/*
 * Disaggregator: Dose Sequence (1, 2, 3)
 */
define "Dose Sequence  Stratifier":
	true // todo: fill in logic

/*
 * Disaggregator: Age Group (< 1 year or >1 year)
 */
define "Age Group  Stratifier":
	true // todo: fill in logic

/*
 * Disaggregator: Geographic Region
 */
define "Geographic Region Stratifier":
	true // todo: fill in logic

