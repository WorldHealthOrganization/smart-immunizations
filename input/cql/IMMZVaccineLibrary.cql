library IMMZVaccineLibrary
using FHIR version '4.0.1'

include WHOCommon called WCom
include WHOConcepts called Wcon
include FHIRHelpers version '4.0.1'
include FHIRCommon called FC
include IMMZConcepts called IMMZc
include IMMZCommon called IMMZcom

define "Get Medication":
    [Medication]

define "BCG Vaccine Codes":
  [Medication: code in IMMZc."BCG Vaccine"]
  

    /*check BCG Vaccine code valueset generated from DataDictionary Library in order to confirm that the that any of those codes exist in a Medication Resources
    1. check for Medication Resource
    2. Check if Medication Resource has BCG Vaccine code from list
    3. Import that code into ActivityDefinition as defined by dynamicValue
    */
define "Cholera Vaccine Codes":
  [Medication: code in IMMZc."Cholera Vaccine"]