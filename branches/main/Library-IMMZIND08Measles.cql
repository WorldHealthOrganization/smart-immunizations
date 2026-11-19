/*
 * Library: IMMZ.IND.08.Measles
 * Immunization coverage for measles containing vaccine, 2nd dose 
 * The percentage in the target population who have received second dose of measles-containing vaccine during reporting period
 * 
 * 
 * References: WHO / UNICEF Joint Reporting Form
 *             WHO Immunization data portal
 */

library IMMZIND08Measles

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
@population: Initial population for second dose: Any one over 15 months
*/ 
define "Initial Population":
	Patient.birthDate + 15 months before end of "Measurement Period"

/*
@numerator: Number of Measles doses (2nd dose) administered through routine services during reporting period
@computation: COUNT of immunization events WHERE "Vaccine type" = "Measles containing vaccines" for the second dose in the primary series (MCV2) AND "Date and time of vaccination" is during the reporting period 
*/
define "Numerator":
	exists( Ind."Measles Doses in Measurement Period" I where IMMZCom.ToPositiveInt((singleton from I.protocolApplied).doseNumber) = 2 )

/*
@denominator: Number in target group
@computation: As defined by the Member States
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