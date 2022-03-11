/*
 * Library: IMMZDT00 (IMMZ.DT.00.Common)
 * Rule: Common rules that apply to all antigens 
 * Trigger: 
 */
library IMMZDT00
// Start Skeleton CQL
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1'
include IMMZCommon called IMMZCom
include IMMZConcepts called IMMZc
include IMMZStratifiers called IMMZStratifiers
include IMMZVaccineLibrary called IMMZvl
// End Skeleton CQL
context Patient

/* 
 * @dataElement Adverse Reaction
 */
define "Adverse Reaction":
	true; // TODO: Define this

/* 
 * @dataElement True
 */
define "True":
	true; // TODO: Define this

/* 
 * @dataElement Allergy = True
 */
define "Allergy = True":
	true; // TODO: Define this

/* 
 * @dataElement Immunocompromised = True
 */
define "Immunocompromised = True":
	true; // TODO: Define this

/*
 * Rule: 
 * Annotations:
 * 	 - Has the patient had an adverse reaction to this antigen?
 * 	 - Is the patient allergic to this antigen? 
Note: this is a difficult one because we don't have the data on each product's allergies. We think we might solve this with a questionnaire, but are unsure how to implement it yet.
 * 	 - Is the patient immunocompromised?
 * Outputs:
 * 	 - Patient had an adverse reaction to any ingredient
 * 	 - Patient has an allergy
 * 	 - Patient is immunocompromised
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 ((("Adverse Reaction" = "True") or ("Allergy" = "True" = true)) or ("Immunocompromised" = "True" = true))
 */
define "":
	((("Adverse Reaction" = "True") or ("Allergy" = "True")) or ("Immunocompromised" = "True"));
