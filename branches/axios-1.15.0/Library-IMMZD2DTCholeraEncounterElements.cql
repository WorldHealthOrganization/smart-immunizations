
/*
  * Library: IMMZD2DTCholeraEncounterElements
  */
library IMMZD2DTCholeraEncounterElements

using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1'

include WHOConcepts
include WHOCommon called WC
include WHOElements called WE

include IMMZCommon called Common
include IMMZConcepts called Concepts
include IMMZEncounterElements called Encounter

include IMMZD2DTCholeraElements called CholeraElements

parameter Today Date default Today()
parameter EncounterId String
parameter CholeraLowerLimitDays Integer default 150
parameter CholeraExactIntervalDays Integer default 0

context Patient

/*
@internal: Cholera containing Doses Administered to Patient
*/
define "Cholera Doses Administered to Patient":
  Encounter."Doses Administered to Patient" I
  where
    I.vaccineCode in Concepts."Cholera vaccines"

/*
@internal: Cholera containing Doses Administered to Patient that are in the Primary series
*/
define "Cholera Primary Series Doses Administered to Patient":
  "Cholera Doses Administered to Patient".seriesPrimary()

/*
@internal: Number of Cholera Primary Series doses
*/
define "Number of Cholera Primary Series Doses Administered":
  Count("Cholera Primary Series Doses Administered to Patient")

/*
@input: Client's age is less than 1 year
@pseudocode: Today's date − "Date of birth" < 1 year
@code: Client's age is less than 1 year-39
@decision: IMMZ.D2.DT.Cholera.WC vaccines: Whole-cell (WC) vaccines schedule
*/
define "Client's age is less than 1 year":
  Encounter."Current Patient Age In Years" < 1

/*
@input: Client's age is more than or equal to 1 year
@pseudocode: Today's date − "Date of birth" ≥ 1 year
@code: Client's age is more than or equal to 1 year-39
@decision: IMMZ.D2.DT.Cholera.WC vaccines: Whole-cell (WC) vaccines schedule
*/
define "Client's age is more than or equal to 1 year":
  Encounter."Current Patient Age In Years" >= 1

/*
@input: No cholera primary series dose was administered
@pseudocode: Count of vaccines administered (where "Vaccine type" = "Cholera vaccines" and "Type of dose" = "Primary series") = 0
@code: No cholera primary series dose was administered-116
@decision: IMMZ.D2.DT.Cholera.WC vaccines: Whole-cell (WC) vaccines schedule
@decision: IMMZ.D2.DT.Cholera.WC-rBS vaccine 3 doses: Whole cell-recombinant B subunit (WC-rBS) vaccine, 3-dose schedule for clients aged 2–5 years
@decision: IMMZ.D2.DT.Cholera.WC-rBS vaccine 2 doses: Whole cell-recombinant B subunit (WC-rBS) vaccine, 2-dose schedule for clients aged over 5 years
*/
define "No cholera primary series dose was administered":
  "Number of Cholera Primary Series Doses Administered" = 0

/*
@input: One cholera primary series dose was administered
@pseudocode: Count of vaccines administered (where "Vaccine type" = "Cholera vaccines" and "Type of dose" = "Primary series") = 1
@code: One cholera primary series dose was administered-116
@decision: IMMZ.D2.DT.Cholera.WC vaccines: Whole-cell (WC) vaccines schedule
*/
define "One cholera primary series dose was administered":
  "Number of Cholera Primary Series Doses Administered" = 1

/*
@input: The latest cholera dose was administered less than 14 days ago
@pseudocode: Today's date − latest "Date and time of vaccination" (where "Vaccine type" = "Cholera vaccines") < 14 days
@code: The latest cholera dose was administered less than 14 days ago-106
@decision: IMMZ.D2.DT.Cholera.WC vaccines: Whole-cell (WC) vaccines schedule
*/
define "The latest cholera dose was administered less than 14 days ago":
  "Date of Latest Cholera Dose" is not null
  and duration in days between "Date of Latest Cholera Dose" and Today < 14

/*
@input: The latest cholera dose was administered more than 14 days ago
@pseudocode: Today's date − latest "Date and time of vaccination" (where "Vaccine type" = "Cholera vaccines") ≥ 14 days
@code: The latest cholera dose was administered more than 14 days ago-106
@decision: IMMZ.D2.DT.Cholera.WC vaccines: Whole-cell (WC) vaccines schedule
*/
define "The latest cholera dose was administered more than 14 days ago":
  not "The latest cholera dose was administered less than 14 days ago"

