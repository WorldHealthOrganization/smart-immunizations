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
@input: Client's age is less than 1 week
@pseudocode: Today's date − "Date of birth" < 1 week
*/
define "Client's age is less than 1 week":
  "Current Patient Age In Weeks" < 1

/*
@input: Client's age is more than or equal to 1 week
@pseudocode: Today's date − "Date of birth" ≥ 1 week
*/
define "Client's age is more than or equal to 1 week":
  "Current Patient Age In Weeks" >= 1

/*
@input: Client's age is less than or equal to 28 days
@pseudocode: Today's date − "Date of birth" ≤ 28 days
*/
define "Client's age is less than or equal to 28 days":
  "Current Patient Age In Days" <= 28

/*
@input: Client's age is less than 6 weeks
@pseudocode: Today's date − "Date of birth" < 6 weeks
*/
define "Client's age is less than 6 weeks":
  "Current Patient Age In Weeks" < 6

/*
@input: Client's age is more than or equal to 6 weeks
@pseudocode: Today's date − "Date of birth" ≥ 6 weeks
*/
define "Client's age is more than or equal to 6 weeks":
  "Current Patient Age In Weeks" >= 6

/*
@input: Client's age is between 6 weeks and 3 months
@pseudocode: 6 weeks ≤ Today's date − "Date of birth" ≤ 3 months
*/
define "Client's age is between 6 weeks and 3 months":
  "Current Patient Age In Weeks" >= 6
  and "Current Patient Age In Months" <= 3

/*
@input: Client's age is between 6 weeks and 1 year
@pseudocode: 6 weeks ≤ Today's date − "Date of birth" < 1 year
*/
define "Client's age is between 6 weeks and 1 year":
  "Current Patient Age In Weeks" >= 6
  and "Current Patient Age In Years" < 1

/*
@input: Client's age is more than 3 months
@pseudocode: Today's date − "Date of birth" > 3 months
*/
define "Client's age is more than 3 months":
  "Current Patient Age In Months" > 3

/*
@input: Client's age is between 6 weeks and 14 weeks
@pseudocode: 6 weeks ≤ Today's date − "Date of birth" < 14 weeks
*/
define "Client's age is between 6 weeks and 14 weeks":
  "Current Patient Age In Weeks" >= 6
  and "Current Patient Age In Weeks" < 14

/*
@input: Client's age is less than 8 weeks
@pseudocode: Today's date − "Date of birth" < 8 weeks
*/
define "Client's age is less than 8 weeks":
  "Current Patient Age In Weeks" < 8

/*
@input: Client's age is more than or equal to 8 weeks
@pseudocode: Today's date − "Date of birth" ≥ 8 weeks
*/
define "Client's age is more than or equal to 8 weeks":
  "Current Patient Age In Weeks" >= 8

/*
@input: Client's age is more than or equal to 14 weeks
@pseudocode: Today's date − "Date of birth" ≥ 14 weeks
*/
define "Client's age is more than or equal to 14 weeks":
  "Current Patient Age In Weeks" >= 14

/*
@input: Client's age is less than 14 weeks
@pseudocode: Today's date − "Date of birth" < 14 weeks
*/
define "Client's age is less than 14 weeks":
  "Current Patient Age In Weeks" < 14

/*
@input: Client's age is between 28 days and 5 years
@pseudocode: 28 days < Today's date − "Date of birth" < 5 years
*/
define "Client's age is between 28 days and 5 years":
  "Current Patient Age In Days" > 28 and "Current Patient Age In Years" < 5

/*
@input: Client's age is less than 6 months
@pseudocode: Today's date − "Date of birth" < 6 months
*/
define "Client's age is less than 6 months":
  "Current Patient Age In Months" < 6

/*
@input: Client's age is between 6 months and 9 months
@pseudocode: 6 months ≤ Today's date − "Date of birth" < 9 months
*/
define "Client's age is between 6 months and 9 months":
  "Current Patient Age In Months" >= 6 and "Current Patient Age In Months" < 9

/*
@input: Client's age is less than 9 months
@pseudocode: Today's date − "Date of birth" < 9 months
*/
define "Client's age is less than 9 months":
  "Current Patient Age In Months" < 9

/*
@input: Client's age is more than or equal to 9 months
@pseudocode: Today's date − "Date of birth" ≥ 9 months
*/
define "Client's age is more than or equal to 9 months":
  "Current Patient Age In Months" >= 9

/*
@input: Client's age is less than 12 months
@pseudocode: Today's date − "Date of birth" < 12 months
*/
define "Client's age is less than 12 months":
  "Current Patient Age In Months" < 12

/*
@input: Client's age is more than or equal to 12 months
@pseudocode: Today's date − "Date of birth" ≥ 12 months
*/
define "Client's age is more than or equal to 12 months":
  "Current Patient Age In Months" >= 12

/*
@input: Client's age is less than 15 months
@pseudocode: Today's date − "Date of birth" < 15 months
*/
define "Client's age is less than 15 months":
  "Current Patient Age In Months" < 15
  
/*
@input: Client's age is more than or equal to 15 months
@pseudocode: Today's date − "Date of birth" ≥ 15 months
*/
define "Client's age is more than or equal to 15 months":
  "Current Patient Age In Months" >= 15

/*
@input: Client's age is more than 5 years
@pseudocode: Today's date − "Date of birth" ≥ 5 years
*/
define "Client's age is more than 5 years":
  "Current Patient Age In Years" >= 5

/*
@input: Client's age is less than 4 years
@pseudocode: Today's date − "Date of birth" < 4 years
*/
define "Client's age is less than 4 years":
  "Current Patient Age In Years" < 4

/*
@input: Client's age is more than or equal to 4 years
@pseudocode: Today's date − "Date of birth" ≥ 4 years
*/
define "Client's age is more than or equal to 4 years":
  "Current Patient Age In Years" >= 4

/*
@input: Client's age is less than 9 years
@pseudocode: Today's date − "Date of birth" < 9 years
*/
define "Client's age is less than 9 years":
  "Current Patient Age In Years" < 9

/*
@input: Client's age is more than or equal to 9 years
@pseudocode: Today's date − "Date of birth" ≥ 9 years
*/
define "Client's age is more than or equal to 9 years":
  "Current Patient Age In Years" >= 9

/*
@input: Client's age is less than 1 year
@pseudocode: Today's date − "Date of birth" < 1 year
*/
define "Client's age is less than 1 year":
  "Current Patient Age In Years" < 1

/*
@input: Client's age is between 1 year and 6 years
@pseudocode: 1 year ≤  Today's date − "Date of birth" ≤  6 years
*/
define "Client's age is between 1 year and 6 years":
  "Current Patient Age In Years" >= 1
  and "Current Patient Age In Years" <= 6

/*
@input: Client's age is more than 6 years
@pseudocode: Today's date − "Date of birth" >  6 years
*/
define "Client's age is more than 6 years":
  "Current Patient Age In Years" > 6

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
  exists( "Preterm birth Observation" O where O.value = false )

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

