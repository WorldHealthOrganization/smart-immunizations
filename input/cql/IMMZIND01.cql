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

using FHIR version '4.0.1'

include FHIRHelpers version '4.0.1'
include IMMZCommon called IMMZCom
include IMMZConcepts called IMMZc
include IMMZStratifiers called IMMZStratifiers
include IMMZVaccineLibrary called IMMZvl

parameter "Measurement Period" Interval<Date>
parameter "Estimated Number of Live Births" Integer
context Patient

/*
 * Numerator: Number of administrations of BCG during the reporting period
 * Numerator Computation: COUNT immunization events WHERE administered product is a BCG vaccine (IMMZ.A1.DE1) during reporting period
 */
define "numerator":
	exists([Immunization: vaccineCode in IMMZc."BCG Vaccine"] I
        where IMMZCom.ToDate(I.occurrence) during "Measurement Period"
            and I.status = 'completed')
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