/*
@input: Two cholera primary series doses were administered
@pseudocode: Count of vaccines administered (where "Vaccine type" = "Cholera vaccines" and "Type of dose" = "Primary series") = 2
@code: Two cholera primary series doses were administered-116
@decision: IMMZ.D2.DT.Cholera.WC vaccines: Whole-cell (WC) vaccines schedule
*/
define "Two cholera primary series doses were administered":
  "Number of Cholera Primary Series Doses Administered" = 2

/*
@input: No cholera booster series dose was administered
@pseudocode: Count of vaccines administered (where "Vaccine type" = "Cholera vaccines" and "Type of dose" = "Booster dose") = 0
@code: No cholera booster series dose was administered-114
@decision: IMMZ.D2.DT.Cholera.WC vaccines: Whole-cell (WC) vaccines schedule
*/
define "No cholera booster series dose was administered":
  "Number of Cholera Booster Series Doses Administered" = 0

/*
@input: The latest cholera dose was administered less than 3 years ago
@pseudocode: Today's date − latest "Date and time of vaccination" (where "Vaccine type" = "Cholera vaccines") < 3 years
@code: The latest cholera dose was administered less than 3 years ago-106
@decision: IMMZ.D2.DT.Cholera.WC vaccines: Whole-cell (WC) vaccines schedule
*/
define "The latest cholera dose was administered less than 3 years ago":
  "Date of Latest Cholera Dose" is not null
  and duration in years between "Date of Latest Cholera Dose" and Today < 3

/*
@input: The latest cholera dose was administered more than 3 years ago
@pseudocode: Today's date − latest "Date and time of vaccination" (where "Vaccine type" = "Cholera vaccines") ≥ 3 years
@code: The latest cholera dose was administered more than 3 years ago-106
@decision: IMMZ.D2.DT.Cholera.WC vaccines: Whole-cell (WC) vaccines schedule
*/
define "The latest cholera dose was administered more than 3 years ago":
  not "The latest cholera dose was administered less than 3 years ago"

/*
@input: At least one booster series dose was administered
@pseudocode: Count of vaccines administered (where "Vaccine type" = "Cholera vaccines" and "Type of dose" = "Booster dose") >= 1
@code: At least one booster series dose was administered-115
@decision: IMMZ.D2.DT.Cholera.WC vaccines: Whole-cell (WC) vaccines schedule
*/
define "At least one booster series dose was administered":
  "Number of Cholera Booster Series Doses Administered" >= 1

/*
@input: Dose number of the latest dose is one
@pseudocode: Latest "Dose number" (where "Vaccine type" = "Cholera vaccines") = 1
@code: Dose number of the latest dose is one-68
@decision: IMMZ.D2.DT.Cholera.WC vaccines: Whole-cell (WC) vaccines schedule
*/
define "Dose number of the latest dose is one":
  "Cholera Doses Administered to Patient".mostRecent().getDose('1') is not null

/*
@input: The latest cholera dose was administered more than 14 days ago and less than 3 years ago
@pseudocode: 14 days <= Today's date − latest "Date and time of vaccination" (where "Vaccine type" = "Cholera vaccines") <= 3 years
@code: The latest cholera dose was administered more than 14 days ago and less than 3 years ago-118
@decision: IMMZ.D2.DT.Cholera.WC vaccines: Whole-cell (WC) vaccines schedule
*/
define "The latest cholera dose was administered more than 14 days ago and less than 3 years ago":
  "The latest cholera dose was administered more than 14 days ago"
  and "The latest cholera dose was administered less than 3 years ago"

/*
@input: Dose number of the latest dose is two
@pseudocode: Latest "Dose number" (where "Vaccine type" = "Cholera vaccines") = 2
@code: Dose number of the latest dose is two-68
@decision: IMMZ.D2.DT.Cholera.WC vaccines: Whole-cell (WC) vaccines schedule
*/
define "Dose number of the latest dose is two":
  "Cholera Doses Administered to Patient".mostRecent().getDose('2') is not null

/*
@input: Client's age is less than 2 years
@pseudocode: Today's date − "Date of birth" < 2 years
@code: Client's age is less than 2 years-40
@decision: IMMZ.D2.DT.Cholera.WC-rBS vaccine 3 doses: Whole cell-recombinant B subunit (WC-rBS) vaccine, 3-dose schedule for clients aged 2–5 years
*/
define "Client's age is less than 2 years":
  Encounter."Current Patient Age In Years" < 2

