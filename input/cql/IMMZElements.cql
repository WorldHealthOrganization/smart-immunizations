library IMMZElements

using FHIR version '4.0.1'

include FHIRHelpers version '4.0.1'

include WHOConcepts
include WHOCommon called WC
include WHOElements called WE

include IMMZConcepts called Concepts
include IMMZCommon called Common

context Patient

/**
 * @dataElement All Doses Administered to Patient
 */
define "Doses Administered to Patient":
  [Immunization] I
    where I.status = 'completed'
    and I.isSubpotent is not true

/*
@dataElement: Draft Medication Request for Patient
*/
define "Draft Medication Request for Patient":
	[MedicationRequest] MR where MR.status = 'draft' and MR.intent = 'proposal'
	sort by date from (authoredOn as FHIR.dateTime) desc

/*
  @dataElement: Live attenuated vaccines
*/
define "Live Attenuated Vaccines":
  "Doses Administered to Patient" I 
    where I.vaccineCode in Concepts."Live Attenuated"

/*
  @dataElement: Date and time of last live attenuated vaccine
*/
define "Date of Latest Live Attenuated Vaccine":
  date from start of "Live Attenuated Vaccines".mostRecent().occurrence.toInterval()

/** 
 * @dataElement Patient age in years
 */
define "Current Patient Age In Years":
  AgeInYearsAt(Today())

/** 
 * @dataElement Patient age in months
 */
define "Current Patient Age In Months":
  AgeInMonthsAt(Today())

/** 
 * @dataElement Patient age in weeks
 */
define "Current Patient Age In Weeks":
  AgeInWeeksAt(Today())

/** 
 * @dataElement Patient age in days
 */
define "Current Patient Age In Days":
  AgeInDaysAt(Today())

/*
@input: No live vaccine was administered
@pseudocode: Today's date − latest "Date and time of vaccination" (where "Live vaccine" = TRUE) IS NULL
*/
define "No live vaccine was administered":
  not exists("Live Attenuated Vaccines")

/*
@input: Live vaccine was administered in the last 4 weeks
@pseudocode: Today's date − latest "Date and time of vaccination" (where "Live vaccine" = TRUE) < 4 weeks
*/
define "Live vaccine was administered in the last 4 weeks":
	"Date of Latest Live Attenuated Vaccine" is not null 
    and duration in weeks between "Date of Latest Live Attenuated Vaccine" and Now() < 4

/*
@input: No live vaccine was administered in the last 4 weeks
@pseudocode: Today's date − latest "Date and time of vaccination" (where "Live vaccine" = TRUE) ≥ 4 weeks
*/
define "No live vaccine was administered in the last 4 weeks":
  not("Live vaccine was administered in the last 4 weeks")

/*
@internal: Potential contraindications observations
*/
define "Potential contraindications":
  ([Observation: Concepts."Potential contraindications"]).complete()

/*
@input: The client is pregnant
@pseudocode: "Potential contraindications" = "Currently pregnant"
*/
define "The client is pregnant":
  exists "Currently pregnant Observation"
  or exists "Currently pregnant Condition"
  or exists WE."Pregnant Observation"

/*
@internal: Observation for currently pregnant
*/
define "Currently pregnant Observation":
  "Potential contraindications" O
    where O.value ~ Concepts."Currently pregnant"

/*
@internal: Condition for currently pregnant
*/
define "Currently pregnant Condition":
  [Condition: Concepts."Currently pregnant"]

/*
@input: The client has history of anaphylactic reactions
@pseudocode: "Potential contraindications" = "History of anaphylactic reactions"
*/
define "The client has history of anaphylactic reactions":
  exists "History of anaphylactic reactions Observation"
    or exists "History of anaphylactic reactions Condition"

/*
@internal: Observation for History of anaphylactic reactions
*/
define "History of anaphylactic reactions Observation":
  "Potential contraindications" O
    where O.value ~ Concepts."History of anaphylactic reactions"

/*
@internal: Condition for History of anaphylactic reactions
*/
define "History of anaphylactic reactions Condition":
  [Condition: Concepts."History of anaphylactic reactions"]


/*
@input: The client has history of severe allergic reactions
@pseudocode: "Potential contraindications" = "Severe allergic reactions"
*/
define "The client has history of severe allergic reactions":
  exists "Severe allergic reactions Observation"
    or exists "Severe allergic reactions Condition"
    
/*
@internal: Observation for Severe allergic reactions
*/
define "Severe allergic reactions Observation":
  "Potential contraindications" O
    where O.value ~ Concepts."Severe allergic reactions"

