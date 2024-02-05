/*
 * Library: IMMZD2DTPoliobOPVIPV (IMMZ.D2.DT.Polio.bOPV plus IPV)
 * Rule: Determine if the client is due for a polio vaccination according to the national immunization protocol
 * Decision Table: bOPV plus IPV schedule (applicable for all countries)
 * Trigger: IMMZ.D2  Determine required vaccination(s) if any
 */
library IMMZD2DTPoliobOPVIPV
// Start Skeleton CQL
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1'
include IMMZCommon called IMMZCom
include IMMZConcepts called IMMZc
include IMMZConfig called IMMZCon
include IMMZVaccineLibrary called IMMZvl
include FHIRCommon called FC
include IMMZD2DTPolioInput called input

// End Skeleton CQL
context Patient

/*
@dynamicValue: Guidance
*/
define "Guidance":
  case
    when "Client is not due for bOPV vaccination" then "Client is not due for bOPV vaccination Guidance"
    when "Client is due for bOPV vaccination" then "Client is due for bOPV vaccination Guidance"
    when "Client is due for bOPV and IPV vaccination" then "Client is due for bOPV and IPV vaccination Guidance"
    when "Client is not due for polio vaccination" then "Client is not due for polio vaccination Guidance"
    when "Client is due for IPV vaccination" then "Client is due for IPV vaccination Guidance"
    when "Polio immunization schedule is complete" then "Polio immunization schedule is complete Guidance"
    else ''
  end

/*
@output: Client is not due for bOPV vaccination
@pseudocode: "Immunization recommendation status" = 'Not due'
*/
define "Client is not due for bOPV vaccination":
  input."Client's age is less than 6 weeks"

/*
@output: Client is not due for bOPV vaccination Guidance
@guidance: Should not vaccinate client for first bOPV dose as client's age is less than 6 weeks. 
Check for any other vaccines due, and inform the caregiver of when to come back for the first bOPV dose.
*/
define "Client is not due for bOPV vaccination Guidance":
  'Should not vaccinate client for first bOPV dose as client\'s age is less than 6 weeks. 
Check for any other vaccines due, and inform the caregiver of when to come back for the first bOPV dose.'

/*
@output: Client is due for bOPV vaccination Case 1
@pseudocode: "Immunization recommendation status" = 'Due' (where "Type of polio dose" = 'bOPV')
*/
define "Client is due for bOPV vaccination Case 1":
  input."No polio primary series doses were administered"
    and input."Client's age is between 6 weeks and 3 months"

/*
@output: Client is due for bOPV vaccination Case 2
@pseudocode: "Immunization recommendation status" = 'Due' (where "Type of polio dose" = 'bOPV')
*/
define "Client is due for bOPV vaccination Case 2":
  input."One polio primary series dose was administered"
    and input."Client's age is between 6 weeks and 14 weeks"
    and input."The latest bOPV dose was administered more than 4 weeks ago"

/*
@output: Client is due for bOPV vaccination Case 3
@pseudocode: "Immunization recommendation status" = 'Due' (where "Type of polio dose" = 'bOPV')
*/
define "Client is due for bOPV vaccination Case 3":
  input."One polio primary series dose was administered"
    and input."The polio dose administered is IPV"
    and input."Client's age is more than or equal to 14 weeks"
    and input."The latest IPV dose was administered less than 4 months ago"

/*
@output: Client is due for bOPV vaccination Case 4
@pseudocode: "Immunization recommendation status" = 'Due' (where "Type of polio dose" = 'bOPV')
*/
define "Client is due for bOPV vaccination Case 4":
  input."Two polio primary series doses were administered"
    and input."The two doses administered are bOPV"
    and input."Client's age is between 6 weeks and 14 weeks"
    and input."The latest bOPV dose was administered more than 4 weeks ago"

