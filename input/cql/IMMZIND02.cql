/*
 * Library: IMMZ.IND.2
 * WHO Immunization Indicator 2
 * Dropout Rate of DTP1 to DTP3.
 * 
 * "The number of children who started the DTP vaccination protocol (i.e. were administered DTP1) however did not complete the DTP vaccination protocol (i.e. did not receive DTP3). 
 * 
 * Numerator: The number of persons administered DTP3 who did not receive DTP1.
 * Numerator Computation: COUNT number of persons administered DTP1 and not given DTP3 where the recommended date for DTP3 has passed
 * Denominator:  The number of persons with a confirmed does of DTP1.
 * Denominator Computation: COUNT number of persons administered DTP1.
 *
 * Disaggregation: 
 *  Geographic District 
 */

library IMMZIND02

using FHIR version '4.0.1'

include FHIRHelpers version '4.0.1'
include IMMZCommon called IMMZCom
include IMMZConcepts called IMMZc
include IMMZStratifiers called IMMZStratifiers
include IMMZVaccineLibrary called IMMZvl

parameter "Measurement Period" Interval<Date>

context Patient 

/*
 * Numerator: The number of persons administered DTP3 who did not receive DTP1.
 * Numerator Computation: COUNT number of persons administered DTP1 and not given DTP3 where the recommended date for DTP3 has passed during hte measurement period
 */
define "Numerator":
    exists // Patient DID receive DTP 1 before the measurement period
        (
            [Immunization: vaccineCode in IMMZc."DTP Vaccine"] I
            where IMMZCom.ToDate(I.occurrence) < start of "Measurement Period"
                and IMMZCom.Only(I.protocolApplied).doseNumber = 1
                and I.status = 'completed'
        ) 
    and exists // Patient HAS an Immunization Recommendation for DTP 3 during the measurement period
        (
            [ImmunizationRecommendation] I
            where I.recommendation.select(vaccineCode in IMMZc."DTP Vaccine"
                and dateCriterion.select(IMMZCom.ToDateTime(value) between start of "Measurement Period"  and end of "Measurement Period").anyTrue() 
                and doseNumber = 3).anyTrue()
        ) 
    and not exists// Patient DID NOT receive DTP3 during measurement period
        (
            [Immunization: vaccineCode in IMMZc."DTP Vaccine"] I
            where IMMZCom.ToDate(I.occurrence) during "Measurement Period"
                and IMMZCom.Only(I.protocolApplied).doseNumber = 3
                and I.status = 'completed'
        )
                        
/*
 * Denominator:  The number of persons with a confirmed dose of DTP1 who were recommended to have received .
 * Denominator Computation: COUNT number of persons administered DTP1 and should have gotten DTP3.
 */
define "Denominator":
    exists
        ( // Patient DID receive DTP 1 before measurement period
            [Immunization: vaccineCode in IMMZc."DTP Vaccine"] I
            where IMMZCom.ToDate(I.occurrence) < start of "Measurement Period"
                and IMMZCom.Only(I.protocolApplied).doseNumber = 1
                and I.status = 'completed'
        ) 
    and exists 
        ( // Patient HAS an Immunization Recommendation for DTP 3 during the measurement period
            [ImmunizationRecommendation] I
            where I.recommendation.select(vaccineCode in IMMZc."DTP Vaccine"
                and dateCriterion.select(IMMZCom.ToDateTime(value) between start of "Measurement Period" and end of "Measurement Period").anyTrue() 
                and doseNumber = 3).anyTrue()
        ) 

/*
 * Disaggregator: Geographic District 
 */
define "Geographic Region Stratifier":
    IMMZStratifiers."By Geographic Region Stratifier"
