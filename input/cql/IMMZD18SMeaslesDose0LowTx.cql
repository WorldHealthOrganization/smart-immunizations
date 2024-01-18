/*
 * Library: IMMZD18SMeaslesDose0LowTx (IMMZ.D18.S.Measles.Dose0.LowTx)
 * Rule: Measles MCV0 dose schedule
 * Trigger: IMMZ.D18 Determine required vaccination(s) Schedule if any
 */
library IMMZD18SMeaslesDose0LowTx
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
@output: Measles MCV0 dose
@trigger: Child's birth
*/
define "Measles MCV0 dose":
	Count(input."MCV Doses Administered to Patient") = 0 and Now() <= "Measles MCV0 dose Expiration"

/*
@output: Measles MCV0 dose Create
@create: In the following situations, a supplementary dose of MCV should be given to infants from 6 months of age: 
-	(1) during a measles outbreak as part of intensified service delivery;
-	(2) during campaigns in settings where the risk of measles among infants < 9 months of age remains high (e.g. in endemic countries experiencing regular outbreaks);
-	(3) for internally displaced populations and refugees, and populations in conflict zones;
-	(4) for individual infants at high risk of contracting measles (e.g. contacts of known measles cases or in settings with increased risk of exposure during outbreaks such as day-care facilities);
-	(5) for infants travelling to countries experiencing measles outbreaks;
-	(6) for infants known to be HIV-infected or exposed (i.e. born to an HIV-infected woman).
*/
define "Measles MCV0 dose Create":
	if "Measles MCV0 dose" then 	'In the following situations, a supplementary dose of MCV should be given to infants from 6 months of age: \n-	(1) during a measles outbreak as part of intensified service delivery;\n-	(2) during campaigns in settings where the risk of measles among infants < 9 months of age remains high (e.g. in endemic countries experiencing regular outbreaks);\n-	(3) for internally displaced populations and refugees, and populations in conflict zones;\n-	(4) for individual infants at high risk of contracting measles (e.g. contacts of known measles cases or in settings with increased risk of exposure during outbreaks such as day-care facilities);\n-	(5) for infants travelling to countries experiencing measles outbreaks;\n-	(6) for infants known to be HIV-infected or exposed (i.e. born to an HIV-infected woman).\nDue Date is '
		+ ToString("Measles MCV0 dose Due Date")
	else ''

/*
@dynamicValue: Measles MCV0 dose Due Date
@pseudocode: "Date of birth" + 6 'month'
*/
define "Measles MCV0 dose Due Date":
	if "Measles MCV0 dose" then Patient.birthDate + 6 months
	else null

/*
@dynamicValue: Measles MCV0 dose Overdue
@pseudocode: To be determined by Member States however there is no recommended overdue date and individuals are always eligible to be vaccinated
*/
define "Measles MCV0 dose Overdue":
	null

/*
@dynamicValue: Measles MCV0 dose Expiration
@pseudocode: "Date of birth" + 9 'month' for countries with ongoing transmission in which the risk of measles mortality remains high OR "Date of birth" + 12 'month' for countries with low levels of measles transmission
*/
define "Measles MCV0 dose Expiration":
	Patient.birthDate + 12 months