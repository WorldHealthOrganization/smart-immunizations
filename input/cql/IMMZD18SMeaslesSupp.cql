/*
 * Library: IMMZD18SMeaslesSupp (IMMZ.D18.S.Measles.Supp)
 * Rule: Measles supplementary dose schedule
 * Trigger: IMMZ.D18 Determine required vaccination(s) Schedule if any
 */
library IMMZD18SMeaslesSupp
// Start Skeleton CQL
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1'
include IMMZCommon called IMMZCom
include IMMZConcepts called IMMZc
include IMMZConfig called IMMZCon
include IMMZVaccineLibrary called IMMZvl
include FHIRCommon called FC
include IMMZD2DTMeaslesInput called input

// End Skeleton CQL
context Patient


/*
@output: Measles supplementary dose
@trigger: Date when the primary vaccination series was completed
@pseudocode: '"Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Measles containing vaccines") AND [country defined logic for supplementary dose applied]
*/
define "Measles supplementary dose":
	input."Measles routine immunization schedule is complete High Tx"
	and input."Measles supplementary dose was not administered"

/*
@output: Measles supplementary dose Create
@create: Child is due for a measles supplementary dose if child is HIV-positive, on antiretroviral therapy (ART) and immune reconstitution has been achieved.
*/
define "Measles supplementary dose Create":
	if "Measles supplementary dose" then 'Child is due for a measles supplementary dose if child is HIV-positive, on antiretroviral therapy (ART) and immune reconstitution has been achieved. Due Date is '
		+ ToString("Measles supplementary dose Due Date")
	else ''

/*
@dynamicValue: Measles supplementary dose Due Date
@pseudocode: "Date when the primary vaccination series completed" + 4 'week'
*/
define "Measles supplementary dose Due Date":
	if "Measles supplementary dose" then First(input."MCV Doses Administered to Patient").occurrence + 4 week
	else null

/*
@dynamicValue: Measles supplementary dose Overdue
@pseudocode: To be determined by Member States however there is no recommended overdue date and individuals are always eligible to be vaccinated
*/
define "Measles supplementary dose Overdue":
	null

/*
@dynamicValue: Measles supplementary dose Expiration
@pseudocode: To be determined by Member States however there is no recommended expiration date and individuals are always eligible to be vaccinated
*/
define "Measles supplementary dose Expiration":
	null