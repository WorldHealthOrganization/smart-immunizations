
/*
  * Library: IMMZD5DTYellowfeverElements
  */
library IMMZD5DTYellowfeverElements

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
@internal: Draft Medication Request for Yellow fever dose
*/
define "Draft Medication Request for Yellow fever dose":
  Elements."Draft Medication Request for Patient" MR 
    where MR.medication in Concepts."Yellow fever vaccines"

/*
@input: Client's age is less than 6 months
@pseudocode: Today's date − "Date of birth" < 6 months
@decision: Potential contraindications
*/
define "Client's age is less than 6 months":
  Elements."Current Patient Age In Months" < 6

/*
@input: Client's age is 6–9 months
@pseudocode: 6 months  ≤ Today's date − "Date of birth" < 9 months
@decision: Potential contraindications
*/
define "Client's age is 6–9 months":
  6 <= Elements."Current Patient Age In Months" 
  and Elements."Current Patient Age In Months" < 9

/*
@input: Client's age is more than or equal to 60 years
@pseudocode: Today's date − "Date of birth" ≥ 60 years
@decision: Potential contraindications
*/
define "Client's age is more than or equal to 60 years":
  Elements."Current Patient Age In Years" >= 60

/*
@input: The client has a history of severe allergic reactions
@pseudocode: "Potential contraindications" = "Severe allergic reactions"
@decision: Potential contraindications
*/
define "The client has a history of severe allergic reactions":
  Elements."The client has history of severe allergic reactions"

/*
@input: The client is severely immunocompromised
@pseudocode: "Potential contraindications" = "Severely immunocompromised"
@decision: Potential contraindications
*/
define "The client is severely immunocompromised":
  Elements."The client is severely immunocompromised"

/*
@input: The client is currently pregnant
@pseudocode: "Potential contraindications" = "Currently pregnant"
@decision: Potential contraindications
*/
define "The client is currently pregnant":
  Elements."The client is pregnant"

/*
@input: The client is lactating
@pseudocode: "Potential contraindications" = "Breastfeeding"
@decision: Potential contraindications
*/
define "The client is lactating":
  Elements."The client is lactating"

