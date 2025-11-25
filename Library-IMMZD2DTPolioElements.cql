
/*
  * Library: IMMZD2DTPolioElements
  */
library IMMZD2DTPolioElements

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
@internal: Polio containing Doses Administered to Patient
*/
define "Polio Doses Administered to Patient":
  Elements."Doses Administered to Patient" I
  where
    I.vaccineCode in Concepts."Poliovirus-containing vaccines"

/*
@internal: Polio containing Doses Administered to Patient that are in the Primary series
*/
define "Polio Primary Series Doses Administered to Patient":
  "Polio Doses Administered to Patient".seriesPrimary()

/*
@internal: Number of Polio Primary Series doses
*/
define "Number of Polio Primary Series Doses Administered":
  Count("Polio Primary Series Doses Administered to Patient")

/*
@input: bOPV birth dose (a zero dose) was not administered
@pseudocode: Count of vaccines administered (where "Vaccine type" = "Poliovirus-containing vaccines" and "Type of dose" = "Dose 0" AND "Birth dose" = TRUE) = 0
@code: bOPV birth dose (a zero dose) was not administered-146
@decision: IMMZ.D2.DT.Polio.Birth dose: Birth dose administration as part of "bivalent oral polio vaccine (bOPV) plus inactivated polio vaccine (IPV)" schedule (in countries that are poliomyelitis (polio)-endemic countries or at high risk of importation and subsequent spread of polio that follow the combined bOPV–IPV schedule)
*/
define "bOPV birth dose (a zero dose) was not administered":
  "Number of Polio Dose 0 Doses Administered" = 0

/*
@input: Client's age is less than 1 week
@pseudocode: Today's date − "Date of birth" < 1 week
@code: Client's age is less than 1 week-39
@decision: IMMZ.D2.DT.Polio.Birth dose: Birth dose administration as part of "bivalent oral polio vaccine (bOPV) plus inactivated polio vaccine (IPV)" schedule (in countries that are poliomyelitis (polio)-endemic countries or at high risk of importation and subsequent spread of polio that follow the combined bOPV–IPV schedule)
*/
define "Client's age is less than 1 week":
  Elements."Current Patient Age In Weeks" < 1

/*
@input: Client's age is more than or equal to 1 week
@pseudocode: Today's date − "Date of birth" ≥ 1 week
@code: Client's age is more than or equal to 1 week-39
@decision: IMMZ.D2.DT.Polio.Birth dose: Birth dose administration as part of "bivalent oral polio vaccine (bOPV) plus inactivated polio vaccine (IPV)" schedule (in countries that are poliomyelitis (polio)-endemic countries or at high risk of importation and subsequent spread of polio that follow the combined bOPV–IPV schedule)
*/
define "Client's age is more than or equal to 1 week":
  Elements."Current Patient Age In Weeks" >= 1

/*
@input: bOPV birth dose (a zero dose) was administered
@pseudocode: Count of vaccines administered (where "Vaccine type" = "Poliovirus-containing vaccines" and "Type of dose" = "Dose 0" AND "Birth dose" = TRUE) = 1
@code: bOPV birth dose (a zero dose) was administered-146
@decision: IMMZ.D2.DT.Polio.Birth dose: Birth dose administration as part of "bivalent oral polio vaccine (bOPV) plus inactivated polio vaccine (IPV)" schedule (in countries that are poliomyelitis (polio)-endemic countries or at high risk of importation and subsequent spread of polio that follow the combined bOPV–IPV schedule)
*/
define "bOPV birth dose (a zero dose) was administered":
  "Number of Polio Dose 0 Doses Administered" = 1

/*
@input: Client's age is less than 6 weeks
@pseudocode: Today's date − "Date of birth" < 6 weeks
@code: Client's age is less than 6 weeks-40
@decision: IMMZ.D2.DT.Polio.bOPV plus IPV: "Bivalent oral polio vaccine (bOPV) plus inactivated polio vaccine (IPV)" schedule (applicable for all countries)
@decision: IMMZ.D2.DT.Polio.IPV-only: Inactivated polio vaccine (IPV)-only (in countries, in polio-free regions, with a very low risk of importation and sustained high routine immunization coverage (third dose of the diphtheria–tetanus–pertussis vaccine [DTP3] > 90%)
*/
define "Client's age is less than 6 weeks":
  Elements."Current Patient Age In Weeks" < 6