/*
@output: Client is due for bOPV vaccination Case 5
@pseudocode: "Immunization recommendation status" = 'Due' (where "Type of polio dose" = 'bOPV')
*/
define "Client is due for bOPV vaccination Case 5":
  input."Two polio primary series doses were administered"
    and input."From the two doses administered one is bOPV and one is IPV"
    and input."The latest bOPV dose was administered more than 4 weeks ago"
    and input."The latest IPV dose was administered less than 4 months ago"

/*
@output: Client is due for bOPV vaccination Case 6
@pseudocode: "Immunization recommendation status" = 'Due' (where "Type of polio dose" = 'bOPV')
*/
define "Client is due for bOPV vaccination Case 6":
  input."Two polio primary series doses were administered"
    and input."The two doses administered are IPV"

/*
@output: Client is due for bOPV vaccination Case 7
@pseudocode: "Immunization recommendation status" = 'Due' (where "Type of polio dose" = 'bOPV')
*/
define "Client is due for bOPV vaccination Case 7":
  input."Three polio primary series doses were administered"
    and input."From the three doses administered one is IPV and two are bOPV"
    and input."The latest bOPV dose was administered more than 4 weeks ago"
    and input."The latest IPV dose was administered less than 4 months ago"

/*
@output: Client is due for bOPV vaccination Case 8
@pseudocode: "Immunization recommendation status" = 'Due' (where "Type of polio dose" = 'bOPV')
*/
define "Client is due for bOPV vaccination Case 8":
  input."Three polio primary series doses were administered"
    and input."From the three doses administered one is bOPV and two are IPV"
    and input."The latest bOPV dose was administered more than 4 weeks ago"

/*
@output: Client is due for bOPV vaccination Case 9
@pseudocode: "Immunization recommendation status" = 'Due' (where "Type of polio dose" = 'bOPV')
*/
define "Client is due for bOPV vaccination Case 9":
  input."Four polio primary series doses were administered"
    and input."From the four doses administered two are IPV and two are bOPV"
    and input."The latest bOPV dose was administered more than 4 weeks ago"

/*
@output: Client is due for bOPV vaccination
@pseudocode: "Immunization recommendation status" = 'Due' (where "Type of polio dose" = 'bOPV')
*/
define "Client is due for bOPV vaccination":
  "Client is due for bOPV vaccination Case 1"
    or "Client is due for bOPV vaccination Case 2"
    or "Client is due for bOPV vaccination Case 3"
    or "Client is due for bOPV vaccination Case 4"
    or "Client is due for bOPV vaccination Case 5"
    or "Client is due for bOPV vaccination Case 6"
    or "Client is due for bOPV vaccination Case 7"
    or "Client is due for bOPV vaccination Case 8"
    or "Client is due for bOPV vaccination Case 9"

/*
@output: Client is due for bOPV vaccination Guidance
@guidance: Should vaccinate client for first bOPV dose as no polio doses were administered and client's age is between 6 weeks and 3 months. Check for contraindications.
@guidance: Should vaccinate client for second bOPV dose as the latest bOPV dose was administered more than 4 weeks ago.
Check for contraindications
@guidance: Should vaccinate client for first bOPV dose as client's age is more than 14 weeks, bOPV dose was not administered and the first IPV dose was administered less than 4 months ago.
Check for contraindications.
@guidance: Should vaccinate client for third bOPV dose as client's age is between 6 and 14 weeks and the latest bOPV dose was administered more than 4 weeks ago. Check for contraindications.
@guidance: Should vaccinate client for second bOPV dose as one bOPV dose and one IPV dose were administered, the latest bOPV dose was administered more than 4 weeks ago and the latest IPV dose was administered less than 4 months ago. Check for contraindications.
@guidance: Should vaccinate client for first bOPV dose as bOPV dose was not administered and two IPV doses were administered. Check for contraindications.
@guidance: Should vaccinate client for third bOPV dose as two bOPV doses and one IPV dose were administered, the latest bOPV dose was administered more than 4 weeks ago and the latest IPV dose was administered less than 4 months ago. Check for contraindications.
@guidance: Should vaccinate client for second bOPV dose as one bOPV dose and two IPV doses were administered and the latest bOPV dose was administered more than 4 weeks ago. Check for contraindications.
@guidance: Should vaccinate client for third bOPV dose as two bOPV doses and two IPV doses were administered and the latest bOPV dose was administered more than 4 weeks ago. Check for contraindications.
*/
define "Client is due for bOPV vaccination Guidance":
  case
    when "Client is due for bOPV vaccination Case 1" then 'Should vaccinate client for first bOPV dose as no polio doses were administered and client\'s age is between 6 weeks and 3 months. Check for contraindications.'
    when "Client is due for bOPV vaccination Case 2" then 'Should vaccinate client for second bOPV dose as the latest bOPV dose was administered more than 4 weeks ago.
