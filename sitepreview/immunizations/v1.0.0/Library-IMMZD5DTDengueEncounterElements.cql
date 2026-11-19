
/*
  * Library: IMMZD5DTDengueEncounterElements
  */
library IMMZD5DTDengueEncounterElements

using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1'

include WHOConcepts
include WHOCommon called WC
include WHOElements called WE

include IMMZCommon called Common
include IMMZConcepts called Concepts
include IMMZEncounterElements called Encounter

include IMMZD5DTDengueElements called DengueElements

parameter Today Date default Today()
parameter EncounterId String

context Patient

/*
@internal: Draft Medication Request for Dengue dose
*/
define "Draft Medication Request for Dengue dose":
  Encounter."Draft Medication Request for Patient" MR
    where MR.medication in Concepts."Dengue vaccines"

/*
@input: The client is immunocompromised
@pseudocode: "Potential contraindications" = "Immunocompromised"
@code: The client is immunocompromised-51
@decision: IMMZ.D5.DT.Dengue contraindications
*/
define "The client is immunocompromised":
  Encounter."The client is immunocompromised"

/*
@input: The client is severely immunocompromised
@pseudocode: "Potential contraindications" = "Severely immunocompromised"
@code: The client is severely immunocompromised-60
@decision: IMMZ.D5.DT.Dengue contraindications
*/
define "The client is severely immunocompromised":
  Encounter."The client is severely immunocompromised"

/*
@input: The client is currently pregnant
@pseudocode: "Potential contraindications" = "Currently pregnant"
@code: The client is currently pregnant-52
@decision: IMMZ.D5.DT.Dengue contraindications
*/
define "The client is currently pregnant":
  Encounter."The client is pregnant"

/*
@input: The client is currently lactating
@pseudocode: '"Potential contraindications" = "Breastfeeding"
@code: The client is currently lactating-48
@decision: IMMZ.D5.DT.Dengue contraindications
*/
define "The client is currently lactating":
  Encounter."The client is lactating"

/*
@input: The client has history of severe allergic reactions
@pseudocode: "Potential contraindications" = "Severe allergic reactions"
@code: The client has history of severe allergic reactions-59
@decision: IMMZ.D5.DT.Dengue contraindications
*/
define "The client has history of severe allergic reactions":
  Encounter."The client has history of severe allergic reactions"

/*
@input: The client has history of anaphylactic reactions
@pseudocode: "Potential contraindications" ="History of anaphylactic reactions"
@code: The client has history of anaphylactic reactions-66
@decision: IMMZ.D5.DT.Dengue contraindications
*/
define "The client has history of anaphylactic reactions":
  Encounter."The client has history of anaphylactic reactions"

/*
@input: The client has immunodeficiency syndromes
@pseudocode: "Potential contraindications" = "Immunodeficiency syndromes"
@code: The client has immunodeficiency syndromes-60
@decision: IMMZ.D5.DT.Dengue contraindications
*/
define "The client has immunodeficiency syndromes":
  Encounter."The client has immunodeficiency syndromes"

/*
@input: The client is severely immunosuppressed
@pseudocode: "Potential contraindications" = "Severely immunosuppressed"
@code: The client is severely immunosuppressed-59
@decision: IMMZ.D5.DT.Dengue contraindications
*/
define "The client is severely immunosuppressed":
  Encounter."The client is severely immunosuppressed"

/*
@input: The client has symptomatic HIV infection
@pseudocode: "Potential contraindications" = "Symptomatic HIV infection"
@code: The client has symptomatic HIV infection-59
@decision: IMMZ.D5.DT.Dengue contraindications
*/
define "The client has symptomatic HIV infection":
  Encounter."The client has a symptomatic HIV infection"
