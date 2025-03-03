/*
 * Library: IMMZ.IND.50
 * Dropout Rate of DTP1 to DTP3 (Individuals) 
 * Indicates the number of individuals which have dropped out of the DTP containing vaccine protocol (i.e. children which have received DTP1 but not DTP3).

This indicator works by counting the number of individuals who have received the first dose of DTP (dose 1) containing vaccine but not the last dose of DTP (are past-due for dose 3) with the children who have completed the vaccination protocol.
 * 
 * Numerator: Number of children who have received DTP1 (numerator) minus number of children who have not received DTP dose 3 and are past due (numerator exclusion)  
 * Numerator Computation: Numerator: COUNT immunization events WHERE administered product is DTP containing vaccine AND dose sequence = 1 before reporting period and EXISTS immunization recommendation WHERE product is DTP AND dose sequence = 3 AND due date during reporting period.
Numerator Exclusion: COUNT immunization recommendations WHERE recommended product is DTP containing vaccine AND dose sequence = 3 AND due date during reporting period AND NOT EXISTS Immunization event where administered product is DTP containing vaccine AND dose sequence = 3
 * Denominator: Number of children who have received DTP containing vaccine dose 1
 * Denominator Computation: COUNT immunization events WHERE administered product is DTP containing vaccine AND dose sequence = 1 AND EXISTS immunization recommendation WHERE product is DTP and dose sequence = 3 and due date during reporting period.
 * 
 * Disaggregation:
 *   - Geographic Region
 * 
 * References: WHO Immunization Facility Analysis Guide (1)
 */

library IMMZIND50

// Start Skeleton CQL
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1'
include IMMZCommon called IMMZCom
include IMMZConcepts called IMMZc
include IMMZConfig called IMMZCon
include IMMZIndicatorCommon called IMMZIndCom
include IMMZVaccineLibrary called IMMZvl
include FHIRCommon called FC
// End Skeleton CQL
parameter "Measurement Period" Interval<Date>
context Patient

/**
 * Patient should be completing DTP during measurement period
 */
define "Patient Should Complete DTP Series During Measurement Period":
	exists(
		IMMZCom."DTP Doses Administered to Patient" I 
		where 
			(singleton from I.protocolApplied).doseNumber = 1
	)
	and 
	exists(
		[ImmunizationRecommendation] IR 
		where 
			exists(
				IR.recommendation RC where
				exists(RC.dateCriterion DC where date from DC.value during "Measurement Period")
				and RC.doseNumber = 3
				and RC.vaccineCode in IMMZc."DTP Vaccine"
		)
	)
	
/*
 * Numerator: Number of administrations of DTP1 administered during reporting period minus the number of administrations of DTP3 administered during report period
 * Numerator Computation: COUNT immunization events WHERE administered product is DTP (IMMZ.A1.DE24) AND dose sequence is 1  during reporting period
SUBTRACT
COUNT immunization events WHERE administered product is DTP (IMMZ.A1.DE24) AND dose sequence is 3  during reporting period
 */
define "numerator":
	"Patient Should Complete DTP Series During Measurement Period"
	and not exists(IMMZIndCom."DTP Doses Administered to Patient During Measurement Period" I where (singleton from I.protocolApplied).doseNumber = 3)

/*
 * Denominator: Number of doses of DTP1 administered
 * Denominator Computation: COUNT immunization events WHERE administered product is DTP (IMMZ.A1.DE24) AND dose sequence is 1 before reporting period 
 */
define "denominator":
	"Patient Should Complete DTP Series During Measurement Period"

/*
 * Disaggregator: Geographic Region
 */
define "Geographic Region Stratifier":
	IMMZIndCom."By Geographic Region Stratifier"

/*
 * Disaggregator: Gender
 */
define "Gender Stratifier":
	IMMZIndCom."By Administrative Gender Stratifier"

/* End of IMMZ.IND.50 */
