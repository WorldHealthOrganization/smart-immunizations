/*
 * Library: IMMZ.IND.20
 * Dropout Rate of DTP1 to DTP3 (Target / Reported Cohort) 
 * Indicates the aggregate dropout rate of DTP containing vaccines protocol. 

The indicator compares the number of administrations of first dose of DTP containing vaccines (DTP1) minus the number of administrations of the final dose (DTP3) protocol divided by the number of administrations of first dose (DTP1 - DTP3 / DTP1)
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
	IMMZStratifiers."By Geographic Region Stratifier"
/* End of IMMZ.IND.20 */
