/*
 * Library: IMMZ.IND.06
 * Immunization coverage for oral polio containing vaccine birth doses (Estimated Denominator) 
 * Compares the administered doses of oral polio containing vaccines (OPV) given at birth (dose sequence 0) with the number of live births. This indicator should only be used in contexts where an OPV birth dose is administered.
 * 
 * Numerator: Number of administrations of vaccinations using an oral polio vaccine (OPV) where the dose sequence is 0 (birth dose) during the reporting period. 
 * Numerator Computation: COUNT immunization events WHERE administered product is an oral polio vaccine (IMMZ.A1.DE26) and dose sequence = 0 during reporitng period.
 * Denominator: Estimated number of live births.
 * Denominator Computation: PARAMETER number of live births
 * 
 * Disaggregation:
 *   - Age Group (<24H of Birth, < 2 weeks)
 *   - Geographic Region
 *   - Administrative Gender (biological sex)
 * 
 * References: WHO Immunization Facility Analysis Guide (1), WHO / UNICEF Joint Reporting Form (3 - elements 4130 - 4160)
 */

library IMMZIND06

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
 * Numerator: Number of administrations of vaccinations using an oral polio vaccine (OPV) where the dose sequence is 0 (birth dose) during the reporting period.
 * Numerator Computation: COUNT immunization events WHERE administered product is an oral polio vaccine (IMMZ.A1.DE26) and dose sequence = 0 during reporitng period.
 */
define "measure-population":
	true // TODO: Write logic here 

/*
 * Disaggregator: Age Group (<24H of Birth, < 2 weeks)
 */
define "Age Group Stratifier":
	true // todo: fill in logic

/*
 * Disaggregator: Geographic Region
 */
define "Geographic Region Stratifier":
	true // todo: fill in logic

/*
 * Disaggregator: Administrative Gender (biological sex)
 */
define "Administrative Gender Stratifier":
	true // todo: fill in logic

/* End of IMMZ.IND.06 */