Check for contraindications'
    when "Client is due for bOPV vaccination Case 3" then 'Should vaccinate client for first bOPV dose as client\'s age is more than 14 weeks, bOPV dose was not administered and the first IPV dose was administered less than 4 months ago.
Check for contraindications.'
    when "Client is due for bOPV vaccination Case 4" then 'Should vaccinate client for third bOPV dose as client\'s age is between 6 and 14 weeks and the latest bOPV dose was administered more than 4 weeks ago. Check for contraindications.'
    when "Client is due for bOPV vaccination Case 5" then 'Should vaccinate client for second bOPV dose as one bOPV dose and one IPV dose were administered, the latest bOPV dose was administered more than 4 weeks ago and the latest IPV dose was administered less than 4 months ago. Check for contraindications.'
    when "Client is due for bOPV vaccination Case 6" then 'Should vaccinate client for first bOPV dose as bOPV dose was not administered and two IPV doses were administered. Check for contraindications.'
    when "Client is due for bOPV vaccination Case 7" then 'Should vaccinate client for third bOPV dose as two bOPV doses and one IPV dose were administered, the latest bOPV dose was administered more than 4 weeks ago and the latest IPV dose was administered less than 4 months ago. Check for contraindications.'
    when "Client is due for bOPV vaccination Case 8" then 'Should vaccinate client for second bOPV dose as one bOPV dose and two IPV doses were administered and the latest bOPV dose was administered more than 4 weeks ago. Check for contraindications.'
    when "Client is due for bOPV vaccination Case 9" then 'Should vaccinate client for third bOPV dose as two bOPV doses and two IPV doses were administered and the latest bOPV dose was administered more than 4 weeks ago. Check for contraindications.'
    else ''
  end

/*
@output: Client is due for bOPV and IPV vaccination Case 1
@pseudocode: "Immunization recommendation status" = 'Due' (where "Type of polio dose" = 'bOPV') AND (where "Type of polio dose" = 'IPV')
*/
define "Client is due for bOPV and IPV vaccination Case 1":
  input."No polio primary series doses were administered"
    and input."Client's age is more than 3 months"

/*
@output: Client is due for bOPV and IPV vaccination Case 2
@pseudocode: "Immunization recommendation status" = 'Due' (where "Type of polio dose" = 'bOPV') AND (where "Type of polio dose" = 'IPV')
*/
define "Client is due for bOPV and IPV vaccination Case 2":
  input."One polio primary series dose was administered"
    and input."The polio dose administered is bOPV"
    and input."Client's age is more than or equal to 14 weeks"
    and input."The latest bOPV dose was administered more than 4 weeks ago"

/*
@output: Client is due for bOPV and IPV vaccination Case 3
@pseudocode: "Immunization recommendation status" = 'Due' (where "Type of polio dose" = 'bOPV') AND (where "Type of polio dose" = 'IPV')
*/
define "Client is due for bOPV and IPV vaccination Case 3":
  input."One polio primary series dose was administered"
    and input."The polio dose administered is IPV"
    and input."Client's age is more than or equal to 14 weeks"
    and input."The latest IPV dose was administered more than 4 months ago"

