/*
 * Library: IMMZ.IND.21
 * Dropout Rate of BCG to MCV1 (Target / Reported Cohort) 
 * Indicates the aggregate dropout rate of children which have begun vaccination (at birth, BCG if given) with aggregate administration of measles containing vaccines. 

The indicator compares the number of administration of BCG minus the number of administration of MCV1 divided by the number of BCG vaccinations (BCG - MCV1 / BCG)
 * 
 * Numerator: The number of doses of MCV1 administered during reporting period minus the number of BCG doses administered during reporting period 
 * Numerator Computation: COUNT immunization events WHERE administered product is BCG (IMMZ.A1.DE1)  during reporting period
SUBTRACT 
COUNT immunization events WHERE administered product is measles containing vaccine (IMMZ.A1.DE9) AND dose sequence is 1 during reporting period
 * Denominator: Number of administrations of BCG administered during reporting period.
 * Denominator Computation: COUNT immunization events WHERE administered product is BCG (IMMZ.A1.DE1)  during reporting period
 * 
 * Disaggregation:
 *   - Geographic Region
 * 
 * References: WHO Immunization Facility Analysis Guide (1)
 */

library IMMZIND21

using FHIR version '4.0.1'

include FHIRHelpers version '4.0.1'
include IMMZCommon called IMMZCom
include IMMZConcepts called IMMZc
include IMMZStratifiers called IMMZStratifiers
include IMMZVaccineLibrary called IMMZvl

parameter "Measurement Period" Interval<Date>

context Patient

/*
 * Numerator: The number of doses of MCV1 administered during reporting period minus the number of BCG doses administered during reporting period
 * Numerator Computation: COUNT immunization events WHERE administered product is BCG (IMMZ.A1.DE1)  during reporting period
SUBTRACT 
COUNT immunization events WHERE administered product is measles containing vaccine (IMMZ.A1.DE9) AND dose sequence is 1 during reporting period
 */
define "numerator":
	true // TODO: Write logic here 

/*
 * Denominator: Number of administrations of BCG administered during reporting period.
 * Denominator Computation: COUNT immunization events WHERE administered product is BCG (IMMZ.A1.DE1)  during reporting period
 */
define "denominator":
	true // TODO: Write logic here 

/*
 * Disaggregator: Geographic Region
 */
define "Geographic Region Stratifier":
	IMMZStratifiers."By Geographic Region Stratifier"

