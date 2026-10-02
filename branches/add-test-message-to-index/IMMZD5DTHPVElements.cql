
/*
  * Library: IMMZD5DTHPVElements
  */
library IMMZD5DTHPVElements

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
@internal: Draft Medication Request for HPV dose
*/
define "Draft Medication Request for HPV dose":
  Elements."Draft Medication Request for Patient" MR
    where MR.medication in Concepts."HPV vaccines"

/*
@input: The client is currently pregnant
@pseudocode: "Potential contraindications" = "Currently pregnant"
@code: The client is currently pregnant-52
@decision: IMMZ.D5.DT.HPV contraindications
*/
define "The client is currently pregnant":
  Elements."The client is pregnant"

/*
@input: The client has history of severe allergic reactions
@pseudocode: "Potential contraindications" = "Severe allergic reactions"
@code: The client has history of severe allergic reactions-59
@decision: IMMZ.D5.DT.HPV contraindications
*/
define "The client has history of severe allergic reactions":
  Elements."The client has history of severe allergic reactions"