/*
@input: No poliovirus primary series doses were administered
@pseudocode: Count of vaccines administered (where "Vaccine type" = "Poliovirus-containing vaccines" and "Type of dose" = "Primary series") = 0
@code: No poliovirus primary series doses were administered-130
@decision: IMMZ.D2.DT.Polio.bOPV plus IPV: "Bivalent oral polio vaccine (bOPV) plus inactivated polio vaccine (IPV)" schedule (applicable for all countries)
@decision: IMMZ.D2.DT.Polio.Sequential IPV–bOPV: Sequential "Bivalent oral polio vaccine (bOPV)–inactivated polio vaccine (IPV)" schedule (in countries with high vaccination coverage [e.g. 90–95%] and low importation risk [where neighbouring countries and/or countries that share substantial population movement have a similarly high coverage])
@decision: IMMZ.D2.DT.Polio.IPV-only: Inactivated polio vaccine (IPV)-only (in countries, in polio-free regions, with a very low risk of importation and sustained high routine immunization coverage (third dose of the diphtheria–tetanus–pertussis vaccine [DTP3] > 90%)
*/
define "No poliovirus primary series doses were administered":
  "Number of Polio Primary Series Doses Administered" = 0

/*
@input: Client's age is between 6 weeks and 3 months
@pseudocode: 6 weeks ≤ Today's date − "Date of birth" ≤ 3 months
@code: Client's age is between 6 weeks and 3 months-51
@decision: IMMZ.D2.DT.Polio.bOPV plus IPV: "Bivalent oral polio vaccine (bOPV) plus inactivated polio vaccine (IPV)" schedule (applicable for all countries)
*/
define "Client's age is between 6 weeks and 3 months":
  6 <= Elements."Current Patient Age In Weeks"
  and Elements."Current Patient Age In Months" <= 3

/*
@input: Client's age is more than 3 months
@pseudocode: Today's date − "Date of birth" > 3 months
@code: Client's age is more than 3 months-41
@decision: IMMZ.D2.DT.Polio.bOPV plus IPV: "Bivalent oral polio vaccine (bOPV) plus inactivated polio vaccine (IPV)" schedule (applicable for all countries)
*/
define "Client's age is more than 3 months":
  Elements."Current Patient Age In Months" > 3

/*
@input: One poliovirus primary series dose was administered
@pseudocode: Count of vaccines administered (where "Vaccine type" = "Poliovirus-containing vaccines" and "Type of dose" = "Primary series") = 1
@code: One poliovirus primary series dose was administered-130
@decision: IMMZ.D2.DT.Polio.bOPV plus IPV: "Bivalent oral polio vaccine (bOPV) plus inactivated polio vaccine (IPV)" schedule (applicable for all countries)
@decision: IMMZ.D2.DT.Polio.Sequential IPV–bOPV: Sequential "Bivalent oral polio vaccine (bOPV)–inactivated polio vaccine (IPV)" schedule (in countries with high vaccination coverage [e.g. 90–95%] and low importation risk [where neighbouring countries and/or countries that share substantial population movement have a similarly high coverage])
@decision: IMMZ.D2.DT.Polio.IPV-only: Inactivated polio vaccine (IPV)-only (in countries, in polio-free regions, with a very low risk of importation and sustained high routine immunization coverage (third dose of the diphtheria–tetanus–pertussis vaccine [DTP3] > 90%)
*/
define "One poliovirus primary series dose was administered":
  "Number of Polio Primary Series Doses Administered" = 1

/*
@input: Client's age is between 6 weeks and 14 weeks
@pseudocode: 6 weeks ≤ Today's date − "Date of birth" < 14 weeks
@code: Client's age is between 6 weeks and 14 weeks-51
@decision: IMMZ.D2.DT.Polio.bOPV plus IPV: "Bivalent oral polio vaccine (bOPV) plus inactivated polio vaccine (IPV)" schedule (applicable for all countries)
*/
define "Client's age is between 6 weeks and 14 weeks":
  6 <= Elements."Current Patient Age In Weeks"
  and Elements."Current Patient Age In Weeks" < 14

