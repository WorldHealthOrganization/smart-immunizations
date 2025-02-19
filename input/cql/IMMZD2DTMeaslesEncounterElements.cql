
/*
  * Library: IMMZD2DTMeaslesEncounterElements
  */
library IMMZD2DTMeaslesEncounterElements

using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1'

include WHOConcepts
include WHOCommon called WC
include WHOElements called WE

include IMMZCommon called Common
include IMMZConcepts called Concepts

include IMMZEncounterElements called Encounter

include IMMZD2DTMeaslesElements called MeaslesElements

parameter Today Date default Today()
parameter EncounterId String

context Patient

/*
@internal: MCV containing Doses Administered to Patient
*/
define "MCV Doses Administered to Patient":
  Encounter."Doses Administered to Patient" I
  where
    I.occurrence.toInterval() on or before Today

/*
@internal: MCV containing Doses Administered to Patient that are in the Primary series
*/
define "MCV Primary Series Doses Administered to Patient":
  MeaslesElements."MCV Primary Series Doses Administered to Patient" I
  where
    I.occurrence.toInterval() on or before Today

/*
@internal: Number of MCV Primary Series doses
*/
define "Number of MCV Primary Series Doses Administered":
  Count("MCV Primary Series Doses Administered to Patient")

/*
@input: No measles primary series doses were administered
@pseudocode: Count of vaccines administered (where "Vaccine type" = "Measles-containing vaccines" and "Type of dose" = "Primary series") = 0
*/
define "No measles primary series doses were administered":
  "Number of MCV Primary Series Doses Administered" = 0

/*
@input: MCV1 was administered
@pseudocode: Count of vaccines administered (where "Vaccine type" = "Measles-containing vaccines" and "Type of dose" = "Primary series") = 1
*/
define "MCV1 was administered":
  "Number of MCV Primary Series Doses Administered" = 1

/*
@input: MCV2 was administered
@pseudocode: Count of vaccines administered (where "Vaccine type" = "Measles-containing vaccines" and "Type of dose" = "Primary series") = 2
*/
define "MCV2 was administered":
  "Number of MCV Primary Series Doses Administered" = 2

