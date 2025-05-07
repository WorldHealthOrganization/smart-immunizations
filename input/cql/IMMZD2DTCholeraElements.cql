
/*
  * Library: IMMZD2DTCholeraElements
  */
library IMMZD2DTCholeraElements

using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1'

include WHOConcepts
include WHOCommon called WC
include WHOElements called WE

include IMMZCommon called Common
include IMMZConcepts called Concepts
include IMMZElements called Elements

context Patient

/*
@internal: Cholera containing Doses Administered to Patient
*/
define "Cholera Doses Administered to Patient":
  Elements."Doses Administered to Patient" I
  where
    I.vaccineCode in Concepts."Cholera vaccines"

/*
@internal: Date and time of last Cholera dose
*/
define "Date of Latest Cholera Dose":
  date from start of "Cholera Doses Administered to Patient".mostRecent().occurrence.toInterval()

/*
@internal: Cholera containing Doses Administered to Patient that are in the Primary series
*/
define "Cholera Primary Series Doses Administered to Patient":
  "Cholera Doses Administered to Patient".seriesPrimary()

/*
internal: Most Recent Cholera Primary Series Dose
*/
define "Most Recent Cholera Primary Series Dose":
  "Cholera Primary Series Doses Administered to Patient".mostRecent()

/*
@internal: Number of Cholera Primary Series doses
*/
define "Number of Cholera Primary Series Doses Administered":
  Count("Cholera Primary Series Doses Administered to Patient")

/*
@internal: Cholera containing Doses Administered to Patient that are in the Booster series
*/
define "Cholera Booster Series Doses Administered to Patient":
  "Cholera Doses Administered to Patient".seriesBooster()

/*
internal: Most Recent Cholera Booster Series Dose
*/
define "Most Recent Cholera Booster Series Dose":
  "Cholera Booster Series Doses Administered to Patient".mostRecent()

/*
@internal: Number of Cholera Booster Series doses
*/
define "Number of Cholera Booster Series Doses Administered":
  Count("Cholera Booster Series Doses Administered to Patient")

/*
@input: Client's age is less than 1 year
@pseudocode: Today's date − "Date of birth" < 1 year
@decision: Whole-cell (WC) vaccines schedule
*/
define "Client's age is less than 1 year":
  Elements."Current Patient Age In Years" < 1

/*
@input: Client's age is more than or equal to 1 year
@pseudocode: Today's date − "Date of birth" ≥ 1 year
@decision: Whole-cell (WC) vaccines schedule
*/
define "Client's age is more than or equal to 1 year":
  Elements."Current Patient Age In Years" >= 1

/*
@input: Primary series for cholera has not been completed
@pseudocode: "Completed the primary vaccination series" (where "Vaccine type" = "Cholera vaccines") ≠ TRUE
@decision: Whole-cell (WC) vaccines schedule
*/
define "Primary series for cholera has not been completed":
  not "Primary series for cholera has been completed"

/*
@input: Primary series for cholera has been completed
@pseudocode: "Completed the primary vaccination series" (where "Vaccine type" = "Cholera vaccines") = TRUE
@decision: Whole-cell (WC) vaccines schedule
*/
define "Primary series for cholera has been completed":
  Coalesce( 
    "Cholera Doses Administered to Patient" Dose
    aggregate Result: Elements."Completed the primary vaccination series Observation".partOf.references(Dose) or Result, 
    false ) 

/*
@internal: Date when primary vaccination series was completed Observation
*/
define "Date when primary vaccination series was completed Observation":
  Elements."Date when primary vaccination series was completed Observation" O
    where Coalesce( 
      "Cholera Doses Administered to Patient" Dose
      aggregate Result: O.partOf.references(Dose) or Result, 
      false ) = true

/*
@internal: Date when primary vaccination series was completed
*/
define "Date when primary vaccination series was completed":
  date from First("Date when primary vaccination series was completed Observation" O).value

/*
@input: Cholera primary series was completed less than 3 years ago
@pseudocode: Today's date − "Date when primary vaccination series was completed" (where "Vaccine type" = "Cholera vaccines") < 3 years
@decision: Whole-cell (WC) vaccines schedule
*/
define "Cholera primary series was completed less than 3 years ago":
  "Date when primary vaccination series was completed Observation" is not null
    and duration in years between "Date when primary vaccination series was completed" and Now() < 3

/*
@input: Cholera primary series was completed more than 3 years ago
@pseudocode: Today's date − "Date when primary vaccination series was completed" (where "Vaccine type" = "Cholera vaccines") ≥ 3 years
@decision: Whole-cell (WC) vaccines schedule
*/
define "Cholera primary series was completed more than 3 years ago":
  "Date when primary vaccination series was completed Observation" is not null
    and duration in years between "Date when primary vaccination series was completed" and Now() >= 3

