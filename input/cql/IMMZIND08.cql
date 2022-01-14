/*
 * Library: IMMZ.IND.08
 * Immunization coverage for Rubella Vaccinations (Target / Reported Cohort) 
 * Compares the actual doses of Rubella vaccinations administered with the estimated number of children and adolescants.
 * 
 * Numerator: Number of administrations of vaccines containing a Rubella component during reporting period 
 * Numerator Computation: COUNT immunization events WHERE administered product is a Rubella vaccine (IMMZ.A1.DE17) during reporting period
 * Denominator: Estimated census of children over one year of age plus estimated census sample of adolescents in reporting area.
 * Denominator Computation: PARAMETER number of children from census over one year of age PLUS PARAMETER number of adolescants
 * 
 * Disaggregation:
 *   - Age Group (< 9 months, 9 - 18 months, 18 months - 15 years, > 15 years)
 * 
 * References: WHO Immunization Facility Analysis Guide (1), WHO recommendations for routine immunization (2)
 */

library IMMZIND08

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
 * Denominator: Estimated census of children over one year of age plus estimated census sample of adolescents in reporting area.
 * Denominator Computation: PARAMETER number of children from census over one year of age PLUS PARAMETER number of adolescants
 */
define "denominator":
	true // TODO: Write logic here 

/*
 * Disaggregator: Age Group (< 9 months, 9 - 18 months, 18 months - 15 years, > 15 years)
 */
define "Age Group  Stratifier":
	true // todo: fill in logic

