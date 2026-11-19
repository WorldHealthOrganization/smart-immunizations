/*
 * Library: IMMZ.IND.24
 * Dropout Rate of BCG to MCV1 (Target / Reported Cohort) 
 * Indicates the aggregate dropout rate of children which have begun vaccination (at birth, BCG if given) with aggregate administration of measles containing vaccines. 

The indicator compares the number of administration of BCG minus the number of administration of MCV1 divided by the number of BCG vaccinations (BCG - MCV1 / BCG)
 * 
 * Numerator: The number of doses of MCV1 administered during reporting period minus the number of BCG doses administered during reporting period 
 * Numerator Computation: COUNT immunization events WHERE administered product is BCG (IMMZ.A1.DE1)  during reporting period
SUBTRACT 
COUNT immunization events WHERE administered product is measles containing vaccine (IMMZ.A1.DE9) AND dose sequence is 1 during reporting period
 * Denominator: Number of doses of BCG administered during reporting period.
 * Denominator Computation: COUNT immunization events WHERE administered product is BCG (IMMZ.A1.DE1)  during reporting period
 * 
 * Disaggregation:
 *   - Geographic Region
 * 
 * References: WHO Immunization Facility Analysis Guide (1)
 */

library IMMZIND24

// Start Skeleton CQL
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1'
include IMMZCommon called IMMZCom
include IMMZConcepts called IMMZc
include IMMZConfig called IMMZCon
include IMMZIndicatorCommon called IMMZIndCom
include IMMZVaccineLibrary called IMMZvl
include FHIRCommon called FC
// End Skeleton CQL
parameter "Measurement Period" Interval<Date>

context Patient

/*
 * Numerator: The number of doses of MCV1 administered during reporting period minus the number of BCG doses administered during reporting period
 * Numerator Computation: COUNT immunization events WHERE administered product is BCG (IMMZ.A1.DE1)  during reporting period
SUBTRACT 
COUNT immunization events WHERE administered product is measles containing vaccine (IMMZ.A1.DE9) AND dose sequence is 1 during reporting period
 */
define "numerator":
	exists(IMMZIndCom."BCG Doses Administered to Patient During Measurement Period")

/** 
 * Exclusion for numerator
 */
define "numerator-exclusion":
	exists(IMMZIndCom."MCV Doses Administered to Patient During Measurement Period" I where (singleton from I.protocolApplied).doseNumber = 1)


/*
 * Denominator: Number of doses of BCG administered during reporting period.
 * Denominator Computation: COUNT immunization events WHERE administered product is BCG (IMMZ.A1.DE1)  during reporting period
 */
define "denominator":
	exists(IMMZIndCom."BCG Doses Administered to Patient During Measurement Period")

/*
 * Disaggregator: Geographic Region
 */
define "Geographic Region Stratifier":
	IMMZIndCom."By Geographic Region Stratifier"

/*
 * Disaggregator: Gender
 */
define "Gender Stratifier":
	IMMZIndCom."By Administrative Gender Stratifier"

/* End of IMMZ.IND.24 */
