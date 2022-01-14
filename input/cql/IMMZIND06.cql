/*
 * Library: IMMZ.IND.06
 * Immunization coverage for MCV (Target / Reported Cohort) 
 * Compares the actual doses of MCV given with the estimated population of children and adolescants
 * 
 * Numerator: Number of administrations of vaccines containing an MCV component during reporting period 
 * Numerator Computation: COUNT immunization events WHERE administered product is  a Meningococcal vaccine (IMMZ.A1.DE10) during reporting period
 * Denominator: Estimated census of children over one year of age plus estimated census sample of adolescents in reporting area.
 * Denominator Computation: PARAMETER number of children from census over one year of age PLUS PARAMETER number of adolescants
 * 
 * Disaggregation:
 *   - Dose Sequence (1, 2)
 *   - Age Group (< 3 months, 3 - 9 months, 9  -12 months, 12 - 18 months, > 18 months)
 *   - Geographic Region 
 * 
 * References: WHO Immunization Facility Analysis Guide (1), WHO recommendations for routine immunization (2)
 */

library IMMZIND06

using FHIR version '4.0.1'

include FHIRHelpers version '4.0.1'
include IMMZCommon called IMMZCom
include IMMZConcepts called IMMZc
include IMMZStratifiers called IMMZStratifiers
include IMMZVaccineLibrary called IMMZvl

parameter "Measurement Period" Interval<Date>

context Patient

/*
 * Numerator: Number of administrations of vaccines containing an MCV component during reporting period
 * Numerator Computation: COUNT immunization events WHERE administered product is  a Meningococcal vaccine (IMMZ.A1.DE10) during reporting period
 */
define "numerator":
	true // TODO: Write logic here 

/*
 * Denominator: Estimated census of children over one year of age plus estimated census sample of adolescents in reporting area.
 * Denominator Computation: PARAMETER number of children from census over one year of age PLUS PARAMETER number of adolescants
 */
define "denominator":
	true // TODO: Write logic here 

/*
 * Disaggregator: Dose Sequence (1, 2)
 */
define "Dose Sequence  Stratifier":
	true // todo: fill in logic

/*
 * Disaggregator: Age Group (< 3 months, 3 - 9 months, 9  -12 months, 12 - 18 months, > 18 months)
 */
define "Age Group  Stratifier":
	true // todo: fill in logic

/*
 * Disaggregator: Geographic Region 
 */
define "Geographic Region  Stratifier":
	true // todo: fill in logic

/*
 * Disaggregator: 
 */
define " Stratifier":
	true // todo: fill in logic

