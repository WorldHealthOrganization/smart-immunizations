
/*
  * Library: IMMZD2DTTyphoidEncounterElements
  */
library IMMZD2DTTyphoidEncounterElements

using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1'

include WHOConcepts
include WHOCommon called WC
include WHOElements called WE

include IMMZCommon called Common
include IMMZConcepts called Concepts
include IMMZEncounterElements called Encounter

include IMMZD2DTTyphoidElements called TyphoidElements

parameter Today Date default Today()
parameter EncounterId String

context Patient

/*
@internal: Typhoid containing Doses Administered to Patient
*/
define "Typhoid Doses Administered to Patient":
  Encounter."Doses Administered to Patient" I
  where
    I.vaccineCode in Concepts."Typhoid vaccines"

/*
@internal: Typhoid containing Doses Administered to Patient that are in the Primary series
*/
define "Typhoid Primary Series Doses Administered to Patient":
  "Typhoid Doses Administered to Patient".seriesPrimary()

/*
@internal: Number of Typhoid Primary Series doses
*/
define "Number of Typhoid Primary Series Doses Administered":
  Count("Typhoid Primary Series Doses Administered to Patient")

/*
@input: Client's age is less than 6 months
@pseudocode: Today's date − "Date of birth" < 6 months
@code: Client's age is less than 6 months-41
@decision: IMMZ.D2.DT.Typhoid.TCV: Typhoid conjugate vaccine (TCV) schedule
*/
define "Client's age is less than 6 months":
  Encounter."Current Patient Age In Months" < 6

/*
@input: No typhoid primary series doses were administered
@pseudocode: Count of vaccines administered (where "Vaccine type" = "Typhoid vaccines" and "Type of dose" = "Primary series") = 0
@code: No typhoid primary series doses were administered-116
@decision: IMMZ.D2.DT.Typhoid.TCV: Typhoid conjugate vaccine (TCV) schedule
@decision: IMMZ.D2.DT.Typhoid.ViPS: Unconjugated Vi polysaccharide (ViPS) schedule
*/
define "No typhoid primary series doses were administered":
  "Number of Typhoid Primary Series Doses Administered" = 0

/*
@input: Client's age is between 6 months and 45 years
@pseudocode: 6 months ≤ Today's date − "Date of birth" < 45 years
@code: Client's age is between 6 months and 45 years-52
@decision: IMMZ.D2.DT.Typhoid.TCV: Typhoid conjugate vaccine (TCV) schedule
*/
define "Client's age is between 6 months and 45 years":
  6 <= Encounter."Current Patient Age In Months"
  and Encounter."Current Patient Age In Years" < 45

/*
@input: Client's age is more than or equal to 45 years
@pseudocode: Today's date − "Date of birth" ≥ 45 years
@code: Client's age is more than or equal to 45 years-41
@decision: IMMZ.D2.DT.Typhoid.TCV: Typhoid conjugate vaccine (TCV) schedule
*/
define "Client's age is more than or equal to 45 years":
  Encounter."Current Patient Age In Years" >= 45

/*
@input: One typhoid primary series dose was administered
@pseudocode: Count of vaccines administered (where "Vaccine type" = "Typhoid vaccines" and "Type of dose" = "Primary series") = 1
@code: One typhoid primary series dose was administered-116
@decision: IMMZ.D2.DT.Typhoid.TCV: Typhoid conjugate vaccine (TCV) schedule
@decision: IMMZ.D2.DT.Typhoid.ViPS: Unconjugated Vi polysaccharide (ViPS) schedule
*/
define "One typhoid primary series dose was administered":
  "Number of Typhoid Primary Series Doses Administered" = 1

/*
@input: Client's age is less than 2 years
@pseudocode: Today's date − "Date of birth" < 2 years
@code: Client's age is less than 2 years-40
@decision: IMMZ.D2.DT.Typhoid.ViPS: Unconjugated Vi polysaccharide (ViPS) schedule
*/
define "Client's age is less than 2 years":
  Encounter."Current Patient Age In Years" < 2

/*
@input: Client's age is more than or equal to 2 years
@pseudocode: Today's date − "Date of birth" ≥ 2 years
@code: Client's age is more than or equal to 2 years-40
@decision: IMMZ.D2.DT.Typhoid.ViPS: Unconjugated Vi polysaccharide (ViPS) schedule
*/
define "Client's age is more than or equal to 2 years":
  Encounter."Current Patient Age In Years" >= 2

