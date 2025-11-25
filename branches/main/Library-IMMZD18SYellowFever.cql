/*
 * Library: IMMZD18SYellowFever (IMMZ.D18.S.Yellow fever schedule)
 */
library IMMZD18SYellowFever
// Start Skeleton CQL
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1'
include IMMZCommon called IMMZCom
include IMMZConcepts called IMMZc
include IMMZConfig called IMMZCon
include IMMZVaccineLibrary called IMMZvl
include FHIRCommon called FC
include IMMZD2DTYellowFeverInput called input

// End Skeleton CQL
context Patient


/*
@output: Yellow fever dose 1
@trigger: Child's birth
*/
define "Yellow fever dose 1":
	input."No yellow fever primary series doses were administered"

/*
@output: Measles dose dose 1 Create
@create: The client is due for measles dose 1 if the client is at least 9 months
*/
define "Yellow fever dose dose 1 Create":
	if "Yellow fever dose 1" then 	'The client is due for yellow fever dose 1 if the client is at least 9 months and living in a yellow fever endemic area. Due Date is '
		+ ToString("Yellow fever dose 1 Due Date") + '. Overdue on ' + ToString("Yellow fever dose 1 Overdue")
	else ''

/*
@dynamicValue: Yellow fever dose 1 Due Date
@pseudocode: "Date of birth" + 9 'month'
*/
define "Yellow fever dose 1 Due Date":
	if "Yellow fever dose 1" then Patient.birthDate + 9 months
	else null

/*
@dynamicValue: Yellow fever dose 1 Overdue
@pseudocode: To be determined by Member States however there is no recommended overdue date and individuals are always eligible to be vaccinated
*/
define "Yellow fever dose 1 Overdue":
	if "Yellow fever dose 1" then Patient.birthDate + 12 months
	else null

/*
@dynamicValue: Yellow fever dose 1 Expiration
@pseudocode: To be determined by Member States however there is no recommended expiration date and individuals are always eligible to be vaccinated
*/
define "Yellow fever dose 1 Expiration":
	null