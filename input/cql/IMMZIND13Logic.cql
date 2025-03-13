/*
 * Library: IMMZ.IND.13 Logic
 * Immunization coverage for Measles and rubella containing vaccine, 2nd dose
 * The percentage in the target population who have received second dose of measles and rubella vaccine during reporting period
 * 
 * Numerator: Number of measles and rubella doses (2nd dose) administered through routine services during reporting period
 * Numerator COUNT of immunization events WHERE "Vaccine type" = "Measles and rubella containing vaccines" for the second dose in the primary series AND "Date and time of vaccination" is during the reporting period 
 * Denominator: Number in target group
 * Denominator Computation: As defined by the Member States
 * 
 * Disaggregation:
 *   - Administrative area
 *   - Sex
 *   - Age in years
 *   - Age group (depending on schedule) 
 * 
 * References: WHO Immunization facility analysis guide;WHO Handbook on immunization data
 */
library IMMZIND13Logic

/*
NOTE: This is an estimated denominator measure, meaning that all we are contributing from the site perspective is a count
towards the numerator, actual processing of this data to determine a proportion measure would be done by downstream analytics

For this reason, this measure is modeled as a cohort measure where membership in the cohort is determine by administration of
a measles containing vaccine.
*/

using FHIR version '4.0.1'

include FHIRHelpers version '4.0.1'

include WHOCommon called WC
include IMMZCommon called Common
include IMMZConcepts called Concepts
include IMMZIndicatorElements called Elements

include IMMZD2DTMeaslesElements called Measles

parameter "Measurement Period" Interval<Date> default Interval[@2024-01-01, @2025-12-31]

context Patient

/*
 * As defined by Member State
 */
define "Initial Population":
  true

/*
 * As defined by Member State
 */
define "Denominator":
  true

/*
 * Numerator: Number of measles and rubella doses (2nd dose) administered through routine services during reporting period
 * Numerator COUNT of immunization events WHERE "Vaccine type" = "Measles and rubella containing vaccines" for the second dose in the primary series AND "Date and time of vaccination" is during the reporting period 
 */
define "Numerator":
  exists (
    Measles."MCV Primary Series Doses Administered to Patient" I
      where I.occurrence.toInterval() starts during "Measurement Period"
      and exists( I.protocolApplied pa where ToInteger(pa.doseNumber) = 2 )
  )

/*
@disaggregation: Administrative area
                 Sex
                 Age in years
                 Age group (depending on schedule)
*/
define "Stratification 1":
	Elements."By Geographic Region Stratifier"

define "Stratification 2":
	Elements."By Administrative Gender Stratifier"

define "Stratification 3":
	Elements."Age Stratifier"

define "Stratification 4":
	Elements."Toddler By Age Stratifier"