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

define "Patient Has Active Sickle-cell disease":
  exists([Condition: code = IMMZc."Sickle-cell Disease Condition"] C
  where C.clinicalStatus in FC."Active Condition"
  and C.abatement is null)

define "Pregnant Condition":
  [Condition] C
    where (C.code as CodeableConcept) in Wcon."Pregnancy Status Pregnant"

define "Pregnant": 
  exists
  ( "Pregnant Observation")
  or exists ("Pregnant Condition")

//Seronegative. Relevant for Dengue 
define "Individual is Seronegative for Dengue":
  [Observation] O
    where (O.value as CodeableConcept) in IMMZc.Seronegative

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
 * TODO: Do we want "number of doses" or "highest dose sequence"? For example for interrupted series the dose
 *       number would be 1, 2, 1, 2, 1, 2 -> the highest sequence is 2 but the number is 6
 */
define "Number of bOPV Doses Administered to Patient Excluding Birth Dose":
  Count("bOPV Doses Administered to Patient" O where ToPositiveInt((singleton from O.protocolApplied).doseNumber) != 0)

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
  Count("IPV Doses Administered to Patient" O where ToPositiveInt((singleton from O.protocolApplied).doseNumber) != 0)

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
    ToPositiveInt(singleton from (I.protocolApplied).doseNumber) = 1
  return 
    AgeInWeeksAt(I.occurrence))

/** 
* @dataElement Age of patient at first dose of pneu
 */
