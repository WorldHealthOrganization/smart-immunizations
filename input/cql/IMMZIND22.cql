/*
 * Library: IMMZ.IND.22
 * Dropout Rate of MCV1 to MCV2 (Target / Reported Cohort) 
 * Indicates the aggregate dropout rate of children which began vaccination of measles containing vaccines (MCV1) with the aggregate administration of the second dose (MCV2).

The indicator compares the number of administrations of MCV dose 1 minus the number of administration of MCV2 divided by the number of MCV1 vaccinations (MCV1 - MCV2 / MCV1)
 * 
 * Numerator: The number of first doses of measles containing vaccine administered during reporting period minus the number of last doses of measles containing vaccine during the report period 
 * Numerator Computation: COUNT immunization events WHERE administered product is measles containing vaccine (IMMZ.A1.DE9) AND dose sequence is 1  during reporting period
SUBTRACT 
COUNT immunization events WHERE administered product is measles containing vaccine (IMMZ.A1.DE9) AND dose sequence is 3 during reporting period
 * Denominator: Number of first doses of measles containing vaccine administered during the reporting period.
 * Denominator Computation: COUNT immunization events WHERE administered product is a measles containing vaccine (IMMZ.A1.DE9) AND dose sequence is 1  during reporting period
 * 
 * Disaggregation:
 *   - Geographic Region
 * 
 * References: WHO Immunization Facility Analysis Guide (1)
 */

library IMMZIND22

// Start Skeleton CQL
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1'
include IMMZCommon called IMMZCom
include IMMZConcepts called IMMZc
include IMMZStratifiers called IMMZStratifiers
include IMMZVaccineLibrary called IMMZvl
// End Skeleton CQL
parameter "Measurement Period" Interval<Date>

context Patient

/*
 * Numerator: The number of first doses of measles containing vaccine administered during reporting period minus the number of last doses of measles containing vaccine during the report period
 * Numerator Computation: COUNT immunization events WHERE administered product is measles containing vaccine (IMMZ.A1.DE9) AND dose sequence is 1  during reporting period
SUBTRACT 
COUNT immunization events WHERE administered product is measles containing vaccine (IMMZ.A1.DE9) AND dose sequence is 3 during reporting period
 */
define "numerator":
	true // TODO: Write logic here 

/*
 * Denominator: Number of first doses of measles containing vaccine administered during the reporting period.
 * Denominator Computation: COUNT immunization events WHERE administered product is a measles containing vaccine (IMMZ.A1.DE9) AND dose sequence is 1  during reporting period
 */
define "denominator":
	true // TODO: Write logic here 

/*
 * Disaggregator: Geographic Region
 */
define "Geographic Region Stratifier":
	true // todo: fill in logic

/* End of IMMZ.IND.22 */