/*
@input: The latest bOPV dose was administered less than 4 weeks ago
@pseudocode: Today's date − Latest "Date and time of vaccination" (where "Vaccine type" = "Poliovirus-containing vaccines" and "Type of poliovirus dose" = "bOPV") < 4 weeks
@code: The latest bOPV dose was administered less than 4 weeks ago-159
@decision: IMMZ.D2.DT.Polio.bOPV plus IPV: "Bivalent oral polio vaccine (bOPV) plus inactivated polio vaccine (IPV)" schedule (applicable for all countries)
*/
define "The latest bOPV dose was administered less than 4 weeks ago":
  "Date of Latest bOPV Dose" is not null
    and duration in weeks between "Date of Latest bOPV Dose" and Now() < 4

/*
@input: The latest bOPV dose was administered more than 4 weeks ago
@pseudocode: Today's date − Latest "Date and time of vaccination" (where "Vaccine type" = "Poliovirus-containing vaccines" and "Type of poliovirus dose" = "bOPV") ≥ 4 weeks
@code: The latest bOPV dose was administered more than 4 weeks ago-159
@decision: IMMZ.D2.DT.Polio.bOPV plus IPV: "Bivalent oral polio vaccine (bOPV) plus inactivated polio vaccine (IPV)" schedule (applicable for all countries)
*/
define "The latest bOPV dose was administered more than 4 weeks ago":
  not("The latest bOPV dose was administered less than 4 weeks ago")

/*
@input: The poliovirus dose administered is bOPV
@pseudocode: Count of vaccines administered (where "Type of poliovirus dose" = "bOPV" and "Type of dose" = "Primary series") = 1
@code: The poliovirus dose administered is bOPV-115
@decision: IMMZ.D2.DT.Polio.bOPV plus IPV: "Bivalent oral polio vaccine (bOPV) plus inactivated polio vaccine (IPV)" schedule (applicable for all countries)
*/
define "The poliovirus dose administered is bOPV":
  "Number of Polio bOPV Primary Series Doses Administered" = 1

/*
@input: Client's age is more than or equal to 14 weeks
@pseudocode: Today's date − "Date of birth" ≥ 14 weeks
@code: Client's age is more than or equal to 14 weeks-41
@decision: IMMZ.D2.DT.Polio.bOPV plus IPV: "Bivalent oral polio vaccine (bOPV) plus inactivated polio vaccine (IPV)" schedule (applicable for all countries)
*/
define "Client's age is more than or equal to 14 weeks":
  Elements."Current Patient Age In Weeks" >= 14

/*
@input: The poliovirus dose administered is IPV
@pseudocode: Count of vaccines administered (where "Type of poliovirus dose" = "bOPV" and "Type of dose" = "Primary series") = 0
@code: The poliovirus dose administered is IPV-115
@decision: IMMZ.D2.DT.Polio.bOPV plus IPV: "Bivalent oral polio vaccine (bOPV) plus inactivated polio vaccine (IPV)" schedule (applicable for all countries)
*/
define "The poliovirus dose administered is IPV":
  "Number of Polio bOPV Primary Series Doses Administered" = 0

/*
@input: The latest IPV dose was administered less than 4 months ago
@pseudocode: Today's date − Latest "Date and time of vaccination" (where "Vaccine type" = "Poliovirus-containing vaccines" and "Type of poliovirus dose" = "IPV") < 4 months
@code: The latest IPV dose was administered less than 4 months ago-159
@decision: IMMZ.D2.DT.Polio.bOPV plus IPV: "Bivalent oral polio vaccine (bOPV) plus inactivated polio vaccine (IPV)" schedule (applicable for all countries)
*/
define "The latest IPV dose was administered less than 4 months ago":
  "Date of Latest IPV Dose" is not null
    and duration in months between "Date of Latest IPV Dose" and Now() < 4

