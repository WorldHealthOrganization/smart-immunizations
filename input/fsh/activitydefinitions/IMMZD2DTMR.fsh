Instance: IMMZD2DTMR
InstanceOf: http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-immunizationactivity|2.0.0
Title: "IMMZD2DTMR"
Description: "Provide immunization"
Usage: #definition

* extension[+]
  * url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-knowledgeCapability"
  * valueCode = #computable
* version = "0.1.0"
* name = "IMMZD2DTMedicationRequest"
* status = #draft
* experimental = false
* date = "2025-10-27"
* publisher = "World Health Organization (WHO)"
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #MedicationRequest
* intent = #proposal
* doNotPerform = false
* productCodeableConcept = IMMZ.Z#DE0