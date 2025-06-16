/*
 * Library: IMMZ.IND.38 Logic
 * Drop-out rate from the 1st dose of malaria vaccines to the 3rd dose
 * The percentage in the target population who received a 1st dose of malaria vaccine but have not received the 3rd dose of malaria vaccine (i.e. are past due for malaria vaccine 3rd dose) during the reporting period
 * 
 * Numerator: Number of clients who received a 1st dose of malaria vaccine during the reporting period who should have received (via scheduling logic) the 3rd dose of malaria vaccine during the reporting period but did not receive it
 * Numerator Computation: (COUNT of clients with an immunization event WHERE "Vaccine type" = "Malaria vaccines" for the 1st dose in the primary series AND "Date and time of vaccination" is during the reporting period) - (COUNT of clients with an immunization event WHERE "Vaccine type" = "Malaria vaccines" for the 3rd dose in the primary series AND "Date and time of vaccination" is during the reporting period)
 * Denominator: Number of clients in the target population who received dose 1 of malaria vaccine during the reporting period
 * Denominator Computation: COUNT clients with an immunization event WHERE "Vaccine type" = "Malaria vaccines" for the 1st dose in the primary series AND "Date and time of vaccination" is during the reporting period
 * 
 * Disaggregation
 *  - Administrative area
 *  - Sex
 *  - Age in years
 *  - Age group (depending on schedule)
 *
 * References: Guide to introduce malaria vaccine (4)
 * 
 * Annotations: –
 */
library IMMZIND38Logic

using FHIR version '4.0.1'

include FHIRHelpers version '4.0.1'

include WHOCommon called WC

include IMMZCommon called Common
include IMMZConcepts called Concepts
include IMMZIndicatorElements called Elements

include IMMZD2DTMalariaElements called Malaria

parameter "Measurement Period" Interval<Date> default Interval[@2025-01-01, @2025-12-31]

context Patient

/*
 * As defined by Member State
 */
define "Initial Population":
  true

/*
@denominator: Number of clients in the target population who received dose 1 of malaria vaccine during the reporting period
@pseudocode: COUNT clients with an immunization event WHERE "Vaccine type" = "Malaria vaccines" for the 1st dose in the primary series AND "Date and time of vaccination" is during the reporting period
@note: Added 8 weeks to occurrence of dose 1 since that is the expected time to receive the 3rd dose
*/
define "Denominator":
  exists( (Malaria."Malaria Primary Series Doses Administered to Patient".getDose('1')) I
    where (start of I.occurrence.toInterval() + 8 weeks) before end of "Measurement Period" )
    
/*
@numerator: Number of clients who received a 1st dose of malaria vaccine during the reporting period who should have received (via scheduling logic) the 3rd dose of malaria vaccine during the reporting period but did not receive it
@pseudocode: (COUNT of clients with an immunization event WHERE "Vaccine type" = "Malaria vaccines" for the 1st dose in the primary series AND "Date and time of vaccination" is during the reporting period) - (COUNT of clients with an immunization event WHERE "Vaccine type" = "Malaria vaccines" for the 3rd dose in the primary series AND "Date and time of vaccination" is during the reporting period)
*/
define "Numerator":
  "Denominator"
  and not exists( (Malaria."Malaria Primary Series Doses Administered to Patient".getDose('3')) I
    where I.occurrence.toInterval() starts during "Measurement Period" ) 
    
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
	Elements."Infant By Age Stratifier"
