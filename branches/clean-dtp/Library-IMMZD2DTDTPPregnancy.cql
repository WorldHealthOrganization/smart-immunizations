
/*
 * Library: IMMZD2DTDTPPregnancy (IMMZ.D2.DT.DTP.Pregnancy)
 * Rule: Determine if the client is due for a diphtheria, tetanus and pertussis vaccination according to the national immunization schedule
 * Decision Table: Determine whether Diphtheria-tetanus-pertussis vaccines are needed for pregnant women
 * Trigger: IMMZ.D2 Determine required vaccination(s) if any
 */
library IMMZD2DTDTPPregnancy
// Start Skeleton CQL
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1'
include IMMZCommon called IMMZCom
include IMMZConcepts called IMMZc
include IMMZConfig called IMMZCon
include IMMZVaccineLibrary called IMMZvl
include FHIRCommon called FC
include IMMZD2DTDTPInput called input

// End Skeleton CQL
context Patient



/*
@dynamicValue: Guidance
*/
define "Guidance":
  case
    when "Client should follow 'delayed or interrupted series' decision logic" then "Client should follow 'delayed or interrupted series' decision logic Guidance"
    when "Client should follow 'pregnancy starting with 3 doses' decision logic" then "Client should follow 'pregnancy starting with 3 doses' decision logic Guidance"
    when "Client should follow 'pregnancy starting with 4 doses' decision logic" then "Client should follow 'pregnancy starting with 4 doses' decision logic Guidance"
    when "Tetanus and diphtheria immunization schedule is complete" then "Tetanus and diphtheria immunization schedule is complete Guidance"
    else ''
  end

/*
@output: Client should follow 'delayed or interrupted series' decision logic
@pseudocode: 
*/
define "Client should follow 'delayed or interrupted series' decision logic":
  input."No DTP primary series doses were administered"
    and input."Client is currently pregnant"

/*
@output: Client should follow 'delayed or interrupted series' decision logic Guidance
@guidance: The client has a delayed start. Please follow the 'delayed or interrupted' schedule.
*/
define "Client should follow 'delayed or interrupted series' decision logic Guidance":
  'The client has a delayed start. Please follow the \'delayed or interrupted\' schedule.'

/*
@output: Client should follow 'pregnancy starting with 3 doses' decision logic
@pseudocode: 
*/
define "Client should follow 'pregnancy starting with 3 doses' decision logic":
  input."Three DTP primary series doses were administered"
    and input."No tetanus and diphtheria booster dose was administered"
    and input."Client is currently pregnant"

/*
@output: Client should follow 'pregnancy starting with 3 doses' decision logic Guidance
@guidance: The client has received 3 TTCV doses during childhood. Please follow the 'pregnancy starting with 3 doses' schedule.
*/
define "Client should follow 'pregnancy starting with 3 doses' decision logic Guidance":
  'The client has received 3 TTCV doses during childhood. Please follow the \'pregnancy starting with 3 doses\' schedule.'

/*
@output: Client should follow 'pregnancy starting with 4 doses' decision logic
@pseudocode: 
*/
define "Client should follow 'pregnancy starting with 4 doses' decision logic":
  input."Three DTP primary series doses were administered"
    and input."One tetanus and diphtheria booster dose was administered"
    and input."Client is currently pregnant"

/*
@output: Client should follow 'pregnancy starting with 4 doses' decision logic Guidance
@guidance: The client has received 4 TTCV doses during childhood or pre-adulthood. Please follow the 'pregnancy starting with 4 doses' schedule.
*/
define "Client should follow 'pregnancy starting with 4 doses' decision logic Guidance":
  'The client has received 4 TTCV doses during childhood or pre-adulthood. Please follow the \'pregnancy starting with 4 doses\' schedule.'

