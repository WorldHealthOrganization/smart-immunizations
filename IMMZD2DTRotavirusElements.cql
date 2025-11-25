
/*
  * Library: IMMZD2DTRotavirusElements
  */
library IMMZD2DTRotavirusElements

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
@internal: Rotavirus containing Doses Administered to Patient
*/
define "Rotavirus Doses Administered to Patient":
  Elements."Doses Administered to Patient" I
  where
    I.vaccineCode in Concepts."Rotavirus vaccines"

/*
@internal: Rotavirus containing Doses Administered to Patient that are in the Primary series
*/
define "Rotavirus Primary Series Doses Administered to Patient":
  "Rotavirus Doses Administered to Patient".seriesPrimary()

/*
@internal: Number of Rotavirus Primary Series doses
*/
define "Number of Rotavirus Primary Series Doses Administered":
  Count("Rotavirus Primary Series Doses Administered to Patient")

/*
@input: Client's age is less than 6 weeks
@pseudocode: 'Today's date – "Date of birth" < 6 weeks
@code: Client's age is less than 6 weeks-41
@decision: IMMZ.D2.DT.Rotavirus
*/
define "Client's age is less than 6 weeks":
  Elements."Current Patient Age In Weeks" < 6

/*
@input: No rotavirus primary series doses were administered
@pseudocode: Count of vaccines administered (where "Vaccine type" = "Rotavirus vaccines" and "Type of dose" = "Primary series") = 0
@code: No rotavirus primary series doses were administered-118
@decision: IMMZ.D2.DT.Rotavirus
*/
define "No rotavirus primary series doses were administered":
  "Number of Rotavirus Primary Series Doses Administered" = 0

/*
@input: Client's age is between 6 weeks and 24 months
@pseudocode: 6 weeks ≤ Today's date – "Date of birth" < 24 months
@code: Client's age is between 6 weeks and 24 months-52
@decision: IMMZ.D2.DT.Rotavirus
*/
define "Client's age is between 6 weeks and 24 months":
  6 <= Elements."Current Patient Age In Weeks"
  and Elements."Current Patient Age In Months" < 24

/*
@input: No live vaccine was administered in the last 4 weeks
@pseudocode: Today's date - latest "Date and time of vaccination" (where "Live vaccine" = TRUE) ≥ 4 weeks
@code: No live vaccine was administered in the last 4 weeks-92
@decision: IMMZ.D2.DT.Rotavirus
*/
define "No live vaccine was administered in the last 4 weeks":
  Elements."No live vaccine was administered in the last 4 weeks"

/*
@input: Live vaccine was administered in the last 4 weeks
@pseudocode: Today's date - latest "Date and time of vaccination" (where "Live vaccine" = TRUE) < 4 weeks
@code: Live vaccine was administered in the last 4 weeks-92
@decision: IMMZ.D2.DT.Rotavirus
*/
define "Live vaccine was administered in the last 4 weeks":
  Elements."Live vaccine was administered in the last 4 weeks"

/*
@input: One rotavirus primary series dose was administered
@pseudocode: Count of vaccines administered (where "Vaccine type" = "Rotavirus vaccines" and "Type of dose" = "Primary series") = 1
@code: One rotavirus primary series dose was administered-118
@decision: IMMZ.D2.DT.Rotavirus
*/
define "One rotavirus primary series dose was administered":
  "Number of Rotavirus Primary Series Doses Administered" = 1

/*
@input: Two rotavirus primary series doses were administered
@pseudocode: Count of vaccines administered (where "Vaccine type" = "Rotavirus vaccines" and "Type of dose" = "Primary series") = 2
@code: Two rotavirus primary series doses were administered-118
@decision: IMMZ.D2.DT.Rotavirus
*/
define "Two rotavirus primary series doses were administered":
  "Number of Rotavirus Primary Series Doses Administered" = 2

