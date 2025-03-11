library IMMZEncounterElements

using FHIR version '4.0.1'

include FHIRHelpers version '4.0.1'

include WHOConcepts
include WHOCommon called WC
include WHOEncounterElements called WE

include IMMZConcepts called Concepts
include IMMZCommon called Common
include IMMZElements called Elements

parameter Today Date default Today()
parameter EncounterId String

context Patient

/**
 * @dataElement All Doses Administered to Patient
 */
define "Doses Administered to Patient":
  Elements."Doses Administered to Patient" I
    where I.occurrence.toInterval() on or before Today

/*
  @dataElement Date and time of last live attenuated vaccine
*/
define "Live Attenuated Vaccines":
  Elements."Live Attenuated Vaccines" I
    where I.occurrence.toInterval() on or before Today

define "Date of Latest Live Attenuated Vaccine":
  date from start of "Live Attenuated Vaccines".mostRecent().occurrence.toInterval()
  
/** 
 * @dataElement Patient age in years
 */
define "Current Patient Age In Years":
  AgeInYearsAt(Today)

/** 
 * @dataElement Patient age in months
 */
define "Current Patient Age In Months":
  AgeInMonthsAt(Today)

/** 
 * @dataElement Patient age in weeks
 */
define "Current Patient Age In Weeks":
  AgeInWeeksAt(Today)

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
	"Date of Latest Live Attenuated Vaccine" is not null 
    and duration in weeks between "Date of Latest Live Attenuated Vaccine" and Today < 4

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
  Elements."Currently pregnant Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts after Today - 9 months

/*
@internal: Condition for currently pregnant
*/
define "Currently pregnant Condition":
  Elements."Currently pregnant Condition" C
    where C.prevalenceInterval() includes Today

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
  Elements."History of anaphylactic reactions Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today

/*
@internal: Condition for History of anaphylactic reactions
*/
define "History of anaphylactic reactions Condition":
  Elements."History of anaphylactic reactions Condition" C
    where C.prevalenceInterval() includes Today

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
  Elements."Severe allergic reactions Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today

/*
@internal: Condition for Severe allergic reactions
*/
define "Severe allergic reactions Condition":
  Elements."Severe allergic reactions Condition" C
    where C.prevalenceInterval() includes Today

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
  Elements."Severely immunosuppressed Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today

/*
@internal: Condition for Severely immunosuppressed
*/
define "Severely immunosuppressed Condition":
  Elements."Severely immunosuppressed Condition" C
    where C.prevalenceInterval() includes Today

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
  Elements."Symptomatic HIV infection Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today

/*
@internal: Condition for Symptomatic HIV infection
*/
define "Symptomatic HIV infection Condition":
  Elements."Symptomatic HIV infection Condition" C
    where C.prevalenceInterval() includes Today

