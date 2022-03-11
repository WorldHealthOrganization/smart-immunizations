/*
 * Library: IMMZDT12 (IMMZ.DT.12.YellowFever)
 * Rule: If child or person has not been vaccinated, give Yellow Fever vaccine between age 9-12 months 
 * Trigger: Patient has never received Yellow Fever vaccination and/or resides/is from an endemic region
 */
library IMMZDT12
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
 * Rule: Should vaccinate patient for Yellow Fever because no doses on 1 dose scheme
 * Annotations:
 * 	 - Provide Yellow Fever immunizations – using the "Yellow Fever vaccine immunization – NO PREVIOUS" schedule (1 dose scheme)
 * Outputs:
 * 	 - Immunize Patient for Yellow Fever - No Doses
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://w
ww.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * Logic:
 *	 
 */
define "Should vaccinate patient for Yellow Fever because no doses on 1 dose scheme":
	("Age" >= "9 months");