/*
@input: Client's age is 2–5 years
@pseudocode: 2 years ≤ Today's date − "Date of birth" ≤ 5 years
@code: Client's age is 2–5 years-50
@decision: IMMZ.D2.DT.Cholera.WC-rBS vaccine 3 doses: Whole cell-recombinant B subunit (WC-rBS) vaccine, 3-dose schedule for clients aged 2–5 years
*/
define "Client's age is 2–5 years":
  Encounter."Current Patient Age In Years" >= 2
  and Encounter."Current Patient Age In Years" <= 5

/*
@input: At least one cholera primary series dose was administered
@pseudocode: Count of vaccines administered (where "Vaccine type" = "Cholera vaccines" and "Type of dose" = "Primary series") >= 1
@code: At least one cholera primary series dose was administered-117
@decision: IMMZ.D2.DT.Cholera.WC-rBS vaccine 3 doses: Whole cell-recombinant B subunit (WC-rBS) vaccine, 3-dose schedule for clients aged 2–5 years
@decision: IMMZ.D2.DT.Cholera.WC-rBS vaccine 2 doses: Whole cell-recombinant B subunit (WC-rBS) vaccine, 2-dose schedule for clients aged over 5 years
*/
define "At least one cholera primary series dose was administered":
  "Number of Cholera Primary Series Doses Administered" >= 1

/*
@input: Dose number of the latest primary series dose is one
@pseudocode: Latest "Dose number" (where "Vaccine type" = "Cholera vaccines" and "Type of dose" = "Primary series") = 1
@code: Dose number of the latest primary series dose is one-106
@decision: IMMZ.D2.DT.Cholera.WC-rBS vaccine 3 doses: Whole cell-recombinant B subunit (WC-rBS) vaccine, 3-dose schedule for clients aged 2–5 years
@decision: IMMZ.D2.DT.Cholera.WC-rBS vaccine 2 doses: Whole cell-recombinant B subunit (WC-rBS) vaccine, 2-dose schedule for clients aged over 5 years
*/
define "Dose number of the latest primary series dose is one":
  "Cholera Primary Series Doses Administered to Patient".mostRecent().getDose('1') is not null

/*
@input: The latest cholera dose was administered less than 1 week ago
@pseudocode: Today's date − latest "Date and time of vaccination" (where "Vaccine type" = "Cholera vaccines") < 1 week
@code: The latest cholera dose was administered less than 1 week ago-105
@decision: IMMZ.D2.DT.Cholera.WC-rBS vaccine 3 doses: Whole cell-recombinant B subunit (WC-rBS) vaccine, 3-dose schedule for clients aged 2–5 years
@decision: IMMZ.D2.DT.Cholera.WC-rBS vaccine 2 doses: Whole cell-recombinant B subunit (WC-rBS) vaccine, 2-dose schedule for clients aged over 5 years
*/
define "The latest cholera dose was administered less than 1 week ago":
  "Date of Latest Cholera Dose" is not null
  and duration in weeks between "Date of Latest Cholera Dose" and Today < 1

/*
@input: The latest cholera dose was administered more than 1 week and less than 6 weeks ago
@pseudocode: 1 week ≤ Today's date − latest "Date and time of vaccination" (where "Vaccine type" = "Cholera vaccines") < 6 weeks
@code: The latest cholera dose was administered more than 1 week and less than 6 weeks ago-115
@decision: IMMZ.D2.DT.Cholera.WC-rBS vaccine 3 doses: Whole cell-recombinant B subunit (WC-rBS) vaccine, 3-dose schedule for clients aged 2–5 years
@decision: IMMZ.D2.DT.Cholera.WC-rBS vaccine 2 doses: Whole cell-recombinant B subunit (WC-rBS) vaccine, 2-dose schedule for clients aged over 5 years
*/
define "The latest cholera dose was administered more than 1 week and less than 6 weeks ago":
  "Date of Latest Cholera Dose" is not null
  and duration in weeks between "Date of Latest Cholera Dose" and Today >= 1
  and duration in weeks between "Date of Latest Cholera Dose" and Today < 6

