
/*
  * Library: IMMZD2DTVaricellaEncounterElements
  */
library IMMZD2DTVaricellaEncounterElements

using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1'

include WHOConcepts
include WHOCommon called WC
include WHOElements called WE

include IMMZCommon called Common
include IMMZConcepts called Concepts
include IMMZEncounterElements called Encounter

include IMMZD2DTVaricellaElements called VaricellaElements

parameter Today Date default Today()
parameter EncounterId String

context Patient

/*
@internal: Varicella containing Doses Administered to Patient
*/
define "Varicella Doses Administered to Patient":
  Encounter."Doses Administered to Patient" I
  where
    I.vaccineCode in Concepts."Varicella-containing vaccines"

/*
@internal: Varicella containing Doses Administered to Patient that are in the Primary series
*/
define "Varicella Primary Series Doses Administered to Patient":
  "Varicella Doses Administered to Patient".seriesPrimary()

/*
@internal: Number of Varicella Primary Series doses
*/
define "Number of Varicella Primary Series Doses Administered":
  Count("Varicella Primary Series Doses Administered to Patient")

/*
@input: Client's age is less than 12 months
@pseudocode: Today's date − "Date of birth" < 12 months
@code: Client's age is less than 12 months-42
@decision: IMMZ.D2.DT.Varicella.1 dose: Countries where varicella is an important public health burden could consider introducing varicella vaccination in the routine childhood immunization programme. However, resources should be sufficient to ensure reaching and sustaining vaccine coverage ≥ 80%. Decision-making on childhood varicella vaccination should also include consideration of the possible impact on herpes zoster.
The number of doses recommended is dependent on the goal of the vaccination programme. One dose is sufficient to reduce mortality and severe morbidity from varicella but not to prevent limited virus circulation and outbreaks. Two doses have higher effectiveness and should therefore be recommended in countries where the programmatic goal is, in addition to decreasing mortality and severe morbidity, to further reduce the number of cases and outbreaks.
@decision: IMMZ.D2.DT.Varicella.2 doses: Countries where varicella is an important public health burden could consider introducing varicella vaccination in the routine childhood immunization programme. However, resources should be sufficient to ensure reaching and sustaining vaccine coverage ≥ 80%. Decision-making on childhood varicella vaccination should also include consideration of the possible impact on herpes zoster.
The number of doses recommended is dependent on the goal of the vaccination programme. One dose is sufficient to reduce mortality and severe morbidity from varicella but not to prevent limited virus circulation and outbreaks. Two doses have higher effectiveness and should therefore be recommended in countries where the programmatic goal is, in addition to decreasing mortality and severe morbidity, to further reduce the number of cases and outbreaks.
*/
define "Client's age is less than 12 months":
  Encounter."Current Patient Age In Months" < 12

/*
@input: No varicella primary series dose was administered
@pseudocode: Count of vaccines administered (where "Vaccine type" = "Varicella-containing vaccines" and "Type of dose" = "Primary series") = 0
@code: No varicella primary series dose was administered-129
@decision: IMMZ.D2.DT.Varicella.1 dose: Countries where varicella is an important public health burden could consider introducing varicella vaccination in the routine childhood immunization programme. However, resources should be sufficient to ensure reaching and sustaining vaccine coverage ≥ 80%. Decision-making on childhood varicella vaccination should also include consideration of the possible impact on herpes zoster.
The number of doses recommended is dependent on the goal of the vaccination programme. One dose is sufficient to reduce mortality and severe morbidity from varicella but not to prevent limited virus circulation and outbreaks. Two doses have higher effectiveness and should therefore be recommended in countries where the programmatic goal is, in addition to decreasing mortality and severe morbidity, to further reduce the number of cases and outbreaks.
*/
define "No varicella primary series dose was administered":
  "Number of Varicella Primary Series Doses Administered" = 0

