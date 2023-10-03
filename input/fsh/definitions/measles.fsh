Instance: IMMZDT08Measles
InstanceOf: http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-recommendationdefinition
Title: "IMMZ.DT.08.Measles"
Description: "If the child or patient has not been given MCV1 (at 9 months) and MCV2 (between 15-18 months) vaccination"
Usage: #definition

* library = "http://fhir.org/guides/who/smart-immunization/Library/IMMZDT08"
* extension[+]
  * url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-knowledgeCapability"
  * valueCode = #computable
* version = "0.1.0"
* name = "IMMZDT08Measles"
* status = #draft
* experimental = false
* publisher = "World Health Organization (WHO)"
* action[+]
  * title = "Immunize patient for Measles"
  * description = "Provide measles immunization"
  * condition[+]
    * kind = #applicability
    * expression
      * description = "Provision of the MCV dose"
      * language = #text/cql-identifier
      * expression = "Provision of the MCV dose"
  * definitionCanonical = Canonical(IMMZDT08MeaslesMR)


Instance: IMMZDT08MeaslesMR
InstanceOf: http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-medicationrequestactivity
Title: "IMMZ.DT.08.Measles.MR"
Description: "Provide measles immunization"
Usage: #definition

* library = "http://fhir.org/guides/who/smart-immunization/Library/IMMZDT08"
* extension[+]
  * url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-knowledgeCapability"
  * valueCode = #computable
* version = "0.1.0"
* name = "IMMZDT08MeaslesMR"
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