/*
@input: The latest IPV dose was administered more than 4 months ago
@pseudocode: Today's date − Latest "Date and time of vaccination" (where "Vaccine type" = "Poliovirus-containing vaccines" and "Type of poliovirus dose" = "IPV") ≥ 4 months
@code: The latest IPV dose was administered more than 4 months ago-159
@decision: IMMZ.D2.DT.Polio.bOPV plus IPV: "Bivalent oral polio vaccine (bOPV) plus inactivated polio vaccine (IPV)" schedule (applicable for all countries)
*/
define "The latest IPV dose was administered more than 4 months ago":
  not("The latest IPV dose was administered less than 4 months ago")

/*
@input: Two poliovirus primary series doses were administered
@pseudocode: Count of vaccines administered (where "Vaccine type" = "Poliovirus-containing vaccines" and "Type of dose" = "Primary series") = 2
@code: Two poliovirus primary series doses were administered-130
@decision: IMMZ.D2.DT.Polio.bOPV plus IPV: "Bivalent oral polio vaccine (bOPV) plus inactivated polio vaccine (IPV)" schedule (applicable for all countries)
@decision: IMMZ.D2.DT.Polio.Sequential IPV–bOPV: Sequential "Bivalent oral polio vaccine (bOPV)–inactivated polio vaccine (IPV)" schedule (in countries with high vaccination coverage [e.g. 90–95%] and low importation risk [where neighbouring countries and/or countries that share substantial population movement have a similarly high coverage])
@decision: IMMZ.D2.DT.Polio.IPV-only: Inactivated polio vaccine (IPV)-only (in countries, in polio-free regions, with a very low risk of importation and sustained high routine immunization coverage (third dose of the diphtheria–tetanus–pertussis vaccine [DTP3] > 90%)
*/
define "Two poliovirus primary series doses were administered":
  "Number of Polio Primary Series Doses Administered" = 2

/*
@input: The two doses administered are bOPV
@pseudocode: Count of vaccines administered (where "Type of poliovirus dose" = "bOPV" and "Type of dose" = "Primary series") = 2
@code: The two doses administered are bOPV-115
@decision: IMMZ.D2.DT.Polio.bOPV plus IPV: "Bivalent oral polio vaccine (bOPV) plus inactivated polio vaccine (IPV)" schedule (applicable for all countries)
*/
define "The two doses administered are bOPV":
  "Number of Polio bOPV Primary Series Doses Administered" = 2

/*
@input: From the two doses administered one is bOPV and one is IPV
@pseudocode: Count of vaccines administered (where "Type of poliovirus dose" = "bOPV" and "Type of dose" = "Primary series") = 1
@code: From the two doses administered one is bOPV and one is IPV-115
@decision: IMMZ.D2.DT.Polio.bOPV plus IPV: "Bivalent oral polio vaccine (bOPV) plus inactivated polio vaccine (IPV)" schedule (applicable for all countries)
*/
define "From the two doses administered one is bOPV and one is IPV":
  "Number of Polio bOPV Primary Series Doses Administered" = 1

/*
@input: The two doses administered are IPV
@pseudocode: Count of vaccines administered (where "Type of poliovirus dose" = "bOPV" and "Type of dose" = "Primary series") = 0
@code: The two doses administered are IPV-115
@decision: IMMZ.D2.DT.Polio.bOPV plus IPV: "Bivalent oral polio vaccine (bOPV) plus inactivated polio vaccine (IPV)" schedule (applicable for all countries)
*/
define "The two doses administered are IPV":
  "Number of Polio bOPV Primary Series Doses Administered" = 0

/*
@input: Three poliovirus primary series doses were administered
@pseudocode: Count of vaccines administered (where "Vaccine type" = "Poliovirus-containing vaccines" and "Type of dose" = "Primary series") = 3
@code: Three poliovirus primary series doses were administered-130
@decision: IMMZ.D2.DT.Polio.bOPV plus IPV: "Bivalent oral polio vaccine (bOPV) plus inactivated polio vaccine (IPV)" schedule (applicable for all countries)
@decision: IMMZ.D2.DT.Polio.Sequential IPV–bOPV: Sequential "Bivalent oral polio vaccine (bOPV)–inactivated polio vaccine (IPV)" schedule (in countries with high vaccination coverage [e.g. 90–95%] and low importation risk [where neighbouring countries and/or countries that share substantial population movement have a similarly high coverage])
@decision: IMMZ.D2.DT.Polio.IPV-only: Inactivated polio vaccine (IPV)-only (in countries, in polio-free regions, with a very low risk of importation and sustained high routine immunization coverage (third dose of the diphtheria–tetanus–pertussis vaccine [DTP3] > 90%)
*/
define "Three poliovirus primary series doses were administered":
  "Number of Polio Primary Series Doses Administered" = 3