/*
@input: Cient's age is more than or equal to 12 months
@pseudocode: Today's date − "Date of birth" ≥ 12 months
@code: Cient's age is more than or equal to 12 months-42
@decision: IMMZ.D2.DT.Varicella.1 dose: Countries where varicella is an important public health burden could consider introducing varicella vaccination in the routine childhood immunization programme. However, resources should be sufficient to ensure reaching and sustaining vaccine coverage ≥ 80%. Decision-making on childhood varicella vaccination should also include consideration of the possible impact on herpes zoster.
The number of doses recommended is dependent on the goal of the vaccination programme. One dose is sufficient to reduce mortality and severe morbidity from varicella but not to prevent limited virus circulation and outbreaks. Two doses have higher effectiveness and should therefore be recommended in countries where the programmatic goal is, in addition to decreasing mortality and severe morbidity, to further reduce the number of cases and outbreaks.
@decision: IMMZ.D2.DT.Varicella.2 doses: Countries where varicella is an important public health burden could consider introducing varicella vaccination in the routine childhood immunization programme. However, resources should be sufficient to ensure reaching and sustaining vaccine coverage ≥ 80%. Decision-making on childhood varicella vaccination should also include consideration of the possible impact on herpes zoster.
The number of doses recommended is dependent on the goal of the vaccination programme. One dose is sufficient to reduce mortality and severe morbidity from varicella but not to prevent limited virus circulation and outbreaks. Two doses have higher effectiveness and should therefore be recommended in countries where the programmatic goal is, in addition to decreasing mortality and severe morbidity, to further reduce the number of cases and outbreaks.
*/
define "Cient's age is more than or equal to 12 months":
  Encounter."Current Patient Age In Months" >= 12

/*
@input: Live vaccine was administered in the past 4 weeks
@pseudocode: Today's date − latest "Date and time of vaccination" (where "Live vaccine" = TRUE) < 4 weeks
@code: Live vaccine was administered in the past 4 weeks-92
@decision: IMMZ.D2.DT.Varicella.1 dose: Countries where varicella is an important public health burden could consider introducing varicella vaccination in the routine childhood immunization programme. However, resources should be sufficient to ensure reaching and sustaining vaccine coverage ≥ 80%. Decision-making on childhood varicella vaccination should also include consideration of the possible impact on herpes zoster.
The number of doses recommended is dependent on the goal of the vaccination programme. One dose is sufficient to reduce mortality and severe morbidity from varicella but not to prevent limited virus circulation and outbreaks. Two doses have higher effectiveness and should therefore be recommended in countries where the programmatic goal is, in addition to decreasing mortality and severe morbidity, to further reduce the number of cases and outbreaks.
@decision: IMMZ.D2.DT.Varicella.2 doses: Countries where varicella is an important public health burden could consider introducing varicella vaccination in the routine childhood immunization programme. However, resources should be sufficient to ensure reaching and sustaining vaccine coverage ≥ 80%. Decision-making on childhood varicella vaccination should also include consideration of the possible impact on herpes zoster.
The number of doses recommended is dependent on the goal of the vaccination programme. One dose is sufficient to reduce mortality and severe morbidity from varicella but not to prevent limited virus circulation and outbreaks. Two doses have higher effectiveness and should therefore be recommended in countries where the programmatic goal is, in addition to decreasing mortality and severe morbidity, to further reduce the number of cases and outbreaks.
*/
define "Live vaccine was administered in the past 4 weeks":
  Encounter."Live vaccine was administered in the last 4 weeks"