/*
@input: Dose number of the latest primary series dose is two
@pseudocode: Latest "Dose number" (where "Vaccine type" = "Cholera vaccines" and "Type of dose" = "Primary series") = 2
@code: Dose number of the latest primary series dose is two-106
@decision: IMMZ.D2.DT.Cholera.WC-rBS vaccine 3 doses: Whole cell-recombinant B subunit (WC-rBS) vaccine, 3-dose schedule for clients aged 2–5 years
*/
define "Dose number of the latest primary series dose is two":
  "Cholera Primary Series Doses Administered to Patient".mostRecent().getDose('2') is not null

/*
@input: Dose number of the latest primary series dose is less than three
@pseudocode: Latest "Dose number" (where "Vaccine type" = "Cholera vaccines" and "Type of dose" = "Primary series") < 3
@code: Dose number of the latest primary series dose is less than three-106
@decision: IMMZ.D2.DT.Cholera.WC-rBS vaccine 3 doses: Whole cell-recombinant B subunit (WC-rBS) vaccine, 3-dose schedule for clients aged 2–5 years
*/
define "Dose number of the latest primary series dose is less than three":
  (("Cholera Primary Series Doses Administered to Patient".mostRecent()) I
    where exists( I.protocolApplied pa where ToInteger(pa.doseNumber) < 3)) is not null

/*
@input: The latest cholera dose was administered more than 6 weeks ago
@pseudocode: Today's date − latest "Date and time of vaccination" (where "Vaccine type" = "Cholera vaccines") ≥ 6 weeks
@code: The latest cholera dose was administered more than 6 weeks ago-106
@decision: IMMZ.D2.DT.Cholera.WC-rBS vaccine 3 doses: Whole cell-recombinant B subunit (WC-rBS) vaccine, 3-dose schedule for clients aged 2–5 years
@decision: IMMZ.D2.DT.Cholera.WC-rBS vaccine 2 doses: Whole cell-recombinant B subunit (WC-rBS) vaccine, 2-dose schedule for clients aged over 5 years
*/
define "The latest cholera dose was administered more than 6 weeks ago":
  "Date of Latest Cholera Dose" is not null
  and duration in weeks between "Date of Latest Cholera Dose" and Today >= 6

/*
@input: Dose number of the latest primary series dose is three
@pseudocode: Latest "Dose number" (where "Vaccine type" = "Cholera vaccines" and "Type of dose" = "Primary series") = 3
@code: Dose number of the latest primary series dose is three-106
@decision: IMMZ.D2.DT.Cholera.WC-rBS vaccine 3 doses: Whole cell-recombinant B subunit (WC-rBS) vaccine, 3-dose schedule for clients aged 2–5 years
*/
define "Dose number of the latest primary series dose is three":
  "Cholera Primary Series Doses Administered to Patient".mostRecent().getDose('3') is not null

/*
@input: The latest cholera dose was administered less than {Member States defined lower limit} days ago
@pseudocode: Today's date − latest "Date and time of vaccination" (where "Vaccine type" = "Cholera vaccines") ≤ Member States defined lower limit
@code: The latest cholera dose was administered less than {Member States defined lower limit} days ago-132
@decision: IMMZ.D2.DT.Cholera.WC-rBS vaccine 3 doses: Whole cell-recombinant B subunit (WC-rBS) vaccine, 3-dose schedule for clients aged 2–5 years
*/
define "The latest cholera dose was administered less than {Member States defined lower limit} days ago":
  "Date of Latest Cholera Dose" is not null
  and duration in days between "Date of Latest Cholera Dose" and Today <= CholeraLowerLimitDays

/*
@input: The latest cholera dose was administered approximately less than 6 months ago {Member States defined exact interval}
@pseudocode: Today's date − latest "Date and time of vaccination" (where "Vaccine type" = "Cholera vaccines") ≤ 6 months
@code: The latest cholera dose was administered approximately less than 6 months ago {Member States defined exact interval}-107
@decision: IMMZ.D2.DT.Cholera.WC-rBS vaccine 3 doses: Whole cell-recombinant B subunit (WC-rBS) vaccine, 3-dose schedule for clients aged 2–5 years
*/
define "The latest cholera dose was administered approximately less than 6 months ago {Member States defined exact interval}":
  "Date of Latest Cholera Dose" is not null
  and duration in days between "Date of Latest Cholera Dose" and Today > CholeraLowerLimitDays
  and duration in days between ("Date of Latest Cholera Dose" + 6 months) and Today <= CholeraExactIntervalDays

