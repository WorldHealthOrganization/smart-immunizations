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
 * @dataElement All Doses Administered to Patient to patient ordered by newest to oldest
 */
define "Doses Administered to Patient":
  [Immunization] I
    where I.status = 'completed'
    sort by (occurrence as FHIR.dateTime) desc

/**
 * @dataElement BCG Doses Administered to Patient
 */
define "BCG Doses Administered to Patient":
  "Doses Administered to Patient" I 
  where 
    I.vaccineCode in IMMZc."BCG Vaccine"

/**
 * @dataElement Patient has no BCG doses
 */
define "No BCG Doses Administered to Patient":
  not exists("BCG Doses Administered to Patient")

/**
 * @dataElement Polio Doses Administered to Patient
 */
define "Polio Doses Administered to Patient":
  "Doses Administered to Patient" I
  where
    I.vaccineCode in IMMZc."Polio Vaccine"

/**
 * @dataElement Polio Doses Administered to Patient
 */
define "bOPV Doses Administered to Patient":
  "Doses Administered to Patient" I
  where
    I.vaccineCode in IMMZc."Oral Polio Vaccine"

/**
 * @dataElement Patient has no bOPV Doses
 */
define "Number of bOPV Doses Administered to Patient":
  Count("bOPV Doses Administered to Patient" O where (singleton from O.protocolApplied).doseNumber != 0)

/**
 * @dataElement Patient has no IPV doses
 */
define "No bOPV Doses Administered to Patient":
  not exists ("bOPV Doses Administered to Patient")

/** 
 * @dataElement Date of last OPV dose administration
 */
define "Date Last bOPV Dose Administered to Patient":
  date from (First("bOPV Doses Administered to Patient").occurrence as FHIR.dateTime)

/**
 * @dataElement Polio Doses Administered to Patient
 */
define "IPV Doses Administered to Patient":
  "Doses Administered to Patient" I
  where
    I.vaccineCode in IMMZc."Inactivated Polio Vaccine"

/**
 * @dataElement Patient has no IPV doses
 */
define "Number of IPV Doses Administered to Patient":
  Count("IPV Doses Administered to Patient" O where (singleton from O.protocolApplied).doseNumber != 0)

/**
 * @dataElement Patient has no IPV doses
 */
define "No IPV Doses Administered to Patient":
  not exists ("IPV Doses Administered to Patient")

/** 
 * @dataElement Date of last IPV dose administration
 */
define "Date Last IPV Dose Administered to Patient":
  date from (First("IPV Doses Administered to Patient").occurrence as FHIR.dateTime)

/**
 * @dataElement Patient of the patient of the most recent IPV dose
 */
define "Patient Age at 1st IPV Dose in Weeks":
  First("IPV Doses Administered to Patient" I
  where 
    (singleton from (I.protocolApplied).doseNumber as FHIR.positiveInt) = 1
  return 
    AgeInWeeksAt(I.occurrence))

/**
 * @dataElement Diptheria containing Doses Administered to Patient
 */
define "Diphtheria Doses Administered to Patient":
  "Doses Administered to Patient" I
  where
    I.vaccineCode in IMMZc."Diphtheria Vaccine"


/**
 * @dataElement Cholera containing Doses Administered to Patient
 */
define "Cholera Doses Administered to Patient":
  "Doses Administered to Patient" I
  where
    I.vaccineCode in IMMZc."Cholera Vaccine"

/**
 * @dataElement Hib containing Doses Administered to Patient
 */
define "Hib Doses Administered to Patient":
  "Doses Administered to Patient" I
  where
    I.vaccineCode in IMMZc."Hib Vaccine"

/**
 * @dataElement Hib containing Doses Administered to Patient
 */
define "No Hib Doses Administered to Patient":
  not exists("Hib Doses Administered to Patient")


/**
 * @dataElement Number of Hib Doses Administered to Patient excluding the birth dose
 */
define "Number of Hib Doses Administered to Patient":
  Count("Hib Doses Administered to Patient")// O return ToPositiveInt((singleton from O.protocolApplied).doseNumber))

/**
 * @dataElement 
 */
define "Date Last Hib Dose Administered to Patient":
  date from (First("Hib Doses Administered to Patient").occurrence as FHIR.dateTime)


/**
 * @dataElement 
 */
define "Date First Hib Dose Administered to Patient":
  date from (First("Hib Doses Administered to Patient").occurrence as FHIR.dateTime)


/**
 * @dataElement HepA containing Doses Administered to Patient
 */
define "HepA Doses Administered to Patient":
  "Doses Administered to Patient" I
  where
    I.vaccineCode in IMMZc."HepA Vaccine"

/**
 * @dataElement HepB containing Doses Administered to Patient
 */
define "HepB Doses Administered to Patient":
  "Doses Administered to Patient" I
  where
    I.vaccineCode in IMMZc."HepB Vaccine"


/**
 * @dataElement HepB containing Doses Administered to Patient
 */
define "HepB Doses Administered to Patient Excluding Birth Dose":
  "HepB Doses Administered to Patient" I
  where
    singleton from (I.protocolApplied.doseNumber) != 0


