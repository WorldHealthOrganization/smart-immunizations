
/*
  * Library: IMMZD5DTJEElements
  */
library IMMZD5DTJEElements

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
@internal: Draft Medication Request for JE dose
*/
define "Draft Medication Request for JE dose":
  Elements."Draft Medication Request for Patient" MR
    where MR.medication in Concepts."JE vaccines"

/*
@input: The client is immunocomprised
@pseudocode: "Potential contraindications" = "Immunocompromised"
@code: The client is immunocomprised-51
@decision: IMMZ.D5.DT.JE contraindications
*/
define "The client is immunocomprised":
  Elements."The client is immunocompromised"

/*
@input: The client is currently pregnant
@pseudocode: "Potential contraindications" = "Currently pregnant"
@code: The client is currently pregnant-52
@decision: IMMZ.D5.DT.JE contraindications
*/
define "The client is currently pregnant":
  Elements."The client is pregnant"
