/*
 * Library: IMMZ.IND.26
 * Immunization coverage for Rubella Vaccinations (Actual / Planned Cohort) 
 * Compares the actual number of children who have a confirmed dose of Vaccinations with the actual number of children which should have received Vaccinations vaccination during the reporting period
 * 
 * Numerator: Number of administrations of vaccines containing a Rubella component during reporting period 
 * Numerator Computation: COUNT immunization events WHERE administered product is a Rubella vaccine (IMMZ.A1.DE17) during reporting period
 * Denominator: The number of Rubella immunizations events which were planned/eligible to be administered during the reporting period
 * Denominator Computation: COUNT immunization recommendations WHERE suggested vaccine product is a Rubella vaccine (IMMZ.A1.DE17) during reporting period
 * 
 * Disaggregation:
 *   - Age Group (< 9 months, 9 - 18 months, 18 months - 15 years, > 15 years)
 *   - Geographic Region
 * 
 * References: WHO Immunization Facility Analysis Guide (1)
 */

library IMMZIND26

using FHIR version '4.0.1'

include FHIRHelpers version '4.0.1'
include IMMZCommon called IMMZCom
include IMMZConcepts called IMMZc
include IMMZStratifiers called IMMZStratifiers
include IMMZVaccineLibrary called IMMZvl

parameter "Measurement Period" Interval<Date>

context Patient

/*
 * Numerator: Number of administrations of vaccines containing a Rubella component during reporting period
 * Numerator Computation: COUNT immunization events WHERE administered product is a Rubella vaccine (IMMZ.A1.DE17) during reporting period
 */
define "numerator":
	true // TODO: Write logic here 

/*
 * Denominator: The number of Rubella immunizations events which were planned/eligible to be administered during the reporting period
 * Denominator Computation: COUNT immunization recommendations WHERE suggested vaccine product is a Rubella vaccine (IMMZ.A1.DE17) during reporting period
 */
define "denominator":
	true // TODO: Write logic here 

/*
 * Disaggregator: Age Group (< 9 months, 9 - 18 months, 18 months - 15 years, > 15 years)
 */
define "Age Group  Stratifier":
	true // todo: fill in logic

/*
 * Disaggregator: Geographic Region 
 */
define "Geographic Region  Stratifier":
	IMMZStratifiers."By Geographic Region Stratifier"
