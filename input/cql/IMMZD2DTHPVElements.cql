
/*
  * Library: IMMZD2DTHPVElements
  */
library IMMZD2DTHPVElements

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
@internal: HPV containing Doses Administered to Patient
*/
define "HPV Doses Administered to Patient":
  Elements."Doses Administered to Patient" I
  where
    I.vaccineCode in Concepts."HPV vaccines"

/*
@internal: HPV containing Doses Administered to Patient that are in the Primary series
*/
define "HPV Primary Series Doses Administered to Patient":
  "HPV Doses Administered to Patient".seriesPrimary()

/*
@internal: Number of HPV Primary Series doses
*/
define "Number of HPV Primary Series Doses Administered":
  Count("HPV Primary Series Doses Administered to Patient")


/*
@input: No HPV primary series doses were administered
@pseudocode: Count of vaccines administered (where "Vaccine type" = "HPV vaccines" and "Type of dose" = "Primary series") = 0
@decision: 2-dose schedule
*/
define "No HPV primary series doses were administered":
  Elements."No HPV primary series doses were administered"

/*
@input: One HPV primary series dose was administered
@pseudocode: Count of vaccines administered (where "Vaccine type" = "HPV vaccines" and "Type of dose" = "Primary series") = 1
@decision: 2-dose schedule
*/
define "One HPV primary series dose was administered":
  Elements."One HPV primary series dose was administered"

/*
@input: Two HPV primary series doses were administered
@pseudocode: Count of vaccines administered (where "Vaccine type" = "HPV vaccines" and "Type of dose" = "Primary series") = 2
@decision: 2-dose schedule
*/
define "Two HPV primary series doses were administered":
  Elements."Two HPV primary series doses were administered"

/*
@input: Three HPV primary series doses were administered
@pseudocode: Count of vaccines administered (where "Vaccine type" = "HPV vaccines" and "Type of dose" = "Primary series") = 3
@decision: 2-dose schedule
*/
define "Three HPV primary series doses were administered":
  Elements."Three HPV primary series doses were administered"

/*
@input: Client's age is less than 9 years
@pseudocode: Today's date − "Date of birth" < 9 years
@decision: 2-dose schedule
*/
define "Client's age is less than 9 years":
  Elements."Client's age is less than 9 years"

/*
@input: Client's age is between 9 and 14 years
@pseudocode: 9 years ≤ Today's date − "Date of birth" ≤ 14 years
@decision: 2-dose schedule
*/
define "Client's age is between 9 and 14 years":
  Elements."Client's age is between 9 and 14 years"

/*
@input: Client's age more than or equal to 15 years
@pseudocode: Today's date − "Date of birth" ≥ 15 years
@decision: 2-dose schedule
*/
define "Client's age more than or equal to 15 years":
  Elements."Client's age more than or equal to 15 years"

/*
@input: Client's biological sex is female
@pseudocode: "Sex" = "Female"
@decision: 2-dose schedule
*/
define "Client's biological sex is female":
  Elements."Client's biological sex is female"

/*
@input: Client's biological sex is not female
@pseudocode: "Sex" ≠ "Female"
@decision: 2-dose schedule
*/
define "Client's biological sex is not female":
  Elements."Client's biological sex is not female"

/*
@input: The latest HPV dose was administered less than 6 months ago
@pseudocode: Today's date − latest "Date and time of vaccination" (where "Vaccine type" = "HPV vaccines") < 6 months
@decision: 2-dose schedule
*/
define "The latest HPV dose was administered less than 6 months ago":
  Elements."The latest HPV dose was administered less than 6 months ago"

/*
@input: The latest HPV dose was administered more than 6 months ago
@pseudocode: Today's date − latest "Date and time of vaccination" (where "Vaccine type" = "HPV vaccines") ≥ 6 months
@decision: 2-dose schedule
*/
define "The latest HPV dose was administered more than 6 months ago":
  Elements."The latest HPV dose was administered more than 6 months ago"

/*
@input: The latest HPV dose was administered more than 6 months ago
@pseudocode: Today's date − latest "Date and time of vaccination"(where "Vaccine type" = "HPV vaccines") ≥ 6 months
@decision: 2-dose schedule
*/
define "The latest HPV dose was administered more than 6 months ago":
  Elements."The latest HPV dose was administered more than 6 months ago"

/*
@input: Client is immunocompromised
@pseudocode: "Immunocompromised" = TRUE
@decision: 2-dose schedule
*/
define "Client is immunocompromised":
  Elements."Client is immunocompromised"

/*
@input: Client is not immunocompromised
@pseudocode: "Immunocompromised" ≠ TRUE
@decision: 2-dose schedule
*/
define "Client is not immunocompromised":
  Elements."Client is not immunocompromised"

/*
@input: Client's HIV status is positive
@pseudocode: "HIV status" = "HIV-positive"
@decision: 2-dose schedule
*/
define "Client's HIV status is positive":
  Elements."Client's HIV status is positive"

/*
@input: Client's HIV status is negative or unknown
@pseudocode: "HIV status" ≠ "HIV-positive"
@decision: 2-dose schedule
*/
define "Client's HIV status is negative or unknown":
  Elements."Client's HIV status is negative or unknown"

