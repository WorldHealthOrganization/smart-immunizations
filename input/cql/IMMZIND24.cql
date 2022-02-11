/*
 * Library: IMMZ.IND.24
 * Open vial wastage rate 
 * The open vial wastage rate is used to measure the percentage of doses of vaccine that were opened, but discarded due to under-utilization. For example, a 5 dose vile of an antigen may be thrown out after only 2 administrations of the vaccine, indicating an open vial wastage of 3 doses.
 * 
 * Numerator: Total number of doses used (starting balance of doses + supplied doses - ending balance doses) minus total number of doses administered to patients.

Starting Balance = The number of doses available for immunization at the start of day/session.
Supplied Doses = The number of doses which were received/added to the stock during the day/session.
Ending Balance = The number of doses which were left at the end of the day/session 
 * Numerator Computation: (Starting Balance + Supplied Doses - Ending Balance) - COUNT of persons who were administered the vaccine
 * Denominator: The total number of doses used / consumed during the vaccination session/day.
 * Denominator Computation: Starting Balance + Supplied Doses - Ending Balance
 * 
 * Disaggregation:
 *   - Vaccine (BCG, OPV, etc.)
 *   - Geographic Region
 * 
 * References: WHO Immunization Facility Analysis Guide (1)
 */

library IMMZIND24

using FHIR version '4.0.1'

include FHIRHelpers version '4.0.1'
include IMMZCommon called IMMZCom
include IMMZConcepts called IMMZc
include IMMZStratifiers called IMMZStratifiers
include IMMZVaccineLibrary called IMMZvl

parameter "Measurement Period" Interval<Date>

context Patient

/*
 * Numerator: Total number of doses used (starting balance of doses + supplied doses - ending balance doses) minus total number of doses administered to patients.

Starting Balance = The number of doses available for immunization at the start of day/session.
Supplied Doses = The number of doses which were received/added to the stock during the day/session.
Ending Balance = The number of doses which were left at the end of the day/session
 * Numerator Computation: (Starting Balance + Supplied Doses - Ending Balance) - COUNT of persons who were administered the vaccine
 */
define "numerator":
	true // TODO: Write logic here 

/*
 * Denominator: The total number of doses used / consumed during the vaccination session/day.
 * Denominator Computation: Starting Balance + Supplied Doses - Ending Balance
 */
define "denominator":
	true // TODO: Write logic here 

/*
 * Disaggregator: Vaccine (BCG, OPV, etc.)
 */
define "Vaccine  Stratifier":
	true // todo: fill in logic

/*
 * Disaggregator: Geographic Region
 */
define "Geographic Region Stratifier":
	IMMZStratifiers."By Geographic Region Stratifier"