/*
@output: Client is due for bOPV and IPV vaccination Case 4
@pseudocode: "Immunization recommendation status" = 'Due' (where "Type of polio dose" = 'bOPV') AND (where "Type of polio dose" = 'IPV')
*/
define "Client is due for bOPV and IPV vaccination Case 4":
  input."Two polio primary series doses were administered"
    and input."The two doses administered are bOPV"
    and input."Client's age is more than or equal to 14 weeks"
    and input."The latest bOPV dose was administered more than 4 weeks ago"

/*
@output: Client is due for bOPV and IPV vaccination Case 5
@pseudocode: "Immunization recommendation status" = 'Due' (where "Type of polio dose" = 'bOPV') AND (where "Type of polio dose" = 'IPV')
*/
define "Client is due for bOPV and IPV vaccination Case 5":
  input."Two polio primary series doses were administered"
    and input."From the two doses administered one is bOPV and one is IPV"
    and input."The latest bOPV dose was administered more than 4 weeks ago"
    and input."The latest IPV dose was administered more than 4 months ago"

/*
@output: Client is due for bOPV and IPV vaccination Case 6
@pseudocode: "Immunization recommendation status" = 'Due' (where "Type of polio dose" = 'bOPV') AND (where "Type of polio dose" = 'IPV')
*/
define "Client is due for bOPV and IPV vaccination Case 6":
  input."Three polio primary series doses were administered"
    and input."From the three doses administered one is IPV and two are bOPV"
    and input."The latest bOPV dose was administered more than 4 weeks ago"
    and input."The latest IPV dose was administered more than 4 months ago"

/*
@output: Client is due for bOPV and IPV vaccination
@pseudocode: "Immunization recommendation status" = 'Due' (where "Type of polio dose" = 'bOPV') AND (where "Type of polio dose" = 'IPV')
*/
define "Client is due for bOPV and IPV vaccination":
  "Client is due for bOPV and IPV vaccination Case 1"
    or "Client is due for bOPV and IPV vaccination Case 2"
    or "Client is due for bOPV and IPV vaccination Case 3"
    or "Client is due for bOPV and IPV vaccination Case 4"
    or "Client is due for bOPV and IPV vaccination Case 5"
    or "Client is due for bOPV and IPV vaccination Case 6"

/*
@output: Client is due for bOPV and IPV vaccination Guidance
@guidance: Should vaccinate client for first bOPV dose and first IPV dose as client's age is more than 3 months and no polio doses were administered.
Check for contraindications.
@guidance: Should vaccinate client for first IPV dose and second bOPV dose as client's age is more than 14 weeks and the latest bOPV dose was administered more than 4 weeks ago.
Check for contraindications.
@guidance: Should vaccinate client for first bOPV dose and second IPV dose as client's age is more than 14 weeks, bOPV dose was not administered and the first IPV dose was administered more than 4 months ago.
Check for contraindications.
@guidance: Should vaccinate client for first IPV dose and third bOPV dose as client's age is more than 14 weeks, two bOPV doses and no IPV dose were administered and the latest bOPV dose was administered more than 4 weeks ago.
Check for contraindications.
@guidance: Should vaccinate client for second bOPV dose and second IPV dose as one bOPV dose and one IPV dose were administered, the latest bOPV dose was administered more than 4 weeks ago and the latest IPV dose was administered more than 4 months ago. Check for contraindications.
@guidance: Should vaccinate client for third bOPV dose and second IPV dose as two bOPV doses and one IPV dose were administered, the latest bOPV dose was administered more than 4 weeks ago and the latest IPV dose was administered more than 4 months ago. Check for contraindications.
*/
define "Client is due for bOPV and IPV vaccination Guidance":
  case
    when "Client is due for bOPV and IPV vaccination Case 1" then 'Should vaccinate client for first bOPV dose and first IPV dose as client\'s age is more than 3 months and no polio doses were administered.
