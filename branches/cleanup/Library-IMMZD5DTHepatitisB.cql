
/*
 * Library: IMMZD5DTHepatitisB (IMMZ.D5.DT.Hepatitis B contraindications)
 * Rule: Check for contraindications before administering the vaccine(s) due	
 * Decision Table: Potential contraindications
 * Trigger: IMMZ.D5 Determine vaccine(s) to be administered based on contraindications
 */
library IMMZD5DTHepatitisB
// Start Skeleton CQL
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1'
include IMMZCommon called IMMZCom
include IMMZConcepts called IMMZc
include IMMZConfig called IMMZCon
include IMMZVaccineLibrary called IMMZvl
include FHIRCommon called FC
include IMMZD2DTHepatitisBInput called input

// End Skeleton CQL
context Patient


/*
@dynamicValue: Guidance
*/
define "Guidance":
  case
    when "Hepatitis B vaccination could be contraindicated. Clinical judgement is required. Create a clinical note." then "Hepatitis B vaccination could be contraindicated. Clinical judgement is required. Create a clinical note. Guidance"
    else ''
  end

/*
@output: Hepatitis B vaccination could be contraindicated. Clinical judgement is required. Create a clinical note.
@pseudocode: '"Immunization recommendation status" = 'Further evaluation needed'
*/
define "Hepatitis B vaccination could be contraindicated. Clinical judgement is required. Create a clinical note.":
  input."The client has history of severe allergic reactions"

/*
@output: Hepatitis B vaccination could be contraindicated. Clinical judgement is required. Create a clinical note. Guidance
@guidance: Do not vaccinate client for Hepatitis B if the client had a history of serious allergic reactions to any of the vaccine components. Allergy to yeast is considered a contraindication to immunization with yeast-produced hepatitis B vaccine. 
*/
define "Hepatitis B vaccination could be contraindicated. Clinical judgement is required. Create a clinical note. Guidance":
  'Do not vaccinate client for Hepatitis B if the client had a history of serious allergic reactions to any of the vaccine components. Allergy to yeast is considered a contraindication to immunization with yeast-produced hepatitis B vaccine. '

