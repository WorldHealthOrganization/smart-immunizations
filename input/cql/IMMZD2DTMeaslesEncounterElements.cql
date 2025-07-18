
/*
  * Library: IMMZD2DTMeaslesEncounterElements
  */
library IMMZD2DTMeaslesEncounterElements

using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1'

include WHOConcepts
include WHOCommon called WC
include WHOElements called WE

include IMMZCommon called Common
include IMMZConcepts called Concepts

include IMMZEncounterElements called Encounter

include IMMZD2DTMeaslesElements called MeaslesElements

parameter Today Date default Today()
parameter EncounterId String

context Patient

/*
@internal: MCV containing Doses Administered to Patient
*/
define "MCV Doses Administered to Patient":
  MeaslesElements."MCV Doses Administered to Patient".onOrBefore(Today)

/*
@internal: MCV containing Doses Administered to Patient that are in the Primary series
*/
define "MCV Primary Series Doses Administered to Patient":
  MeaslesElements."MCV Primary Series Doses Administered to Patient".onOrBefore(Today)

/*
@internal: Date of most recent primary series dose
*/
define "Date when the primary vaccination series completed":
  date from start of "MCV Primary Series Doses Administered to Patient".mostRecent().occurrence.toInterval()

/*
@internal: MCV containing Doses Administered to Patient that are in the Dose 0 series
*/
define "MCV Dose 0 Doses Administered to Patient":
  MeaslesElements."MCV Dose 0 Doses Administered to Patient".onOrBefore(Today)

/*
@internal: MCV containing Doses Administered to Patient that are in the Supplementary dose
*/
define "MCV Supplementary Doses Administered to Patient":
  MeaslesElements."MCV Supplementary Doses Administered to Patient".onOrBefore(Today)

/*
@internal: Number of MCV Primary Series doses
*/
define "Number of MCV Primary Series Doses Administered":
  Count("MCV Primary Series Doses Administered to Patient")

/*
@internal: Number of MCV Dose 0 doses
*/
define "Number of MCV Dose 0 Doses Administered":
  Count("MCV Dose 0 Doses Administered to Patient")

/*
@internal: Number of MCV Supplementary doses
*/
define "Number of MCV Supplementary Doses Administered":
  Count("MCV Supplementary Doses Administered to Patient")

/*
@input: No measles primary series doses were administered
@pseudocode: Count of vaccines administered (where "Vaccine type" = "Measles-containing vaccines" and "Type of dose" = "Primary series") = 0
*/
define "No measles primary series doses were administered":
  "Number of MCV Primary Series Doses Administered" = 0

/*
@input: MCV1 was administered
@pseudocode: Count of vaccines administered (where "Vaccine type" = "Measles-containing vaccines" and "Type of dose" = "Primary series") = 1
*/
define "MCV1 was administered":
  "Number of MCV Primary Series Doses Administered" = 1

/*
@input: MCV2 was administered
@pseudocode: Count of vaccines administered (where "Vaccine type" = "Measles-containing vaccines" and "Type of dose" = "Primary series") = 2
*/
define "MCV2 was administered":
  "Number of MCV Primary Series Doses Administered" = 2

/*
@input: MCV0 was not administered
@pseudocode: Count of vaccines administered (where "Vaccine type" = "Measles-containing vaccines" and "Type of dose" = "Dose 0") = 0
*/
define "MCV0 was not administered":
  "Number of MCV Dose 0 Doses Administered" = 0

/*
@input: MCV0 was administered
@pseudocode: Count of vaccines administered (where "Vaccine type" = "Measles-containing vaccines" and "Type of dose" = "Dose 0") = 1
*/
define "MCV0 was administered":
  "Number of MCV Dose 0 Doses Administered" = 1


/*
@input: Measles supplementary dose was not administered
@pseudocode: Count of vaccines administered (where "Vaccine type" = "Measles-containing vaccines
" and "Type of dose" = "Supplementary dose") = 0
*/
define "Measles supplementary dose was not administered":
  "Number of MCV Supplementary Doses Administered" = 0

