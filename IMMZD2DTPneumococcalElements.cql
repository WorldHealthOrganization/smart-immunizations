
/*
  * Library: IMMZD2DTPneumococcalElements
  */
library IMMZD2DTPneumococcalElements

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
@internal: Pneumococcal containing Doses Administered to Patient
*/
define "Pneumococcal Doses Administered to Patient":
  Elements."Doses Administered to Patient" I
  where
    I.vaccineCode in Concepts."Pneumococcal vaccines"

/*
@internal: Pneumococcal containing Doses Administered to Patient that are in the Primary series
*/
define "Pneumococcal Primary Series Doses Administered to Patient":
  "Pneumococcal Doses Administered to Patient".seriesPrimary()

/*
@internal: Number of Pneumococcal Primary Series doses
*/
define "Number of Pneumococcal Primary Series Doses Administered":
  Count("Pneumococcal Primary Series Doses Administered to Patient")

/*
@input: The client's age is less than 6 weeks
@pseudocode: Today's date − "Date of birth" < 6 weeks
@code: The client's age is less than 6 weeks-40
@decision: IMMZ.D2.DT.Pneumococcal.2 doses with booster dose: 2 primary doses with a booster dose (2p+1)
@decision: IMMZ.D2.DT.Pneumococcal.3 doses: 3 primary doses (3p+0)
*/
define "The client's age is less than 6 weeks":
  Elements."Current Patient Age In Weeks" < 6

/*
@input: No pneumococcal primary series doses were administered
@pseudocode: Count of vaccines administered (where "Vaccine type" = "Pneumococcal vaccines" and "Type of dose" = "Primary series") = 0
@code: No pneumococcal primary series doses were administered-121
@decision: IMMZ.D2.DT.Pneumococcal.2 doses with booster dose: 2 primary doses with a booster dose (2p+1)
@decision: IMMZ.D2.DT.Pneumococcal.3 doses: 3 primary doses (3p+0)
*/
define "No pneumococcal primary series doses were administered":
  "Number of Pneumococcal Primary Series Doses Administered" = 0

/*
@input: The client's age is between 6 weeks and 5 years
@pseudocode: 6 weeks ≤ Today's date − "Date of birth" ≤ 5 years
@code: The client's age is between 6 weeks and 5 years-50
@decision: IMMZ.D2.DT.Pneumococcal.2 doses with booster dose: 2 primary doses with a booster dose (2p+1)
@decision: IMMZ.D2.DT.Pneumococcal.3 doses: 3 primary doses (3p+0)
*/
define "The client's age is between 6 weeks and 5 years":
  6 <= Elements."Current Patient Age In Weeks"
  and Elements."Current Patient Age In Years" <= 5

/*
@input: One pneumococcal primary series dose was administered
@pseudocode: Count of vaccines administered (where "Vaccine type" = "Pneumococcal vaccines" and "Type of dose" = "Primary series") = 1
@code: One pneumococcal primary series dose was administered-121
@decision: IMMZ.D2.DT.Pneumococcal.2 doses with booster dose: 2 primary doses with a booster dose (2p+1)
@decision: IMMZ.D2.DT.Pneumococcal.3 doses: 3 primary doses (3p+0)
*/
define "One pneumococcal primary series dose was administered":
  "Number of Pneumococcal Primary Series Doses Administered" = 1

/*
@input: The client's age is less than or equal to 5 years
@pseudocode: 'Today's date − "Date of birth" ≤ 5 years
@code: The client's age is less than or equal to 5 years-41
@decision: IMMZ.D2.DT.Pneumococcal.2 doses with booster dose: 2 primary doses with a booster dose (2p+1)
*/
define "The client's age is less than or equal to 5 years":
  Elements."Current Patient Age In Years" <= 5

/*
@input: The first pneumococcal dose was administered within 24 months post birth
@pseudocode: "Date and time of vaccination" (where "Vaccine type" = "Pneumococcal vaccines") − "Date of birth" < 24 months
@code: The first pneumococcal dose was administered within 24 months post birth-109
@decision: IMMZ.D2.DT.Pneumococcal.2 doses with booster dose: 2 primary doses with a booster dose (2p+1)
*/
define "The first pneumococcal dose was administered within 24 months post birth":
  AgeInMonthsAt("Date of First Pneumococcal Dose") < 24