/*
@input: Booster series for cholera is NOT completed
@pseudocode: "Completed the booster series" (where "Vaccine type" = "Cholera vaccines") ≠ TRUE
@decision: Whole-cell (WC) vaccines schedule
*/
define "Booster series for cholera is NOT completed":
  not "Booster series for cholera is completed"

/*
@input: Booster series for cholera is completed
@pseudocode: "Completed the booster series" (where "Vaccine type" = "Cholera vaccines") = TRUE
@decision: Whole-cell (WC) vaccines schedule
*/
define "Booster series for cholera is completed":
  Coalesce( 
    "Cholera Doses Administered to Patient" Dose
    aggregate Result: Elements."Completed the booster series Observation".partOf.references(Dose) or Result, 
    false ) 

/*
@input: Latest cholera dose number is less than the total number of doses in the series
@pseudocode: Latest "Dose number" (where "Vaccine type" = "Cholera vaccines") < "Total doses in series" (where "Vaccine type" = "Cholera vaccines")
@decision: Whole-cell (WC) vaccines schedule
*/
define "Latest cholera dose number is less than the total number of doses in the series":
  "Most Recent Cholera Primary Series Dose" is null
  or (
    "Most Recent Cholera Primary Series Dose" I
      where exists( I.protocolApplied pa where ToInteger(pa.doseNumber) < ToInteger(pa.seriesDoses) )
  ) is not null

/*
@input: Latest cholera dose number is equal to the total number of doses in the series
@pseudocode: Latest "Dose number" (where "Vaccine type" = "Cholera vaccines") = "Total doses in series" (where "Vaccine type" = "Cholera vaccines")
@decision: Whole-cell (WC) vaccines schedule
*/
define "Latest cholera dose number is equal to the total number of doses in the series":
  (
    "Most Recent Cholera Primary Series Dose" I
      where exists( I.protocolApplied pa where ToInteger(pa.doseNumber) = ToInteger(pa.seriesDoses) )
  ) is not null

/*
@input: Latest cholera booster dose number is less than the total number of doses in the series
@pseudocode: Latest "Dose number" (where "Vaccine type" = "Cholera vaccines" and "Type of dose" = "Booster dose") < "Total doses in series" (where "Vaccine type" = "Cholera vaccines")
@decision: Whole-cell (WC) vaccines schedule
*/
define "Latest cholera booster dose number is less than the total number of doses in the series":
  "Most Recent Cholera Booster Series Dose" is null
  or (
    "Most Recent Cholera Booster Series Dose" I
      where exists( I.protocolApplied pa where ToInteger(pa.doseNumber) < ToInteger(pa.seriesDoses) )
  ) is not null

/*
@input: Latest cholera booster dose number is equal to the total number of doses in the series
@pseudocode: Latest "Dose number" (where "Vaccine type" = "Cholera vaccines" and "Type of dose" = "Booster dose") = "Total doses in series" (where "Vaccine type" = "Cholera vaccines")
@decision: Whole-cell (WC) vaccines schedule
*/
define "Latest cholera booster dose number is equal to the total number of doses in the series":
  (
    "Most Recent Cholera Booster Series Dose" I
      where exists( I.protocolApplied pa where ToInteger(pa.doseNumber) = ToInteger(pa.seriesDoses) )
  ) is not null

/*
@input: The latest cholera dose was administered less than 14 days ago
@pseudocode: Today's date − latest "Date and time of vaccination" (where "Vaccine type" = "Cholera vaccines") < 14 days
@decision: Whole-cell (WC) vaccines schedule
*/
define "The latest cholera dose was administered less than 14 days ago":
	"Date of Latest Cholera Dose" is not null 
    and duration in days between "Date of Latest Cholera Dose" and Now() < 14

/*
@input: The latest cholera dose was administered more than 14 days ago
@pseudocode: Today's date − latest "Date and time of vaccination" (where "Vaccine type" = "Cholera vaccines") ≥ 14 days
@decision: Whole-cell (WC) vaccines schedule
*/
define "The latest cholera dose was administered more than 14 days ago":
	"Date of Latest Cholera Dose" is not null 
    and duration in days between "Date of Latest Cholera Dose" and Now() >= 14

/*
@input: The latest cholera dose was administered less than 3 years ago
@pseudocode: Today's date − latest "Date and time of vaccination" (where "Vaccine type" = "Cholera vaccines") < 3 years
@decision: Whole-cell (WC) vaccines schedule
*/
define "The latest cholera dose was administered less than 3 years ago":
	"Date of Latest Cholera Dose" is not null 
    and duration in years between "Date of Latest Cholera Dose" and Now() < 3

/*
@input: The latest cholera dose was administered more than 3 years ago
@pseudocode: Today's date − latest "Date and time of vaccination" (where "Vaccine type" = "Cholera vaccines") ≥ 3 years
@decision: Whole-cell (WC) vaccines schedule
*/
define "The latest cholera dose was administered more than 3 years ago":
	"Date of Latest Cholera Dose" is not null 
    and duration in years between "Date of Latest Cholera Dose" and Now() >= 3