/*
@input: The three doses administered are bOPV
@pseudocode: Count of vaccines administered (where "Type of poliovirus dose" = "bOPV" and "Type of dose" = "Primary series") = 3
@code: The three doses administered are bOPV-115
@decision: IMMZ.D2.DT.Polio.bOPV plus IPV: "Bivalent oral polio vaccine (bOPV) plus inactivated polio vaccine (IPV)" schedule (applicable for all countries)
*/
define "The three doses administered are bOPV":
  "Number of Polio bOPV Primary Series Doses Administered" = 3

/*
@input: Client's age is less than 14 weeks
@pseudocode: Today's date − "Date of birth" < 14 weeks
@code: Client's age is less than 14 weeks-41
@decision: IMMZ.D2.DT.Polio.bOPV plus IPV: "Bivalent oral polio vaccine (bOPV) plus inactivated polio vaccine (IPV)" schedule (applicable for all countries)
*/
define "Client's age is less than 14 weeks":
  Elements."Current Patient Age In Weeks" < 14

/*
@input: From the three doses administered, one is IPV and two are bOPV
@pseudocode: Count of vaccines administered (where "Type of poliovirus dose" = "bOPV" and "Type of dose" = "Primary series") = 2
@code: From the three doses administered, one is IPV and two are bOPV-115
@decision: IMMZ.D2.DT.Polio.bOPV plus IPV: "Bivalent oral polio vaccine (bOPV) plus inactivated polio vaccine (IPV)" schedule (applicable for all countries)
*/
define "From the three doses administered, one is IPV and two are bOPV":
  "Number of Polio bOPV Primary Series Doses Administered" = 2

/*
@input: From the three doses administered, one is bOPV and two are IPV
@pseudocode: Count of vaccines administered (where "Type of poliovirus dose" = "bOPV" and "Type of dose" = "Primary series") = 1
@code: From the three doses administered, one is bOPV and two are IPV-115
@decision: IMMZ.D2.DT.Polio.bOPV plus IPV: "Bivalent oral polio vaccine (bOPV) plus inactivated polio vaccine (IPV)" schedule (applicable for all countries)
*/
define "From the three doses administered, one is bOPV and two are IPV":
  "Number of Polio bOPV Primary Series Doses Administered" = 1

/*
@input: Four poliovirus primary series doses were administered
@pseudocode: Count of vaccines administered (where "Vaccine type" = "Poliovirus-containing vaccines" and "Type of dose" = "Primary series") = 4
@code: Four poliovirus primary series doses were administered-130
@decision: IMMZ.D2.DT.Polio.bOPV plus IPV: "Bivalent oral polio vaccine (bOPV) plus inactivated polio vaccine (IPV)" schedule (applicable for all countries)
@decision: IMMZ.D2.DT.Polio.Sequential IPV–bOPV: Sequential "Bivalent oral polio vaccine (bOPV)–inactivated polio vaccine (IPV)" schedule (in countries with high vaccination coverage [e.g. 90–95%] and low importation risk [where neighbouring countries and/or countries that share substantial population movement have a similarly high coverage])
*/
define "Four poliovirus primary series doses were administered":
  "Number of Polio Primary Series Doses Administered" = 4

/*
@input: From the four doses administered, one is IPV and three are bOPV
@pseudocode: Count of vaccines administered (where "Type of poliovirus dose" = "bOPV" and "Type of dose" = "Primary series") = 3
@code: From the four doses administered, one is IPV and three are bOPV-115
@decision: IMMZ.D2.DT.Polio.bOPV plus IPV: "Bivalent oral polio vaccine (bOPV) plus inactivated polio vaccine (IPV)" schedule (applicable for all countries)
*/
define "From the four doses administered, one is IPV and three are bOPV":
  "Number of Polio bOPV Primary Series Doses Administered" = 3