/*
@input: The latest pneumococcal dose was administered less than 8 weeks ago
@pseudocode: Today's date − "Date and time of vaccination" (where "Vaccine type" = "Pneumococcal vaccines") < 8 weeks
@code: The latest pneumococcal dose was administered less than 8 weeks ago-104
@decision: IMMZ.D2.DT.Pneumococcal.2 doses with booster dose: 2 primary doses with a booster dose (2p+1)
@decision: IMMZ.D2.DT.Pneumococcal.3 doses: 3 primary doses (3p+0)
*/
define "The latest pneumococcal dose was administered less than 8 weeks ago":
  "Date of Latest Pneumococcal Dose" is not null
    and duration in weeks between "Date of Latest Pneumococcal Dose" and Now() < 8

/*
@input: The latest pneumococcal dose was administered more than 8 weeks ago
@pseudocode: Today's date − "Date and time of vaccination" (where "Vaccine type" = "Pneumococcal vaccines") ≥ 8 weeks
@code: The latest pneumococcal dose was administered more than 8 weeks ago-104
@decision: IMMZ.D2.DT.Pneumococcal.2 doses with booster dose: 2 primary doses with a booster dose (2p+1)
@decision: IMMZ.D2.DT.Pneumococcal.3 doses: 3 primary doses (3p+0)
*/
define "The latest pneumococcal dose was administered more than 8 weeks ago":
  not "The latest pneumococcal dose was administered less than 8 weeks ago"

/*
@input: The first pneumococcal dose was administered after 24 months post birth
@pseudocode: "Date and time of vaccination" (where "Vaccine type" = "Pneumococcal vaccines") − "Date of birth" ≥ 24 months
@code: The first pneumococcal dose was administered after 24 months post birth-109
@decision: IMMZ.D2.DT.Pneumococcal.2 doses with booster dose: 2 primary doses with a booster dose (2p+1)
@decision: IMMZ.D2.DT.Pneumococcal.3 doses: 3 primary doses (3p+0)
*/
define "The first pneumococcal dose was administered after 24 months post birth":
  AgeInMonthsAt("Date of First Pneumococcal Dose") >= 24

/*
@input: Client is at high risk for pneumococcal infection
@pseudocode: "At high risk for pneumococcal infection" = TRUE
@code: Client is at high risk for pneumococcal infection-48
@decision: IMMZ.D2.DT.Pneumococcal.2 doses with booster dose: 2 primary doses with a booster dose (2p+1)
@decision: IMMZ.D2.DT.Pneumococcal.3 doses: 3 primary doses (3p+0)
*/
define "Client is at high risk for pneumococcal infection":
  Elements."Client is at high risk for pneumococcal infection"

/*
@input: Client is not at high risk for pneumococcal infection
@pseudocode: "At high risk for pneumococcal infection" = FALSE
@code: Client is not at high risk for pneumococcal infection-49
@decision: IMMZ.D2.DT.Pneumococcal.2 doses with booster dose: 2 primary doses with a booster dose (2p+1)
@decision: IMMZ.D2.DT.Pneumococcal.3 doses: 3 primary doses (3p+0)
*/
define "Client is not at high risk for pneumococcal infection":
  Elements."Client is not at high risk for pneumococcal infection"

/*
@input: Two pneumococcal primary series doses were administered
@pseudocode: Count of vaccines administered (where "Vaccine type" = "Pneumococcal vaccines" and "Type of dose" = "Primary series") = 2
@code: Two pneumococcal primary series doses were administered-121
@decision: IMMZ.D2.DT.Pneumococcal.2 doses with booster dose: 2 primary doses with a booster dose (2p+1)
@decision: IMMZ.D2.DT.Pneumococcal.3 doses: 3 primary doses (3p+0)
*/
define "Two pneumococcal primary series doses were administered":
  "Number of Pneumococcal Primary Series Doses Administered" = 2

