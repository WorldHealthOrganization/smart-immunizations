Instance: IMMZD2DTMeaslesCIMR
InstanceOf: http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-immunizationactivity
Title: "IMMZ.D2.DT.Measles.Contraindication"
Description: "Provide measles immunization"
Usage: #definition

* library = "http://smart.who.int/ig/smart-immunizations/Library/IMMZD2DTMeasles"
* extension[+]
  * url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-knowledgeCapability"
  * valueCode = #computable
* version = "0.1.0"
* name = "IMMZD2DTMeaslesContraindication"
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
* dynamicValue[+]
  * path = "id"
  * expression
    * description = "Draft Medication Request ID for MCV dose"
    * language = #text/cql-identifier
    * expression = "Draft Medication Request ID for MCV dose"