/*
@input: Measles supplementary dose was administered
@pseudocode: Count of vaccines administered (where "Vaccine type" = "Measles-containing vaccines
" and "Type of dose" = "Supplementary dose") = 1
*/
define "Measles supplementary dose was administered":
  "Number of MCV Supplementary Doses Administered" = 1

/*
@input: Measles routine immunization schedule is complete
@pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Measles-
containing vaccines")
*/
define "Measles routine immunization schedule is complete":
  "MCV2 was administered"
  or
  Coalesce( 
    "MCV Doses Administered to Patient" Dose
    aggregate Result: Encounter."Completed the primary vaccination series Observation".partOf.references(Dose) or Result, 
    false ) 

/*
@input: Client's age is less than 6 months
@pseudocode: Today's date − "Date of birth" < 6 months
*/
define "Client's age is less than 6 months":
  Encounter."Current Patient Age In Months" < 6

/*
@input: Client's age is between 6 months and 9 months
@pseudocode: 6 months ≤ Today's date − "Date of birth" < 9 months
*/
define "Client's age is between 6 months and 9 months":
  6 <= Encounter."Current Patient Age In Months" 
  and Encounter."Current Patient Age In Months" < 9

/*
@input: Client's age is less than 9 months
@pseudocode: Today's date − "Date of birth" < 9 months
*/
define "Client's age is less than 9 months":
  Encounter."Current Patient Age In Months" < 9

/*
@input: Client's age is more than or equal to 9 months
@pseudocode: Today's date − "Date of birth" ≥ 9 months
*/
define "Client's age is more than or equal to 9 months":
  Encounter."Current Patient Age In Months" >= 9

/*
@input: Client's age is less than 12 months
@pseudocode: Today's date − "Date of birth" < 12 months
*/
define "Client's age is less than 12 months":
  Encounter."Current Patient Age In Months" < 12

/*
@input: Client's age is more than or equal to 12 months
@pseudocode: Today's date − "Date of birth" ≥ 12 months
*/
define "Client's age is more than or equal to 12 months":
  Encounter."Current Patient Age In Months" >= 12

/*
@input: Client's age is less than 15 months
@pseudocode: Today's date − "Date of birth" < 15 months
*/
define "Client's age is less than 15 months":
  Encounter."Current Patient Age In Months" < 15
  
/*
@input: Client's age is more than or equal to 15 months
@pseudocode: Today's date − "Date of birth" ≥ 15 months
*/
define "Client's age is more than or equal to 15 months":
  Encounter."Current Patient Age In Months" >= 15

/*
@input: Live vaccine was administered in the last 4 weeks
@pseudocode: Today's date − latest "Date and time of vaccination" (where "Live vaccine" = TRUE) < 4 weeks
*/
define "Live vaccine was administered in the last 4 weeks":
  Encounter."Live vaccine was administered in the last 4 weeks"

/*
@input: No live vaccine was administered in the last 4 weeks
@pseudocode: Today's date − latest "Date and time of vaccination" (where "Live vaccine" = TRUE) ≥ 4 weeks
*/
define "No live vaccine was administered in the last 4 weeks":
  Encounter."No live vaccine was administered in the last 4 weeks"

/*
@input: Live vaccine was administered in the past 4 weeks
@pseudocode: Today's date − latest "Date and time of vaccination" (where "Live vaccine" = TRUE) 
< 4 weeks
*/
define "Live vaccine was administered in the past 4 weeks":
  "Live vaccine was administered in the last 4 weeks"

/*
@input: No live vaccine was administered in the past 4 weeks
@pseudocode: Today's date − latest "Date and time of vaccination" (where "Live vaccine" = TRUE) 
≥ 4 weeks
*/
define "No live vaccine was administered in the past 4 weeks":
  "No live vaccine was administered in the last 4 weeks"

/*
@input Date and time of last live attenuated vaccine
*/
define "Date of Latest Live Attenuated Vaccine":
  date from start of Encounter."Live Attenuated Vaccines".mostRecent().occurrence.toInterval()
