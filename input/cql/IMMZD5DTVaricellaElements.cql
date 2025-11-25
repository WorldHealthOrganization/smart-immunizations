
/*
  * Library: IMMZD5DTVaricellaElements
  */
library IMMZD5DTVaricellaElements

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
@internal: Draft Medication Request for Varicella dose
*/
define "Draft Medication Request for Varicella dose":
  Elements."Draft Medication Request for Patient" MR
    where MR.medication in Concepts."Varicella-containing vaccines"

/*
@input: The client is currently pregnant
@pseudocode: "Potential contraindications" = "Currently pregnant"
@code: The client is currently pregnant-52
@decision: IMMZ.D5.DT.Varicella contraindications
*/
define "The client is currently pregnant":
  Elements."The client is pregnant"

/*
@input: The client is planning to get pregnant in the next month
@pseudocode: "Potential contraindications" = "Planning to get pregnant in the next month"
@code: The client is planning to get pregnant in the next month-76
@decision: IMMZ.D5.DT.Varicella contraindications
*/
define "The client is planning to get pregnant in the next month":
  Elements."The client is planning to get pregnant in next month"

/*
@input: The client has immune deficiency
@pseudocode: "Potential contraindications" = "Immunodeficiency syndromes"
@code: The client has immune deficiency-60
@decision: IMMZ.D5.DT.Varicella contraindications
*/
define "The client has immune deficiency":
  Elements."The client has immunodeficiency syndromes"

/*
@input: The client is immunocompromised
@pseudocode: "Potential contraindications" = "Immunocompromised"
@code: The client is immunocompromised-51
@decision: IMMZ.D5.DT.Varicella contraindications
*/
define "The client is immunocompromised":
  Elements."The client is immunocompromised"

/*
@input: The client is receiving or has received medications that may be immunosuppressive
@pseudocode: "Potential contraindications" = "Exposed to immunosuppressive treatment"
@code: The client is receiving or has received medications that may be immunosuppressive-72
@decision: IMMZ.D5.DT.Varicella contraindications
*/
define "The client is receiving or has received medications that may be immunosuppressive":
  Elements."The client is exposed to immunosuppressive treatment"