Check for contraindications.'
    when "Client is due for bOPV and IPV vaccination Case 2" then 'Should vaccinate client for first IPV dose and second bOPV dose as client\'s age is more than 14 weeks and the latest bOPV dose was administered more than 4 weeks ago.
Check for contraindications.'
    when "Client is due for bOPV and IPV vaccination Case 3" then 'Should vaccinate client for first bOPV dose and second IPV dose as client\'s age is more than 14 weeks, bOPV dose was not administered and the first IPV dose was administered more than 4 months ago.
Check for contraindications.'
    when "Client is due for bOPV and IPV vaccination Case 4" then 'Should vaccinate client for first IPV dose and third bOPV dose as client\'s age is more than 14 weeks, two bOPV doses and no IPV dose were administered and the latest bOPV dose was administered more than 4 weeks ago.
Check for contraindications.'
    when "Client is due for bOPV and IPV vaccination Case 5" then 'Should vaccinate client for second bOPV dose and second IPV dose as one bOPV dose and one IPV dose were administered, the latest bOPV dose was administered more than 4 weeks ago and the latest IPV dose was administered more than 4 months ago. Check for contraindications.'
    when "Client is due for bOPV and IPV vaccination Case 6" then 'Should vaccinate client for third bOPV dose and second IPV dose as two bOPV doses and one IPV dose were administered, the latest bOPV dose was administered more than 4 weeks ago and the latest IPV dose was administered more than 4 months ago. Check for contraindications.'
    else ''
  end

/*
@output: Client is not due for polio vaccination Case 1
@pseudocode: "Immunization recommendation status" = 'Not due'
*/
define "Client is not due for polio vaccination Case 1":
  input."One polio primary series dose was administered"
    and input."Client's age is between 6 weeks and 14 weeks"
    and input."The latest bOPV dose was administered less than 4 weeks ago"

/*
@output: Client is not due for polio vaccination Case 2
@pseudocode: "Immunization recommendation status" = 'Not due'
*/
define "Client is not due for polio vaccination Case 2":
  input."Two polio primary series doses were administered"
    and input."The two doses administered are bOPV"
    and input."Client's age is between 6 weeks and 14 weeks"
    and input."The latest bOPV dose was administered less than 4 weeks ago"

/*
@output: Client is not due for polio vaccination Case 3
@pseudocode: "Immunization recommendation status" = 'Not due'
*/
define "Client is not due for polio vaccination Case 3":
  input."Two polio primary series doses were administered"
    and input."From the two doses administered one is bOPV and one is IPV"
    and input."The latest bOPV dose was administered less than 4 weeks ago"
    and input."The latest IPV dose was administered less than 4 months ago"

/*
@output: Client is not due for polio vaccination Case 4
@pseudocode: "Immunization recommendation status" = 'Not due'
*/
define "Client is not due for polio vaccination Case 4":
  input."Three polio primary series doses were administered"
    and input."The three doses administered are bOPV"
    and input."Client's age is less than 14 weeks"

/*
@output: Client is not due for polio vaccination Case 5
@pseudocode: "Immunization recommendation status" = 'Not due'
*/
define "Client is not due for polio vaccination Case 5":
  input."Three polio primary series doses were administered"
    and input."From the three doses administered one is IPV and two are bOPV"
    and input."The latest bOPV dose was administered less than 4 weeks ago"
    and input."The latest IPV dose was administered less than 4 months ago"

/*
@output: Client is not due for polio vaccination Case 6
@pseudocode: "Immunization recommendation status" = 'Not due'
*/
define "Client is not due for polio vaccination Case 6":
  input."Three polio primary series doses were administered"
    and input."From the three doses administered one is bOPV and two are IPV"
    and input."The latest bOPV dose was administered less than 4 weeks ago"

/*
@output: Client is not due for polio vaccination Case 7
@pseudocode: "Immunization recommendation status" = 'Not due'
*/
define "Client is not due for polio vaccination Case 7":
  input."Four polio primary series doses were administered"
    and input."From the four doses administered one is IPV and three are bOPV"
    and input."The latest IPV dose was administered less than 4 months ago"

