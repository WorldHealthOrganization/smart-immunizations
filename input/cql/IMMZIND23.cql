/*
 * Library: IMMZ.IND.23
 * Immunization coverage for HPV (Actual / Planned Cohort) 
 * Compares the actual number of children who have a confirmed dose of HPV with the actual number of children which should have received HPV vaccination during the reporting period
 * 
 * Numerator: The number of vaccination events administered for HPV during the reporting period 
 * Numerator Computation: COUNT immunization events WHERE product administered is an HPV vaccine (IMMZ.A1.DE7) during reporting period
 * Denominator: The number of HPV immunizations events which were planned/eligible to be administered during the reporting period
 * Denominator Computation: COUNT immunization recommendataions WHERE suggested vaccine product is an HPV vaccine (IMMZ.A1.DE7) during reporting period
 * 
 * Disaggregation:
 *   - Dose Sequence (1, 2, 3)
 *   - Age Group (<9 years, 9 - 14 years, > 15 years)
 *   - Geographic Region
 * 
 * References: WHO Immunization Facility Analysis Guide (1)
 */

library IMMZIND23

using FHIR version '4.0.1'

include FHIRHelpers version '4.0.1'
include IMMZCommon called IMMZCom
include IMMZConcepts called IMMZc
include IMMZStratifiers called IMMZStratifiers
include IMMZVaccineLibrary called IMMZvl

parameter "Measurement Period" Interval<Date>

context Patient

/*
 * Numerator: The number of vaccination events administered for HPV during the reporting period
 * Numerator Computation: COUNT immunization events WHERE product administered is an HPV vaccine (IMMZ.A1.DE7) during reporting period
 */
define "numerator":
	true // TODO: Write logic here 

/*
 * Denominator: The number of HPV immunizations events which were planned/eligible to be administered during the reporting period
 * Denominator Computation: COUNT immunization recommendataions WHERE suggested vaccine product is an HPV vaccine (IMMZ.A1.DE7) during reporting period
 */
define "denominator":
	true // TODO: Write logic here 

/*
 * Disaggregator: Dose Sequence (1, 2, 3)
 */
define "Dose Sequence  Stratifier":
	true // todo: fill in logic

/*
 * Disaggregator: Age Group (<9 years, 9 - 14 years, > 15 years)
 */
define "Age Group  Stratifier":
	true // todo: fill in logic

/*
 * Disaggregator: Geographic Region
 */
define "Geographic Region Stratifier":
	IMMZStratifiers."By Geographic Region Stratifier"

