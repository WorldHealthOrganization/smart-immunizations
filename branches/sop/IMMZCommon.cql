library IMMZCommon

using FHIR version '4.0.1'

include FHIRHelpers version '4.0.1'

/**
 * @description Fetches a singleton protocol applied from an immunization
 * @comment The protocol list from the immunization
 */
define function Only(protocols List<FHIR.Immunization.ProtocolApplied>):
  singleton from protocols

/**
 * @description Fetches a singleton protocol applied from an immunization
 * @comment The protocol list from the immunization
 */
define fluent function only(protocols List<FHIR.Immunization.ProtocolApplied>):
  singleton from protocols

/**
 * @description Takes the date choice of a date/string choice (for Immunization date)
 */
define function ToDate(choice Choice<FHIR.date, FHIR.string>):
  case
	  when choice is FHIR.date then
    	choice as FHIR.date
		else
      Message(null as FHIR.date, true, '1', 'Error', 'Cannot compute a date from a String value')
	end

/**
 * @description Takes the date choice of a date/string choice (for Immunization date)
 */
define function ToDateTime(choice Choice<FHIR.dateTime, FHIR.string>):
  case
	  when choice is FHIR.dateTime then
    	choice as FHIR.dateTime
		else
      Message(null as FHIR.dateTime, true, '1', 'Error', 'Cannot compute a date from a String value')
	end


/**
 * @description Takes a choice of FHIR.string and FHIR.positiveInt and ensures the result is a FHIR.positiveInt
 */
define function ToPositiveInt(choice Choice<FHIR.positiveInt, FHIR.string>):
  case
	  when choice is FHIR.positiveInt then
    	choice as FHIR.positiveInt
		else
      Message(null as FHIR.positiveInt, true, '1', 'Error', 'Cannot compute a positive from a String value') // TODO: I'm sure that this is supported somehow?
	end


/**
 * @description Takes a choice between a Medication and a CodeableConcept and returns just the code of the medication
 */
define function ExtractMedicationCode(choice Choice<FHIR.CodeableConcept, FHIR.Reference>):
  case
	  when choice is FHIR.CodeableConcept then
    	choice as FHIR.CodeableConcept
    when choice is FHIR.Reference then
      First([Medication] M 
        where M.id = Last(Split(choice.reference, '/'))
        return M.code as FHIR.CodeableConcept)
		else
      Message(null as FHIR.CodeableConcept, true, '1', 'Error', 'Cannot compute a medication code') // TODO: I'm sure that this is supported somehow?
	end


/**
 * @description Takes a choice between a Medication and a CodeableConcept and returns just the code of the medication
 */
define function ExtractMedicationInitiationDate(choice Choice<FHIR.dateTime, FHIR.Period>):
  case
	  when choice is FHIR.Period then
    	start of (choice as FHIR.Period)
    when choice is FHIR.dateTime then
      choice as FHIR.dateTime
		else
      Message(null as FHIR.dateTime, true, '1', 'Error', 'Cannot compute medication treatment initiation date') // TODO: I'm sure that this is supported somehow?
	end

