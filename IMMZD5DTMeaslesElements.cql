
/*
  * Library: IMMZD5DTMeaslesElements
  */
library IMMZD5DTMeaslesElements

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
@internal: Draft Medication Request for Measles dose
*/
define "Draft Medication Request for Measles dose":

  Elements."Draft Medication Request for Patient" MR 
    where MR.medication in Concepts."Measles-containing vaccines"

/*
@input: The client is pregnant
@pseudocode: "Potential contraindications" = "Currently pregnant"
@code: The client is pregnant-52
@decision: IMMZ.D5.DT.Measles contraindications
*/
define "The client is pregnant":
  Elements."The client is pregnant"

/*
@input: The client has history of anaphylactic reactions
@pseudocode: "Potential contraindications" = "History of anaphylactic reactions"
@code: The client has history of anaphylactic reactions-67
@decision: IMMZ.D5.DT.Measles contraindications
*/
define "The client has history of anaphylactic reactions":
  Elements."The client has history of anaphylactic reactions"

/*
@input: The client has history of severe allergic reactions
@pseudocode: "Potential contraindications" = "Severe allergic reactions"
@code: The client has history of severe allergic reactions-59
@decision: IMMZ.D5.DT.Measles contraindications
*/
define "The client has history of severe allergic reactions":
  Elements."The client has history of severe allergic reactions"

/*
@input: The client is severely immunosuppressed
@pseudocode: "Potential contraindications" = "Severely immunosuppressed"
@code: The client is severely immunosuppressed-59
@decision: IMMZ.D5.DT.Measles contraindications
*/
define "The client is severely immunosuppressed":
  Elements."The client is severely immunosuppressed"

/*
@input: The client has a symptomatic HIV infection
@pseudocode: "Potential contraindications" = "Symptomatic HIV infection"
@code: The client has a symptomatic HIV infection-59
@decision: IMMZ.D5.DT.Measles contraindications
*/
define "The client has a symptomatic HIV infection":
  Elements."The client has a symptomatic HIV infection"

/*
@internal: Draft Medication Request for MCV dose
*/
define "Draft Medication Request for MCV dose":
  Elements."Draft Medication Request for Patient" MR
    where MR.medication in Concepts."Measles-containing vaccines"