/*
@input: The series administered to the client is a mixed series or a series with unknown vaccine products
@pseudocode: "Vaccine brand" (where "Vaccine type" = "Rotavirus vaccines" AND "Dose number" = 1) ≠ "Vaccine brand" (where "Vaccine type" = "Rotavirus vaccines" AND "Dose number" = 2)
@code: The series administered to the client is a mixed series or a series with unknown vaccine products-169
@decision: IMMZ.D2.DT.Rotavirus
*/
define "The series administered to the client is a mixed series or a series with unknown vaccine products":
  not "The series administered to the client contains the same product"

/*
@input: Live vaccines was administered in the last 4 weeks
@pseudocode: Today's date - latest "Date and time of vaccination" (where "Live vaccine" = TRUE) < 4 weeks
@code: Live vaccines was administered in the last 4 weeks-92
@decision: IMMZ.D2.DT.Rotavirus
*/
define "Live vaccines was administered in the last 4 weeks":
  Elements."Live vaccine was administered in the last 4 weeks"

/*
@input: No live vaccine was administered in last 4 weeks
@pseudocode: Today's date - latest "Date and time of vaccination" (where "Live vaccine" = TRUE) ≥ 4 weeks
@code: No live vaccine was administered in last 4 weeks-92
@decision: IMMZ.D2.DT.Rotavirus
*/
define "No live vaccine was administered in last 4 weeks":
  Elements."No live vaccine was administered in the last 4 weeks"

/*
@input: The series administered to the client contains the same product
@pseudocode: "Vaccine brand" (where "Vaccine type" = "Rotavirus vaccines" AND "Dose number" = 1) = "Vaccine brand" (where "Vaccine type" = "Rotavirus vaccines" AND "Dose number" = 2)
@code: The series administered to the client contains the same product-169
@decision: IMMZ.D2.DT.Rotavirus
*/
define "The series administered to the client contains the same product":
  "Brand of First Dose" is not null and
  "Brand of First Dose" ~ "Brand of Second Dose"

/*
@input: The series contain more than two doses
@pseudocode: "Total doses in series" > 2
@code: The series contain more than two doses-27
@decision: IMMZ.D2.DT.Rotavirus
*/
define "The series contain more than two doses":
  ToInteger("Rotavirus Doses Administered to Patient".mostRecent().seriesDoses()) > 2

/*
@input: Live vaccine was administered in last 4 weeks
@pseudocode: Today's date - latest "Date and time of vaccination" (where "Live vaccine" = TRUE) < 4 weeks
@code: Live vaccine was administered in last 4 weeks-92
@decision: IMMZ.D2.DT.Rotavirus
*/
define "Live vaccine was administered in last 4 weeks":
  Elements."Live vaccine was administered in the last 4 weeks"

/*
@input: The series contain less than or equal to two doses
@pseudocode: "Total doses in series" ≤ 2
@code: The series contain less than or equal to two doses-27
@decision: IMMZ.D2.DT.Rotavirus
*/
define "The series contain less than or equal to two doses":
  ToInteger("Rotavirus Doses Administered to Patient".mostRecent().seriesDoses()) <= 2

/*
@input: Three rotavirus primary series doses were administered
@pseudocode: Count of vaccines administered (where "Vaccine type" = "Rotavirus vaccines" and "Type of dose" = "Primary series") = 3
@code: Three rotavirus primary series doses were administered-118
@decision: IMMZ.D2.DT.Rotavirus
*/
define "Three rotavirus primary series doses were administered":
  "Number of Rotavirus Primary Series Doses Administered" = 3

/*
@input: Client's age is more than 24 months
@pseudocode: "Date of birth" > 24 months
@code: Client's age is more than 24 months-27
@decision: IMMZ.D2.DT.Rotavirus
*/
define "Client's age is more than 24 months":
  Elements."Current Patient Age In Months" >= 24

/*
@internal: Date of Latest Rotavirus Dose
*/
define "Date of Latest Rotavirus Dose":
  date from start of "Rotavirus Doses Administered to Patient".mostRecent().occurrence.toInterval()

/*
@internal: Brand of First Dose
*/
define "Brand of First Dose":
  First("Rotavirus Doses Administered to Patient".getDose('1')).brand()

/*
@internal: Brand of Second Dose
*/
define "Brand of Second Dose":
  First("Rotavirus Doses Administered to Patient".getDose('2')).brand()
