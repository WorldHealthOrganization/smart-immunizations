
/*
  * Library: IMMZD2DTBCGEncounterElements
  */
library IMMZD2DTBCGEncounterElements

using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1'

include WHOConcepts
include WHOCommon called WC
include WHOElements called WE

include IMMZCommon called Common
include IMMZConcepts called Concepts

include IMMZEncounterElements called Encounter

include IMMZD2DTBCGElements called BCGElements

parameter Today Date default Today()
parameter EncounterId String

context Patient

/*
@internal: BCG containing Doses Administered to Patient
*/
define "BCG Doses Administered to Patient":
  BCGElements."BCG Doses Administered to Patient".onOrBefore(Today)

/*
@internal: BCG containing Doses Administered to Patient that are in the Primary series
*/
define "BCG Primary Series Doses Administered to Patient":
  BCGElements."BCG Primary Series Doses Administered to Patient".onOrBefore(Today)

/*
@internal: Number of BCG Primary Series doses
*/
define "Number of BCG Primary Series Doses Administered":
  Count("BCG Primary Series Doses Administered to Patient")

/*
@input: No BCG primary series dose was administered
@pseudocode: Count of vaccines administered (where "Vaccine type" = "BCG vaccines" and "Type of dose" = "Primary series") = 0
*/
define "No BCG primary series dose was administered":
  "Number of BCG Primary Series Doses Administered" = 0

/*
@input: One BCG primary series dose was administered
@pseudocode: Count of vaccines administered (where "Vaccine type" = "BCG vaccines" and "Type of dose" = "Primary series") = 1
*/
define "One BCG primary series dose was administered":
  "Number of BCG Primary Series Doses Administered" = 1

/*
@input: Client's age is less than or equal to 28 days
@pseudocode: Today's date − "Date of birth" ≤ 28 days
*/
define "Client's age is less than or equal to 28 days":
  Encounter."Current Patient Age In Days" <= 28

/*
@input: Client's age is between 28 days and 5 years
@pseudocode: 28 days < Today's date − "Date of birth" < 5 years
*/
define "Client's age is between 28 days and 5 years":
  28 < Encounter."Current Patient Age In Days"
  and Encounter."Current Patient Age In Years" < 5

/*
@input: Client's age is more than 5 years
@pseudocode: Today's date − "Date of birth" ≥ 5 years
*/
define "Client's age is more than 5 years":
  Encounter."Current Patient Age In Years" >= 5

/*
@input: Client's HIV status is negative or unknown
@pseudocode: "HIV status" ≠ "HIV-positive"
*/
define "Client's HIV status is negative or unknown":
  Encounter."Client's HIV status is negative or unknown"

/*
@input: Client's HIV status is positive
@pseudocode: "HIV status" = "HIV-positive"
*/
define "Client's HIV status is positive":
  Encounter."Client's HIV status is positive"

/*
@input: Client is currently receiving antiretroviral therapy
@pseudocode: "Currently on ART" = TRUE
*/
define "Client is currently receiving antiretroviral therapy":
  Encounter."Client is currently receiving antiretroviral therapy"

/*
@input: Client is currently not receiving antiretroviral therapy
@pseudocode: "Currently on ART" = FALSE
*/
define "Client is currently not receiving antiretroviral therapy":
  Encounter."Client is currently not receiving antiretroviral therapy"

/*
@input: Client is immunologically stable
@pseudocode: "Immunologically stable" = TRUE
*/
define "Client is immunologically stable":
  Encounter."Client is immunologically stable"

/*
@input: Client is not immunologically stable
@pseudocode: "Immunologically stable" = FALSE
*/
define "Client is not immunologically stable":
  Encounter."Client is not immunologically stable"

/*
@input: Client's TB infection test result is negative
@pseudocode: "TB infection test result" = "Negative"
*/
define "Client's TB infection test result is negative":
  Encounter."Client's TB infection test result is negative"

/*
@input: Client's TB infection test result is unknown (test not done or no result yet)
@pseudocode: "TB infection test result" IS NULL
*/
define "Client's TB infection test result is unknown (test not done or no result yet)":
  Encounter."Client's TB infection test result is unknown (test not done or no result yet)"

/*
@input: Client's TB infection test result is positive
@pseudocode: "TB infection test result" = "Positive"
*/
define "Client's TB infection test result is positive":
  Encounter."Client's TB infection test result is positive"

/*
@input: No live vaccine was administered
@pseudocode: Today's date − latest "Date and time of vaccination" (where "Live vaccine" = TRUE) IS NULL
*/
define "No live vaccine was administered":
  Encounter."No live vaccine was administered"

/*
@input: Live vaccine was administered in the last four weeks
@pseudocode: Today's date − latest "Date and time of vaccination" (where "Live vaccine" = TRUE) < 4 weeks
*/
define "Live vaccine was administered in the last four weeks":
  Encounter."Live vaccine was administered in the last 4 weeks"

/*
@input: No live vaccine was administered in the last four weeks
@pseudocode: Today's date − latest "Date and time of vaccination" (where "Live vaccine" = TRUE) ≥ 4 weeks
*/
define "No live vaccine was administered in the last four weeks":
  Encounter."No live vaccine was administered in the last 4 weeks"

/*
@input: Client is not clinically well
@pseudocode: "Clinically well" = FALSE
*/
define "Client is not clinically well":
  Encounter."Client is not clinically well"

/*
@input: Client is clinically well
@pseudocode: "Clinically well" = TRUE
*/
define "Client is clinically well":
  Encounter."Client is clinically well"

