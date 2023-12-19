Instance: IMMZD5DTMeaslesCIMR
InstanceOf: http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-immunizationactivity
Title: "IMMZ.D5.DT.Measles.Contraindication"
Description: "Provide measles immunization"
Usage: #definition

* extension[+]
  * url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-knowledgeCapability"
  * valueCode = #computable
* version = "0.1.0"
* name = "IMMZD5DTMeaslesContraindicationMRUpdate"
* status = #draft
* experimental = false
* date = 2023-10-03
* publisher = "World Health Organization (WHO)"
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #MedicationRequest
* intent = #proposal
* doNotPerform = true
* productCodeableConcept = $ICD11#XM28X5 "Measles vaccines"
