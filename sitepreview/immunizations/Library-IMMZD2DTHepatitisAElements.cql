
/*
  * Library: IMMZD2DTHepatitisAElements
  */
library IMMZD2DTHepatitisAElements

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
@internal: Hepatitis A containing Doses Administered to Patient
*/
define "Hepatitis A Doses Administered to Patient":
  Elements."Doses Administered to Patient" I
  where
    I.vaccineCode in Concepts."Hepatitis A-containing vaccines"

/*
@internal: Hepatitis A containing Doses Administered to Patient that are in the Primary series
*/
define "Hepatitis A Primary Series Doses Administered to Patient":
  "Hepatitis A Doses Administered to Patient".seriesPrimary()

/*
@internal: Number of Hepatitis A Primary Series doses
*/
define "Number of Hepatitis A Primary Series Doses Administered":
  Count("Hepatitis A Primary Series Doses Administered to Patient")

/*
@input: Client's age is less than 12 months
@pseudocode: Today's date − "Date of birth" < 12 months
@code: Client's age is less than 12 months-42
@decision: IMMZ.D2.DT.Hepatitis A.Inactivated HAV 2 doses: Inactivated hepatitis A virus (HAV), 2-dose schedule
@decision: IMMZ.D2.DT.Hepatitis A.Inactivated HAV 1 dose: Inactivated hepatitis A virus (HAV), 1-dose schedule
*/
define "Client's age is less than 12 months":
  Elements."Current Patient Age In Months" < 12

/*
@input: No hepatitis A primary series doses were administered
@pseudocode: Count of vaccines administered (where "Vaccine type" = "Hepatitis A-containing vaccines" and "Type of dose" = "Primary series") = 0
@code: No hepatitis A primary series doses were administered-131
@decision: IMMZ.D2.DT.Hepatitis A.Inactivated HAV 2 doses: Inactivated hepatitis A virus (HAV), 2-dose schedule
*/
define "No hepatitis A primary series doses were administered":
  "Number of Hepatitis A Primary Series Doses Administered" = 0

/*
@input: Client's age is more than or equal to 12 months
@pseudocode: Today's date − "Date of birth" ≥ 12 months
@code: Client's age is more than or equal to 12 months-42
@decision: IMMZ.D2.DT.Hepatitis A.Inactivated HAV 2 doses: Inactivated hepatitis A virus (HAV), 2-dose schedule
@decision: IMMZ.D2.DT.Hepatitis A.Inactivated HAV 1 dose: Inactivated hepatitis A virus (HAV), 1-dose schedule
*/
define "Client's age is more than or equal to 12 months":
  Elements."Current Patient Age In Months" >= 12

/*
@input: One hepatitis A primary series dose was administered
@pseudocode: Count of vaccines administered (where "Vaccine type" = "Hepatitis A-containing vaccines" and "Type of dose" = "Primary series") = 1
@code: One hepatitis A primary series dose was administered-131
@decision: IMMZ.D2.DT.Hepatitis A.Inactivated HAV 2 doses: Inactivated hepatitis A virus (HAV), 2-dose schedule
@decision: IMMZ.D2.DT.Hepatitis A.Inactivated HAV 1 dose: Inactivated hepatitis A virus (HAV), 1-dose schedule
@decision: IMMZ.D2.DT.Hepatitis A.Live attenuated HAV 1 dose: Live attenuated hepatitis A virus (HAV), 1 dose schedule
*/
define "One hepatitis A primary series dose was administered":
  "Number of Hepatitis A Primary Series Doses Administered" = 0

/*
@input: The latest Hepatitis A dose was administered less than 6 months ago
@pseudocode: Today's date − "Date and time of vaccination" (where "Vaccine type" = "Hepatitis A-containing vaccines") < 6 months
@code: The latest Hepatitis A dose was administered less than 6 months ago-115
@decision: IMMZ.D2.DT.Hepatitis A.Inactivated HAV 2 doses: Inactivated hepatitis A virus (HAV), 2-dose schedule
*/
define "The latest Hepatitis A dose was administered less than 6 months ago":
  "Date of Latest Hepatitis A Dose" is not null
    and duration in months between "Date of Latest Hepatitis A Dose" and Now() < 6

