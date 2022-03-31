/*
 * Library: IMMZ.IND.04
 * Immunization coverage for polio containing vaccine (Estimated Denominator) 
 * Compares the administered doses of polio containing vaccines (such as IPV or OPV) with the estimated number of surviving infants expressed as a percentage.
 * 
 * Numerator: Number of administrations of vaccinations against polio (such as IPV or OPV) during the reporting period. 
 * Numerator Computation: COUNT immunization events WHERE administered product is a polio vaccine (IMMZ.A1.DE14) during reporting period
 * Denominator: Estimated number of surviving infants
 * Denominator Computation: PARAMETER surviving number of infants
 * 
 * Disaggregation:
 *   - Dose sequence (1, 2, 3)
 *   - Age Group (< 1 year or > 1 year)
 *   - Vaccine Code (IPV or OPV) of dose given
 *   - Geographic Region
 * 
 * References: WHO Immunization Facility Analysis Guide (1), WHO / UNICEF Joint Reporting Form (3 - elements 4130 - 4160)
 */

library IMMZIND04

using FHIR version '4.0.1'

include FHIRHelpers version '4.0.1'
include IMMZCommon called IMMZCom
include IMMZConcepts called IMMZc
include IMMZStratifiers called IMMZStratifiers
include IMMZVaccineLibrary called IMMZvl

parameter "Measurement Period" Interval<Date> default Interval[@2022-01-01, @2022-01-31]
parameter "Estimated Number of Surviving Infants" Integer

context Patient

/*
 * Numerator: Number of administrations of vaccinations against polio (such as IPV or OPV) during the reporting period.
 * Numerator Computation: COUNT immunization events WHERE administered product is a polio vaccine (IMMZ.A1.DE14) during reporting period
 */
define "numerator":
	exists([Immunization: vaccineCode in IMMZc."Polio Vaccine"] I
        where IMMZCom.ToDate(I.occurrence) during "Measurement Period"
            and I.status = 'completed')
/*
 * Denominator: Estimated number of surviving infants
 * Denominator Computation: PARAMETER surviving number of infants
 */
define "denominator":
	"Estimated Number of Surviving Infants" 
/*
 * Disaggregator: Dose sequence (1, 2, 3)
 */
define "Dose sequence  Stratifier":
	IMMZStratifiers."By Dose Number Stratifier"
/*
 * Disaggregator: Age Group (< 1 year or > 1 year)
 */
define "Age Group  Stratifier":
	IMMZStratifiers."Infant By Age Stratifier"
/*
 * Disaggregator: Vaccine Code (IPV or OPV) of dose given
 */
define "Vaccine Code Stratifier":
	IMMZStratifiers."By Vaccine Code Stratifier"
/*
 * Disaggregator: Geographic Region
 */
define "Geographic Region Stratifier":
	IMMZStratifiers."By Geographic Region Stratifier"
/* End of IMMZ.IND.04 */
