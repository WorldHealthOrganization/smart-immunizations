Instance: IMMZD2DTMeaslesMR
InstanceOf: http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-immunizationactivity
Title: "IMMZ.D2.DT.Measles.MR"
Description: "Provide measles immunization"
Usage: #definition

* library = "http://smart.who.int/ig/smart-immunizations/Library/IMMZD2DTMeasles"
* extension[+]
  * url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-knowledgeCapability"
  * valueCode = #computable
* version = "0.1.0"
* name = "IMMZD2DTMeaslesMedicationRequest"
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
* doNotPerform = false
* productCodeableConcept = $ICD11#XM28X5 "Measles vaccines"
* dynamicValue[+]
  * path = "status"
  * expression
    * language = #text/cql
    * expression = "'draft'"
* dynamicValue[+]
  * path = "intent"
  * expression
    * language = #text/cql
    * expression = "'proposal'"
* dynamicValue[+]
  * path = "dispenseRequest.validityPeriod.start"
  * expression
    * description = "Due date of the dose"
    * language = #text/cql-identifier
    * expression = "Schedule Due Date for MCV dose"
* dynamicValue[+]
  * path = "dispenseRequest.validityPeriod.end"
  * expression
    * description = "Expiration date for MCV dose"
    * language = #text/cql-identifier
    * expression = "Expiration Date for MCV dose"
