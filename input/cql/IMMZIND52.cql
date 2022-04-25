/*
 * Library: IMMZ.IND.52
 * Dropout Rate of MCV1 to MCV2 (Individuals) 
 * Indicates the number of individuals which have dropped out of the measles containing vaccine protocol. 

The indicator counts the number of individuals who have received a measles containing vaccine dose 1, yet have not received the final dose of measles containing vaccine (are past due of MCV2) with the individuals who have received MCV1 and MCV2 
 * 
 * Numerator: Number of children who have received MCV 1 (numerator) minus the number of children who have not received MCV 3 and are past due (exclusion) 
 * Numerator Computation: Numerator: COUNT immunization events WHERE administered product is MCV (IMMZ.A1.DE9) and dose number = 1 and before reporting period and EXISTS immunization recommendation WHERE product is MCV and dose number is 3 and due date during reporting period.
Numerator Exclusion: COUNT immunization recommendations WHERE recommended product is MCV and dose number = 3 and due date during reporting period AND NOT EXISTS immunization where product is MCV and dose sequence = 1
 * Denominator: Number of children who have received MCV dose 1
 * Denominator Computation: COUNT immunization events WHERE administered product is MCV (IMMZ.A1.DE9) and dose sequence =1 AND EXISTS immunization recommendation WHERE product is MCV and dose sequence = 3 and due date during reporting period.
 * 
 * Disaggregation:
 *   - Geographic Region
 * 
 * References: WHO Immunization Facility Analysis Guide (1)
 */

library IMMZIND52

// Start Skeleton CQL
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1'
include IMMZCommon called IMMZCom
include IMMZConcepts called IMMZc
include IMMZConfig called IMMZCon
include IMMZStratifiers called IMMZStratifiers
include IMMZVaccineLibrary called IMMZvl
include FHIRCommon called FC
// End Skeleton CQL
parameter "Measurement Period" Interval<Date>

context Patient

/*
 * Numerator: Number of children who have received MCV 1 (numerator) minus the number of children who have not received MCV 3 and are past due (exclusion)
 * Numerator Computation: Numerator: COUNT immunization events WHERE administered product is MCV (IMMZ.A1.DE9) and dose number = 1 and before reporting period and EXISTS immunization recommendation WHERE product is MCV and dose number is 3 and due date during reporting period.
Numerator Exclusion: COUNT immunization recommendations WHERE recommended product is MCV and dose number = 3 and due date during reporting period AND NOT EXISTS immunization where product is MCV and dose sequence = 1
 */
define "numerator":
	true // TODO: Write logic here 

/*
 * Denominator: Number of children who have received MCV dose 1
 * Denominator Computation: COUNT immunization events WHERE administered product is MCV (IMMZ.A1.DE9) and dose sequence =1 AND EXISTS immunization recommendation WHERE product is MCV and dose sequence = 3 and due date during reporting period.
 */
define "denominator":
	true // TODO: Write logic here 

/*
 * Disaggregator: Geographic Region
 */
define "Geographic Region Stratifier":
	true // todo: fill in logic

/* End of IMMZ.IND.52 */
