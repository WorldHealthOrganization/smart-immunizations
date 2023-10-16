library IMMZCommon

using FHIR version '4.0.1'

include WHOCommon called WCom
include WHOConcepts called Wcon
include FHIRHelpers version '4.0.1'
include FHIRCommon called FC
include IMMZConcepts called IMMZc


code "[#] Births total": '11640-0' from IMMZc."LOINC" display 'Pregnancy outcome'
code "[#] Births.preterm": '11637-6' from IMMZc."LOINC" display 'Preterm'
context Patient

//TODO: Check patient is alive

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

//how do we handle entered-in-error? It seems like it should be different from not-done in how it should be handled? These should be ignored so we likely don't need to check for them. We should maybe set these to check for statuses like complete, or amended 

//check vaccine status reason - e.g. if vaccine was not given
define "Immunization StatusReason":
  [Immunization] I
    return I.statusReason

//define statusReason Immunizations for when it was not given

//Procedure for vaccine administration

//Get patient observations. Do we need this statement to get all Observations? 
define "Get Observations":
  [Observation]

//Check if patient is pregnant
//not sure if pregnancy is an Observation
define "Pregnant Observation":
  [Observation] O
  //IPS Uses Observation - https://hl7.org/fhir/uv/ips/StructureDefinition-observation-pregnancy-status-uv-ips.html
    where (O.value as CodeableConcept) in Wcon."Pregnancy Status Pregnant"
/*
Need to figure out how to add the OR Condition in case pregnancy is stored in a condition instead of an Observation 
or [Condition] C
      where (C.code as CodeableConcept) in Wcon."Pregnancy Status Pregnant"
*/

/*
define "Patient Has Active Sickle-cell disease":
  exists([Condition: code = IMMZc."Sickle-cell Disease Condition"] C
  where C.clinicalStatus in FC."Active Condition"
  and C.abatement is null)
*/

define "Pregnant Condition":
  [Condition] C
    where (C.code as CodeableConcept) in Wcon."Pregnancy Status Pregnant" or (C.code as CodeableConcept) ~ IMMZc."Currently Pregnant"

define "Pregnant": 
  exists
  ( "Pregnant Observation")
  or exists ("Pregnant Condition")

//Seronegative. Relevant for Dengue 
/*
define "Individual is Seronegative for Dengue":
  [Observation] O
    where (O.value as CodeableConcept) in IMMZc.Seronegative
*/

//Total number of births including abortions, stillbirths and live births.
define "Patient mother's pregnancy outcome observation":
  [Observation: code = "[#] Births total"] O
    return O.value

// Total number of children whose birth occurred through the end of the last day of the 37th week (259th day) 
// following onset of the last menstrual period
define "Preterm":
  [Observation: code = "[#] Births.preterm"] O
    return O.value

//Observed Preterm birth
define "Preterm Birth":
  [Observation] O
    where (O.value as CodeableConcept) in IMMZc.PretermBirth

//@dataElement Adverse Event:
define "Adverse Event":
  from [Immunization] I, [Observation] O
    where O.id in (I.reaction R return Last(Split(R.detail.reference, '/')))
    return O

/* 
 * @dataElement Allergy = True
 */
define "Allergy = True":
	[AllergyIntolerance] A
	where 
	A.clinicalStatus ~ FC."allergy-active"
	and
	A.verificationStatus ~ FC."allergy-confirmed"

/* 
 * @dataElement Immunocompromised = True
 */
define "Immunocompromised = True":
	exists([Condition] C 
	where C.code in IMMZc."Immunocompromised"
	and
  	C.clinicalStatus in FC."Active Condition"
	and
	C.verificationStatus ~ FC."confirmed")

/**
 * @dataElement All Doses Administered to Patient to patient ordered newest to oldest
 */
define "Doses Administered to Patient":
  [Immunization] I
    where I.status = 'completed'
    sort by date from (occurrence as FHIR.dateTime) desc
/**
 * Contraindications 
 */
define "Severely Immunosuppressed Condition":
  [Condition: IMMZc."Severely immunosuppressed"]

define "History of Anaphylactic Reactions Condition":
  [Condition: IMMZc."History of anaphylactic reactions"]

define "Severe Allergic Reactions Condition":
  [Condition: IMMZc."Severe allergic reactions"]

define "Symptomatic HIV Infection Condition":
  [Condition: IMMZc."Symptomatic HIV infection"]


/******************************
 * Test Results
 */


define "Patient birth weight observation value":
[Observation: code in IMMZc."Patient birth weight observation value"] O
  return O.value as FHIR.Quantity

/** 
 * @dataElement Patient age in years
 */
define "Current Patient Age In Years":
  AgeInYearsAt(Today())
  //Today() - (Patient.birthDate as System.Date)

/** 
 * @dataElement Patient age in weeks
 */
define "Current Patient Age In Weeks":
  AgeInWeeksAt(Today())

/** 
 * @dataElement Patient age in months
 */
define "Current Patient Age In Months":
  AgeInMonthsAt(Today())

/** 
 * @dataElement Patient biological sex used for deciding vaccine eligibility
 * TODO: "Gender" of patient in FHIR is the administrative gender - or can we expect that this will be biological sex and administrative
 *        gender identity will be captured using the gender identity extension?
 */
define "Patient Biological Sex":
  Patient.gender

define "Patient HAART Treatment Start Date":
  Last([MedicationAdministration] A 
    where 
      ExtractMedicationCode(A.medication) in IMMZc."ARV Drugs" 
      and A.status in { 'active', 'complete' }
      and ExtractMedicationInitiationDate(A.effective) less than 12 'month' before Today()
      return ExtractMedicationInitiationDate(A.effective))

define "Patient HAART Treatment Started 6 to 12 Months Ago":
  "Patient HAART Treatment Start Date" between Now() - 12 months and Now() - 6 months

/**
 * @dataElement The patient has a medication record which indicates that they are receiving ARV
 */
define "Patient is receiving HAART":
 //exists([MedicationStatement] S where ExtractMedicationCode(S.medication) in IMMZc."ARV Drugs" and S.status = 'active')
 //or 
 exists([MedicationAdministration] A where ExtractMedicationCode(A.medication) in IMMZc."ARV Drugs" and A.status = 'in-progress')
 //union 
 //

/*
  @dataElement HIV Status observations of the patient most recent first
*/
define "HIV Status":
  [Observation: IMMZc."HIV status"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Coalesce(WCom.ModifierExtension(O, 'who-notDone').value, false) is false
    return O.value as FHIR.CodeableConcept

/*
  @dataElement Date and time of last live attenuated vaccine
*/
define "Live Attenuated Vaccines":
  "Doses Administered to Patient" I where I.vaccineCode in IMMZc."Live Attenuated"

define "Date of Latest Live Attenuated Vaccine":
  First("Live Attenuated Vaccines").occurrence as dateTime

/******************************
 * CQL Helper Functions
 */

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

