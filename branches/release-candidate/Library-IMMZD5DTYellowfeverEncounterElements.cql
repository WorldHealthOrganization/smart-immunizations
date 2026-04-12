
/*
  * Library: IMMZD5DTYellowfeverEncounterElements
  */
library IMMZD5DTYellowfeverEncounterElements

using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1'

include WHOConcepts
include WHOCommon called WC
include WHOElements called WE

include IMMZCommon called Common
include IMMZConcepts called Concepts
include IMMZEncounterElements called Encounter

include IMMZD5DTYellowfeverElements called YellowfeverElements

parameter Today Date default Today()
parameter EncounterId String

context Patient

/*
@internal: Draft Medication Request for Yellow fever dose
*/
define "Draft Medication Request for Yellow fever dose":
  Encounter."Draft Medication Request for Patient" MR
    where MR.medication in Concepts."Yellow fever vaccines"

/*
@input: Client's age is less than 6 months
@pseudocode: Today's date − "Date of birth" < 6 months
@code: Client's age is less than 6 months-41
@decision: IMMZ.D5.DT.Yellow fever contraindications
*/
define "Client's age is less than 6 months":
  Encounter."Current Patient Age In Months" < 6

/*
@input: Client's age is 6–9 months
@pseudocode: 6 months ≤ Today's date − "Date of birth" < 9 months
@code: Client's age is 6–9 months-52
@decision: IMMZ.D5.DT.Yellow fever contraindications
*/
define "Client's age is 6–9 months":
  6 <= Encounter."Current Patient Age In Months"
  and Encounter."Current Patient Age In Months" < 9

/*
@input: Client's age is more than or equal to 60 years
@pseudocode: Today's date − "Date of birth" ≥ 60 years
@code: Client's age is more than or equal to 60 years-41
@decision: IMMZ.D5.DT.Yellow fever contraindications
*/
define "Client's age is more than or equal to 60 years":
  Encounter."Current Patient Age In Years" >= 60

/*
@input: The client has a history of severe allergic reactions
@pseudocode: "Potential contraindications" = "Severe allergic reactions"
@code: The client has a history of severe allergic reactions-59
@decision: IMMZ.D5.DT.Yellow fever contraindications
*/
define "The client has a history of severe allergic reactions":
  Encounter."The client has history of severe allergic reactions"

/*
@input: The client is severely immunocompromised
@pseudocode: "Potential contraindications" = "Severely immunocompromised"
@code: The client is severely immunocompromised-60
@decision: IMMZ.D5.DT.Yellow fever contraindications
*/
define "The client is severely immunocompromised":
  Encounter."The client is severely immunocompromised"

/*
@input: The client is currently pregnant
@pseudocode: "Potential contraindications" = "Currently pregnant"
@code: The client is currently pregnant-52
@decision: IMMZ.D5.DT.Yellow fever contraindications
*/
define "The client is currently pregnant":
  Encounter."The client is pregnant"

/*
@input: The client is lactating
@pseudocode: "Potential contraindications" = "Breastfeeding"
@code: The client is lactating-47
@decision: IMMZ.D5.DT.Yellow fever contraindications
*/
define "The client is lactating":
  Encounter."The client is lactating"