/*
@internal: Condition for Severe allergic reactions
*/
define "Severe allergic reactions Condition":
  [Condition: Concepts."Severe allergic reactions"]

/*
@input: The client is severely immunocompromised
@pseudocode: "Potential contraindications" = "Severely immunocompromised"
*/
define "The client is severely immunocompromised":
  exists "Severely immunocompromised Observation"
    or exists "Severely immunocompromised Condition"
    
/*
@internal: Observation for Severely immunocompromised
*/
define "Severely immunocompromised Observation":
  "Potential contraindications" O
    where O.value ~ Concepts."Severely immunocompromised"

/*
@internal: Condition for Severely immunocompromised
*/
define "Severely immunocompromised Condition":
  [Condition: Concepts."Severely immunocompromised"]

/*
@input: The client is severely immunosuppressed
@pseudocode: "Potential contraindications" = "Severely immunosuppressed"
*/
define "The client is severely immunosuppressed":
  exists "Severely immunosuppressed Observation"
    or exists "Severely immunosuppressed Condition"
    
/*
@internal: Observation for Severely immunosuppressed
*/
define "Severely immunosuppressed Observation":
  "Potential contraindications" O
    where O.value ~ Concepts."Severely immunosuppressed"

/*
@internal: Condition for Severely immunosuppressed
*/
define "Severely immunosuppressed Condition":
  [Condition: Concepts."Severely immunosuppressed"]

/*
@input: The client has a symptomatic HIV infection
@pseudocode: "Potential contraindications" = "Symptomatic HIV infection"
*/
define "The client has a symptomatic HIV infection":
  exists "Symptomatic HIV infection Observation"
    or exists "Symptomatic HIV infection Condition"
    
/*
@internal: Observation for Symptomatic HIV infection
*/
define "Symptomatic HIV infection Observation":
  "Potential contraindications" O
    where O.value ~ Concepts."Symptomatic HIV infection"

/*
@internal: Condition for Symptomatic HIV infection
*/
define "Symptomatic HIV infection Condition":
  [Condition: Concepts."Symptomatic HIV infection"]

/*
@input: The client has immunodeficiency syndromes
@pseudocode: "Potential contraindications" = "Immunodeficiency syndromes"
*/
define "The client has immunodeficiency syndromes":
  exists "Immunodeficiency syndromes Observation"
    or exists "Immunodeficiency syndromes Condition"
    
/*
@internal: Observation for Immunodeficiency syndromes
*/
define "Immunodeficiency syndromes Observation":
  "Potential contraindications" O
    where O.value ~ Concepts."Immunodeficiency syndromes"

/*
@internal: Condition for Immunodeficiency syndromes
*/
define "Immunodeficiency syndromes Condition":
  [Condition: Concepts."Immunodeficiency syndromes"]

/*
@input: The client is exposed to immunosuppressive treatment
@pseudocode: "Potential contraindications" = "Exposed to immunosuppressive treatment"
*/
define "The client is exposed to immunosuppressive treatment":
  exists "Exposed to immunosuppressive treatment Observation"
    or exists "Exposed to immunosuppressive treatment Condition"
    
/*
@internal: Observation for Exposed to immunosuppressive treatment
*/
define "Exposed to immunosuppressive treatment Observation":
  "Potential contraindications" O
    where O.value ~ Concepts."Exposed to immunosuppressive treatment"

/*
@internal: Condition for Exposed to immunosuppressive treatment
*/
define "Exposed to immunosuppressive treatment Condition":
  [Condition: Concepts."Exposed to immunosuppressive treatment"]

/*
@input: The client currently has a severe acute illness
@pseudocode: "Potential contraindications" = "Severe acute illness"
*/
define "The client currently has a severe acute illness":
  exists "Severe acute illness Observation"
    or exists "Severe acute illness Condition"
    
/*
@internal: Observation for Severe acute illness
*/
define "Severe acute illness Observation":
  "Potential contraindications" O
    where O.value ~ Concepts."Severe acute illness"

/*
@internal: Condition for Severe acute illness
*/
define "Severe acute illness Condition":
  [Condition: Concepts."Severe acute illness"]

/*
@input: The client has prior history of intussusception
@pseudocode: "Potential contraindications" = "Prior history of intussusception"
*/
define "The client has prior history of intussusception":
  exists "Prior history of intussusception Observation"
    or exists "Prior history of intussusception Condition"
    
/*
@internal: Observation for Prior history of intussusception
*/
define "Prior history of intussusception Observation":
  "Potential contraindications" O
    where O.value ~ Concepts."Prior history of intussusception"

