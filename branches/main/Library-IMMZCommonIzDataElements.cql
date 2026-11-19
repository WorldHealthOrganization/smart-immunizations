/**
 * Immunization Common Stratifiers by Patients as Context
 */

library IMMZCommonIzDataElements

using FHIR version '4.0.1'

include FHIRHelpers version '4.0.1'
include WHOCommon called WCom
include IMMZCommon called IMMZCom
include IMMZConcepts called IMMZc
include IMMZVaccineLibrary called IMMZvl

codesystem "Vaccines Administered": 'http://hl7.org/fhir/ValueSet/vaccine-code'

// Vaccines administered
code "BCG": 'BCG' from "Vaccines Administered" display 'BCG'
//should this reference the BCG valueset from IMMZConcepts.cql? 

context Immunization

// @dataElement: Geographic Region where the vaccination was provided
define "Geographic Region of Vaccine Administration": 
    WCom.Official([Location] L 
        where L.id = Last(Split(Immunization.location.reference, '/'))
        return L.address).state

// @dataElement: The vaccination dose sequence
define "Dose Number of Vaccine Administration": 
    IMMZCom.Only(Immunization.protocolApplied).doseNumber as FHIR.positiveInt