/*
@input: From the four doses administered, two are IPV and two are bOPV
@pseudocode: Count of vaccines administered (where "Type of poliovirus dose" = "bOPV" and "Type of dose" = "Primary series") = 2
@code: From the four doses administered, two are IPV and two are bOPV-115
@decision: IMMZ.D2.DT.Polio.bOPV plus IPV: "Bivalent oral polio vaccine (bOPV) plus inactivated polio vaccine (IPV)" schedule (applicable for all countries)
*/
define "From the four doses administered, two are IPV and two are bOPV":
  "Number of Polio bOPV Primary Series Doses Administered" = 2

/*
@input: Five poliovirus primary series doses were administered
@pseudocode: Count of vaccines administered (where "Vaccine type" = "Poliovirus-containing vaccines" and "Type of dose" = "Primary series") = 5
@code: Five poliovirus primary series doses were administered-130
@decision: IMMZ.D2.DT.Polio.bOPV plus IPV: "Bivalent oral polio vaccine (bOPV) plus inactivated polio vaccine (IPV)" schedule (applicable for all countries)
*/
define "Five poliovirus primary series doses were administered":
  "Number of Polio Primary Series Doses Administered" = 5

/*
@input: Client's age is less than 8 weeks
@pseudocode: Today's date − "Date of birth" < 8 weeks
@code: Client's age is less than 8 weeks-40
@decision: IMMZ.D2.DT.Polio.Sequential IPV–bOPV: Sequential "Bivalent oral polio vaccine (bOPV)–inactivated polio vaccine (IPV)" schedule (in countries with high vaccination coverage [e.g. 90–95%] and low importation risk [where neighbouring countries and/or countries that share substantial population movement have a similarly high coverage])
*/
define "Client's age is less than 8 weeks":
  Elements."Current Patient Age In Weeks" < 8

/*
@input: Client's age is more than or equal to 8 weeks
@pseudocode: Today's date − "Date of birth" ≥ 8 weeks
@code: Client's age is more than or equal to 8 weeks-40
@decision: IMMZ.D2.DT.Polio.Sequential IPV–bOPV: Sequential "Bivalent oral polio vaccine (bOPV)–inactivated polio vaccine (IPV)" schedule (in countries with high vaccination coverage [e.g. 90–95%] and low importation risk [where neighbouring countries and/or countries that share substantial population movement have a similarly high coverage])
*/
define "Client's age is more than or equal to 8 weeks":
  Elements."Current Patient Age In Weeks" >= 8

/*
@input: The latest poliovirus dose was administered less than 4 weeks ago
@pseudocode: Today's date − Latest "Date and time of vaccination" (where "Vaccine type" = "Poliovirus-containing vaccines") < 4 weeks
@code: The latest poliovirus dose was administered less than 4 weeks ago-120
@decision: IMMZ.D2.DT.Polio.Sequential IPV–bOPV: Sequential "Bivalent oral polio vaccine (bOPV)–inactivated polio vaccine (IPV)" schedule (in countries with high vaccination coverage [e.g. 90–95%] and low importation risk [where neighbouring countries and/or countries that share substantial population movement have a similarly high coverage])
@decision: IMMZ.D2.DT.Polio.IPV-only: Inactivated polio vaccine (IPV)-only (in countries, in polio-free regions, with a very low risk of importation and sustained high routine immunization coverage (third dose of the diphtheria–tetanus–pertussis vaccine [DTP3] > 90%)
*/
define "The latest poliovirus dose was administered less than 4 weeks ago":
  "Date of Latest Polio Dose" is not null
    and duration in weeks between "Date of Latest Polio Dose" and Now() < 4

