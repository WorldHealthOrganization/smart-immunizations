
/*
  * Library: IMMZD5DTTyphoidEncounterElements
  */
library IMMZD5DTTyphoidEncounterElements

using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1'

include WHOConcepts
include WHOCommon called WC
include WHOElements called WE

include IMMZCommon called Common
include IMMZConcepts called Concepts

include IMMZEncounterElements called Encounter

include IMMZD5DTTyphoidElements called TyphoidElements

parameter Today Date default Today()
parameter EncounterId String

context Patient

/*
@internal: Draft Medication Request for Typhoid dose
*/
define "Draft Medication Request for Typhoid dose":
  Encounter."Draft Medication Request for Patient" MR 
    where MR.medication in Concepts."Typhoid vaccines"


/*
@input: The client has hypersensitivity to any component of the vaccine
@pseudocode: "Potential contraindications" = "Hypersensitivity to vaccine components"
@decision: Potential contraindications		
*/
define "The client has hypersensitivity to any component of the vaccine":
  Encounter."The client has hypersensitivity to any component of the vaccine"

/*
@input: The client is currently pregnant
@pseudocode: "Potential contraindications" = "Currently pregnant"
@decision: Potential contraindications		
*/
define "The client is currently pregnant":
  Encounter."The client is pregnant"

/*
@input: The client is currently taking antibiotics
@pseudocode: "Potential contraindications" = "Taking antibiotics"
@decision: Potential contraindications		
*/
define "The client is currently taking antibiotics":
  Encounter."The client is currently taking antibiotics"

/*
@input: The client's HIV status is positive
@pseudocode: "HIV status" = "HIV-positive"
@decision: Potential contraindications		
*/
define "The client's HIV status is positive":
  Encounter."Client's HIV status is positive"

/*
@input: The client is not immunologically stable
@pseudocode: "Immunologically stable" ≠ TRUE
@decision: Potential contraindications		
*/
define "The client is not immunologically stable":
  Encounter."Client is not immunologically stable"

