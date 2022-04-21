/*
 * Library: IMMZ.IND.34
 * Immunization coverage for HepB containing vaccines (Computed Denominator) 
 * Compares the administered dose of HebB containing vaccines with the number of registered, surviving infants expressed as a percentage.
 * 
 * Numerator: Number of administrations of vaccinations containing a Hepatitis B component. 
 * Numerator Computation: COUNT patients WHERE age at reporting period < 12 months AND deceasedDate is not populated
HAVING immunization events WHERE administered product is a HepB (IMMZ.A1.DE6) during reporting period.
 * Denominator: Number of registered, surviving infants whose ages is less than 12 months during reporting period.
 * Denominator Computation: COUNT Patient WHERE age at reporting period < 12 months AND deceasedDate is not populated.
 * 
 * Disaggregation:
 *   - Dose Sequence (1, 2, 3)
 *   - Age Group (<24 H of Birth)
 *   - Geographic Region
 *   - Gender
 * 
 * References: WHO / UNICEF Join Reporting Form (3 - element 4030)
 */

library IMMZIND34

// Start Skeleton CQL
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1'
include IMMZCommon called IMMZCom
include IMMZConcepts called IMMZc
include IMMZConfig called IMMZCon
include IMMZStratifiers called IMMZStratifiers
include IMMZVaccineLibrary called IMMZvl
include FHIRCommon called FC
// End Skeleton CQL
parameter "Measurement Period" Interval<Date>

context Patient

/*
 * Numerator: Number of administrations of vaccinations containing a Hepatitis B component.
 * Numerator Computation: COUNT patients WHERE age at reporting period < 12 months AND deceasedDate is not populated
HAVING immunization events WHERE administered product is a HepB (IMMZ.A1.DE6) during reporting period.
 */
define "numerator":
	true // TODO: Write logic here 

/*
 * Denominator: Number of registered, surviving infants whose ages is less than 12 months during reporting period.
 * Denominator Computation: COUNT Patient WHERE age at reporting period < 12 months AND deceasedDate is not populated.
 */
define "denominator":
	true // TODO: Write logic here 

/*
 * Disaggregator: Dose Sequence (1, 2, 3)
 */
define "Dose Sequence Stratifier":
	true // todo: fill in logic

/*
 * Disaggregator: Age Group (<24 H of Birth)
 */
define "Age Group Stratifier":
	true // todo: fill in logic

/*
 * Disaggregator: Geographic Region
 */
define "Geographic Region Stratifier":
	true // todo: fill in logic

/*
 * Disaggregator: Gender
 */
define "Gender Stratifier":
	true // todo: fill in logic

/* End of IMMZ.IND.34 */
