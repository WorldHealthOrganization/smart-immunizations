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

