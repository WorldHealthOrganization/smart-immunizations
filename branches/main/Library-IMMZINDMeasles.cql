/*
 * Library: IMMZ.IND.Measles
 */

library IMMZINDMeasles

// Start Skeleton CQL
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1'
include IMMZCommon called IMMZCom
include IMMZConcepts called IMMZc
include IMMZConfig called IMMZCon
//include IMMZIndicatorCommon called IMMZIndCom
include IMMZVaccineLibrary called IMMZvl
include FHIRCommon called FC
include IMMZD2DTMeaslesInput called Measles
// End Skeleton CQL
parameter "Measurement Period" Interval<DateTime> default Interval[@2023-01-01T00:00:00.0, @2023-12-31T23:59:59.9]

context Patient

/*
 * Measles doses given during measurement period
 */
define "Measles Doses in Measurement Period":
	Measles."MCV Doses Administered to Patient" I where I.occurrence during "Measurement Period"

