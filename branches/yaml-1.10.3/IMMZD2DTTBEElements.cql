
/*
  * Library: IMMZD2DTTBEElements
  */
library IMMZD2DTTBEElements

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
@internal: TBE containing Doses Administered to Patient
*/
define "TBE Doses Administered to Patient":
  Elements."Doses Administered to Patient" I
  where
    I.vaccineCode in Concepts."TBE vaccines"

/*
@internal: TBE containing Doses Administered to Patient that are in the Primary series
*/
define "TBE Primary Series Doses Administered to Patient":
  "TBE Doses Administered to Patient".seriesPrimary()

/*
@internal: Number of TBE Primary Series doses
*/
define "Number of TBE Primary Series Doses Administered":
  Count("TBE Primary Series Doses Administered to Patient")

/*
@input: Client's age is less than 1 year
@pseudocode: Today's date − "Date of birth" < 1 year
@code: Client's age is less than 1 year-39
@decision: IMMZ.D2.DT.TBE.FSME-Immun: FSME-Immun schedule
(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children)
@decision: IMMZ.D2.DT.TBE.Encepur: Encepur schedule
(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children		)
*/
define "Client's age is less than 1 year":
  Elements."Current Patient Age In Years" < 1

/*
@input: No TBE primary series doses were administered
@pseudocode: Count of vaccines administered (where "Vaccine type" = "TBE vaccines" and "Type of dose" = "Primary series") = 0
@code: No TBE primary series doses were administered-112
@decision: IMMZ.D2.DT.TBE.FSME-Immun: FSME-Immun schedule
(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children)
@decision: IMMZ.D2.DT.TBE.Encepur: Encepur schedule
(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children		)
@decision: IMMZ.D2.DT.TBE.TBE-Moscow: TBE-Moscow schedule
(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children	)
@decision: IMMZ.D2.DT.TBE.EnceVir: EnceVir schedule
(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children					)
*/
define "No TBE primary series doses were administered":
  "Number of TBE Primary Series Doses Administered"  = 0

/*
@input: Client's age is more than or equal to 1 year
@pseudocode: Today's date − "Date of birth" ≥ 1 year
@code: Client's age is more than or equal to 1 year-39
@decision: IMMZ.D2.DT.TBE.FSME-Immun: FSME-Immun schedule
(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children)
@decision: IMMZ.D2.DT.TBE.Encepur: Encepur schedule
(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children		)
*/
define "Client's age is more than or equal to 1 year":
  Elements."Current Patient Age In Years" >= 1

/*
@input: One TBE primary series dose was administered
@pseudocode: Count of vaccines administered (where "Vaccine type" = "TBE vaccines" and "Type of dose" = "Primary series") = 1
@code: One TBE primary series dose was administered-112
@decision: IMMZ.D2.DT.TBE.FSME-Immun: FSME-Immun schedule
(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children)
@decision: IMMZ.D2.DT.TBE.Encepur: Encepur schedule
(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children		)
@decision: IMMZ.D2.DT.TBE.TBE-Moscow: TBE-Moscow schedule
(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children	)
@decision: IMMZ.D2.DT.TBE.EnceVir: EnceVir schedule
(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children					)
*/
define "One TBE primary series dose was administered":
  "Number of TBE Primary Series Doses Administered"  = 1

/*
@input: The latest TBE dose was administered less than 1 month ago
@pseudocode: Today's date − "Date and time of vaccination" (where "Vaccine type" = "TBE vaccines") < 1 month
@code: The latest TBE dose was administered less than 1 month ago-95
@decision: IMMZ.D2.DT.TBE.FSME-Immun: FSME-Immun schedule
(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children)
@decision: IMMZ.D2.DT.TBE.Encepur: Encepur schedule
(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children		)
@decision: IMMZ.D2.DT.TBE.TBE-Moscow: TBE-Moscow schedule
(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children	)
*/
define "The latest TBE dose was administered less than 1 month ago":
  "Date of Latest TBE Dose" is not null
    and duration in months between "Date of Latest TBE Dose" and Now() < 1

/*
@input: The latest TBE dose was administered more than 1 month ago
@pseudocode: Today's date − "Date and time of vaccination" (where "Vaccine type" = "TBE vaccines") ≥ 1 month
@code: The latest TBE dose was administered more than 1 month ago-95
@decision: IMMZ.D2.DT.TBE.FSME-Immun: FSME-Immun schedule
(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children)
@decision: IMMZ.D2.DT.TBE.Encepur: Encepur schedule
(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children		)
@decision: IMMZ.D2.DT.TBE.TBE-Moscow: TBE-Moscow schedule
(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children	)
*/
define "The latest TBE dose was administered more than 1 month ago":
  not "The latest TBE dose was administered less than 1 month ago"

