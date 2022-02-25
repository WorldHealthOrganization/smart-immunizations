/**
 * Common data elements where "Immunization" is the context
 */

library IMMZCommonIzDataElements

using FHIR version '4.0.1'

include FHIRHelpers version '4.0.1'
include WHOCommon called WCom
include IMMZCommon called IMMZCom
include IMMZConcepts called IMMZc
include IMMZVaccineLibrary called IMMZvl

codesystem "Vaccines Administered": 'http://hl7.org/fhir/ValueSet/vaccine-code'

context Immunization

// @dataElement: Geographic Region where the vaccination was provided
define "Geographic Region": 
    WCom.Official([Location] L 
        where L.id = Last(Split(Immunization.location.reference, '/'))
        return L.address).state

// @dataElement: The vaccination dose sequence
define "Dose Number": 
    IMMZCom.Only(Immunization.protocolApplied).doseNumber as FHIR.positiveInt

//  @dataElement: Vaccine classification
define "Vaccine Code":
    Immunization.vaccineCode