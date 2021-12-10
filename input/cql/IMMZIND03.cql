/*
 * Library: IMMZ.IND.3
 * WHO Immunization Indicator 3
 * Dropout Rate of BCG to MCV.
 * 
 * The number of children who were administered BCG however did not receive MCV1. 
 * 
 * Numerator: The number of persons with a confirmed dose of BCG with no confirmed dose of MCV1 where MCV1 is overdue
 * Numerator Computation: COUNT the number of patients with confirmed BCG dose and no confirmed record of MCV1 having an immunization recommendation for MCV1 during the period
 * Denominator:  The number of persons with a confirmed does of BCG.
 * Denominator Computation: COUNT number of persons administered BCG with an immunization recommendation for MCV1 during the reporting period.
 *
 * Disaggregation: 
 *  Geographic District 
 */

library IMMZIND03

using FHIR version '4.0.1'

include FHIRHelpers version '4.0.1'
include IMMZCommon called IMMZCom
include IMMZConcepts called IMMZc
include IMMZStratifiers called IMMZStratifiers
include IMMZVaccineLibrary called IMMZvl

parameter "Measurement Period" Interval<Date>

context Patient 

/*
 * Numerator: The number of persons with a confirmed dose of BCG with no confirmed dose of MCV1 where MCV1 is overdue
 * Numerator Computation: COUNT the number of patients with confirmed BCG dose and no confirmed record of MCV1 having an immunization recommendation for MCV1 during the period
 */
define "Numerator":
    exists // Patient DID receive BCG before the measurement period
        (
            [Immunization: vaccineCode in IMMZc."BCG Vaccine"] I
            where IMMZCom.ToDate(I.occurrence) < start of "Measurement Period"
                and I.status = 'completed'
        ) 
    and exists // Patient HAS an Immunization Recommendation for MCV 1 during the measurement period
        (
            [ImmunizationRecommendation] I
            where I.recommendation.select(vaccineCode in IMMZc."MCV Vaccine"
                and dateCriterion.select(IMMZCom.ToDateTime(value) between start of "Measurement Period" and end of "Measurement Period" ).anyTrue() 
                and doseNumber = 1).anyTrue()
        ) 
    and not exists// Patient DID NOT receive DTP3 during measurement period
        (
            [Immunization: vaccineCode in IMMZc."MCV Vaccine"] I
            where IMMZCom.ToDate(I.occurrence) during "Measurement Period"
                and IMMZCom.Only(I.protocolApplied).doseNumber = 1
                and I.status = 'completed'
        )
                        
/*
 * Denominator:  The number of persons with a confirmed does of BCG.
 * Denominator Computation: COUNT number of persons administered BCG with an immunization recommendation for MCV1 during the reporting period.
 */
define "Denominator":
    exists
        ( // Patient DID receive BCG  before measurement period
            [Immunization: vaccineCode in IMMZc."BCG Vaccine"] I
            where IMMZCom.ToDate(I.occurrence) < start of "Measurement Period"
                and I.status = 'completed'
        ) 
    and exists 
        ( // Patient HAS an Immunization Recommendation for MCV 1 during the measurement period
            [ImmunizationRecommendation] I
            where I.recommendation.select(vaccineCode in IMMZc."MCV Vaccine"
                and dateCriterion.select(IMMZCom.ToDateTime(value) between start of "Measurement Period" and end of "Measurement Period" ).anyTrue() 
                and doseNumber = 1).anyTrue()
        ) 

/*
 * Disaggregator: Geographic District 
 */
define "Geographic Region Stratifier":
    IMMZStratifiers."By Geographic Region Stratifier"
