/*
 * Library: IMMZDT01 (IMMZ.DT.01.BCG)
 * Rule: If child or person has not been vaccinated, give BCG vaccine as soon as possible after birth 
 * Trigger: Patient has never had BCG vaccination
 */
library IMMZDT01
// Start Skeleton CQL
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1'
include IMMZCommon called IMMZCom
include IMMZConcepts called IMMZc
include IMMZStratifiers called IMMZStratifiers
include IMMZVaccineLibrary called IMMZvl
include IMMZConfig called IMMZCon

// End Skeleton CQL
//TODO: leave TST and IGRA tests as codes for now, but replace with ValueSets
code "TST Test Result": '39263-9' from IMMZc."LOINC" display 'Tuberculin screen test status CPHS'
code "TST negative": 'LA11155-1' from IMMZc."LOINC" display 'Ordered - Negative'

context Patient

/* 
 * @dataElement TST test
 */

define "TST test":
	[Observation: code in IMMZc."TST Test Result"] O
	where O.value in IMMZc."Negative Result"

/* 
 * @dataElement TST-negative
 */
 //is inferred negative in "TST test"

/* 
 * @dataElement High incidence of TB and/or high leprosy burden
 */

/* 
 * @dataElement IGRA test
 */
define "IGRA test":
	[Observation: code in IMMZc."IGRA Test Result"] O
	where O.value in IMMZc."Negative Result"

/* 
 * @dataElement IGRA-negative
 */
 //is inferred negative in "IGRA test"


/* 
 * @dataElement BCG vaccine immunization history
 */
define "BCG vaccine immunization history":
  [Immunization: vaccineCode in IMMZc."BCG Vaccine"]

/* 
 * @dataElement No-doses
 */
define "No-doses":
	true; // TODO: Define this

/* 
 * @dataElement Unknown
 */
define "Unknown":
	true; // TODO: Define this

/* 
 * @dataElement BCG vaccine immunization history = No-doses
 */
define "BCG vaccine immunization history = No-doses":
	true; // TODO: Define this

/* 
 * @dataElement HIV Status = Positive
 */
define "HIV Status Positive":
	[Condition: code in IMMZc."HIV Status Positive"]

/* 
 * @dataElement CD4% >25%
 */
define "CD4% >25%":
	[Observation: code in IMMZc."CD4% Test Result"] O
	where O.value as FHIR.Quantity > 25'%'

/* 
 * @dataElement Age
 */
define "Age":
	true; // TODO: Define this

/* 
 * @dataElement 5 years
 */
define "5 years":
	true; // TODO: Define this

/* 
 * @dataElement CD4 count ≥ 200
 */
define "CD4 count ≥ 200":
	true; // TODO: Define this

/*
 * Rule: Should vaccinate patient for BCG
 * Annotations:
 * 	 - Provide BCG immunizations – using the "BCG vaccine immunization – NO PREVIOUS" schedule (1 dose scheme)
 * 	 - 
 * 	 - Provide BCG immunizations – using the "BCG vaccine immunization – NO PREVIOUS" schedule (1 dose scheme) if CD4% >25% for children aged <5 years or CD4 count ≥200 if aged >5  years
 * Outputs:
 * 	 - Immunize Patient for BCG -  TST-negative
 * 	 - Immunize Patient for BCG - IGRA-negative
 * 	 - Immunize Patient for BCG - No Doses
 * 	 - Immunize Patient for BCG - History Unknown
 * 	 - Immunize Patient for BCG - No Doses and HIV Status Positive and immunicologically stable
 * 	 - 
 * References:
 * 	- WHO recommendations for routine immunization - summary tables: https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables
 * 	- 
 * Logic:
 *	 ((((((("TST test" = "TST-negative") and ("High incidence of TB and/or high leprosy burden" = true)) or (("IGRA test" = "IGRA-negative") and ("High incidence of TB and/or high leprosy burden" = true))) or (("BCG vaccine immunization history" = "No-doses") and ("High incidence of TB and/or high leprosy burden" = true))) or (("BCG vaccine immunization history" = "Unknown") and ("High incidence of TB and/or high leprosy burden" = true))) or ((((("BCG vaccine immunization history" = "No-doses" = true) and ("HIV Status" = "Positive" = true)) and ("CD4%" >"25%" = true)) and ("Age" < "5 years")) and ("High incidence of TB and/or high leprosy burden" = true))) or ((((("BCG vaccine immunization history" = "No-doses" = true) and ("HIV Status" = "Positive" = true)) and ("CD4 count" ≥ "200" = true)) and ("Age" > "5 years")) and ("High incidence of TB and/or high leprosy burden" = true)))
 */
define "Should vaccinate patient for BCG":
	(((((((exists  ("TST test")) and (IMMZCon."High incidence of TB and/or high leprosy burden" = true)) or ((exists  ("IGRA test")) and (IMMZCon."High incidence of TB and/or high leprosy burden" = true))) or ((not exists "BCG vaccine immunization history") and (IMMZCon."High incidence of TB and/or high leprosy burden" = true))) or (((((not exists "BCG vaccine immunization history") and ("HIV Status Positive")) and ("CD4%" >"25%" = true)) and ("Age" < "5 years")) and (IMMZCon."High incidence of TB and/or high leprosy burden" = true))) or ((((("BCG vaccine immunization history" = "No-doses") and ("HIV Status" = "Positive")) and ("CD4 count" ≥ "200" = true)) and ("Age" > "5 years")) and (IMMZCon."High incidence of TB and/or high leprosy burden" = true))))