/*
@input: The latest Hepatitis A dose was administered more than 6 months ago
@pseudocode: Today's date − "Date and time of vaccination" (where "Vaccine type" = "Hepatitis A-containing vaccines") ≥ 6 months
@code: The latest Hepatitis A dose was administered more than 6 months ago-115
@decision: IMMZ.D2.DT.Hepatitis A.Inactivated HAV 2 doses: Inactivated hepatitis A virus (HAV), 2-dose schedule
*/
define "The latest Hepatitis A dose was administered more than 6 months ago":
  not "The latest Hepatitis A dose was administered less than 6 months ago"

/*
@input: Two hepatitis A primary series doses were administered
@pseudocode: Count of vaccines administered (where "Vaccine type" = "Hepatitis A-containing vaccines" and "Type of dose" = "Primary series") = 2
@code: Two hepatitis A primary series doses were administered-131
@decision: IMMZ.D2.DT.Hepatitis A.Inactivated HAV 2 doses: Inactivated hepatitis A virus (HAV), 2-dose schedule
*/
define "Two hepatitis A primary series doses were administered":
  "Number of Hepatitis A Primary Series Doses Administered" = 2

/*
@input: No hepatitis A primary series dose was administered
@pseudocode: Count of vaccines administered (where "Vaccine type" = "Hepatitis A-containing vaccines" and "Type of dose" = "Primary series") = 0
@code: No hepatitis A primary series dose was administered-131
@decision: IMMZ.D2.DT.Hepatitis A.Inactivated HAV 1 dose: Inactivated hepatitis A virus (HAV), 1-dose schedule
@decision: IMMZ.D2.DT.Hepatitis A.Live attenuated HAV 1 dose: Live attenuated hepatitis A virus (HAV), 1 dose schedule
*/
define "No hepatitis A primary series dose was administered":
  "No hepatitis A primary series doses were administered"

/*
@input: Client's age is less than 18 months
@pseudocode: Today's date − "Date of birth" < 18 months
@code: Client's age is less than 18 months-42
@decision: IMMZ.D2.DT.Hepatitis A.Live attenuated HAV 1 dose: Live attenuated hepatitis A virus (HAV), 1 dose schedule
*/
define "Client's age is less than 18 months":
  Elements."Current Patient Age In Months" < 18

/*
@input: Client's age is more than or equal to 18 months
@pseudocode: Today's date − "Date of birth" ≥ 18 months
@code: Client's age is more than or equal to 18 months-42
@decision: IMMZ.D2.DT.Hepatitis A.Live attenuated HAV 1 dose: Live attenuated hepatitis A virus (HAV), 1 dose schedule
*/
define "Client's age is more than or equal to 18 months":
  Elements."Current Patient Age In Months" >= 18

/*
@input: Live vaccine was administered in the last 4 weeks
@pseudocode: Today's date − latest "Date and time of vaccination" (where "Live vaccine" = TRUE) < 4 weekS
@code: Live vaccine was administered in the last 4 weeks-92
@decision: IMMZ.D2.DT.Hepatitis A.Live attenuated HAV 1 dose: Live attenuated hepatitis A virus (HAV), 1 dose schedule
*/
define "Live vaccine was administered in the last 4 weeks":
  Elements."Live vaccine was administered in the last 4 weeks"

/*
@input: No live vaccine was administered in the last 4 weeks
@pseudocode: Today's date − latest "Date and time of vaccination" (where "Live vaccine" = TRUE) ≥ 4 weeks
@code: No live vaccine was administered in the last 4 weeks-92
@decision: IMMZ.D2.DT.Hepatitis A.Live attenuated HAV 1 dose: Live attenuated hepatitis A virus (HAV), 1 dose schedule
*/
define "No live vaccine was administered in the last 4 weeks":
  Elements."No live vaccine was administered in the last 4 weeks"

/*
@internal: Date of Latest Hepatitis A Dose
*/
define "Date of Latest Hepatitis A Dose":
  date from start of "Hepatitis A Doses Administered to Patient".mostRecent().occurrence.toInterval()
