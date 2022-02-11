/*
 * Library: IMMZ.IND.23
 * Closed vial wastage rate 
 * The closed vial wastage rate is used to measure percentage of doses of vaccine which were spoiled during the reporting period due to expiry, freezing, breakage, etc. 

This indicator is used to compare performance of management. Implementers may provide codified reasons for further disaggregation (i.e. monitoring what specifically is causing wastage in the system)
 * 
 * Numerator: Number of doses in closed vials of vaccine product that were discarded (for example: expired, VVM state, freezing, breakage, etc.) 
 * Numerator Computation: COUNT number of disposed vials of vaccine product.
 * Denominator: Total number of doses vaccine product received and available for use during the reporting period.
 * Denominator Computation: COUNT number of total vials of vaccine product received and available for use.
 * 
 * Disaggregation:
 *   - Vaccine  (BCG, OPV, etc.)
 *   - Type of Spoilage (Broken, Heat Exposure/VVM, Expiry)
 *   - Geographic Region
 * 
 * References: WHO Immunization Facility Analysis Guide (1)
 */

library IMMZIND23

using FHIR version '4.0.1'

include FHIRHelpers version '4.0.1'
include IMMZCommon called IMMZCom
include IMMZConcepts called IMMZc
include IMMZStratifiers called IMMZStratifiers
include IMMZVaccineLibrary called IMMZvl

parameter "Measurement Period" Interval<Date>

context Patient

/*
 * Numerator: Number of doses in closed vials of vaccine product that were discarded (for example: expired, VVM state, freezing, breakage, etc.)
 * Numerator Computation: COUNT number of disposed vials of vaccine product.
 */
define "numerator":
	true // TODO: Write logic here 

/*
 * Denominator: Total number of doses vaccine product received and available for use during the reporting period.
 * Denominator Computation: COUNT number of total vials of vaccine product received and available for use.
 */
define "denominator":
	true // TODO: Write logic here 

/*
 * Disaggregator: Vaccine  (BCG, OPV, etc.)
 */
define "Vaccine   Stratifier":
	true // todo: fill in logic

/*
 * Disaggregator: Type of Spoilage (Broken, Heat Exposure/VVM, Expiry)
 */
define "Type of Spoilage  Stratifier":
	true // todo: fill in logic

/*
 * Disaggregator: Geographic Region
 */
define "Geographic Region Stratifier":
	IMMZStratifiers."By Geographic Region Stratifier"

