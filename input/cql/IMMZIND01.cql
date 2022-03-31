/*
 * Library: IMMZ.IND.01
 * Immunization coverage for BCG (Estimated Denominator) 
 * Compares the doses of BCG vaccine administered with the estimated number of live births as a percentage.
 * 
 * Numerator: Number of administrations of BCG during the reporting period 
 * Numerator Computation: COUNT immunization events WHERE administered product is a BCG vaccine (IMMZ.A1.DE1) during reporting period
 * Denominator: Estimated number of live births.
 * Denominator Computation: PARAMETER number of live births
 * 
 * Disaggregation:
 *   - Geographic Region
 * 
 * References: WHO Immunization Facility Analysis Guide (1), WHO / UNICEF Joint Reporting Form (3 - element 4010)
 */

library IMMZIND01

// Start Skeleton CQL
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1'
include IMMZCommon called IMMZCom
include IMMZConcepts called IMMZc
include IMMZStratifiers called IMMZStratifiers
include IMMZVaccineLibrary called IMMZvl

parameter "Measurement Period" Interval<Date> default Interval[@2022-01-01, @2022-01-31]
parameter "Estimated Number of Live Births" Integer default 10
context Patient

/*
 * Numerator: Number of administrations of BCG during the reporting period
 * Numerator Computation: COUNT immunization events WHERE administered product is a BCG vaccine (IMMZ.A1.DE1) during reporting period
 */
define "numerator":
	exists(IMMZCom."BCG Doses Administered" I
		where IMMZCom.ToDate(I.occurrence) during "Measurement Period")

/*
 * Denominator: Estimated number of live births.
 * Denominator Computation: PARAMETER number of live births
 */
define "denominator":
	"Estimated Number of Live Births"

/*
 * Disaggregator: Geographic Region
 */
define "Geographic Region Stratifier":
	IMMZStratifiers."By Geographic Region Stratifier"

/* End of IMMZ.IND.01 */