/*
@output: Client is not due for polio vaccination Case 8
@pseudocode: "Immunization recommendation status" = 'Not due'
*/
define "Client is not due for polio vaccination Case 8":
  input."Four polio primary series doses were administered"
    and input."From the four doses administered two are IPV and two are bOPV"
    and input."The latest bOPV dose was administered less than 4 weeks ago"

/*
@output: Client is not due for polio vaccination
@pseudocode: "Immunization recommendation status" = 'Not due'
*/
define "Client is not due for polio vaccination":
  "Client is not due for polio vaccination Case 1"
    or "Client is not due for polio vaccination Case 2"
    or "Client is not due for polio vaccination Case 3"
    or "Client is not due for polio vaccination Case 4"
    or "Client is not due for polio vaccination Case 5"
    or "Client is not due for polio vaccination Case 6"
    or "Client is not due for polio vaccination Case 7"
    or "Client is not due for polio vaccination Case 8"

/*
@output: Client is not due for polio vaccination Guidance
@guidance: Should not vaccinate client for polio dose as the latest bOPV dose was administered less than 4 weeks ago.
Check for any other vaccines due, and inform the caregiver of when to come back for the next polio dose.
@guidance: Should not vaccinate client for polio dose as client's age is between 6 and 14 weeks, two bOPV doses were administered and the latest bOPV dose was administered less than 4 weeks ago. 
Check for any other vaccines due, and inform the caregiver of when to come back for the next polio dose.
@guidance: Should not vaccinate client for polio dose as the latest bOPV dose was administered less than 4 weeks ago and the latest IPV dose was administered less than 4 months ago. 
Check for any other vaccines due, and inform the caregiver of when to come back for the next polio dose.
@guidance: Should not vaccinate client for polio dose as client's age is less than 14 weeks and three bOPV doses were administered.
Check for any other vaccines due, and inform the caregiver of when to come back for the next polio dose.
@guidance: Should not vaccinate client for polio dose as two bOPV doses and one IPV dose were administered, the latest bOPV dose was administered less than 4 weeks ago and the latest IPV dose was administered less than 4 months ago. 
Check for any other vaccines due, and inform the caregiver of when to come back for the next polio dose.
@guidance: Should not vaccinate client for polio dose as one bOPV dose and two IPV doses were administered and the latest bOPV dose was administered less than 4 weeks ago. 
Check for any other vaccines due, and inform the caregiver of when to come back for the next polio dose.
@guidance: Should not vaccinate client for polio dose as three bOPV doses and one IPV dose were administered and the latest IPV dose was administered less than 4 months ago. 
Check for any other vaccines due, and inform the caregiver of when to come back for the next polio dose.
@guidance: Should not vaccinate client for polio dose as two bOPV doses and two IPV doses were administered and the latest bOPV dose was administered less than 4 weeks ago. 
Check for any other vaccines due, and inform the caregiver of when to come back for the next polio dose.
*/
define "Client is not due for polio vaccination Guidance":
  case
    when "Client is not due for polio vaccination Case 1" then 'Should not vaccinate client for polio dose as the latest bOPV dose was administered less than 4 weeks ago.
Check for any other vaccines due, and inform the caregiver of when to come back for the next polio dose.'
    when "Client is not due for polio vaccination Case 2" then 'Should not vaccinate client for polio dose as client\'s age is between 6 and 14 weeks, two bOPV doses were administered and the latest bOPV dose was administered less than 4 weeks ago. 
Check for any other vaccines due, and inform the caregiver of when to come back for the next polio dose.'
    when "Client is not due for polio vaccination Case 3" then 'Should not vaccinate client for polio dose as the latest bOPV dose was administered less than 4 weeks ago and the latest IPV dose was administered less than 4 months ago. 
