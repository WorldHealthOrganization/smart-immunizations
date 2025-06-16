/*
 * Library: IMMZ.IND.37 Logic
 * Drop-out rate from the 1st dose of measles and rubella-containing vaccine to the 2nd dose
 * The percentage in the target population who received a 1st dose of measles and rubella-containing vaccine in the primary series but have not received the 2nd dose of measles and rubella-containing vaccine in the primary series (i.e. are past due for measles and rubella-containing vaccine 2nd dose) during the reporting period
 * 
 * Numerator: Number of clients who received a 1st dose of measles and rubella-containing vaccine during the reporting period who should have received the 2nd dose of measles and rubella-containing vaccine during the reporting period but did not receive it
 * Numerator Computation: (COUNT of clients with an immunization event WHERE "Vaccine type"" = "Measles and rubella-containing vaccines" for the 1st dose in the primary series AND "Date and time of vaccination" is during the reporting period) - (COUNT of clients with an immunization event WHERE "Vaccine type"" = "Measles and rubella-containing vaccines" for the 2nd dose in the primary series AND "Date and time of vaccination" is during the reporting period)
 * Denominator: Number of clients in the target population who received dose 1 of measles and rubella-containing vaccine during the reporting period
 * Denominator Computation: COUNT clients with an immunization event WHERE "Vaccine type" = "Measles and rubella-containing vaccines" for a 1st dose in the primary series AND "Date and time of vaccination" is during the reporting period
 * 
 * Disaggregation
 *  - Administrative area
 *  - Sex
 *  - Age in years
 *  - Age group (depending on schedule)
 *
 * References: WHO Immunization facility analysis guide (5)
 * 
 * Annotations: –
 */
library IMMZIND37Logic

using FHIR version '4.0.1'

include FHIRHelpers version '4.0.1'

include WHOCommon called WC

include IMMZCommon called Common
include IMMZConcepts called Concepts
include IMMZIndicatorElements called Elements


parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31]

context Patient

/*
 * As defined by Member State
 */
define "Initial Population":
  true

/*
@denominator: Number of clients in the target population who received dose 1 of measles and rubella-containing vaccine during the reporting period
@pseudocode: COUNT clients with an immunization event WHERE "Vaccine type" = "Measles and rubella-containing vaccines" for a 1st dose in the primary series AND "Date and time of vaccination" is during the reporting period
@note: Determining eligibility should be more precise, but from the Measles schedule table, 15 months is the earliest for the 2nd dose.
*/
define "Denominator":
  exists( Elements."Measles and Rubella Doses Administered to Patient During Measurement Period".getDose('1') )
  and AgeInMonthsAt(end of "Measurement Period") >= 15

/*
@numerator: Number of clients who received a 1st dose of measles and rubella-containing vaccine during the reporting period who should have received the 2nd dose of measles and rubella-containing vaccine during the reporting period but did not receive it
@pseudocode: (COUNT of clients with an immunization event WHERE "Vaccine type"" = "Measles and rubella-containing vaccines" for the 1st dose in the primary series AND "Date and time of vaccination" is during the reporting period) - (COUNT of clients with an immunization event WHERE "Vaccine type"" = "Measles and rubella-containing vaccines" for the 2nd dose in the primary series AND "Date and time of vaccination" is during the reporting period)
*/
define "Numerator":
  "Denominator"
  and not exists( Elements."Measles and Rubella Doses Administered to Patient During Measurement Period".getDose('2') )
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
