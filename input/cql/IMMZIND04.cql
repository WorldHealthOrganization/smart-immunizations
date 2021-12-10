/*
 * Library: IMMZ.IND.4
 * WHO Immunization Indicator 4
 * Dropout Rate of MCV1 to MCV2.
 * 
 * The number of children who started the MCV vaccination schedule however did not complete it. This is an indicator which illustrates the ability of the jurisdiction to immunize persons beyond childhood.
 * 
 * Numerator: The number of persons with a confirmed dose of MCV2 and no confirmed dose of MCV1 where MCV1 is overdue.
 * Numerator Computation: COUNT the number of persons with confirmed MCV1 dose administration and no confirmed MCV2 dose administration (having MCV2 overdue)
 * Denominator:  Total number of persons who have received an MCV1 administration.
 * Denominator Computation: COUNT number of persons with administered MCV1 dose and should have received MCV2.
 *
 * Disaggregation: 
 *  Geographic District 
 */

library IMMZIND04

using FHIR version '4.0.1'

include FHIRHelpers version '4.0.1'
include IMMZCommon called IMMZCom
include IMMZConcepts called IMMZc
include IMMZStratifiers called IMMZStratifiers
include IMMZVaccineLibrary called IMMZvl

parameter "Measurement Period" Interval<Date>

context Patient 

/*
 * Numerator: The number of persons with a confirmed dose of MCV2 and no confirmed dose of MCV1 where MCV1 is overdue.
 * Numerator Computation: COUNT the number of persons with confirmed MCV1 dose administration and no confirmed MCV2 dose administration (having MCV2 overdue)
 */
define "Numerator":
    exists // Patient DID receive MCV1 before the measurement period
        (
            [Immunization: vaccineCode in IMMZc."MCV Vaccine"] I
            where IMMZCom.ToDate(I.occurrence) < start of "Measurement Period"
                and IMMZCom.Only(I.protocolApplied).doseNumber = 1
                and I.status = 'completed'
        ) 
    and exists // Patient HAS an Immunization Recommendation for MCV 2 during the measurement period
        (
            [ImmunizationRecommendation] I
            where I.recommendation.select(vaccineCode in IMMZc."MCV Vaccine"
                and dateCriterion.select(IMMZCom.ToDateTime(value) between start of "Measurement Period" and end of "Measurement Period" ).anyTrue() 
                and doseNumber = 2).anyTrue()
        ) 
    and not exists// Patient DID NOT receive MCV2 during measurement period
        (
            [Immunization: vaccineCode in IMMZc."MCV Vaccine"] I
            where IMMZCom.ToDate(I.occurrence) during "Measurement Period"
                and IMMZCom.Only(I.protocolApplied).doseNumber = 2
                and I.status = 'completed'
        )
                        
/*
 * Denominator:  Total number of persons who have received an MCV1 administration.
 * Denominator Computation: COUNT number of persons with administered MCV1 dose and should have received MCV2.
 */
define "Denominator":
   exists // Patient DID receive MCV1 before the measurement period
        (
            [Immunization: vaccineCode in IMMZc."MCV Vaccine"] I
            where IMMZCom.ToDate(I.occurrence) < start of "Measurement Period"
                and IMMZCom.Only(I.protocolApplied).doseNumber = 1
                and I.status = 'completed'
        ) 
    and exists 
        ( // Patient HAS an Immunization Recommendation for MCV 1 during the measurement period
            [ImmunizationRecommendation] I
            where I.recommendation.select(vaccineCode in IMMZc."MCV Vaccine"
                and dateCriterion.select(IMMZCom.ToDateTime(value) between start of "Measurement Period" and end of "Measurement Period" ).anyTrue() 
                and doseNumber = 2).anyTrue()
        ) 

/*
 * Disaggregator: Geographic District 
 */
define "Geographic Region Stratifier":
    IMMZStratifiers."By Geographic Region Stratifier"
