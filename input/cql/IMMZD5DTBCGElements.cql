
/*
  * Library: IMMZD5DTBCGElements
  */
library IMMZD5DTBCGElements

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
@internal: Draft Medication Request for BCG dose
*/
define "Draft Medication Request for BCG dose":
  Elements."Draft Medication Request for Patient" MR 
    where MR.medication in Concepts."BCG vaccines"

/*
@input: The client is pregnant
@pseudocode: "Potential contraindications" = "Currently pregnant"
*/
define "The client is pregnant":
  Elements."The client is pregnant"

/*
@input: The client has history of severe allergic reactions
@pseudocode: '"Potential contraindications" = "Severe allergic reactions"
*/
define "The client has history of severe allergic reactions":
  Elements."The client has history of severe allergic reactions"

/*
@input: The client has immunodeficiency syndromes
@pseudocode: "Potential contraindications" = "Immunodeficiency syndromes"
*/
define "The client has immunodeficiency syndromes":
  Elements."The client has immunodeficiency syndromes"

/*
@input: The client is exposed to immunosuppressive treatment
@pseudocode: "Potential contraindications" = "Exposed to immunosuppressive treatment"
*/
define "The client is exposed to immunosuppressive treatment":
  Elements."The client is exposed to immunosuppressive treatment"

/*
@input: Client's age is less than 1 year
@pseudocode: "Age" < 1 year
*/
define "Client's age is less than 1 year":
  Elements."Client's age is less than 12 months"

/*
@input: Client's age is more than or equal to 1 year
@pseudocode: "Age" ≥ 1 year
*/
define "Client's age is more than or equal to 1 year":
  Elements."Client's age is more than or equal to 12 months"

