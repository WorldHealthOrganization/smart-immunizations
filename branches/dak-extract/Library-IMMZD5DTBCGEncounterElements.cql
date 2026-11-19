
/*
  * Library: IMMZD5DTBCGEncounterElements
  */
library IMMZD5DTBCGEncounterElements

using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1'

include WHOConcepts
include WHOCommon called WC
include WHOElements called WE

include IMMZCommon called Common
include IMMZConcepts called Concepts

include IMMZEncounterElements called Encounter

include IMMZD5DTBCGElements called BCGElements

parameter Today Date default Today()
parameter EncounterId String

context Patient

/*
@internal: Draft Medication Request for BCG dose
*/
define "Draft Medication Request for BCG dose":
  Encounter."Draft Medication Request for Patient" MR 
    where MR.medication in Concepts."BCG vaccines"

/*
@input: The client is pregnant
@pseudocode: "Potential contraindications" = "Currently pregnant"
*/
define "The client is pregnant":
  Encounter."The client is pregnant"

/*
@input: The client has history of severe allergic reactions
@pseudocode: '"Potential contraindications" = "Severe allergic reactions"
*/
define "The client has history of severe allergic reactions":
  Encounter."The client has history of severe allergic reactions"

/*
@input: The client has immunodeficiency syndromes
@pseudocode: "Potential contraindications" = "Immunodeficiency syndromes"
*/
define "The client has immunodeficiency syndromes":
  Encounter."The client has immunodeficiency syndromes"

/*
@input: The client is exposed to immunosuppressive treatment
@pseudocode: "Potential contraindications" = "Exposed to immunosuppressive treatment"
*/
define "The client is exposed to immunosuppressive treatment":
  Encounter."The client is exposed to immunosuppressive treatment"

/*
@input: Client's age is less than 1 year
@pseudocode: "Age" < 1 year
*/
define "Client's age is less than 1 year":
  Encounter."Current Patient Age In Years" < 1

/*
@input: Client's age is more than or equal to 1 year
@pseudocode: "Age" ≥ 1 year
*/
define "Client's age is more than or equal to 1 year":
  Encounter."Current Patient Age In Years" >= 1