/*
@input: Two TBE primary series doses were administered
@pseudocode: Count of vaccines administered (where "Vaccine type" = "TBE vaccines" and "Type of dose" = "Primary series") = 2
@code: Two TBE primary series doses were administered-112
@decision: IMMZ.D2.DT.TBE.FSME-Immun: FSME-Immun schedule
(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children)
@decision: IMMZ.D2.DT.TBE.Encepur: Encepur schedule
(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children		)
@decision: IMMZ.D2.DT.TBE.TBE-Moscow: TBE-Moscow schedule
(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children	)
@decision: IMMZ.D2.DT.TBE.EnceVir: EnceVir schedule
(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children					)
*/
define "Two TBE primary series doses were administered":
  "Number of TBE Primary Series Doses Administered"  = 2

/*
@input: The latest TBE dose was administered less than 5 months ago
@pseudocode: Today's date − latest "Date and time of vaccination" (where "Vaccine type" = "TBE vaccines") < 5 months
@code: The latest TBE dose was administered less than 5 months ago-103
@decision: IMMZ.D2.DT.TBE.FSME-Immun: FSME-Immun schedule
(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children)
@decision: IMMZ.D2.DT.TBE.EnceVir: EnceVir schedule
(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children					)
*/
define "The latest TBE dose was administered less than 5 months ago":
  "Date of Latest TBE Dose" is not null
    and duration in months between "Date of Latest TBE Dose" and Now() < 5

/*
@input: The latest TBE dose was administered more than 5 months ago
@pseudocode: Today's date − latest "Date and time of vaccination" (where "Vaccine type" = "TBE vaccines") ≥ 5 months
@code: The latest TBE dose was administered more than 5 months ago-103
@decision: IMMZ.D2.DT.TBE.FSME-Immun: FSME-Immun schedule
(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children)
@decision: IMMZ.D2.DT.TBE.EnceVir: EnceVir schedule
(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children					)
*/
define "The latest TBE dose was administered more than 5 months ago":
  not "The latest TBE dose was administered less than 5 months ago"

/*
@input: Three TBE primary series doses were administered
@pseudocode: Count of vaccines administered (where "Vaccine type" = "TBE vaccines" and "Type of dose" = "Primary series") = 3
@code: Three TBE primary series doses were administered-112
@decision: IMMZ.D2.DT.TBE.FSME-Immun: FSME-Immun schedule
(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children)
@decision: IMMZ.D2.DT.TBE.Encepur: Encepur schedule
(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children		)
@decision: IMMZ.D2.DT.TBE.TBE-Moscow: TBE-Moscow schedule
(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children	)
@decision: IMMZ.D2.DT.TBE.EnceVir: EnceVir schedule
(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children					)
*/
define "Three TBE primary series doses were administered":
  "Number of TBE Primary Series Doses Administered"  = 3

/*
@input: No TBE booster dose was administered
@pseudocode: Count of vaccines administered (where "Vaccine type" = "TBE vaccines" and "Type of dose" = "Booster dose") = 0
@code: No TBE booster dose was administered-110
@decision: IMMZ.D2.DT.TBE.FSME-Immun: FSME-Immun schedule
(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children)
@decision: IMMZ.D2.DT.TBE.Encepur: Encepur schedule
(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children		)
*/
define "No TBE booster dose was administered":
  "Number of TBE Booster Series Doses Administered" = 0

/*
@input: The latest TBE dose was administered less than 3 years ago
@pseudocode: 'Today's date − latest "Date and time of vaccination" (where "Vaccine type" = "TBE vaccines") < 3 years
@code: The latest TBE dose was administered less than 3 years ago-103
@decision: IMMZ.D2.DT.TBE.FSME-Immun: FSME-Immun schedule
(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children)
@decision: IMMZ.D2.DT.TBE.Encepur: Encepur schedule
(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children		)
@decision: IMMZ.D2.DT.TBE.TBE-Moscow: TBE-Moscow schedule
(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children	)
@decision: IMMZ.D2.DT.TBE.EnceVir: EnceVir schedule
(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children					)
*/
define "The latest TBE dose was administered less than 3 years ago":
  "Date of Latest TBE Dose" is not null
    and duration in years between "Date of Latest TBE Dose" and Now() < 3

/*
@input: The latest TBE dose was administered more than 3 years ago
@pseudocode: Today's date − latest "Date and time of vaccination" (where "Vaccine type" = "TBE vaccines") ≥ 3 years
@code: The latest TBE dose was administered more than 3 years ago-102
@decision: IMMZ.D2.DT.TBE.FSME-Immun: FSME-Immun schedule
(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children)
@decision: IMMZ.D2.DT.TBE.Encepur: Encepur schedule
(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children		)
@decision: IMMZ.D2.DT.TBE.TBE-Moscow: TBE-Moscow schedule
(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children	)
@decision: IMMZ.D2.DT.TBE.EnceVir: EnceVir schedule
(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children					)
*/
define "The latest TBE dose was administered more than 3 years ago":
  not "The latest TBE dose was administered less than 3 years ago"

