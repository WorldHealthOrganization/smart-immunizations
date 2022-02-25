/*
 * Library: IMMZ.IND.03
 * Immunization coverage for HepB containing vaccines (Estimated Denominator) 
 * Compares the administered doses of Hepatitis B containing vaccine with the estimated number of live births (if dose sequence is 1 or 2) or number of surviving infants (for dose 3 - if given)
 * 
 * Numerator: Number of administrations of vaccinations containing a Hepatitis B component. 
 * Numerator Computation: COUNT immunization events WHERE administered product is a HepB (IMMZ.A1.DE6) during reporting period.
 * Denominator: Estimated number of live births.
 * Denominator Computation: PARAMETER number of live births or PARAMETER number of surviving infants (see comments)
 * 
 * Disaggregation:
 *   - Dose Sequence (1, 2, 3)
 *   - Age Group (<24 H of Birth)
 *   - Geographic Region
 * 
 * References: WHO / UNICEF Join Reporting Form (3 - element 4030)
 */

library IMMZIND03

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
 * Numerator: Number of administrations of vaccinations containing a Hepatitis B component.
 * Numerator Computation: COUNT immunization events WHERE administered product is a HepB (IMMZ.A1.DE6) during reporting period.
 */
define "numerator":
	exists([Immunization: vaccineCode in IMMZc."HepB Vaccine"] I
        where IMMZCom.ToDate(I.occurrence) during "Measurement Period"
            and I.status = 'completed')

/*
 * Denominator: Estimated number of live births.
 * Denominator Computation: PARAMETER number of live births or PARAMETER number of surviving infants (see comments)
 */
define "denominator":
	"Estimated Number of Live Births"

/*
 * Disaggregator: Dose Sequence (1, 2, 3)
 */
define "Dose Sequence  Stratifier":
	IMMZStratifiers."By Dose Number Stratifier"

/*
 * Disaggregator: Age Group (<24 H of Birth)
 */
define "Age Group  Stratifier":
	IMMZStratifiers."Newborn By Age Stratifier"
/*
 * Disaggregator: Geographic Region
 */
define "Geographic Region Stratifier":
	IMMZStratifiers."By Geographic Region Stratifier"
/* End of IMMZ.IND.03 */
