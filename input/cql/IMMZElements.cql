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

/*
  @dataElement Date and time of last live attenuated vaccine
*/
define "Live Attenuated Vaccines":
  "Doses Administered to Patient" I 
    where I.vaccineCode in Concepts."Live Attenuated"

define "Date of Latest Live Attenuated Vaccine":
  Last(
    "Live Attenuated Vaccines" V
      sort by start of occurrence.toInterval()
  ).occurrence as FHIR.dateTime


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
@input: Live vaccine was administered in the last 4 weeks
@pseudocode: Today's date − latest "Date and time of vaccination" (where "Live vaccine" = TRUE) < 4 weeks
*/
define "Live vaccine was administered in the last 4 weeks":
	"Date of Latest Live Attenuated Vaccine" is not null and duration in weeks between "Date of Latest Live Attenuated Vaccine" and Now() < 4

/*
@input: No live vaccine was administered in the last 4 weeks
@pseudocode: Today's date − latest "Date and time of vaccination" (where "Live vaccine" = TRUE) ≥ 4 weeks
*/
define "No live vaccine was administered in the last 4 weeks":
  not("Live vaccine was administered in the last 4 weeks")

/*
@input: Live vaccine was administered in the past 4 weeks
@pseudocode: Today's date − latest "Date and time of vaccination" (where "Live vaccine" = TRUE) 
< 4 weeks
*/
define "Live vaccine was administered in the past 4 weeks":
  "Live vaccine was administered in the last 4 weeks"

/*
@input: No live vaccine was administered in the past 4 weeks
@pseudocode: Today's date − latest "Date and time of vaccination" (where "Live vaccine" = TRUE) 
≥ 4 weeks
*/
define "No live vaccine was administered in the past 4 weeks":
  "No live vaccine was administered in the last 4 weeks"

/*
@internal: Potential contraindications observations
*/
define "Potential contraindications":
  [Observation: Concepts."Potential contraindications"] O
    where O.status in { 'final', 'amended', 'corrected' }

/*
@input: The client is pregnant
@pseudocode: "Potential contraindications" = "Currently pregnant"
*/
define "The client is pregnant":
  exists "Currently pregnant Observation"
  or exists "Currently pregnant Condition"
  //or exists WE."Pregnant Observation"

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