/*
@input: No live vaccine was administered in the past 4 weeks
@pseudocode: Today's date − latest "Date and time of vaccination" (where "Live vaccine" = TRUE) ≥ 4 weeks
@code: No live vaccine was administered in the past 4 weeks-92
@decision: IMMZ.D2.DT.Varicella.1 dose: Countries where varicella is an important public health burden could consider introducing varicella vaccination in the routine childhood immunization programme. However, resources should be sufficient to ensure reaching and sustaining vaccine coverage ≥ 80%. Decision-making on childhood varicella vaccination should also include consideration of the possible impact on herpes zoster.
The number of doses recommended is dependent on the goal of the vaccination programme. One dose is sufficient to reduce mortality and severe morbidity from varicella but not to prevent limited virus circulation and outbreaks. Two doses have higher effectiveness and should therefore be recommended in countries where the programmatic goal is, in addition to decreasing mortality and severe morbidity, to further reduce the number of cases and outbreaks.
@decision: IMMZ.D2.DT.Varicella.2 doses: Countries where varicella is an important public health burden could consider introducing varicella vaccination in the routine childhood immunization programme. However, resources should be sufficient to ensure reaching and sustaining vaccine coverage ≥ 80%. Decision-making on childhood varicella vaccination should also include consideration of the possible impact on herpes zoster.
The number of doses recommended is dependent on the goal of the vaccination programme. One dose is sufficient to reduce mortality and severe morbidity from varicella but not to prevent limited virus circulation and outbreaks. Two doses have higher effectiveness and should therefore be recommended in countries where the programmatic goal is, in addition to decreasing mortality and severe morbidity, to further reduce the number of cases and outbreaks.
*/
define "No live vaccine was administered in the past 4 weeks":
  Encounter."No live vaccine was administered in the last 4 weeks"

/*
@input: One varicella primary series dose was administered
@pseudocode: Count of vaccines administered (where "Vaccine type" = "Varicella-containing vaccines" and "Type of dose" = "Primary series") = 1
@code: One varicella primary series dose was administered-129
@decision: IMMZ.D2.DT.Varicella.1 dose: Countries where varicella is an important public health burden could consider introducing varicella vaccination in the routine childhood immunization programme. However, resources should be sufficient to ensure reaching and sustaining vaccine coverage ≥ 80%. Decision-making on childhood varicella vaccination should also include consideration of the possible impact on herpes zoster.
The number of doses recommended is dependent on the goal of the vaccination programme. One dose is sufficient to reduce mortality and severe morbidity from varicella but not to prevent limited virus circulation and outbreaks. Two doses have higher effectiveness and should therefore be recommended in countries where the programmatic goal is, in addition to decreasing mortality and severe morbidity, to further reduce the number of cases and outbreaks.
@decision: IMMZ.D2.DT.Varicella.2 doses: Countries where varicella is an important public health burden could consider introducing varicella vaccination in the routine childhood immunization programme. However, resources should be sufficient to ensure reaching and sustaining vaccine coverage ≥ 80%. Decision-making on childhood varicella vaccination should also include consideration of the possible impact on herpes zoster.
The number of doses recommended is dependent on the goal of the vaccination programme. One dose is sufficient to reduce mortality and severe morbidity from varicella but not to prevent limited virus circulation and outbreaks. Two doses have higher effectiveness and should therefore be recommended in countries where the programmatic goal is, in addition to decreasing mortality and severe morbidity, to further reduce the number of cases and outbreaks.
*/
define "One varicella primary series dose was administered":
  "Number of Varicella Primary Series Doses Administered" = 1

/*
@input: No varicella primary series doses were administered
@pseudocode: Count of vaccines administered (where "Vaccine type" = "Varicella-containing vaccines" and "Type of dose" = "Primary series") = 0
@code: No varicella primary series doses were administered-129
@decision: IMMZ.D2.DT.Varicella.2 doses: Countries where varicella is an important public health burden could consider introducing varicella vaccination in the routine childhood immunization programme. However, resources should be sufficient to ensure reaching and sustaining vaccine coverage ≥ 80%. Decision-making on childhood varicella vaccination should also include consideration of the possible impact on herpes zoster.
The number of doses recommended is dependent on the goal of the vaccination programme. One dose is sufficient to reduce mortality and severe morbidity from varicella but not to prevent limited virus circulation and outbreaks. Two doses have higher effectiveness and should therefore be recommended in countries where the programmatic goal is, in addition to decreasing mortality and severe morbidity, to further reduce the number of cases and outbreaks.
*/
define "No varicella primary series doses were administered":
  "No varicella primary series dose was administered"