/*
@internal: Condition for Prior history of intussusception
*/
define "Prior history of intussusception Condition":
  [Condition: Concepts."Prior history of intussusception"]

/*
@input: The client has altered immunocompetence
@pseudocode: "Potential contraindications" = "Altered immunocompetence"
*/
define "The client has altered immunocompetence":
  exists "Altered immunocompetence Observation"
    or exists "Altered immunocompetence Condition"
    
/*
@internal: Observation for Altered immunocompetence
*/
define "Altered immunocompetence Observation":
  "Potential contraindications" O
    where O.value ~ Concepts."Altered immunocompetence"

/*
@internal: Condition for Altered immunocompetence
*/
define "Altered immunocompetence Condition":
  [Condition: Concepts."Altered immunocompetence"]

/*
@input: The client has spina bifida
@pseudocode: "Potential contraindications" = "Spina bifida"
*/
define "The client has spina bifida":
  exists "Spina bifida Observation"
    or exists "Spina bifida Condition"
    
/*
@internal: Observation for Spina bifida
*/
define "Spina bifida Observation":
  "Potential contraindications" O
    where O.value ~ Concepts."Spina bifida"

/*
@internal: Condition for Spina bifida
*/
define "Spina bifida Condition":
  [Condition: Concepts."Spina bifida"]

/*
@input: The client has bladder exstrophy
@pseudocode: "Potential contraindications" = "Bladder exstrophy"
*/
define "The client has bladder exstrophy":
  exists "Bladder exstrophy Observation"
    or exists "Bladder exstrophy Condition"
    
/*
@internal: Observation for Bladder exstrophy
*/
define "Bladder exstrophy Observation":
  "Potential contraindications" O
    where O.value ~ Concepts."Bladder exstrophy"

/*
@internal: Condition for Bladder exstrophy
*/
define "Bladder exstrophy Condition":
  [Condition: Concepts."Bladder exstrophy"]

/*
@input: The client is known to be immunocompromised
@pseudocode: "Potential contraindications" = "Immunocompromised"
*/
define "The client is known to be immunocompromised":
  exists "Immunocompromised Observation"
    or exists "Immunocompromised Condition"

/*
@internal: Observation for Immunocompromised
*/
define "Immunocompromised Observation":
  "Potential contraindications" O
    where O.value ~ Concepts."Immunocompromised"

/*
@internal: Condition for Immunocompromised
*/
define "Immunocompromised Condition":
  [Condition: Concepts."Immunocompromised"]


/*
@input: The client is planning to get pregnant in next month
@pseudocode: "Potential contraindications" = "Planning to get pregnant in the next month"
*/
define "The client is planning to get pregnant in next month":
  exists "Planning to get pregnant in the next month Observation"
    or exists "Planning to get pregnant in the next month Condition"

/*
@internal: Observation for Planning to get pregnant in the next month
*/
define "Planning to get pregnant in the next month Observation":
  "Potential contraindications" O
    where O.value ~ Concepts."Planning to get pregnant in the next month"

/*
@internal: Condition for Planning to get pregnant in the next month
*/
define "Planning to get pregnant in the next month Condition":
  [Condition: Concepts."Planning to get pregnant in the next month"]


/*
@input: The client is receiving blood products
@pseudocode: "Potential contraindications" = "Receiving blood products"
*/
define "The client is receiving blood products":
  exists "Receiving blood products Observation"
    or exists "Receiving blood products Condition"

/*
@internal: Observation for Receiving blood products
*/
define "Receiving blood products Observation":
  "Potential contraindications" O
    where O.value ~ Concepts."Receiving blood products"

/*
@internal: Condition for Receiving blood products
*/
define "Receiving blood products Condition":
  [Condition: Concepts."Receiving blood products"]


/*
@input: The client has TB disease
@pseudocode: "Potential contraindications" = "TB disease"
*/
define "The client has TB disease":
  exists "TB disease Observation"
    or exists "TB disease Condition"

/*
@internal: Observation for TB disease
*/
define "TB disease Observation":
  "Potential contraindications" O
    where O.value ~ Concepts."TB disease"

/*
@internal: Condition for TB disease
*/
define "TB disease Condition":
  [Condition: Concepts."TB disease"]


/*
@input: The client is currently breastfeeding
@pseudocode: "Potential contraindications" = "Breastfeeding"
*/
define "The client is currently breastfeeding":
  exists "Breastfeeding Observation"
    or exists "Breastfeeding Condition"

/*
@internal: Observation for Breastfeeding
*/
define "Breastfeeding Observation":
  "Potential contraindications" O
    where O.value ~ Concepts."Breastfeeding"