/**
 * @dataElement HPV containing Doses Administered to Patient
 */
define "HPV Doses Administered to Patient":
  "Doses Administered to Patient" I
  where
    I.vaccineCode in IMMZc."HPV Vaccine"

/**
 * @dataElement Japanese Encephalitis containing Doses Administered to Patient
 */
define "Japanese Encephalitis Doses Administered to Patient":
  "Doses Administered to Patient" I
  where
    I.vaccineCode in IMMZc."Japanese Encephalitis Vaccine"

/**
 * @dataElement MCV containing Doses Administered to Patient
 */
define "MCV Doses Administered to Patient":
  "Doses Administered to Patient" I
  where
    I.vaccineCode in IMMZc."MCV Vaccine"

/**
 * @dataElement Meningococcal containing Doses Administered to Patient
 */
define "Meningococcal Doses Administered to Patient":
  "Doses Administered to Patient" I
  where
    I.vaccineCode in IMMZc."Meningococcal Vaccine"

/**
 * @dataElement Mumps containing Doses Administered to Patient
 */
define "Mumps Doses Administered to Patient":
  "Doses Administered to Patient" I
  where
    I.vaccineCode in IMMZc."Mumps Vaccine"

/**
 * @dataElement Pertussis containing Doses Administered to Patient
 */
define "Pertussis Doses Administered to Patient":
  "Doses Administered to Patient" I
  where
    I.vaccineCode in IMMZc."Pertussis Vaccine"

/**
 * @dataElement Pertussis containing Doses Administered to Patient
 */
define "Pneumococcal Doses Administered to Patient":
  "Doses Administered to Patient" I
  where
    I.vaccineCode in IMMZc."Pneumococcal Vaccine"

/**
 * @dataElement Rabies containing Doses Administered to Patient
 */
define "Rabies Doses Administered to Patient":
  "Doses Administered to Patient" I
  where
    I.vaccineCode in IMMZc."Rabies Vaccine"

/**
 * @dataElement Rotavirus containing Doses Administered to Patient
 */
define "Rotavirus Doses Administered to Patient":
  "Doses Administered to Patient" I
  where
    I.vaccineCode in IMMZc."Rotavirus Vaccine"

/**
 * @dataElement Rubella containing Doses Administered to Patient
 */
define "Rubella Doses Administered to Patient":
  "Doses Administered to Patient" I
  where
    I.vaccineCode in IMMZc."Rubella Vaccine"

/**
 * @dataElement Rubella containing doses administered
 */
define "No Rubella Doses Administered to Patient":
  not exists("Rubella Doses Administered to Patient")


/**
 * @dataElement Seasonal Influenza containing doses administered
 */
define "Seasonal Influenza Doses Administered to Patient":
  "Doses Administered to Patient" I
  where
    I.vaccineCode in IMMZc."Seasonal Influenza Vaccine"

/**
 * @dataElement Tetanus containing Doses Administered to Patient
 */
define "Tetanus Doses Administered to Patient":
  "Doses Administered to Patient" I
  where
    I.vaccineCode in IMMZc."Tetanus Vaccine"

/**
 * @dataElement Typhoid containing Doses Administered to Patient
 */
define "Typhoid Doses Administered to Patient":
  "Doses Administered to Patient" I
  where
    I.vaccineCode in IMMZc."Typhoid Vaccine"

/**
 * @dataElement Varicella containing Doses Administered to Patient
 */
define "Varicella Doses Administered to Patient":
  "Doses Administered to Patient" I
  where
    I.vaccineCode in IMMZc."Varicella Vaccine"

/**
 * @dataElement Yellow Fever containing Doses Administered to Patient
 */
define "Yellow Fever Doses Administered to Patient":
  "Doses Administered to Patient" I
  where
    I.vaccineCode in IMMZc."Yellow Fever Vaccine"

/**
 * @dataElement DTP containing Doses Administered to Patient
 */
define "DTP Doses Administered to Patient":
  "Doses Administered to Patient" I
  where
    I.vaccineCode in IMMZc."DTP Vaccine"

/** 
  * @dataElement DTP administrations excluding birth doses
 */
define "DTP Doses Administered to Patient Excluding Birth Dose":
  "DTP Doses Administered to Patient" O 
  where (singleton from O.protocolApplied.doseNumber) != 0

/**
 * @dataElement Number of DTP Doses Administered to Patient excluding the birth dose
 */
define "Number of DTP Doses Administered to Patient Excluding Birth Dose":
  Count("DTP Doses Administered to Patient Excluding Birth Dose")// O return ToPositiveInt((singleton from O.protocolApplied).doseNumber))

/**
 * @dataElement 
 */
define "Date Last DTP Dose Administered to Patient":
  date from (First("DTP Doses Administered to Patient").occurrence as FHIR.dateTime)

/**
 * @dataElement 
 */
define "Date First DTP Dose Administered to Patient Excluding Birth Dose":
  date from (Last("DTP Doses Administered to Patient Excluding Birth Dose").occurrence as FHIR.dateTime)


/**
 * @dataElement 
 */
define "No DTP Doses Administered to Patient":
  not exists("DTP Doses Administered to Patient")

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