/*
@input: The latest poliovirus dose was administered more than 4 weeks ago
@pseudocode: Today's date − Latest "Date and time of vaccination" (where "Vaccine type" = "Poliovirus-containing vaccines") ≥ 4 weeks
@code: The latest poliovirus dose was administered more than 4 weeks ago-120
@decision: IMMZ.D2.DT.Polio.Sequential IPV–bOPV: Sequential "Bivalent oral polio vaccine (bOPV)–inactivated polio vaccine (IPV)" schedule (in countries with high vaccination coverage [e.g. 90–95%] and low importation risk [where neighbouring countries and/or countries that share substantial population movement have a similarly high coverage])
@decision: IMMZ.D2.DT.Polio.IPV-only: Inactivated polio vaccine (IPV)-only (in countries, in polio-free regions, with a very low risk of importation and sustained high routine immunization coverage (third dose of the diphtheria–tetanus–pertussis vaccine [DTP3] > 90%)
*/
define "The latest poliovirus dose was administered more than 4 weeks ago":
  not("The latest poliovirus dose was administered less than 4 weeks ago")

/*
@input: Client's age is more than or equal to 6 weeks
@pseudocode: Today's date − "Date of birth" ≥ 6 weeks
@code: Client's age is more than or equal to 6 weeks-40
@decision: IMMZ.D2.DT.Polio.IPV-only: Inactivated polio vaccine (IPV)-only (in countries, in polio-free regions, with a very low risk of importation and sustained high routine immunization coverage (third dose of the diphtheria–tetanus–pertussis vaccine [DTP3] > 90%)
*/
define "Client's age is more than or equal to 6 weeks":
  Elements."Current Patient Age In Weeks" >= 6

/*
@input: Client's age was more than 6 weeks when the primary series was started
@pseudocode: "Date and time of vaccination" (where "Vaccine type" = "Poliovirus-containing vaccines" AND "Dose number" = 1) − "Date of birth" > 6 weeks
@code: Client's age was more than 6 weeks when the primary series was started-138
@decision: IMMZ.D2.DT.Polio.IPV-only: Inactivated polio vaccine (IPV)-only (in countries, in polio-free regions, with a very low risk of importation and sustained high routine immunization coverage (third dose of the diphtheria–tetanus–pertussis vaccine [DTP3] > 90%)
*/
define "Client's age was more than 6 weeks when the primary series was started":
  AgeInWeeksAt("Date of First Primary Series Polio Dose") > 6

/*
@input: Client's age was 6 weeks when the primary series was started
@pseudocode: "Date and time of vaccination" (where "Vaccine type" = "Poliovirus-containing vaccines" AND "Dose number" = 1) − "Date of birth" = 6 weeks
@code: Client's age was 6 weeks when the primary series was started-138
@decision: IMMZ.D2.DT.Polio.IPV-only: Inactivated polio vaccine (IPV)-only (in countries, in polio-free regions, with a very low risk of importation and sustained high routine immunization coverage (third dose of the diphtheria–tetanus–pertussis vaccine [DTP3] > 90%)
*/
define "Client's age was 6 weeks when the primary series was started":
  AgeInWeeksAt("Date of First Primary Series Polio Dose") = 6

/*
@input: The latest poliovirus dose was administered less than 6 months ago
@pseudocode: Today's date − Latest "Date and time of vaccination" (where "Vaccine type" = "Poliovirus-containing vaccines") < 6 months
@code: The latest poliovirus dose was administered less than 6 months ago-121
@decision: IMMZ.D2.DT.Polio.IPV-only: Inactivated polio vaccine (IPV)-only (in countries, in polio-free regions, with a very low risk of importation and sustained high routine immunization coverage (third dose of the diphtheria–tetanus–pertussis vaccine [DTP3] > 90%)
*/
define "The latest poliovirus dose was administered less than 6 months ago":
  "Date of Latest Polio Dose" is not null
    and duration in months between "Date of Latest Polio Dose" and Now() < 6

/*
@input: The latest poliovirus dose was administered more than 6 months ago
@pseudocode: Today's date − Latest "Date and time of vaccination" (where "Vaccine type" = "Poliovirus-containing vaccines") ≥ 6 months
@code: The latest poliovirus dose was administered more than 6 months ago-121
@decision: IMMZ.D2.DT.Polio.IPV-only: Inactivated polio vaccine (IPV)-only (in countries, in polio-free regions, with a very low risk of importation and sustained high routine immunization coverage (third dose of the diphtheria–tetanus–pertussis vaccine [DTP3] > 90%)
*/
define "The latest poliovirus dose was administered more than 6 months ago":
  not("The latest poliovirus dose was administered less than 6 months ago")

