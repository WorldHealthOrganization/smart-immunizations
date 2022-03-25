library IMMZCommon

using FHIR version '4.0.1'

include WHOCommon called WCom
include WHOConcepts called Wcon
include FHIRHelpers version '4.0.1'
include FHIRCommon called FC
include IMMZConcepts called IMMZc

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
define "Pregnant Condition":
  [Condition] C
    where (C.code as CodeableConcept) in Wcon."Pregnancy Status Pregnant"

define "Pregnant": 
  exists
  ( "Pregnant Observation")
  or exists ("Pregnant Condition")


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
	[Condition] C 
	where C.code in IMMZc."Immunocompromised"
	and
  	C.clinicalStatus in FC."Active Condition"
	and
	C.verificationStatus ~ FC."confirmed"

/**
 * @dataElement All doses administered to patient ordered by newest to oldest
 */
define "Doses Administered":
  [Immunization] I
    where I.status = 'completed'
    sort by (occurrence as FHIR.dateTime) desc

/**
 * @dataElement BCG Doses Administered
 */
define "BCG Doses Administered":
  "Doses Administered" I 
  where 
    I.vaccineCode in IMMZc."BCG Vaccine"

/**
 * @dataElement Patient has no BCG doses
 */
define "No BCG Doses Administered":
  not exists("BCG Doses Administered")

/**
 * @dataElement Polio Doses Administered
 */
define "Polio Doses Administered":
  "Doses Administered" I
  where
    I.vaccineCode in IMMZc."Polio Vaccine"

/**
 * @dataElement Diptheria containing doses Administered
 */
define "Diphtheria Doses Administered":
  "Doses Administered" I
  where
    I.vaccineCode in IMMZc."Diphtheria Vaccine"

/**
 * @dataElement Cholera containing doses administered
 */
define "Cholera Doses Administered":
  "Doses Administered" I
  where
    I.vaccineCode in IMMZc."Cholera Vaccine"

/**
 * @dataElement Hib containing doses administered
 */
define "Hib Doses Administered":
  "Doses Administered" I
  where
    I.vaccineCode in IMMZc."Hib Vaccine"

/**
 * @dataElement HepA containing doses administered
 */
define "HepA Doses Administered":
  "Doses Administered" I
  where
    I.vaccineCode in IMMZc."HepA Vaccine"

/**
 * @dataElement HepB containing doses administered
 */
define "HepB Doses Administered":
  "Doses Administered" I
  where
    I.vaccineCode in IMMZc."HepB Vaccine"

/**
 * @dataElement HPV containing doses administered
 */
define "HPV Doses Administered":
  "Doses Administered" I
  where
    I.vaccineCode in IMMZc."HPV Vaccine"

/**
 * @dataElement Japanese Encephalitis containing doses administered
 */
define "Japanese Encephalitis Doses Administered":
  "Doses Administered" I
  where
    I.vaccineCode in IMMZc."Japanese Encephalitis Vaccine"

/**
 * @dataElement MCV containing doses administered
 */
define "MCV Doses Administered":
  "Doses Administered" I
  where
    I.vaccineCode in IMMZc."MCV Vaccine"

/**
 * @dataElement Meningococcal containing doses administered
 */
define "Meningococcal Doses Administered":
  "Doses Administered" I
  where
    I.vaccineCode in IMMZc."Meningococcal Vaccine"

/**
 * @dataElement Mumps containing doses administered
 */
define "Mumps Doses Administered":
  "Doses Administered" I
  where
    I.vaccineCode in IMMZc."Mumps Vaccine"

/**
 * @dataElement Pertussis containing doses administered
 */
define "Pertussis Doses Administered":
  "Doses Administered" I
  where
    I.vaccineCode in IMMZc."Pertussis Vaccine"

/**
 * @dataElement Pertussis containing doses administered
 */
define "Pneumococcal Doses Administered":
  "Doses Administered" I
  where
    I.vaccineCode in IMMZc."Pneumococcal Vaccine"

/**
 * @dataElement Rabies containing doses administered
 */