/*
@input: The latest cholera dose was administered approximately more than 6 months ago {Member States defined exact interval}
@pseudocode: Today's date − latest "Date and time of vaccination" (where "Vaccine type" = "Cholera vaccines") > 6 months
@code: The latest cholera dose was administered approximately more than 6 months ago {Member States defined exact interval}-107
@decision: IMMZ.D2.DT.Cholera.WC-rBS vaccine 3 doses: Whole cell-recombinant B subunit (WC-rBS) vaccine, 3-dose schedule for clients aged 2–5 years
*/
define "The latest cholera dose was administered approximately more than 6 months ago {Member States defined exact interval}":
  "Date of Latest Cholera Dose" is not null
  and duration in days between ("Date of Latest Cholera Dose" + 6 months) and Today > CholeraExactIntervalDays

/*
@input: Client's age is more than 5 years
@pseudocode: Today's date − "Date of birth" > 5 years
@code: Client's age is more than 5 years-40
@decision: IMMZ.D2.DT.Cholera.WC-rBS vaccine 2 doses: Whole cell-recombinant B subunit (WC-rBS) vaccine, 2-dose schedule for clients aged over 5 years
*/
define "Client's age is more than 5 years":
  Encounter."Current Patient Age In Years" > 5

/*
@input: Dose number of the latest primary series dose is more than or equal to two
@pseudocode: Latest "Dose number" (where "Vaccine type" = "Cholera vaccines" and "Type of dose" = "Primary series") >= 2
@code: Dose number of the latest primary series dose is more than or equal to two-107
@decision: IMMZ.D2.DT.Cholera.WC-rBS vaccine 2 doses: Whole cell-recombinant B subunit (WC-rBS) vaccine, 2-dose schedule for clients aged over 5 years
*/
define "Dose number of the latest primary series dose is more than or equal to two":
  (("Cholera Primary Series Doses Administered to Patient".mostRecent()) I
    where exists( I.protocolApplied pa where ToInteger(pa.doseNumber) >= 2)) is not null

/*
@input: The latest cholera dose was administered approximately less than 2 years ago {Member States defined interval}
@pseudocode: Today's date − latest "Date and time of vaccination" (where "Vaccine type" = "Cholera vaccines") ≤ 2 years ± Member States defined interval
@code: The latest cholera dose was administered approximately less than 2 years ago {Member States defined interval}-139
@decision: IMMZ.D2.DT.Cholera.WC-rBS vaccine 2 doses: Whole cell-recombinant B subunit (WC-rBS) vaccine, 2-dose schedule for clients aged over 5 years
*/
define "The latest cholera dose was administered approximately less than 2 years ago {Member States defined interval}":
  "Date of Latest Cholera Dose" is not null
  and duration in months between "Date of Latest Cholera Dose" and Today > 21
  and duration in days between ("Date of Latest Cholera Dose" + 2 years) and Today <= CholeraExactIntervalDays

/*
@input: The latest cholera dose was administered approximately more than 2 years ago {Member States defined interval}
@pseudocode: Today's date − latest "Date and time of vaccination" (where "Vaccine type" = "Cholera vaccines") > 2 years ± Member States defined interval
@code: The latest cholera dose was administered approximately more than 2 years ago {Member States defined interval}-139
@decision: IMMZ.D2.DT.Cholera.WC-rBS vaccine 2 doses: Whole cell-recombinant B subunit (WC-rBS) vaccine, 2-dose schedule for clients aged over 5 years
*/
define "The latest cholera dose was administered approximately more than 2 years ago {Member States defined interval}":
  "Date of Latest Cholera Dose" is not null
  and duration in days between ("Date of Latest Cholera Dose" + 2 years) and Today > CholeraExactIntervalDays

/*
@internal: Cholera Booster Series Doses Administered to Patient
*/
define "Cholera Booster Series Doses Administered to Patient":
  "Cholera Doses Administered to Patient".seriesBooster()

/*
@internal: Number of Cholera Booster Series Doses Administered
*/
define "Number of Cholera Booster Series Doses Administered":
  Count("Cholera Booster Series Doses Administered to Patient")

/*
@internal: Date of Latest Cholera Dose
*/
define "Date of Latest Cholera Dose":
  date from start of "Cholera Doses Administered to Patient".mostRecent().occurrence.toInterval()
