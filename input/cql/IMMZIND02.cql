/*
 * Library: IMMZ.IND.02
 * Immunization coverage for DTP containing vaccines (Estimated Denominator) 
 * Compares the administered doses of a DTP containing vaccine with the estimated number of surviving infants as a percentage.
 * 
 * Numerator: Number of administrations of vaccinations containing a Diphtheria, Tetanus, and Pertussis component during the reporting period 
 * Numerator Computation: COUNT immunization events WHERE administered product is a DTP vaccine (IMMZ.A1.DE24)  during reporting period
 * Denominator: Estimated number of surviving infants.
 * Denominator Computation: PARAMETER surviving number of infants
 * 
 * Disaggregation:
 *   - Dose Sequence (1, 2, 3)
 *   - Age Group (< 1 year or >1 year)
 *   - Geographic Region
 * 
 * References: WHO Immunization Facility Analysis Guide (1), WHO / UNICEF Joint Reporting Form (3 - element 4040, 4050)
 */

library IMMZIND02

// Start Skeleton CQL
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1'
include IMMZCommon called IMMZCom
include IMMZConcepts called IMMZc
include IMMZStratifiers called IMMZStratifiers
include IMMZVaccineLibrary called IMMZvl
// End Skeleton CQL
parameter "Measurement Period" Interval<Date>

context Patient

/*
 * Numerator: Number of administrations of vaccinations containing a Diphtheria, Tetanus, and Pertussis component during the reporting period
 * Numerator Computation: COUNT immunization events WHERE administered product is a DTP vaccine (IMMZ.A1.DE24)  during reporting period
 */
define "numerator":
	true // TODO: Write logic here 

/*
 * Denominator: Estimated number of surviving infants.
 * Denominator Computation: PARAMETER surviving number of infants
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

/* End of IMMZ.IND.02 */
