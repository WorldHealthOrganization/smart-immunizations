/*
 * Library: IMMZ.IND.Measles
 * Immunization coverage for Measles containing vaccine (Estimated Denominator) 
 * Compares the administered doses of measles containing vaccines (MCV) with the estimated number of surviving infants (if dose 1) or a country supplied denominator (if dose 2) expressed as a percentage. 
 * 
 * Numerator: Number of administrations of vaccinations containing a Measles component during reporting period 
 * Numerator Computation: COUNT immunization events WHERE administered product is a Measles vaccine (IMMZ.Z.DE9) during reporting period
 * Denominator: Estimated number of surviving infants (for dose 1) and country supplied denominator for dose sequence 2 (see comments)
 * Denominator Computation: PARAMETER number of surviving infants (if Dose Sequence = 1) or PARAMETER of country supplied denominator (if Dose Sequence = 2)
 * 
 * Disaggregation:
 *   - Dose Sequence (1, 2)
 *   - Age Group (< 1 year or > 1 year)
 *   - Geographic Region
 *   - Administrative Gender (or Biological Sex)
 * 
 * References: WHO Immunization Facility Analysis Guide (1), WHO / UNICEF Joint Reporting Form (3 - elements 4240 and 4260 )
 */

library IMMZINDMeasles

// Start Skeleton CQL
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1'
include IMMZCommon called IMMZCom
include IMMZConcepts called IMMZc
include IMMZConfig called IMMZCon
include IMMZIndicatorCommon called IMMZIndCom
include IMMZVaccineLibrary called IMMZvl
include FHIRCommon called FC
include IMMZD2DTMeasles called Measles
// End Skeleton CQL
parameter "Measurement Period" Interval<Date>

context Patient

/*
define "MCV Doses Administered to Patient During Measurement Period":
    Measles."MCV Doses Administered to Patient" I 
    where IMMZCom.ToDate(I.occurrence) during "Measurement Period"
*/

define function "Measure Observation" (Patient "Patient"):
  1

/*
 * Target population for first dose: Any one over 9 (in high transmission area) or 12 (in low transmission area) months old
 */ 
define "Initial Population 05":
	Measles."First MCV Dose Administered to Patient" I where IMMZCom.ToDate(I.occurrence) during "Measurement Period"

/*
 * Numerator for first dose: Anyone having received the first dose
 */
define "Measure Population 05":
	"Initial Population 05"

/*
 * Target population for second dose: Any one over 15 months
 */ 
define "Initial Population 40":
	Measles."Second MCV Dose Administered to Patient" I where IMMZCom.ToDate(I.occurrence) during "Measurement Period"

/*
 * Numerator for second dose: Anyone having received the first dose
 */
define "Measure Population 40":
	"Initial Population 40"


/*
 * Combined stratifiers
 */
define "Stratification":
		IMMZIndCom."By Administrative Gender Stratifier".code + ':' + IMMZIndCom."Toddler By Age Stratifier".code + ':' + IMMZIndCom."By Geographic Region Stratifier"


