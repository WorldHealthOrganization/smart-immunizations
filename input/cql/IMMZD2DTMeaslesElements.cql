/*
  * Library: IMMZD2DTMeaslesElements
  */
library IMMZD2DTMeaslesElements

using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1'

include WHOConcepts
include WHOCommon called WC
include WHOElements called WE

include IMMZCommon called Common
include IMMZConcepts called Concepts
include IMMZElements called Elements

context Patient


/*
@internal: MCV containing Doses Administered to Patient
*/
define "MCV Doses Administered to Patient":
  Elements."Doses Administered to Patient" I
  where
    I.vaccineCode in Concepts."MCV Vaccine"
    and I.isSubpotent is not true

/*
@internal: MCV containing Doses Administered to Patient that are in the Primary series
*/
define "MCV Primary Series Doses Administered to Patient":
  "MCV Doses Administered to Patient" I
  where
    exists( I.protocolApplied pa where pa.series = 'Primary series' )

/*
@internal: MCV containing Doses Administered to Patient that are in the Dose 0 series
*/
define "MCV Dose 0 Doses Administered to Patient":
  "MCV Doses Administered to Patient" I
  where
    exists( I.protocolApplied pa where pa.series = 'Dose 0' )

/*
@internal: MCV containing Doses Administered to Patient that are in the Supplementary series
*/
define "MCV Supplementary Doses Administered to Patient":
  "MCV Doses Administered to Patient" I
  where
    exists( I.protocolApplied pa where pa.series = 'Supplementary dose' )

/*
@internal: Number of MCV Primary Series doses
*/
define "Number of MCV Primary Series Doses Administered":
  Count("MCV Primary Series Doses Administered to Patient")

/*
@internal: Number of MCV Dose 0 doses
*/
define "Number of MCV Dose 0 Doses Administered":
  Count("MCV Dose 0 Doses Administered to Patient")

/*
@internal: Number of Supplementary doses
*/
define "Number of MCV Supplementary Doses Administered":
  Count("MCV Supplementary Doses Administered to Patient")

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
  "Number of MCV Primary Series Doses Administered" >= 1

/*
@input: MCV2 was administered
@pseudocode: Count of vaccines administered (where "Vaccine type" = "Measles-containing vaccines" and "Type of dose" = "Primary series") = 2
*/
define "MCV2 was administered":
  "Number of MCV Primary Series Doses Administered" >= 2

/*
@input: MCV0 was not administered
@pseudocode: Count of vaccines administered (where "Vaccine type" = "Measles-containing vaccines
" and "Type of dose" = "Dose 0") = 0
*/
define "MCV0 was not administered":
  "Number of MCV Dose 0 Doses Administered" = 0

/*
@input: MCV0 was administered
@pseudocode: Count of vaccines administered (where "Vaccine type" = "Measles-containing vaccines
" and "Type of dose" = "Dose 0") = 1
*/
define "MCV0 was administered":
  "Number of MCV Dose 0 Doses Administered" >= 1

/*
@input: Measles supplementary dose was not administered
@pseudocode: Count of vaccines administered (where "Vaccine type" = "Measles-containing vaccines
" and "Type of dose" = "Supplementary dose") = 0
*/
define "Measles supplementary dose was not administered":
  "Number of MCV Supplementary Doses Administered" = 0

/*
@input: Measles supplementary dose was administered
@pseudocode: Count of vaccines administered (where "Vaccine type" = "Measles-containing vaccines
" and "Type of dose" = "Supplementary dose") = 1
*/
define "Measles supplementary dose was administered":
  "Number of MCV Supplementary Doses Administered" >= 1

/*
@input: Measles routine immunization schedule is complete
@pseudocode: "Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Measles-
containing vaccines")
*/
define "Measles routine immunization schedule is complete":
  [Observation : Concepts."Completed the primary vaccination series"] O where O.value = true
  or
  "MCV2 was administered"