define "Rabies Doses Administered":
  "Doses Administered" I
  where
    I.vaccineCode in IMMZc."Rabies Vaccine"

/**
 * @dataElement Rotavirus containing doses administered
 */
define "Rotavirus Doses Administered":
  "Doses Administered" I
  where
    I.vaccineCode in IMMZc."Rotavirus Vaccine"

/**
 * @dataElement Rubella containing doses administered
 */
define "Rubella Doses Administered":
  "Doses Administered" I
  where
    I.vaccineCode in IMMZc."Rubella Vaccine"

/**
 * @dataElement Seasonal Influenza containing doses administered
 */
define "Seasonal Influenza Doses Administered":
  "Doses Administered" I
  where
    I.vaccineCode in IMMZc."Seasonal Influenza Vaccine"

/**
 * @dataElement Tetanus containing doses administered
 */
define "Tetanus Doses Administered":
  "Doses Administered" I
  where
    I.vaccineCode in IMMZc."Tetanus Vaccine"

/**
 * @dataElement Typhoid containing doses administered
 */
define "Typhoid Doses Administered":
  "Doses Administered" I
  where
    I.vaccineCode in IMMZc."Typhoid Vaccine"

/**
 * @dataElement Varicella containing doses administered
 */
define "Varicella Doses Administered":
  "Doses Administered" I
  where
    I.vaccineCode in IMMZc."Varicella Vaccine"

/**
 * @dataElement Yellow Fever containing doses administered
 */
define "Yellow Fever Doses Administered":
  "Doses Administered" I
  where
    I.vaccineCode in IMMZc."Yellow Fever Vaccine"

/**
 * @dataElement DTP containing doses administered
 */
define "DTP Doses Administered":
  "Doses Administered" I
  where
    I.vaccineCode in IMMZc."DTP Vaccine"


/******************************
 * Test Results
 */

/* 
 * @dataElement TST Test Result
 */
define "TST Test Results":
	[Observation: code in IMMZc."TST Test Result"] O
  where O.status in { 'final', 'amended', 'corrected' }
    and not(Coalesce(WCom.ModifierExtension(O, 'who-notDone').value, false))
  sort by effective desc

/*
 * @dataElement Most recent TST Test result
 */
define "Most Recent TST Test Result":
  First("TST Test Results" O
    return O.value as FHIR.CodeableConcept)
  
/* 
 * @dataElement IGRA Test Result
 */
define "IGRA Test Results":
	[Observation: code in IMMZc."IGRA Test Result"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and not(Coalesce(WCom.ModifierExtension(O, 'who-notDone').value, false))
    sort by effective desc

/*
 * @dataElement Most recent IGRA Test Result
 */
define "Most Recent IGRA Test Result":
  First("IGRA Test Results" O
    return O.value as FHIR.CodeableConcept)

/* 
 * @dataElement All CD4% observations ordered by date issued
 */
define "Observed CD4% Measurements":
	[Observation: code in IMMZc."CD4% Test Result"] O
    sort by effective desc
		
/**
 * @dataElement The most recent CD4%
 */
define "Most Recent CD4%":
  First("Observed CD4% Measurements" O 
    return O.value as FHIR.Quantity)

/**
 * @dataElement The observed CD4 counts ordered newest to oldest
 */
define "Observed CD4 Count":
	[Observation: code in IMMZc."CD4 Count Test Result"] O
    sort by effective desc

/*
  @dataElement HIV Status observations of the patient most recent first
*/
define "HIV Status":
  [Observation: IMMZc."HIV status"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Coalesce(WCom.ModifierExtension(O, 'who-notDone').value, false) is false
    return O.value as FHIR.CodeableConcept

/**
 * @dataElement The most recent CD4 count
 */
define "Most Recent CD4 Count":
  First("Observed CD4 Count" O 
    return O.value as FHIR.Quantity)

/** 
 * @dataElement Patient age in years
 */
define "Current Patient Age In Years":
  AgeInYearsAt(Today())

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