/*
@input: No pneumococcal booster dose was administered
@pseudocode: Count of vaccines administered (where "Vaccine type" = "Pneumococcal vaccines" and "Type of dose" = "Booster dose") = 0
@code: No pneumococcal booster dose was administered-119
@decision: IMMZ.D2.DT.Pneumococcal.2 doses with booster dose: 2 primary doses with a booster dose (2p+1)
@decision: IMMZ.D2.DT.Pneumococcal.3 doses: 3 primary doses (3p+0)
*/
define "No pneumococcal booster dose was administered":
  "Number of Pneumococcal Booster Series Doses Administered" = 0

/*
@input: The first pneumococcal dose was administered within 12 months post birth
@pseudocode: "Date and time of vaccination" (where "Vaccine type" = "Pneumococcal vaccines" AND "Dose number" = 1) − "Date of birth" < 12 months
@code: The first pneumococcal dose was administered within 12 months post birth-131
@decision: IMMZ.D2.DT.Pneumococcal.2 doses with booster dose: 2 primary doses with a booster dose (2p+1)
@decision: IMMZ.D2.DT.Pneumococcal.3 doses: 3 primary doses (3p+0)
*/
define "The first pneumococcal dose was administered within 12 months post birth":
  AgeInMonthsAt("Date of First Pneumococcal Dose") < 12

/*
@input: The first pneumococcal dose was administered after 12 months post birth
@pseudocode: "Date and time of vaccination" (where "Vaccine type" = "Pneumococcal vaccines" AND "Dose number" = 1) − "Date of birth" ≥ 12 months
@code: The first pneumococcal dose was administered after 12 months post birth-131
@decision: IMMZ.D2.DT.Pneumococcal.2 doses with booster dose: 2 primary doses with a booster dose (2p+1)
@decision: IMMZ.D2.DT.Pneumococcal.3 doses: 3 primary doses (3p+0)
*/
define "The first pneumococcal dose was administered after 12 months post birth":
  AgeInMonthsAt("Date of First Pneumococcal Dose") >= 12

/*
@input: One pneumococcal booster dose was administered
@pseudocode: Count of vaccines administered (where "Vaccine type" = "Pneumococcal vaccines" and "Type of dose" = "Booster dose") = 1
@code: One pneumococcal booster dose was administered-119
@decision: IMMZ.D2.DT.Pneumococcal.2 doses with booster dose: 2 primary doses with a booster dose (2p+1)
@decision: IMMZ.D2.DT.Pneumococcal.3 doses: 3 primary doses (3p+0)
*/
define "One pneumococcal booster dose was administered":
  "Number of Pneumococcal Booster Series Doses Administered" = 1

/*
@input: The client's age is less than 12 months
@pseudocode: Today's date − "Date of birth" < 12 months
@code: The client's age is less than 12 months-42
@decision: IMMZ.D2.DT.Pneumococcal.2 doses with booster dose: 2 primary doses with a booster dose (2p+1)
*/
define "The client's age is less than 12 months":
  Elements."Current Patient Age In Months" < 12

/*
@input: Client's HIV status is positive
@pseudocode: "HIV status" = "HIV-positive"
@code: Client's HIV status is positive-29
@decision: IMMZ.D2.DT.Pneumococcal.2 doses with booster dose: 2 primary doses with a booster dose (2p+1)
@decision: IMMZ.D2.DT.Pneumococcal.3 doses: 3 primary doses (3p+0)
*/
define "Client's HIV status is positive":
  Elements."Client's HIV status is positive"

/*
@input: Client had preterm birth
@pseudocode: "Preterm birth" = TRUE
@code: Client had preterm birth-22
@decision: IMMZ.D2.DT.Pneumococcal.2 doses with booster dose: 2 primary doses with a booster dose (2p+1)
@decision: IMMZ.D2.DT.Pneumococcal.3 doses: 3 primary doses (3p+0)
*/
define "Client had preterm birth":
  Elements."Client was a premature infant at birth"

