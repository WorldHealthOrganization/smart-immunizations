
/*
  * Library: IMMZD5DTPolioElements
  */
library IMMZD5DTPolioElements

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
@internal: Draft Medication Request for Polio dose
*/
define "Draft Medication Request for Polio dose":

  Elements."Draft Medication Request for Patient" MR 
    where MR.medication in Concepts."Poliovirus-containing vaccines"

/*
@input: The client has history of severe allergic reactions
@pseudocode: "Potential contraindications" = "Severe allergic reactions"
@code: The client has history of severe allergic reactions-59
@decision: IMMZ.D5.DT.Polio contraindications
*/
define "The client has history of severe allergic reactions":
  Elements."The client has history of severe allergic reactions"

/*
@input: The client is severely immunocompromised
@pseudocode: "Potential contraindications" = "Severely immunocompromised"
@code: The client is severely immunocompromised-60
@decision: IMMZ.D5.DT.Polio contraindications
*/
define "The client is severely immunocompromised":
  Elements."The client is severely immunocompromised"

/*
@input: The client has immunodeficiency syndromes
@pseudocode: "Potential contraindications" = "Immunodeficiency syndromes"
@code: The client has immunodeficiency syndromes-60
@decision: IMMZ.D5.DT.Polio contraindications
*/
define "The client has immunodeficiency syndromes":
  Elements."The client has immunodeficiency syndromes"

/*
@internal: Draft Medication Request for bOPV dose
*/
define "Draft Medication Request for bOPV dose":
  Elements."Draft Medication Request for Patient" MR
    where MR.medication in Concepts."Oral polio vaccines"