/*
@internal: Condition for Breastfeeding
*/
define "Breastfeeding Condition":
  [Condition: Concepts."Breastfeeding"]


/*
@input: The client has acute gastroenteritis
@pseudocode: "Potential contraindications" = "Acute gastroenteritis"
*/
define "The client has acute gastroenteritis":
  exists "Acute gastroenteritis Observation"
    or exists "Acute gastroenteritis Condition"

/*
@internal: Observation for Acute gastroenteritis
*/
define "Acute gastroenteritis Observation":
  "Potential contraindications" O
    where O.value ~ Concepts."Acute gastroenteritis"

/*
@internal: Condition for Acute gastroenteritis
*/
define "Acute gastroenteritis Condition":
  [Condition: Concepts."Acute gastroenteritis"]


/*
@input: The client has moderate to severe fever
@pseudocode: "Potential contraindications" = "Moderate to severe fever"
*/
define "The client has moderate to severe fever":
  exists "Moderate to severe fever Observation"
    or exists "Moderate to severe fever Condition"

/*
@internal: Observation for Moderate to severe fever
*/
define "Moderate to severe fever Observation":
  "Potential contraindications" O
    where O.value ~ Concepts."Moderate to severe fever"

/*
@internal: Condition for Moderate to severe fever
*/
define "Moderate to severe fever Condition":
  [Condition: Concepts."Moderate to severe fever"]


/*
@input: The client has heightened sensitivity or allergic reactions to specific components found in vaccines
@pseudocode: "Potential contraindications" = "Hypersensitivity to vaccine components"
*/
define "The client has heightened sensitivity or allergic reactions to specific components found in vaccines":
  exists "Hypersensitivity to vaccine components Observation"
    or exists "Hypersensitivity to vaccine components Condition"

/*
@internal: Observation for Hypersensitivity to vaccine components
*/
define "Hypersensitivity to vaccine components Observation":
  "Potential contraindications" O
    where O.value ~ Concepts."Hypersensitivity to vaccine components"

/*
@internal: Condition for Hypersensitivity to vaccine components
*/
define "Hypersensitivity to vaccine components Condition":
  [Condition: Concepts."Hypersensitivity to vaccine components"]


/*
@input: The client is currently taking antibiotics to treat certain infections
@pseudocode: "Potential contraindications" = "Taking antibiotics"
*/
define "The client is currently taking antibiotics to treat certain infections":
  exists "Taking antibiotics Observation"
    or exists "Taking antibiotics Condition"

/*
@internal: Observation for Taking antibiotics
*/
define "Taking antibiotics Observation":
  "Potential contraindications" O
    where O.value ~ Concepts."Taking antibiotics"

/*
@internal: Condition for Taking antibiotics
*/
define "Taking antibiotics Condition":
  [Condition: Concepts."Taking antibiotics"]

/*
@input: The client has chronic gastrointestinal disease
@pseudocode: "Potential contraindications" = "Chronic gastrointestinal disease"
*/
define "The client has chronic gastrointestinal disease":
  exists "Chronic gastrointestinal disease Observation"
    or exists "Chronic gastrointestinal disease Condition"

/*
@internal: Observation for Chronic gastrointestinal disease
*/
define "Chronic gastrointestinal disease Observation":
  "Potential contraindications" O
    where O.value ~ Concepts."Chronic gastrointestinal disease"

/*
@internal: Condition for Chronic gastrointestinal disease
*/
define "Chronic gastrointestinal disease Condition":
  [Condition: Concepts."Chronic gastrointestinal disease"]



/*
@internal: HIV Status Observation
*/
define "HIV status Observation":
  ([Observation: Concepts."HIV status"]).complete()

/*
@input: Client's HIV status is negative or unknown
@pseudocode: "HIV status" ≠ "HIV-positive"
*/
define "Client's HIV status is negative or unknown":
  not "Client's HIV status is positive"

/*
@input: Client's HIV status is positive
@pseudocode: "HIV status" = "HIV-positive"
*/
define "Client's HIV status is positive":
  exists( "HIV status Observation" O
    where O.value ~ Concepts."HIV-positive" )

/*
@internal: Currently on ART Observation
*/
define "Currently on ART Observation":
  ([Observation: Concepts."Currently on ART"] O
    sort by end of effective.toInterval() desc).complete()

/*
@input: Client is currently receiving antiretroviral therapy
@pseudocode: "Currently on ART" = TRUE
*/
define "Client is currently receiving antiretroviral therapy":
  First("Currently on ART Observation").value = true

