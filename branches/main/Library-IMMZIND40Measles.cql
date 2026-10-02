/*
 * Library: IMMZ.IND.40.Measles
 * Dropout rate of MCV1 to MCV2 
 * The percentage in the target population who received a first dose of measles containing vaccine in the primary series (MCV1) 
 * but have not received the second dose of measles containing vaccine in the primary series (i.e. are past due for MCV2) during the reporting period
 * 
 * 
 * References: WHO Immunization Facility Analysis Guide
 *       
 */

library IMMZIND40Measles

// Start Skeleton CQL
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1'
include IMMZCommon called IMMZCom
include IMMZConcepts called IMMZc
include IMMZConfig called IMMZCon
//include IMMZIndicatorCommon called IMMZIndCom
include IMMZVaccineLibrary called IMMZvl
include FHIRCommon called FC
include IMMZINDMeasles called Ind
include IMMZStratifiers called Stratifiers
// End Skeleton CQL
parameter "Measurement Period" Interval<DateTime> default Interval[@2023-01-01T00:00:00.0, @2023-12-31T23:59:59.9]

context Patient

/*
@internal: First dose received during reporting period
*/
define "First Dose":
	exists( Ind."Measles Doses in Measurement Period" I where IMMZCom.ToPositiveInt((singleton from I.protocolApplied).doseNumber) = 1 )

/*
@internal: Second dose received during reporting period
*/
define "Second Dose":
	exists( Ind."Measles Doses in Measurement Period" I where IMMZCom.ToPositiveInt((singleton from I.protocolApplied).doseNumber) = 2 )

/*
@population: Number of clients in the target population who received dose 1 of MCV containing vaccine during the reporting period
*/ 
define "Initial Population":
	"First Dose"

/*
@numerator: Number of clients who received dose 1 of MCV containing vaccine during the reporting period who should have received dose 2 of MCV containing vaccine during the reporting period, however did not receive MCV dose 2.
@computation: COUNT of clients with an immunization event WHERE "Vaccine type" = "Measles containing vaccines" for the first dose in the primary series (MCV1) AND "Date and time of vaccination" is during the reporting period
MINUS
COUNT of clients with an immunization event WHERE "Vaccine type"" = "Measles containing vaccines" for the second dose in the primary series (MCV2) AND "Date and time of vaccination" is during the reporting period
*/
define "Numerator":
	"First Dose" and not( "Second Dose" )
/*
@denominator: Number of clients in the target population who received dose 1 of MCV containing vaccine during the reporting period
@computation: COUNT clients with an immunization event WHERE "Vaccine type" = "Measles containing vaccines" for a first dose in the primary series (MCV1)  AND "Date and time of vaccination" is during the reporting period
*/
define "Denominator":
	"Initial Population"

/*
@disaggregation: Administrative area
                 Sex
                 Age in years
                 Age group (depending on schedule)
*/
define "Stratification 1":
	Stratifiers."Administrative Area"

define "Stratification 2":
	Stratifiers."Sex"

define "Stratification 3":
	Stratifiers."Age"

define "Stratification 4":
	Stratifiers."Age Group"