Check for any other vaccines due, and inform the caregiver of when to come back for the next polio dose.'
    when "Client is not due for polio vaccination Case 4" then 'Should not vaccinate client for polio dose as client\'s age is less than 14 weeks and three bOPV doses were administered.
Check for any other vaccines due, and inform the caregiver of when to come back for the next polio dose.'
    when "Client is not due for polio vaccination Case 5" then 'Should not vaccinate client for polio dose as two bOPV doses and one IPV dose were administered, the latest bOPV dose was administered less than 4 weeks ago and the latest IPV dose was administered less than 4 months ago. 
Check for any other vaccines due, and inform the caregiver of when to come back for the next polio dose.'
    when "Client is not due for polio vaccination Case 6" then 'Should not vaccinate client for polio dose as one bOPV dose and two IPV doses were administered and the latest bOPV dose was administered less than 4 weeks ago. 
Check for any other vaccines due, and inform the caregiver of when to come back for the next polio dose.'
    when "Client is not due for polio vaccination Case 7" then 'Should not vaccinate client for polio dose as three bOPV doses and one IPV dose were administered and the latest IPV dose was administered less than 4 months ago. 
Check for any other vaccines due, and inform the caregiver of when to come back for the next polio dose.'
    when "Client is not due for polio vaccination Case 8" then 'Should not vaccinate client for polio dose as two bOPV doses and two IPV doses were administered and the latest bOPV dose was administered less than 4 weeks ago. 
Check for any other vaccines due, and inform the caregiver of when to come back for the next polio dose.'
    else ''
  end

/*
@output: Client is due for IPV vaccination Case 1
@pseudocode: "Immunization recommendation status" = 'Due' (where "Type of polio dose" = 'IPV')
*/
define "Client is due for IPV vaccination Case 1":
  input."One polio primary series dose was administered"
    and input."The polio dose administered is bOPV"
    and input."Client's age is more than or equal to 14 weeks"
    and input."The latest bOPV dose was administered less than 4 weeks ago"

/*
@output: Client is due for IPV vaccination Case 2
@pseudocode: "Immunization recommendation status" = 'Due' (where "Type of polio dose" = 'IPV')
*/
define "Client is due for IPV vaccination Case 2":
  input."Two polio primary series doses were administered"
    and input."The two doses administered are bOPV"
    and input."Client's age is more than or equal to 14 weeks"
    and input."The latest bOPV dose was administered less than 4 weeks ago"

/*
@output: Client is due for IPV vaccination Case 3
@pseudocode: "Immunization recommendation status" = 'Due' (where "Type of polio dose" = 'IPV')
*/
define "Client is due for IPV vaccination Case 3":
  input."Two polio primary series doses were administered"
    and input."From the two doses administered one is bOPV and one is IPV"
    and input."The latest bOPV dose was administered less than 4 weeks ago"
    and input."The latest IPV dose was administered more than 4 months ago"

/*
@output: Client is due for IPV vaccination Case 4
@pseudocode: "Immunization recommendation status" = 'Due' (where "Type of polio dose" = 'IPV')
*/
define "Client is due for IPV vaccination Case 4":
  input."Three polio primary series doses were administered"
    and input."The three doses administered are bOPV"
    and input."Client's age is more than or equal to 14 weeks"

/*
@output: Client is due for IPV vaccination Case 5
@pseudocode: "Immunization recommendation status" = 'Due' (where "Type of polio dose" = 'IPV')
*/
define "Client is due for IPV vaccination Case 5":
  input."Three polio primary series doses were administered"
    and input."From the three doses administered one is IPV and two are bOPV"
    and input."The latest bOPV dose was administered less than 4 weeks ago"
    and input."The latest IPV dose was administered more than 4 months ago"

/*
@output: Client is due for IPV vaccination Case 6
@pseudocode: "Immunization recommendation status" = 'Due' (where "Type of polio dose" = 'IPV')
*/
define "Client is due for IPV vaccination Case 6":
  input."Four polio primary series doses were administered"
    and input."From the four doses administered one is IPV and three are bOPV"
    and input."The latest IPV dose was administered more than 4 months ago"