/*
@input: The client's age is more than or equal to 12 months and less than 24 months
@pseudocode: 12 months ≤ Today's date − "Date of birth" < 24 months
@code: The client's age is more than or equal to 12 months and less than 24 months-54
@decision: IMMZ.D2.DT.Pneumococcal.2 doses with booster dose: 2 primary doses with a booster dose (2p+1)
*/
define "The client's age is more than or equal to 12 months and less than 24 months":
  12 <= Elements."Current Patient Age In Months"
  and Elements."Current Patient Age In Months" < 24

/*
@input: The latest pneumococcal dose was administered within 12 months post birth
@pseudocode: Latest "Date and time of vaccination" (where "Vaccine type" = "Pneumococcal vaccines") − "Date of birth" < 12 months
@code: The latest pneumococcal dose was administered within 12 months post birth-116
@decision: IMMZ.D2.DT.Pneumococcal.2 doses with booster dose: 2 primary doses with a booster dose (2p+1)
@decision: IMMZ.D2.DT.Pneumococcal.3 doses: 3 primary doses (3p+0)
*/
define "The latest pneumococcal dose was administered within 12 months post birth":
  AgeInMonthsAt("Date of Latest Pneumococcal Dose") < 12

/*
@input: The latest pneumococcal dose was administered after 12 months post birth
@pseudocode: Latest "Date and time of vaccination" (where "Vaccine type" = "Pneumococcal vaccines") − "Date of birth" ≥ 12 months
@code: The latest pneumococcal dose was administered after 12 months post birth-116
@decision: IMMZ.D2.DT.Pneumococcal.2 doses with booster dose: 2 primary doses with a booster dose (2p+1)
@decision: IMMZ.D2.DT.Pneumococcal.3 doses: 3 primary doses (3p+0)
*/
define "The latest pneumococcal dose was administered after 12 months post birth":
  AgeInMonthsAt("Date of Latest Pneumococcal Dose") >= 12

/*
@input: Client's HIV status is negative or unknown
@pseudocode: "HIV status" ≠ "HIV-positive"
@code: Client's HIV status is negative or unknown-29
@decision: IMMZ.D2.DT.Pneumococcal.2 doses with booster dose: 2 primary doses with a booster dose (2p+1)
@decision: IMMZ.D2.DT.Pneumococcal.3 doses: 3 primary doses (3p+0)
*/
define "Client's HIV status is negative or unknown":
  Elements."Client's HIV status is negative or unknown"

/*
@input: Client did not have preterm birth
@pseudocode: "Preterm birth" ≠ TRUE
@code: Client did not have preterm birth-22
@decision: IMMZ.D2.DT.Pneumococcal.2 doses with booster dose: 2 primary doses with a booster dose (2p+1)
@decision: IMMZ.D2.DT.Pneumococcal.3 doses: 3 primary doses (3p+0)
*/
define "Client did not have preterm birth":
  Elements."Client was not a premature infant at birth"

/*
@input: The client's age is more than or equal to 24 months
@pseudocode: Today's date − "Date of birth" ≥ 24 months
@code: The client's age is more than or equal to 24 months-42
@decision: IMMZ.D2.DT.Pneumococcal.2 doses with booster dose: 2 primary doses with a booster dose (2p+1)
@decision: IMMZ.D2.DT.Pneumococcal.3 doses: 3 primary doses (3p+0)
*/
define "The client's age is more than or equal to 24 months":
  Elements."Current Patient Age In Months" >= 24

/*
@input: Two pneumococcal booster doses were administered
@pseudocode: Count of vaccines administered (where "Vaccine type" = "Pneumococcal vaccines" and "Type of dose" = "Booster dose") = 2
@code: Two pneumococcal booster doses were administered-119
@decision: IMMZ.D2.DT.Pneumococcal.2 doses with booster dose: 2 primary doses with a booster dose (2p+1)
*/
define "Two pneumococcal booster doses were administered":
  "Number of Pneumococcal Booster Series Doses Administered" = 2

/*
@input: The client's age is more than 5 years
@pseudocode: Today's date − "Date of birth" > 5 years
@code: The client's age is more than 5 years-40
@decision: IMMZ.D2.DT.Pneumococcal.2 doses with booster dose: 2 primary doses with a booster dose (2p+1)
@decision: IMMZ.D2.DT.Pneumococcal.3 doses: 3 primary doses (3p+0)
*/
define "The client's age is more than 5 years":
  Elements."Current Patient Age In Months" > 5