/*
@input: No polio booster dose was administered
@pseudocode: Count of vaccines administered (where "Vaccine type" = "Poliovirus-containing vaccines" and "Type of dose" = "Booster dose") = 0
@code: No polio booster dose was administered-128
@decision: IMMZ.D2.DT.Polio.IPV-only: Inactivated polio vaccine (IPV)-only (in countries, in polio-free regions, with a very low risk of importation and sustained high routine immunization coverage (third dose of the diphtheria–tetanus–pertussis vaccine [DTP3] > 90%)
*/
define "No polio booster dose was administered":
  "Number of Polio Booster Series Doses Administered" = 0

/*
@input: Polio booster dose was administered
@pseudocode: Count of vaccines administered (where "Vaccine type" = "Poliovirus-containing vaccines" and "Type of dose" = "Booster dose") = 1
@code: Polio booster dose was administered-128
@decision: IMMZ.D2.DT.Polio.IPV-only: Inactivated polio vaccine (IPV)-only (in countries, in polio-free regions, with a very low risk of importation and sustained high routine immunization coverage (third dose of the diphtheria–tetanus–pertussis vaccine [DTP3] > 90%)
*/
define "Polio booster dose was administered":
  "Number of Polio Booster Series Doses Administered" = 1

/*
@internal: bOPV Doses Administered to Patient
*/
define "bOPV Doses Administered to Patient":
  "Polio Doses Administered to Patient" I
  where I.typeOfDose() ~ Concepts."bOPV"

/*
@internal: IPV Doses Administered to Patient
*/
define "IPV Doses Administered to Patient":
  "Polio Doses Administered to Patient" I
  where I.typeOfDose() ~ Concepts."IPV"

/*
@internal: Date of Latest Polio Dose
*/
define "Date of Latest Polio Dose":
  date from start of "Polio Doses Administered to Patient".mostRecent().occurrence.toInterval()

/*
@internal: Date of Latest bOPV Dose
*/
define "Date of Latest bOPV Dose":
  date from start of "bOPV Doses Administered to Patient".mostRecent().occurrence.toInterval()

/*
@internal: Date of Latest IPV Dose
*/
define "Date of Latest IPV Dose":
  date from start of "IPV Doses Administered to Patient".mostRecent().occurrence.toInterval()

/*
@internal: Polio Dose 0 Doses Administered to Patient
*/
define "Polio Dose 0 Doses Administered to Patient":
  "Polio Doses Administered to Patient".seriesDose0()

/*
@internal: Number of Polio Dose 0 Doses Administered
*/
define "Number of Polio Dose 0 Doses Administered":
  Count("Polio Dose 0 Doses Administered to Patient")

/*
@internal: Date of First Primary Series Polio Dose
*/
define "Date of First Primary Series Polio Dose":
  date from start of "Polio Primary Series Doses Administered to Patient".earliest().occurrence.toInterval()

/*
@internal: Polio bOPV Primary Series Doses Administered to Patient
*/
define "Polio bOPV Primary Series Doses Administered to Patient":
  "Polio Primary Series Doses Administered to Patient" I
  where I.typeOfDose() ~ Concepts."bOPV"

/*
@internal: Polio IPV Primary Series Doses Administered to Patient
*/
define "Polio IPV Primary Series Doses Administered to Patient":
  "Polio Primary Series Doses Administered to Patient" I
  where I.typeOfDose() ~ Concepts."IPV"

/*
@internal: Number of Polio bOPV Primary Series Doses Administered
*/
define "Number of Polio bOPV Primary Series Doses Administered":
  Count("Polio bOPV Primary Series Doses Administered to Patient")

/*
@internal: Number of Polio IPV Primary Series Doses Administered
*/
define "Number of Polio IPV Primary Series Doses Administered":
  Count("Polio IPV Primary Series Doses Administered to Patient")

/*
@internal: Polio Booster Series Doses Administered to Patient
*/
define "Polio Booster Series Doses Administered to Patient":
  "Polio Doses Administered to Patient".seriesBooster()

/*
@internal: Number of Polio Booster Series Doses Administered
*/
define "Number of Polio Booster Series Doses Administered":
  Count("Polio Booster Series Doses Administered to Patient")
