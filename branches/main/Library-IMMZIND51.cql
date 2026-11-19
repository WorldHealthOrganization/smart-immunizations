/*
 * Library: IMMZ.IND.51
 * Dropout Rate of BCG to MCV1 (Individuals) 
 * Indicates the number of individuals which received a BCG dose at birth (or early life) yet did not receive the first dose of a measles containing vaccine (MCV).

This indicator works by counting the number of individuals who have received a BCG dose, who have not received a MCV1 dose (are past due for MCV1) with the children who have received BCG and MCV1 doses.
 * 
 * Numerator: Number of children who have received BCG (numerator) minus number of children who have not received MCV dose 1 and are past due (numerator exclusion)  
 * Numerator Computation: Numerator: COUNT immunization events WHERE administered product is BCG (IMMZ.A1.DE1) before reporting period and EXISTS immunization recommendation WHERE product is MCV (IMMZ.A1.DE9) AND dose sequence = 1 AND due date during reporting period.
Numerator Exclusion: COUNT immunization recommendations WHERE recommended product is BCG AND due date during reporting period AND NOT EXISTS Immunization event where administered product is MCV AND dose sequence = 3
 * Denominator: Number of children who have received BCG vaccine
 * Denominator Computation: COUNT immunization events WHERE administered product is BCG AND EXISTS immunization recommendation WHERE product is MCV and dose sequence = 1 and due date during reporting period.
 * 
 * Disaggregation:
 *   - Geographic Region
 * 
 * References: WHO Immunization Facility Analysis Guide (1)
 */

library IMMZIND51

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
define "Patient Should Complete BCG to MCV During Measurement Period":
	exists(
		IMMZCom."BCG Doses Administered to Patient" I 
		where 
			I.occurrence before start of "Measurement Period"
	)
	and 
	exists(
		[ImmunizationRecommendation] IR 
		where 
			exists(
				IR.recommendation RC where
				exists(RC.dateCriterion DC where date from DC.value during "Measurement Period")
				and RC.doseNumber = 1
				and RC.vaccineCode in IMMZc."MCV Vaccine"
		)
	)

/*
 * Numerator: Number of children who have received BCG (numerator) minus number of children who have not received MCV dose 1 and are past due (numerator exclusion) 
 * Numerator Computation: Numerator: COUNT immunization events WHERE administered product is BCG (IMMZ.A1.DE1) before reporting period and EXISTS immunization recommendation WHERE product is MCV (IMMZ.A1.DE9) AND dose sequence = 1 AND due date during reporting period.
Numerator Exclusion: COUNT immunization recommendations WHERE recommended product is BCG AND due date during reporting period AND NOT EXISTS Immunization event where administered product is MCV AND dose sequence = 3
 */
define "numerator":
	"Patient Should Complete BCG to MCV During Measurement Period"
	and not exists(IMMZIndCom."MCV Doses Administered to Patient During Measurement Period" I where (singleton from I.protocolApplied).doseNumber = 1)

/*
 * Denominator: Number of children who have received BCG vaccine
 * Denominator Computation: COUNT immunization events WHERE administered product is BCG AND EXISTS immunization recommendation WHERE product is MCV and dose sequence = 1 and due date during reporting period.
 */
define "denominator":
	"Patient Should Complete BCG to MCV During Measurement Period"


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
/* End of IMMZ.IND.51 */
