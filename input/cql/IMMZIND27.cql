/*
 * Library: IMMZ.IND.27
 * Adverse Event Following Immunization (AEFI) case rate. 
 * Clinics should report adverse events (reported and confirmed) to the central authority. 

This should be tracked as an aggregate tally (which should indicate the severity, and optionally the manifestation such as rash, vomiting, etc.), with severe cases being reported using case reporting forms, and should include an analysis of whether the AEFI was a direct result (confirmed) of vaccination or not (suspected). Serious cases are those which involved hospitalization, disability, or death.

Investigation of AEFI events can lead to withdrawal of the vaccine from the market, or inform further guidance on administration of a particular antigen/product.

 * 
 * Numerator: Number of persons which have received a vaccine dose, and have reported an adverse event 
 * Numerator Computation: COUNT immunization HAVING reaction reported during reporting period
 * Denominator: The total number of doses administered to patients of the product.
 * Denominator Computation: COUNT number of doses administered during reporting period
 * 
 * Disaggregation:
 *   - Vaccine (BCG, OPV, etc.)
 *   - Product/Manufacturer
 *   - Severity (Severe, Non-Severe)
 *   - Geographic Region
 *   - Manifestation / Event (optional - Rash, Vomiting,  etc.)
 * 
 * References: WHO Immunization Facility Analysis Guide (1)
 */

library IMMZIND27

// Start Skeleton CQL
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1'
include IMMZCommon called IMMZCom
include IMMZConcepts called IMMZc
include IMMZStratifiers called IMMZStratifiers
include IMMZVaccineLibrary called IMMZvl
// End Skeleton CQL
parameter "Measurement Period" Interval<Date>

context Patient

/*
 * Numerator: Number of persons which have received a vaccine dose, and have reported an adverse event
 * Numerator Computation: COUNT immunization HAVING reaction reported during reporting period
 */
define "numerator":
	true // TODO: Write logic here 

/*
 * Denominator: The total number of doses administered to patients of the product.
 * Denominator Computation: COUNT number of doses administered during reporting period
 */
define "denominator":
	true // TODO: Write logic here 

/*
 * Disaggregator: Vaccine (BCG, OPV, etc.)
 */
define "Vaccine  Stratifier":
	true // todo: fill in logic

/*
 * Disaggregator: Product/Manufacturer
 */
define "Product/Manufacturer Stratifier":
	true // todo: fill in logic

/*
 * Disaggregator: Severity (Severe, Non-Severe)
 */
define "Severity  Stratifier":
	true // todo: fill in logic

/*
 * Disaggregator: Geographic Region
 */
define "Geographic Region Stratifier":
	true // todo: fill in logic

/*
 * Disaggregator: Manifestation / Event (optional - Rash, Vomiting,  etc.)
 */
define "Manifestation / Event  Stratifier":
	true // todo: fill in logic

/*
 * Disaggregator: 
 */
define " Stratifier":
	true // todo: fill in logic

/* End of IMMZ.IND.27 */