/*
@output: Tetanus and diphtheria immunization schedule is complete Case 1
@pseudocode: "Immunization recommendation status" = "Complete" (where "Vaccine type" = "Tetanus and diphtheria containing vaccines")
*/
define "Tetanus and diphtheria immunization schedule is complete Case 1":
  input."Three DTP primary series doses were administered"
    and input."Two tetanus and diphtheria booster doses were administered"

/*
@output: Tetanus and diphtheria immunization schedule is complete Case 2
@pseudocode: "Immunization recommendation status" = "Complete" (where "Vaccine type" = "Tetanus and diphtheria containing vaccines")
*/
define "Tetanus and diphtheria immunization schedule is complete Case 2":
  input."Three DTP primary series doses were administered"
    and input."Three tetanus and diphtheria booster doses were administered"

/*
@output: Tetanus and diphtheria immunization schedule is complete
@pseudocode: "Immunization recommendation status" = "Complete" (where "Vaccine type" = "Tetanus and diphtheria containing vaccines")
*/
define "Tetanus and diphtheria immunization schedule is complete":
  "Tetanus and diphtheria immunization schedule is complete Case 1"
    or "Tetanus and diphtheria immunization schedule is complete Case 2"

/*
@output: Tetanus and diphtheria immunization schedule is complete Guidance
@guidance: Tetanus and diphtheria immunization schedule is complete.Three DTP primary series doses and two tetanus and diphtheria booster doses were administered. There is no need for any additional tetanus and diphtheria doses.
Check for any other vaccines due.
@guidance: Tetanus and diphtheria immunization schedule is complete.Three DTP primary series doses and three tetanus and diphtheria booster doses were administered. There is no need for any additional tetanus and diphtheria doses.
Check for any other vaccines due.
*/
define "Tetanus and diphtheria immunization schedule is complete Guidance":
  case
    when "Tetanus and diphtheria immunization schedule is complete Case 1" then 'Tetanus and diphtheria immunization schedule is complete.Three DTP primary series doses and two tetanus and diphtheria booster doses were administered. There is no need for any additional tetanus and diphtheria doses.
Check for any other vaccines due.'
    when "Tetanus and diphtheria immunization schedule is complete Case 2" then 'Tetanus and diphtheria immunization schedule is complete.Three DTP primary series doses and three tetanus and diphtheria booster doses were administered. There is no need for any additional tetanus and diphtheria doses.
Check for any other vaccines due.'
    else ''
  end


/*
@test: Test expected results based on example patients
*/
define "Test Validation":
  case
    when Patient.id = '54.D0P' then "Client should follow 'delayed or interrupted series' decision logic" and "Guidance" = 'The client has a delayed start. Please follow the \'delayed or interrupted\' schedule.'
    when Patient.id = '55.D3B0P' then "Client should follow 'pregnancy starting with 3 doses' decision logic" and "Guidance" = 'The client has received 3 TTCV doses during childhood. Please follow the \'pregnancy starting with 3 doses\' schedule.'
    when Patient.id = '56.D3B1P' then "Client should follow 'pregnancy starting with 4 doses' decision logic" and "Guidance" = 'The client has received 4 TTCV doses during childhood or pre-adulthood. Please follow the \'pregnancy starting with 4 doses\' schedule.'
    when Patient.id = '57.D3B2' then "Tetanus and diphtheria immunization schedule is complete Case 1" and "Guidance" = 'Tetanus and diphtheria immunization schedule is complete.Three DTP primary series doses and two tetanus and diphtheria booster doses were administered. There is no need for any additional tetanus and diphtheria doses.
Check for any other vaccines due.'
    when Patient.id = '58.D3B3' then "Tetanus and diphtheria immunization schedule is complete Case 2" and "Guidance" = 'Tetanus and diphtheria immunization schedule is complete.Three DTP primary series doses and three tetanus and diphtheria booster doses were administered. There is no need for any additional tetanus and diphtheria doses.
Check for any other vaccines due.'
    else 'No test case set'
  end
