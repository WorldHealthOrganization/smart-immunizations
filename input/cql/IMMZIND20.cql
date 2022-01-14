/*
 * Library: IMMZ.IND.20
 * Immunization coverage for DTP (Actual / Planned Cohort) 
 * Compares the actual number of children who have a confirmed dose of DTP with the actual number of children which should have received a DTP vaccination for the reporting period. 
 * 
 * Numerator: The number of DTP immunizations administered during the report period. 
 * Numerator Computation: COUNT immunization events
WHERE product administered is a DTP vaccine (IMMZ.A1.DE24) during reporting period
 * Denominator: The number of DTP immunizations which were planned/elegible to be administered during the reporting period
 * Denominator Computation: COUNT immunization recommendations
WHERE suggested vaccine product is a DTP vaccine (IMMZ.A1.DE24) during reporting period
 * 
 * Disaggregation:
 *   - Dose Sequence (1, 2, 3)
 *   - Age Group (< 1 year or >1 year)
 *   - Geographic Region
 * 
 * References: WHO Immunization Facility Analysis Guide (1)
 */

library IMMZIND20

using FHIR version '4.0.1'

include FHIRHelpers version '4.0.1'
include IMMZCommon called IMMZCom
include IMMZConcepts called IMMZc
include IMMZStratifiers called IMMZStratifiers
include IMMZVaccineLibrary called IMMZvl

parameter "Measurement Period" Interval<Date>

context Patient

/*
 * Numerator: The number of DTP immunizations administered during the report period.
 * Numerator Computation: COUNT immunization events
WHERE product administered is a DTP vaccine (IMMZ.A1.DE24) during reporting period
 */
define "numerator":
	true // TODO: Write logic here 

/*
 * Denominator: The number of DTP immunizations which were planned/elegible to be administered during the reporting period
 * Denominator Computation: COUNT immunization recommendations
WHERE suggested vaccine product is a DTP vaccine (IMMZ.A1.DE24) during reporting period
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

