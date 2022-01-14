/*
 * Library: IMMZ.IND.10
 * Dropout Rate of DTP1 to DTP3 (Target / Reported Cohort) 
 * Compares the number of children who started the DTP vaccination protocol (i.e. were administered DTP1) however did not complete the DTP vaccination protocol (i.e. did not receive DTP3). 
 * 
 * Numerator: Number of administrations of DTP1 administered during reporting period minus the number of administrations of DTP3 administered during report period 
 * Numerator Computation: COUNT immunization events WHERE administered product is DTP (IMMZ.A1.DE24) AND dose sequence is 1  during reporting period
SUBTRACT
COUNT immunization events WHERE administered product is DTP (IMMZ.A1.DE24) AND dose sequence is 3  during reporting period
 * Denominator: Number of administrations of DTP1 administered
 * Denominator Computation: COUNT immunization events WHERE administered product is DTP (IMMZ.A1.DE24) AND dose sequence is 1 during reporting period
 * 
 * Disaggregation:
 *   - Geographic Region
 * 
 * References: WHO Immunization Facility Analysis Guide (1)
 */

library IMMZIND10

using FHIR version '4.0.1'

include FHIRHelpers version '4.0.1'
include IMMZCommon called IMMZCom
include IMMZConcepts called IMMZc
include IMMZStratifiers called IMMZStratifiers
include IMMZVaccineLibrary called IMMZvl

parameter "Measurement Period" Interval<Date>

context Patient

/*
 * Numerator: Number of administrations of DTP1 administered during reporting period minus the number of administrations of DTP3 administered during report period
 * Numerator Computation: COUNT immunization events WHERE administered product is DTP (IMMZ.A1.DE24) AND dose sequence is 1  during reporting period
SUBTRACT
COUNT immunization events WHERE administered product is DTP (IMMZ.A1.DE24) AND dose sequence is 3  during reporting period
 */
define "numerator":
	true // TODO: Write logic here 

/*
 * Denominator: Number of administrations of DTP1 administered
 * Denominator Computation: COUNT immunization events WHERE administered product is DTP (IMMZ.A1.DE24) AND dose sequence is 1 during reporting period
 */
define "denominator":
	true // TODO: Write logic here 

/*
 * Disaggregator: Geographic Region
 */
define "Geographic Region Stratifier":
	true // todo: fill in logic

