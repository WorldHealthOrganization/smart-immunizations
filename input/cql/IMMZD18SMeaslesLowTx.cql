/*
 * Library: IMMZD18SMeaslesLowTx (IMMZ.D18.S.Measles.Low transmission schedule)
 * Schedule Table: Schedule for countries with low levels of measles transmission			
 */
library IMMZD18SMeaslesLowTx
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
@output: Measles dose 1
@trigger: Child's birth
*/
define "Measles dose 1":
	input."No measles primary series doses were administered"

/*
@output: Measles dose 1 Create
@create: The client is due for measles dose 1 if the client is at least 9 months
*/
define "Measles dose 1 Create":
	if "Measles dose 1" then 	'The client is due for measles dose 1 if the client is at least 12 months. Due Date is '
		+ ToString("Measles dose 1 Due Date")
	else ''

/*
@dynamicValue: Measles dose 1 Due Date
@pseudocode: "Date of birth" + 12 'month'
*/
define "Measles dose 1 Due Date":
	if "Measles dose 1" then Patient.birthDate + 12 months
	else null

/*
@dynamicValue: Measles dose 1 Overdue
@pseudocode: To be determined by Member States however there is no recommended overdue date and individuals are always eligible to be vaccinated
*/
define "Measles dose 1 Overdue":
	null

/*
@dynamicValue: Measles dose 1 Expiration
@pseudocode: To be determined by Member States however there is no recommended expiration date and individuals are always eligible to be vaccinated
*/
define "Measles dose 1 Expiration":
	null

/*
@output: Measles dose 2
@trigger: One measles primary series dose was administered
@pseudocode: Count of vaccines administered (where "Vaccine type" = 'Measles containing vaccines' and "Type of dose" = "Primary series" ) = 1
*/
define "Measles dose 2":
	input."MCV1 was administered Low Tx"

/*
@output: Measles dose 2 Create
@create: The client is due for measles dose 2 if the client is at least 15 months.
*/
define "Measles dose 2 Create":
	if "Measles dose 2" then 'The client is due for measles dose 2 if the client is at least 15 months. Due Date is '
		+ ToString("Measles dose 2 Due Date")
	else ''

/*
@dynamicValue: Measles dose 2 Due Date
@pseudocode: "Date of birth" + 15 'month'
*/
define "Measles dose 2 Due Date":
	if "Measles dose 2" then Patient.birthDate + 15 months
	else null

/*
@dynamicValue: Measles dose 2 Overdue
@pseudocode: To be determined by Member States however there is no recommended overdue date and individuals are always eligible to be vaccinated
*/
define "Measles dose 2 Overdue":
	null

/*
@dynamicValue: Measles dose 2 Expiration
@pseudocode: To be determined by Member States however there is no recommended expiration date and individuals are always eligible to be vaccinated
*/
define "Measles dose 2 Expiration":
	null