/*
@input: Client is currently not receiving antiretroviral therapy
@pseudocode: "Currently on ART" = FALSE
*/
define "Client is currently not receiving antiretroviral therapy":
  not "Client is currently receiving antiretroviral therapy"

/*
@internal: Immunologically stable Observation
*/
define "Immunologically stable Observation":
  ([Observation: Concepts."Immunologically stable"] O
    sort by end of effective.toInterval() desc).complete()

/*
@input: Client is immunologically stable
@pseudocode: "Immunologically stable" = TRUE
*/
define "Client is immunologically stable":
  First("Immunologically stable Observation").value = true

/*
@input: Client is not immunologically stable
@pseudocode: "Immunologically stable" = FALSE
*/
define "Client is not immunologically stable":
  First("Immunologically stable Observation").value = false

/*
@internal: TB infection test result Observation
*/
define "TB infection test result Observation":
  ([Observation: Concepts."TB infection test result"] O
    sort by end of effective.toInterval() desc).complete()

/*
@input: Client's TB infection test result is negative
@pseudocode: "TB infection test result" = "Negative"
*/
define "Client's TB infection test result is negative":
  First( "TB infection test result Observation" ).value ~ Concepts."TB-Negative"
/*
@input: Client's TB infection test result is unknown (test not done or no result yet)
@pseudocode: "TB infection test result" IS NULL
*/
define "Client's TB infection test result is unknown (test not done or no result yet)":
  not exists( "TB infection test result Observation" ) or (
    not ("Client's TB infection test result is negative") and not ("Client's TB infection test result is positive")
  )
/*
@input: Client's TB infection test result is positive
@pseudocode: "TB infection test result" = "Positive"
*/
define "Client's TB infection test result is positive":
  First( "TB infection test result Observation" ).value ~ Concepts."TB-Positive"

/*
@internal: Clinically well Observation
*/
define "Clinically well Observation":
  ([Observation: Concepts."Clinically well"] O
    sort by end of effective.toInterval() desc).complete()

/*
@input: Client is not clinically well
@pseudocode: "Clinically well" = FALSE
*/
define "Client is not clinically well":
  First( "Clinically well Observation" ).value = false 

/*
@input: Client is clinically well
@pseudocode: "Clinically well" = TRUE
*/
define "Client is clinically well":
  First( "Clinically well Observation" ).value = true 

/*
@internal: Birth weight in grams Observation
*/
define "Birth weight in grams Observation":
  ([Observation: Concepts."Birth weight in grams"] O
    sort by end of effective.toInterval() desc).complete()

define "Birth weight in grams Value":
  First("Birth weight in grams Observation" O).value as FHIR.Quantity

define "Birth weight in grams":
  "Birth weight in grams Value".value as FHIR.decimal

/*
@input: Client's weight at birth was over 2000 g
@pseudocode: "Birth weight in grams"  ≥ 2000
*/
define "Client's weight at birth was over 2000 g":
  "Birth weight in grams" >= 2000

/*
@input: Client's weight at birth was below 2000 g
@pseudocode: "Birth weight in grams" < 2000
*/
define "Client's weight at birth was below 2000 g":
  "Birth weight in grams" < 2000

/*
@internal: Preterm birth Observation
*/
define "Preterm birth Observation":
  ([Observation: Concepts."Preterm birth"]).complete()

/*
@input: Client was not a premature infant at birth
@pseudocode: "Preterm birth" ≠  TRUE
*/
define "Client was not a premature infant at birth":
  not "Client was a premature infant at birth"

/*
@input: Client was a premature infant at birth
@pseudocode: "Preterm birth" =  TRUE
*/
define "Client was a premature infant at birth":
  exists( "Preterm birth Observation" O where O.value = true )

/*
@internal: Completed the primary vaccination series Observation
*/
define "Completed the primary vaccination series Observation":
  ([Observation: Concepts."Completed the primary vaccination series"]).complete()

/*
@internal: At high risk for pneumococcal infection Observation
*/
define "At high risk for pneumococcal infection Observation":
  ([Observation: Concepts."At high risk for pneumococcal infection"]).complete()

/*
@input: Client is at high risk for pneumococcal infection
@pseudocode: "At high risk for pneumococcal infection" = TRUE
*/
define "Client is at high risk for pneumococcal infection":
  exists( "At high risk for pneumococcal infection Observation" O where O.value = true )

/*
@input: Client is not at high risk for pneumococcal infection
@pseudocode: "At high risk for pneumococcal infection" = FALSE
*/
define "Client is not at high risk for pneumococcal infection":
  exists( "At high risk for pneumococcal infection Observation" O where O.value = false )
