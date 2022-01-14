/*
 * Library: IMMZ.IND.12
 * Dropout Rate of MCV1 to MCV2 (Target / Reported Cohort) 
 * The number of children who started the MCV vaccination schedule however did not complete it. This is an indicator which illustrates the ability of the jurisdiction to immunize persons beyond childhood.
 * 
 * Numerator: The number of doses of MCV1 administered during reporting period minus the number of MCV2 doses administered during the report period 
 * Numerator Computation: COUNT immunization events WHERE administered product is MCV (IMMZ.A1.10) AND dose sequence is 1  during reporting period
SUBTRACT 
COUNT immunization events WHERE administered product is MCV (IMMZ.A1.10) AND dose sequence is 3 during reporting period
 * Denominator: Number of doses of MCV1 administered during the reporting period.
 * Denominator Computation: COUNT immunization events WHERE administered product is MCV (IMMZ.A1.10) AND dose sequence is 1  during reporting period
 * 
 * Disaggregation:
 *   - Geographic Region
 * 
 * References: WHO Immunization Facility Analysis Guide (1)
 */

library IMMZIND12

using FHIR version '4.0.1'

include FHIRHelpers version '4.0.1'
include IMMZCommon called IMMZCom
include IMMZConcepts called IMMZc
include IMMZStratifiers called IMMZStratifiers
include IMMZVaccineLibrary called IMMZvl

parameter "Measurement Period" Interval<Date>

context Patient

/*
 * Numerator: The number of doses of MCV1 administered during reporting period minus the number of MCV2 doses administered during the report period
 * Numerator Computation: COUNT immunization events WHERE administered product is MCV (IMMZ.A1.10) AND dose sequence is 1  during reporting period
SUBTRACT 
COUNT immunization events WHERE administered product is MCV (IMMZ.A1.10) AND dose sequence is 3 during reporting period
 */
define "numerator":
	true // TODO: Write logic here 

/*
 * Denominator: Number of doses of MCV1 administered during the reporting period.
 * Denominator Computation: COUNT immunization events WHERE administered product is MCV (IMMZ.A1.10) AND dose sequence is 1  during reporting period
 */
define "denominator":
	true // TODO: Write logic here 

/*
 * Disaggregator: Geographic Region
 */
define "Geographic Region Stratifier":
	IMMZStratifiers."By Geographic Region Stratifier"