/*
@output: Client is due for IPV vaccination
@pseudocode: "Immunization recommendation status" = 'Due' (where "Type of polio dose" = 'IPV')
*/
define "Client is due for IPV vaccination":
  "Client is due for IPV vaccination Case 1"
    or "Client is due for IPV vaccination Case 2"
    or "Client is due for IPV vaccination Case 3"
    or "Client is due for IPV vaccination Case 4"
    or "Client is due for IPV vaccination Case 5"
    or "Client is due for IPV vaccination Case 6"

/*
@output: Client is due for IPV vaccination Guidance
@guidance: Should vaccinate client for first IPV dose as client's age is more than 14 weeks and the latest bOPV was administered less than 4 weeks ago.
Check for contraindications.
@guidance: Should vaccinate client for first IPV dose as client's age is more than 14 weeks, IPV dose was not administered and the latest bOPV dose was administered less than 4 weeks ago.
Check for contraindications.
@guidance: Should vaccinate client for second IPV dose as one bOPV dose and one IPV dose were administered, the latest bOPV dose was administered less than 4 weeks ago and the latest IPV dose was administered more than 4 months ago. Check for contraindications.
@guidance: Should vaccinate client for first IPV dose as client's age is more than 14 weeks, three bOPV doses were administered and IPV dose was not administered. Check for contraindications.
@guidance: Should vaccinate client for second IPV dose as two bOPV doses and one IPV dose were administered, the latest bOPV dose was administered less than 4 weeks ago and the latest IPV dose was administered more than 4 months ago. Check for contraindications.
@guidance: Should vaccinate client for second IPV dose as three bOPV doses and one IPV dose were administered and the latest IPV dose was administered more than 4 months ago. Check for contraindications.
*/
define "Client is due for IPV vaccination Guidance":
  case
    when "Client is due for IPV vaccination Case 1" then 'Should vaccinate client for first IPV dose as client\'s age is more than 14 weeks and the latest bOPV was administered less than 4 weeks ago.
Check for contraindications.'
    when "Client is due for IPV vaccination Case 2" then 'Should vaccinate client for first IPV dose as client\'s age is more than 14 weeks, IPV dose was not administered and the latest bOPV dose was administered less than 4 weeks ago.
Check for contraindications.'
    when "Client is due for IPV vaccination Case 3" then 'Should vaccinate client for second IPV dose as one bOPV dose and one IPV dose were administered, the latest bOPV dose was administered less than 4 weeks ago and the latest IPV dose was administered more than 4 months ago. Check for contraindications.'
    when "Client is due for IPV vaccination Case 4" then 'Should vaccinate client for first IPV dose as client\'s age is more than 14 weeks, three bOPV doses were administered and IPV dose was not administered. Check for contraindications.'
    when "Client is due for IPV vaccination Case 5" then 'Should vaccinate client for second IPV dose as two bOPV doses and one IPV dose were administered, the latest bOPV dose was administered less than 4 weeks ago and the latest IPV dose was administered more than 4 months ago. Check for contraindications.'
    when "Client is due for IPV vaccination Case 6" then 'Should vaccinate client for second IPV dose as three bOPV doses and one IPV dose were administered and the latest IPV dose was administered more than 4 months ago. Check for contraindications.'
    else ''
  end

/*
@output: Polio immunization schedule is complete
@pseudocode: "Immunization recommendation status" = 'Complete'
*/
define "Polio immunization schedule is complete":
  input."Five polio primary series doses were administered"

/*
@output: Polio immunization schedule is complete Guidance
@guidance: Polio routine immunization schedule is complete. Five polio primary series doses were administered. Check for any vaccines due.
*/
define "Polio immunization schedule is complete Guidance":
  'Polio routine immunization schedule is complete. Five polio primary series doses were administered. Check for any vaccines due.'

