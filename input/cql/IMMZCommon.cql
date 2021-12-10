library IMMZCommon

using FHIR version '4.0.1'

include WHOCommon called WCom
include WHOConcepts called Wcon
include FHIRHelpers version '4.0.1'
include FHIRCommon called FC
include IMMZConcepts called IMMZc

context Patient

//Check patient is alive

//Get patient immunizations
define "Get Immunization":
  [Immunization]

// check vaccine status
define "Immunization Status":
  [Immunization] I
    return I.status

//check Immunization.status for not-done
define "Immunization Completed":
  [Immunization] I
    where I.status in {'completed'}

//check Immunization.status for not-done
define "Immunization Not Done":
  [Immunization] I
    where I.status in {'not-done'}

//how do we handle entered-in-error? It seems like it should be different from not-done in how it should be handled? These should be ignored so we likely don't need to check for them

//check vaccine status reason - e.g. if vaccine was not given
define "Immunization StatusReason":
  [Immunization] I
    return I.statusReason

//define statusReason Immunizations for when it was not given

//Procedure for vaccine administration


//Get patient observations
define "Get Observations":
  [Observation]

//Check if patient is pregnant
//not sure if pregnancy is an Observation
define "Pregnant":
  [Observation] O
  //IPS Uses Observation - https://hl7.org/fhir/uv/ips/StructureDefinition-observation-pregnancy-status-uv-ips.html
    where (O.value as CodeableConcept) in Wcon."Pregnancy Status Pregnant"
/*
Need to figure out how to add the OR Condition in case pregnancy is stored in a condition instead of an Observation 
or [Condition] C
      where (C.code as CodeableConcept) in Wcon."Pregnancy Status Pregnant"
*/

//Get adverse events - should be captured in Observations
/**
 * @description Fetches a singleton protocol applied from an immunization
 * @comment The protocol list from the immunization
 */
define function Only(protocols List<FHIR.Immunization.ProtocolApplied>):
  singleton from protocols

/**
 * @description Takes the date choice of a date/string choice (for Immunization date)
 */
define function ToDate(choice Choice<FHIR.date, FHIR.string>):
  case
	  when choice is FHIR.date then
    	choice as FHIR.date
		else
      Message(null as FHIR.date, true, '1', 'Error', 'Cannot compute an date from a String value')
	end

/**
 * @description Takes the date choice of a date/string choice (for Immunization date)
 */
define function ToDateTime(choice Choice<FHIR.dateTime, FHIR.string>):
  case
	  when choice is FHIR.dateTime then
    	choice as FHIR.dateTime
		else
      Message(null as FHIR.dateTime, true, '1', 'Error', 'Cannot compute an date from a String value')
	end