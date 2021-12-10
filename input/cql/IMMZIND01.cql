/*
 * Library: IMMZ.IND.1
 * WHO Immunization Indicator 1
 * Immunization coverage for each vaccine in the national schedule.
 * 
 * Numerator: Number of persons which have received the defined number of doses for an antigen 
 * Numerator Computation: COUNT of all persons receiving defined doses for an antigen (i.e. completed the schedule)
 * Denominator: Total number of persons which were expected to receive the dose for the antigen. For childhood antigens this is # of surviving infants.
 * Denominator Computation: COUNT of registered persons (actual population)
 *
 * Disaggregation: 
 *  Age (<1 year , >1 year)
 *  Geographic District 
 */

library IMMZIND01

using FHIR version '4.0.1'

include FHIRHelpers version '4.0.1'
include IMMZCommon called IMMZCom
include IMMZConcepts called IMMZc
include IMMZStratifiers called IMMZStratifiers
include IMMZVaccineLibrary called IMMZvl

parameter "Measurement Period" Interval<Date>

context Patient 

/*
 * Numerator: Number of persons which have received the defined number of doses for an antigen 
 * Numerator Computation: COUNT of all persons receiving defined doses for an antigen (i.e. completed the schedule)
 */
define "BCG Numerator":
    exists([Immunization: vaccineCode in IMMZc."BCG Vaccine"] I
        where IMMZCom.ToDate(I.occurrence) during "Measurement Period"
            and I.status = 'completed')
                        
/*
 * Denominator: Total number of persons which were expected to receive the dose for the antigen. For childhood antigens this is # of surviving infants.
 * Denominator Computation: COUNT of registered persons (actual population)
 */
define "BCG Denominator":
    exists([ImmunizationRecommendation] I
        where I.recommendation.select(vaccineCode in IMMZc."BCG Vaccine" and 
            dateCriterion.select(IMMZCom.ToDateTime(value) > (start of "Measurement Period") 
            and IMMZCom.ToDateTime(value) < (end of "Measurement Period")).anyTrue()
        ).anyTrue()
        ) 

/*
 * Disaggregator: Age (<1 year , >1 year)
 */
define "Age Stratifier":
    IMMZStratifiers."Infant By Age Stratifier"

/*
 * Disaggregator: Geographic District 
 */
define "Geographic Region Stratifier":
    IMMZStratifiers."By Geographic Region Stratifier"