/*
@input: At least one booster dose was administered
@pseudocode: Count of vaccines administered (where "Vaccine type" = "TBE vaccines" and "Type of dose" = "Booster dose") ≥ 1
@code: At least one booster dose was administered-110
@decision: IMMZ.D2.DT.TBE.FSME-Immun: FSME-Immun schedule
(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children)
@decision: IMMZ.D2.DT.TBE.Encepur: Encepur schedule
(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children		)
*/
define "At least one booster dose was administered":
  "Number of TBE Booster Series Doses Administered" >= 1

/*
@input: The latest TBE dose was administered less than 9 months ago
@pseudocode: Today's date − latest "Date and time of vaccination" (where "Vaccine type" = "TBE vaccines") < 9 months
@code: The latest TBE dose was administered less than 9 months ago-103
@decision: IMMZ.D2.DT.TBE.Encepur: Encepur schedule
(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children		)
*/
define "The latest TBE dose was administered less than 9 months ago":
  "Date of Latest TBE Dose" is not null
    and duration in months between "Date of Latest TBE Dose" and Now() < 9

/*
@input: The latest TBE dose was administered more than 9 months ago
@pseudocode: Today's date − latest "Date and time of vaccination" (where "Vaccine type" = "TBE vaccines") ≥ 9 months
@code: The latest TBE dose was administered more than 9 months ago-103
@decision: IMMZ.D2.DT.TBE.Encepur: Encepur schedule
(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children		)
*/
define "The latest TBE dose was administered more than 9 months ago":
  not "The latest TBE dose was administered less than 9 months ago"

/*
@input: Client's age is less than 3 years
@pseudocode: Today's date − "Date of birth" < 3 years
@code: Client's age is less than 3 years-40
@decision: IMMZ.D2.DT.TBE.TBE-Moscow: TBE-Moscow schedule
(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children	)
@decision: IMMZ.D2.DT.TBE.EnceVir: EnceVir schedule
(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children					)
*/
define "Client's age is less than 3 years":
  Elements."Current Patient Age In Years" < 3

/*
@input: Client's age is more than or equal to 3 years
@pseudocode: Today's date − "Date of birth" ≥ 3 years
@code: Client's age is more than or equal to 3 years-40
@decision: IMMZ.D2.DT.TBE.TBE-Moscow: TBE-Moscow schedule
(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children	)
@decision: IMMZ.D2.DT.TBE.EnceVir: EnceVir schedule
(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children					)
*/
define "Client's age is more than or equal to 3 years":
  Elements."Current Patient Age In Years" >= 3

/*
@input: The latest TBE dose was administered less than 12 months ago
@pseudocode: Today's date − latest "Date and time of vaccination" (where "Vaccine type" = "TBE vaccines") < 12 months
@code: The latest TBE dose was administered less than 12 months ago-104
@decision: IMMZ.D2.DT.TBE.TBE-Moscow: TBE-Moscow schedule
(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children	)
@decision: IMMZ.D2.DT.TBE.EnceVir: EnceVir schedule
(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children					)
*/
define "The latest TBE dose was administered less than 12 months ago":
  "Date of Latest TBE Dose" is not null
    and duration in months between "Date of Latest TBE Dose" and Now() < 12

/*
@input: The latest TBE dose was administered more than 12 months ago
@pseudocode: Today's date − "Date and time of vaccination" (where "Vaccine type" = "TBE vaccines") ≥ 12 months
@code: The latest TBE dose was administered more than 12 months ago-97
@decision: IMMZ.D2.DT.TBE.TBE-Moscow: TBE-Moscow schedule
(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children	)
@decision: IMMZ.D2.DT.TBE.EnceVir: EnceVir schedule
(In areas where the disease is highly endemic, implying that there is a high individual risk of infection, WHO recommends that vaccination be offered to all age groups, including children					)
*/
define "The latest TBE dose was administered more than 12 months ago":
  not "The latest TBE dose was administered less than 12 months ago"

/*
@internal: Date of Latest TBE Dose
*/
define "Date of Latest TBE Dose":
  date from start of "TBE Doses Administered to Patient".mostRecent().occurrence.toInterval()

/*
@internal: TBE Booster Series Doses Administered to Patient
*/
define "TBE Booster Series Doses Administered to Patient":
  "TBE Doses Administered to Patient".seriesBooster()

/*
@internal: Number of TBE Booster Series Doses Administered
*/
define "Number of TBE Booster Series Doses Administered":
  Count("TBE Booster Series Doses Administered to Patient")