/*
@input: The client's age is less than or equal to five years
@pseudocode: Today's date − "Date of birth" ≤ 5 years
@code: The client's age is less than or equal to five years-40
@decision: IMMZ.D2.DT.Pneumococcal.3 doses: 3 primary doses (3p+0)
*/
define "The client's age is less than or equal to five years":
  "The client's age is less than or equal to 5 years"

/*
@input: The latest pneumococcal dose was administered less than 4 weeks ago
@pseudocode: Today's date − "Date and time of vaccination" (where "Vaccine type" = "Pneumococcal vaccines") < 4 weeks
@code: The latest pneumococcal dose was administered less than 4 weeks ago-104
@decision: IMMZ.D2.DT.Pneumococcal.3 doses: 3 primary doses (3p+0)
*/
define "The latest pneumococcal dose was administered less than 4 weeks ago":
  "Date of Latest Pneumococcal Dose" is not null
    and duration in weeks between "Date of Latest Pneumococcal Dose" and Now() < 4

/*
@input: The latest pneumococcal dose was administered more than 4 weeks ago
@pseudocode: Today's date − "Date and time of vaccination" (where "Vaccine type" = "Pneumococcal vaccines") ≥ 4 weeks
@code: The latest pneumococcal dose was administered more than 4 weeks ago-104
@decision: IMMZ.D2.DT.Pneumococcal.3 doses: 3 primary doses (3p+0)
*/
define "The latest pneumococcal dose was administered more than 4 weeks ago":
  not "The latest pneumococcal dose was administered less than 4 weeks ago"

/*
@input: The first pneumococcal dose was administered at 12–24 months post birth
@pseudocode: 12 months ≤ "Date and time of vaccination" (where "Vaccine type" = "Pneumococcal vaccines") − "Date of birth" < 24 months
@code: The first pneumococcal dose was administered at 12–24 months post birth-121
@decision: IMMZ.D2.DT.Pneumococcal.3 doses: 3 primary doses (3p+0)
*/
define "The first pneumococcal dose was administered at 12–24 months post birth":
  AgeInMonthsAt("Date of First Pneumococcal Dose") >= 12
  and AgeInMonthsAt("Date of First Pneumococcal Dose") < 24

/*
@input: Three pneumococcal primary series doses were administered
@pseudocode: Count of vaccines administered (where "Vaccine type" = "Pneumococcal vaccines" and "Type of dose" = "Primary series") = 3
@code: Three pneumococcal primary series doses were administered-121
@decision: IMMZ.D2.DT.Pneumococcal.3 doses: 3 primary doses (3p+0)
*/
define "Three pneumococcal primary series doses were administered":
  "Number of Pneumococcal Primary Series Doses Administered" = 3

/*
@input: The client's age is less than 24 months
@pseudocode: Today's date − "Date of birth" < 24 months
@code: The client's age is less than 24 months-42
@decision: IMMZ.D2.DT.Pneumococcal.3 doses: 3 primary doses (3p+0)
*/
define "The client's age is less than 24 months":
  Elements."Current Patient Age In Months" < 24

/*
@internal: Date of First Pneumococcal Dose
*/
define "Date of First Pneumococcal Dose":
  date from start of "Pneumococcal Doses Administered to Patient".earliest().occurrence.toInterval()

/*
@internal: Date of Latest Pneumococcal Dose
*/
define "Date of Latest Pneumococcal Dose":
  date from start of "Pneumococcal Doses Administered to Patient".mostRecent().occurrence.toInterval()

/*
@internal: Pneumococcal Booster Series Doses Administered to Patient
*/
define "Pneumococcal Booster Series Doses Administered to Patient":
  "Pneumococcal Doses Administered to Patient".seriesBooster()

/*
@internal: Number of Pneumococcal Booster Series Doses Administered
*/
define "Number of Pneumococcal Booster Series Doses Administered":
  Count("Pneumococcal Booster Series Doses Administered to Patient")
