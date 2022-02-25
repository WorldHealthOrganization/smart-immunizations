/*
 * Library: IMMZ.IND.32
 * Immunization coverage for polio containing vaccine (Computed Denominator) 
 * Compares the administered doses of polio containing vaccines (such as IPV or OPV) with the number of registered surviving infants expressed as a percentage.
 * 
 * Numerator: Number of administrations of vaccinations against polio (such as IPV or OPV) during the reporting period. 
 * Numerator Computation: COUNT immunization events WHERE administered product is a polio vaccine (IMMZ.A1.DE14) during reporting period
 * Denominator: Number of registered, surviving infants.
 * Denominator Computation: COUNT Patient WHERE age at reporting period < 12 months AND deceasedDate is not populated.
 * 
 * Disaggregation:
 *   - Dose sequence (1, 2, 3)
 *   - Age Group (< 1 year or > 1 year)
 *   - Vaccine Code (IPV or OPV) of dose given
 *   - Geographic Region
 * 
 * References: WHO Immunization Facility Analysis Guide (1), WHO / UNICEF Joint Reporting Form (3 - elements 4130 - 4160)
 */

library IMMZIND32

using FHIR version '4.0.1'

include FHIRHelpers version '4.0.1'
include IMMZCommon called IMMZCom
include IMMZConcepts called IMMZc
include IMMZStratifiers called IMMZStratifiers
include IMMZVaccineLibrary called IMMZvl

parameter "Measurement Period" Interval<Date>
context Patient

/*
 * Numerator: Number of administrations of vaccinations against polio (such as IPV or OPV) during the reporting period.
 * Numerator Computation: COUNT immunization events WHERE administered product is a polio vaccine (IMMZ.A1.DE14) during reporting period
 */
define "numerator":
	true // TODO: Write logic here
/*
 * Denominator: Number of registered, surviving infants.
 * Denominator Computation: COUNT Patient WHERE age at reporting period < 12 months AND deceasedDate is not populated.
 */
define "denominator":
	true // TODO: Write logic here
/*
 * Disaggregator: Dose sequence (1, 2, 3)
 */
define "Dose sequence  Stratifier":
	true // todo: fill in logic
/*
 * Disaggregator: Age Group (< 1 year or > 1 year)
 */
define "Age Group  Stratifier":
	true // todo: fill in logic
/*
 * Disaggregator: Vaccine Code (IPV or OPV) of dose given
 */
define "Vaccine Code  Stratifier":
	true // todo: fill in logic
/*
 * Disaggregator: Geographic Region
 */
define "Geographic Region Stratifier":
	IMMZStratifiers."By Geographic Region Stratifier"
/* End of IMMZ.IND.32 */