/*
@input: The latest varicella dose administered less than 4 weeks ago
@pseudocode: Today's date − "Date and time of vaccination" (where "Vaccine type" = "Varicella-containing vaccines") < 4 weeks
@code: The latest varicella dose administered less than 4 weeks ago-112
@decision: IMMZ.D2.DT.Varicella.2 doses: Countries where varicella is an important public health burden could consider introducing varicella vaccination in the routine childhood immunization programme. However, resources should be sufficient to ensure reaching and sustaining vaccine coverage ≥ 80%. Decision-making on childhood varicella vaccination should also include consideration of the possible impact on herpes zoster.
The number of doses recommended is dependent on the goal of the vaccination programme. One dose is sufficient to reduce mortality and severe morbidity from varicella but not to prevent limited virus circulation and outbreaks. Two doses have higher effectiveness and should therefore be recommended in countries where the programmatic goal is, in addition to decreasing mortality and severe morbidity, to further reduce the number of cases and outbreaks.
*/
define "The latest varicella dose administered less than 4 weeks ago":
	"Date of Latest Varicella Dose" is not null
    and duration in weeks between "Date of Latest Varicella Dose" and Today < 4

/*
@input: The latest varicella dose administered more than 4 weeks ago
@pseudocode: Today's date − "Date and time of vaccination" (where "Vaccine type" = "Varicella-containing vaccines") ≥ 4 weeks
@code: The latest varicella dose administered more than 4 weeks ago-112
@decision: IMMZ.D2.DT.Varicella.2 doses: Countries where varicella is an important public health burden could consider introducing varicella vaccination in the routine childhood immunization programme. However, resources should be sufficient to ensure reaching and sustaining vaccine coverage ≥ 80%. Decision-making on childhood varicella vaccination should also include consideration of the possible impact on herpes zoster.
The number of doses recommended is dependent on the goal of the vaccination programme. One dose is sufficient to reduce mortality and severe morbidity from varicella but not to prevent limited virus circulation and outbreaks. Two doses have higher effectiveness and should therefore be recommended in countries where the programmatic goal is, in addition to decreasing mortality and severe morbidity, to further reduce the number of cases and outbreaks.
*/
define "The latest varicella dose administered more than 4 weeks ago":
  not "The latest varicella dose administered less than 4 weeks ago"

/*
@input: Two varicella primary series doses were administered
@pseudocode: Count of vaccines administered (where "Vaccine type" = "Varicella-containing vaccines" and "Type of dose" = "Primary series") = 2
@code: Two varicella primary series doses were administered-129
@decision: IMMZ.D2.DT.Varicella.2 doses: Countries where varicella is an important public health burden could consider introducing varicella vaccination in the routine childhood immunization programme. However, resources should be sufficient to ensure reaching and sustaining vaccine coverage ≥ 80%. Decision-making on childhood varicella vaccination should also include consideration of the possible impact on herpes zoster.
The number of doses recommended is dependent on the goal of the vaccination programme. One dose is sufficient to reduce mortality and severe morbidity from varicella but not to prevent limited virus circulation and outbreaks. Two doses have higher effectiveness and should therefore be recommended in countries where the programmatic goal is, in addition to decreasing mortality and severe morbidity, to further reduce the number of cases and outbreaks.
*/
define "Two varicella primary series doses were administered":
  "Number of Varicella Primary Series Doses Administered" = 2

/*
@internal: Date of Latest Varicella Dose
*/
define "Date of Latest Varicella Dose":
  date from start of "Varicella Doses Administered to Patient".mostRecent().occurrence.toInterval()