define "Patient Age at 1st Dose of Pneumococcal in Months":
  First("Pneumococcal Doses Administered to Patient" I 
    where ToPositiveInt((singleton from I.protocolApplied).doseNumber) = 1
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
 * @dataElement There have been no choldera doses administered to patient
 */
define "No Cholera Doses Administered to Patient":
  not exists("Cholera Doses Administered to Patient")

/** 
 * @dataElement Fact: Date last cholera dose was administered to the patient
 */
define "Date Last Cholera Dose Administered to Patient":
  date from (First("Cholera Doses Administered to Patient").occurrence as FHIR.dateTime)

/** 
 * @dataElement Fact: Type of last cholera dose administered to patient
 */
define "Type of Last Cholera Dose Administered to Patient":
  First("Cholera Doses Administered to Patient" I return I.vaccineCode)

/**
 * @dataElement Fact: The highest dosing sequence of cholera vaccine administerd to patient
 */
define "Highest Sequence of Cholera Doses Administered to Patient":
  Max("Cholera Doses Administered to Patient" I return ToPositiveInt((singleton from I.protocolApplied).doseNumber))

/** 
 * @dataele
 */
define "Most Recent Dose Sequence of Cholera Doses Administered to Patient":
  First("Cholera Doses Administered to Patient" I return ToPositiveInt((singleton from I.protocolApplied).doseNumber))

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
 * @dataElement Number of HepB Doses Administered to Patient
 */
define "Number of HepB Doses Administered to Patient":
  Count("HepB Doses Administered to Patient" O where ToPositiveInt((singleton from O.protocolApplied).doseNumber) != 0)


/**
 * @dataElement No HepB containing Birth Dose Administered to Patient
 */
define "No HepB Birth Dose Administered to Patient":
  not exists("HepB Doses Administered to Patient" I where ToPositiveInt((singleton from I.protocolApplied).doseNumber) = 0)

//Date last administered HepB
define "Date Last HepB Dose Administered to Patient":
  date from (First("HepB Doses Administered to Patient").occurrence as FHIR.dateTime)

/**
 * @dataElement HPV containing Doses Administered to Patient
 */
define "HPV Doses Administered to Patient":
  "Doses Administered to Patient" I
  where
    I.vaccineCode in IMMZc."HPV Vaccine"

/** 
 * @dataElement No HPV doses have been administered to patient 
 */
define "No HPV Doses Administered to Patient":
  not exists("HPV Doses Administered to Patient")

/** 
 * @dataElement Number of HPV doses administered to patient
 */
define "Number of HPV Doses Administered to Patient":
  Count("HPV Doses Administered to Patient")

/**
 * @dataElement Date of HPV dose administered
 */
define "Date Last HPV Dose Administered to Patient":
  date from (First("HPV Doses Administered to Patient").occurrence as FHIR.dateTime)

/**
 * @dataElement Japanese Encephalitis containing Doses Administered to Patient
 */
define "JE Doses Administered to Patient":
  "Doses Administered to Patient" I
  where
    I.vaccineCode in IMMZc."Japanese Encephalitis Vaccine"

/**
 * @dataElement No Japanese Encephalitis containing Doses Administered to Patient
 */
define "No JE Doses Administered to Patient":
  not exists("JE Doses Administered to Patient")

/**
 * @dataElement Date the last JE dose was administered
 */
define "Date Last JE Dose Administered to Patient":
  date from (First("JE Doses Administered to Patient").occurrence as FHIR.dateTime)

/** 
 * @dataElement The type of the last typhoid dose administered to patient
 */
define "Type of Last JE Dose Administered to Patient":
  First("JE Doses Administered to Patient" I return I.vaccineCode)

/**
 * @dataElement No Japanese Encephalitis containing Doses Administered to Patient
 */
define "Number of JE Doses Administered to Patient":
  Count("JE Doses Administered to Patient" I where ToPositiveInt((singleton from I.protocolApplied).doseNumber) != 0)

/**
 * @dataElement MCV containing Doses Administered to Patient
 */
define "MCV Doses Administered to Patient":
  "Doses Administered to Patient" I
  where
    I.vaccineCode in IMMZc."MCV Vaccine"

/**
 * @define The patient has no MCV doses administered
 */
define "No MCV Doses Administered to Patient":
  not exists("MCV Doses Administered to Patient")


/** 
 * @dataElement Date of last MCV dose administration
 */
define "Date Last MCV Dose Administered to Patient":
  date from (First("MCV Doses Administered to Patient").occurrence as FHIR.dateTime)

/**
 * @define The number of MCV doses administerd to the patient
 */
define "Number of MCV Doses Administered to Patient":
  Count("MCV Doses Administered to Patient")

/**
 * @dataElement Meningococcal containing Doses Administered to Patient
 */
define "Meningococcal Doses Administered to Patient":
  "Doses Administered to Patient" I
  where
    I.vaccineCode in IMMZc."Meningococcal Vaccine"

/**
 * @define The number of Meningococcal doses administerd to the patient
 */
define "Number of Meningococcal Doses Administered to Patient":
  Count("Meningococcal Doses Administered to Patient")

/**
 * @define The number of HepA Doses administerd to the patient
 */
define "Number of HepA Doses Administered to Patient":
  Count("HepA Doses Administered to Patient")

/**
 * @dataElement Mumps containing Doses Administered to Patient
 */
define "Mumps Doses Administered to Patient":
  "Doses Administered to Patient" I
  where
    I.vaccineCode in IMMZc."Mumps Vaccine"


/**
 * @dataElement Mumps containing Doses Administered to Patient
 */
define "Number of Mumps Doses Administered to Patient":
  Count("Mumps Doses Administered to Patient")

/**
 * @dataElement last date Mumps doses administered to the Patient
 */
define "Date last Mumps dose Administered to Patient":
  date from (First("Mumps Doses Administered to Patient").occurrence as FHIR.dateTime)

/**
 * @dataElement Pertussis containing Doses Administered to Patient
 */
define "Pertussis Doses Administered to Patient":
  "Doses Administered to Patient" I
  where
    I.vaccineCode in IMMZc."Pertussis Vaccine"

/**
 * @dataElement Pneumococcal containing Doses Administered to Patient
 */
define "Pneumococcal Doses Administered to Patient":
  "Doses Administered to Patient" I
  where
    I.vaccineCode in IMMZc."Pneumococcal Vaccine"

/**
 * @dataElement Number of Pneumococcal Doses Administered to Patient
 */
define "Number of Pneumococcal Doses Administered to Patient":
  Count("Pneumococcal Doses Administered to Patient")

/**
 * @dataElement Date last Pneumococcal dose administered 
 */
define "Date Last Pneumococcal Dose Administered to Patient":
  date from (First("Pneumococcal Doses Administered to Patient").occurrence as FHIR.dateTime)


/**
 * @dataElement Number of Pneumococcal Doses Administered to Patient
 */
define "No Pneumococcal Doses Administered to Patient":
  not exists("Pneumococcal Doses Administered to Patient")


/**
 * @dataElement Rabies containing Doses Administered to Patient
 */
define "Rabies Doses Administered to Patient":
  "Doses Administered to Patient" I
  where
    I.vaccineCode in IMMZc."Rabies Vaccine"

/**
 * @dataElement Number of Rabies Doses Administered to Patient
 */
define "Number of Rabies Doses Administered to Patient":
  Count("Rabies Doses Administered to Patient")

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
 * @dataElement No seasonal influenza doses administerd to patient
 */
define "No Seasonal Influenza Doses Administered to Patient":
  not exists("Seasonal Influenza Doses Administered to Patient")
  
/** 
 * @dataElement Number of seasonal influenza doses administerd to patient
 */
define "Number of Seasonal Influenza Doses Administered to Patient":
  Count("Seasonal Influenza Doses Administered to Patient")
  
/**
 * @dataElement Number of DTP doses administered excluding the birth dose
 */
define "Date Last Seasonal Influenza Dose Administered to Patient":
  date from (First("Seasonal Influenza Doses Administered to Patient").occurrence as FHIR.dateTime)

/**
 * @dataElement Date last Rabies dose administered excluding the birth dose
 */
define "Date last Rabies dose given Dose Administered to Patient":
  date from (First("Rabies Doses Administered to Patient").occurrence as FHIR.dateTime)
/**
 * @dataElement Number of Meningococcal doses administered to the Patient
 */
define "Date last Meningococcal dose Administered to Patient":
  date from (First("Meningococcal Doses Administered to Patient").occurrence as FHIR.dateTime)

  /**
 * @dataElement last date HepA doses administered to the Patient
 */
define "Date last HepA dose Administered to Patient":
  date from (First("HepA Doses Administered to Patient").occurrence as FHIR.dateTime)
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
 * @dataElement No Typhoid doses administered to patient
 */
define "No Typhoid Doses Administered to Patient":
  not exists ("Typhoid Doses Administered to Patient")

/** 
 * @dataElement Largest sequence of typhoid doses administered to patient
 */
define "Highest Sequence of Typhoid Doses Administered to Patient":
  Max("Typhoid Doses Administered to Patient" I return ToPositiveInt((singleton from I.protocolApplied).doseNumber))

/** 
 * @dataElement Date last typhoid dose administered
 */
define "Date Last Typhoid Dose Administered to Patient":
  date from (First("Typhoid Doses Administered to Patient").occurrence as FHIR.dateTime)

/** 
 * @dataElement The type of the last typhoid dose administered to patient
 */
define "Type of Last Typhoid Dose Administered to Patient":
  First("Typhoid Doses Administered to Patient" I return I.vaccineCode)

/** 
 * @dataElement Type of last Meningococcal Dose Administered to Patient
 */
define "Type of last Meningococcal Dose Administered to Patient":
  First("Meningococcal Doses Administered to Patient" I return I.vaccineCode)

/** 
 * @dataElement Type of last Hepatits A dose Administered to Patient
 */
define "Type of last Hepatits A dose Administered to Patient":
  First("HepA Doses Administered to Patient" I return I.vaccineCode)


/**
 * @dataElement Varicella containing Doses Administered to Patient
 */
define "Varicella Doses Administered to Patient":
  "Doses Administered to Patient" I
  where
    I.vaccineCode in IMMZc."Varicella Vaccine"

/** 
 * @dataElement There have been no Varicella doses administered to patient
 */
define "No Varicella Doses Administered to Patient":
  not exists("Varicella Doses Administered to Patient")

/**
 * @define The number of Varicella doses administerd to the patient
 */
define "Number of Varicella Doses Administered to Patient":
  Count("Varicella Doses Administered to Patient")

/** 
 * @dataElement Date of last Varicella dose administration
 */
define "Date Last Varicella Dose Administered to Patient":
  date from (First("Varicella Doses Administered to Patient").occurrence as FHIR.dateTime)

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
  where ToPositiveInt((singleton from O.protocolApplied).doseNumber) != 0

/**
 * @dataElement Number of DTP Doses Administered to Patient excluding the birth dose
 */
define "Number of DTP Doses Administered to Patient Excluding Birth Dose":
  Count("DTP Doses Administered to Patient Excluding Birth Dose")// O return ToPositiveInt((singleton from O.protocolApplied).doseNumber))

/**

 * @dataElement Dengue containing doses administered
 */
define "Dengue Doses Administered to Patient":
  "Doses Administered to Patient" I
  where
    I.vaccineCode in IMMZc."Dengue Vaccine"

/**
 * @dataElement Number of DTP doses administered excluding the birth dose
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

/**
 * @dataElement Tick-Borne Encephalitis containing Doses Administered to Patient
 */
define "TBE Doses Administered to Patient":
  "Doses Administered to Patient" I
  where
    I.vaccineCode in IMMZc."TBE Vaccine"

/** 
 * @dataElement Date of last TBE dose administration
 */
define "Date Last TBE Dose Administered to Patient":
  date from (First("TBE Doses Administered to Patient").occurrence as FHIR.dateTime)

/** 
 * @dataElement Date of last TBE dose administration
 */
define "Type of Last TBE Dose Administered to Patient":
  First("TBE Doses Administered to Patient").vaccineCode


/**
 * @dataElement Patient has no Tick-Borne Encephalitis doses
 */
define "No TBE Doses Administered to Patient":
  not exists("TBE Doses Administered to Patient")

/**
 * @dataElement Number of TBE Doses Administered to Patient excluding the birth dose
 */
define "Number of TBE Doses Administered to Patient":
  Count("TBE Doses Administered to Patient")// O return ToPositiveInt((singleton from O.protocolApplied).doseNumber))


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

/**
 * @dataElement Observed VNA Levels
 */
define "VNA Test Results":
  [Observation: code in IMMZc."VNA levels"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and not(Coalesce(WCom.ModifierExtension(O, 'who-notDone').value, false))
    sort by effective desc

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


define "Patient birth weight observation value":
[Observation: code in IMMZc."Patient birth weight observation value"] O
  return O.value as FHIR.Quantity

/** 
 * @dataElement Immune reconsititution has been achieved for this patient
 */
define "Most Recent CD4% Between 20% and 25%":
  "Most Recent CD4%" between 20 '%' and 25 '%' // TODO: Define this

/** 
 * @dataElements Periods where the patient was receiving HAART treatment
 */
define "Patient HAART Treatment Started 6 to 12 Months Ago":
  /*exists(
    [MedicationStatement] S 
    where 
      ExtractMedicationCode(S.medication) in IMMZc."ARV Drugs" 
      and S.status in { 'active', 'completed' } 
      and ExtractMedicationInitiationDate(S.effective) more than 6 'month' before Today() 
      and ExtractMedicationInitiationDate(S.effective) less than 12 'month' before Today()
  )
  or */
  exists(
    [MedicationAdministration] A 
    where 
      ExtractMedicationCode(A.medication) in IMMZc."ARV Drugs" 
      and A.status in { 'active', 'complete' } 
      and ExtractMedicationInitiationDate(A.effective) more than 6 'month' before Today() 
      and ExtractMedicationInitiationDate(A.effective) less than 12 'month' before Today()
  )
  
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

/** 
 * @dataElement Patient biological sex used for deciding vaccine eligibility
 * TODO: "Gender" of patient in FHIR is the administrative gender - or can we expect that this will be biological sex and administrative
 *        gender identity will be captured using the gender identity extension?
 */
define "Patient Biological Sex":
  Patient.gender

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

