
/*
  * Library: IMMZD5DTDengueElements
  */
library IMMZD5DTDengueElements

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
@internal: Draft Medication Request for Dengue dose
*/
define "Draft Medication Request for Dengue dose":
  Elements."Draft Medication Request for Patient" MR
    where MR.medication in Concepts."Dengue vaccines"

/*
@input: The client is immunocompromised
@pseudocode: "Potential contraindications" = "Immunocompromised"
@code: The client is immunocompromised-51
@decision: IMMZ.D5.DT.Dengue contraindications
*/
define "The client is immunocompromised":
  Elements."The client is immunocompromised"

/*
@input: The client is severely immunocompromised
@pseudocode: "Potential contraindications" = "Severely immunocompromised"
@code: The client is severely immunocompromised-60
@decision: IMMZ.D5.DT.Dengue contraindications
*/
define "The client is severely immunocompromised":
  Elements."The client is severely immunocompromised"

/*
@input: The client is currently pregnant
@pseudocode: "Potential contraindications" = "Currently pregnant"
@code: The client is currently pregnant-52
@decision: IMMZ.D5.DT.Dengue contraindications
*/
define "The client is currently pregnant":
  Elements."The client is pregnant"

/*
@input: The client is currently lactating
@pseudocode: '"Potential contraindications" = "Breastfeeding"
@code: The client is currently lactating-48
@decision: IMMZ.D5.DT.Dengue contraindications
*/
define "The client is currently lactating":
  Elements."The client is lactating"

/*
@input: The client has history of severe allergic reactions
@pseudocode: "Potential contraindications" = "Severe allergic reactions"
@code: The client has history of severe allergic reactions-59
@decision: IMMZ.D5.DT.Dengue contraindications
*/
define "The client has history of severe allergic reactions":
  Elements."The client has history of severe allergic reactions"

/*
@input: The client has history of anaphylactic reactions
@pseudocode: "Potential contraindications" ="History of anaphylactic reactions"
@code: The client has history of anaphylactic reactions-66
@decision: IMMZ.D5.DT.Dengue contraindications
*/
define "The client has history of anaphylactic reactions":
  Elements."The client has history of anaphylactic reactions"

/*
@input: The client has immunodeficiency syndromes
@pseudocode: "Potential contraindications" = "Immunodeficiency syndromes"
@code: The client has immunodeficiency syndromes-60
@decision: IMMZ.D5.DT.Dengue contraindications
*/
define "The client has immunodeficiency syndromes":
  Elements."The client has immunodeficiency syndromes"

/*
@input: The client is severely immunosuppressed
@pseudocode: "Potential contraindications" = "Severely immunosuppressed"
@code: The client is severely immunosuppressed-59
@decision: IMMZ.D5.DT.Dengue contraindications
*/
define "The client is severely immunosuppressed":
  Elements."The client is severely immunosuppressed"

/*
@input: The client has symptomatic HIV infection
@pseudocode: "Potential contraindications" = "Symptomatic HIV infection"
@code: The client has symptomatic HIV infection-59
@decision: IMMZ.D5.DT.Dengue contraindications
*/
define "The client has symptomatic HIV infection":
  Elements."The client has a symptomatic HIV infection"