/*
@input: The latest typhoid dose was administered less than 3 years ago
@pseudocode: Today's date − latest "Date and time of vaccination" (where "Vaccine type" = "Typhoid vaccines") < 3 years
@code: The latest typhoid dose was administered less than 3 years ago-106
@decision: IMMZ.D2.DT.Typhoid.ViPS: Unconjugated Vi polysaccharide (ViPS) schedule
@decision: IMMZ.D2.DT.Typhoid.Ty21a: Live attenuated Ty21a vaccine schedule
*/
define "The latest typhoid dose was administered less than 3 years ago":
  "Date of Latest Typhoid Dose" is not null
    and duration in years between "Date of Latest Typhoid Dose" and Today < 3

/*
@input: The latest typhoid dose was administered more than 3 years ago
@pseudocode: Today's date − latest "Date and time of vaccination" (where "Vaccine type" = "Typhoid vaccines") ≥ 3 years
@code: The latest typhoid dose was administered more than 3 years ago-106
@decision: IMMZ.D2.DT.Typhoid.ViPS: Unconjugated Vi polysaccharide (ViPS) schedule
@decision: IMMZ.D2.DT.Typhoid.Ty21a: Live attenuated Ty21a vaccine schedule
*/
define "The latest typhoid dose was administered more than 3 years ago":
  not "The latest typhoid dose was administered less than 3 years ago"

/*
@input: Client's age is less than 6 years
@pseudocode: Today's date − "Date of birth" < 6 years
@code: Client's age is less than 6 years-40
@decision: IMMZ.D2.DT.Typhoid.Ty21a: Live attenuated Ty21a vaccine schedule
*/
define "Client's age is less than 6 years":
  Encounter."Current Patient Age In Years" < 6

/*
@input: Client's age is more than or equal to 6 years
@pseudocode: Today's date − "Date of birth" ≥ 6 years
@code: Client's age is more than or equal to 6 years-40
@decision: IMMZ.D2.DT.Typhoid.Ty21a: Live attenuated Ty21a vaccine schedule
*/
define "Client's age is more than or equal to 6 years":
  Encounter."Current Patient Age In Years" >= 6

/*
@input: Primary series is not complete
@pseudocode: "Completed the primary vaccination series" (where "Vaccine type" = "Typhoid vaccines") ≠ TRUE
@code: Primary series is not complete-93
@decision: IMMZ.D2.DT.Typhoid.Ty21a: Live attenuated Ty21a vaccine schedule
*/
define "Primary series is not complete":
  not "Primary series is complete"

/*
@input: No live vaccine, other than typhoid, was administered in the past 4 weeks
@pseudocode: Today's date − latest "Date and time of vaccination" (where "Live vaccine" = TRUE AND "Vaccine type" ≠ "Typhoid vaccines") ≥ 4 weeks
@code: No live vaccine, other than typhoid, was administered in the past 4 weeks-132
@decision: IMMZ.D2.DT.Typhoid.Ty21a: Live attenuated Ty21a vaccine schedule
*/
define "No live vaccine, other than typhoid, was administered in the past 4 weeks":
  Encounter."No live vaccine was administered in the last 4 weeks"

/*
@input: Live vaccine, other than typhoid, was administered in the past 4 weeks
@pseudocode: Today's date − latest "Date and time of vaccination" (where "Live vaccine" = TRUE AND "Vaccine type" ≠ "Typhoid vaccines") < 4 weeks
@code: Live vaccine, other than typhoid, was administered in the past 4 weeks-132
@decision: IMMZ.D2.DT.Typhoid.Ty21a: Live attenuated Ty21a vaccine schedule
*/
define "Live vaccine, other than typhoid, was administered in the past 4 weeks":
  Encounter."Live vaccine was administered in the last 4 weeks"

/*
@input: Primary series is complete
@pseudocode: "Completed the primary vaccination series" (where "Vaccine type" = "Typhoid vaccines") = TRUE
@code: Primary series is complete-93
@decision: IMMZ.D2.DT.Typhoid.Ty21a: Live attenuated Ty21a vaccine schedule
*/
define "Primary series is complete":
  "One typhoid primary series dose was administered"
  or Coalesce(
    "Typhoid Doses Administered to Patient" Dose
    aggregate Result: Encounter."Completed the primary vaccination series Observation".partOf.references(Dose) or Result,
    false )

/*
@internal: Date of Latest Typhoid Dose
*/
define "Date of Latest Typhoid Dose":
  date from start of "Typhoid Doses Administered to Patient".mostRecent().occurrence.toInterval()
