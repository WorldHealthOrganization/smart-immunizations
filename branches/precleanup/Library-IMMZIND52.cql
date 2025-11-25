/*
 * Library: IMMZ.IND.52
 * Dropout Rate of MCV1 to MCV2 (Individuals) 
 * Indicates the number of individuals which have dropped out of the measles containing vaccine protocol. 

The indicator counts the number of individuals who have received a measles containing vaccine dose 1, yet have not received the final dose of measles containing vaccine (are past due of MCV2) with the individuals who have received MCV1 and MCV2 
 * 
 * Numerator: Number of children who have received MCV 1 (numerator) minus the number of children who have not received MCV 3 and are past due (exclusion) 
 * Numerator Computation: Numerator: COUNT immunization events WHERE administered product is MCV (IMMZ.A1.DE9) and dose number = 1 and before reporting period and EXISTS immunization recommendation WHERE product is MCV and dose number is 3 and due date during reporting period.
Numerator Exclusion: COUNT immunization recommendations WHERE recommended product is MCV and dose number = 3 and due date during reporting period AND NOT EXISTS immunization where product is MCV and dose sequence = 1
 * Denominator: Number of children who have received MCV dose 1
 * Denominator Computation: COUNT immunization events WHERE administered product is MCV (IMMZ.A1.DE9) and dose sequence =1 AND EXISTS immunization recommendation WHERE product is MCV and dose sequence = 3 and due date during reporting period.
 * 
 * Disaggregation:
 *   - Geographic Region
 * 
 * References: WHO Immunization Facility Analysis Guide (1)
 */

library IMMZIND52

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
 * Patient should be completing MCV during measurement period
 */
define "Patient Should Complete MCV Series During Measurement Period":
	exists(
		IMMZCom."MCV Doses Administered to Patient" I 
		where 
			(singleton from I.protocolApplied).doseNumber = 1
			and I.occurrence before start of "Measurement Period"
	)
	and 
	exists(
		[ImmunizationRecommendation] IR 
		where 
			exists(
				IR.recommendation RC where
				exists(RC.dateCriterion DC where date from DC.value during "Measurement Period")
				and RC.doseNumber = 3
				and RC.vaccineCode in IMMZc."MCV Vaccine"
		)
	)

/*
 * Numerator: Number of children who have received MCV 1 (numerator) minus the number of children who have not received MCV 3 and are past due (exclusion)
 * Numerator Computation: Numerator: COUNT immunization events WHERE administered product is MCV (IMMZ.A1.DE9) and dose number = 1 and before reporting period and EXISTS immunization recommendation WHERE product is MCV and dose number is 3 and due date during reporting period.
Numerator Exclusion: COUNT immunization recommendations WHERE recommended product is MCV and dose number = 3 and due date during reporting period AND NOT EXISTS immunization where product is MCV and dose sequence = 1
 */
define "numerator":
	"Patient Should Complete MCV Series During Measurement Period"
	and not exists(IMMZIndCom."MCV Doses Administered to Patient During Measurement Period" I where (singleton from I.protocolApplied).doseNumber = 3)

/*
 * Denominator: Number of children who have received MCV dose 1
 * Denominator Computation: COUNT immunization events WHERE administered product is MCV (IMMZ.A1.DE9) and dose sequence =1 AND EXISTS immunization recommendation WHERE product is MCV and dose sequence = 3 and due date during reporting period.
 */
define "denominator":
	"Patient Should Complete MCV Series During Measurement Period"
	
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

/* End of IMMZ.IND.52 */
