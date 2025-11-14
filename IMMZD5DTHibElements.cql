
/*
  * Library: IMMZD5DTHibElements
  */
library IMMZD5DTHibElements

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
@internal: Draft Medication Request for Hib dose
*/
define "Draft Medication Request for Hib dose":

  Elements."Draft Medication Request for Patient" MR 
    where MR.medication in Concepts."Hib-containing vaccines"

/*
@input: The client has a history of severe allergic reactions
@pseudocode: "Potential contraindications" = "Severe allergic reactions"
@code: The client has a history of severe allergic reactions-59
@decision: IMMZ.D5.DT.Hib contraindications
*/
define "The client has a history of severe allergic reactions":
  Elements."The client has history of severe allergic reactions"
