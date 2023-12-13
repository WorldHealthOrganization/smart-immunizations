Instance: IMMZD2DTMeaslesCR
InstanceOf: http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-communicationactivity
Title: "IMMZ.D2.DT.Measles.CR"
Description: "Provide measles immunization communication"
Usage: #definition

* library = "http://smart.who.int/ig/smart-immunizations/Library/IMMZD2DTMeaslesHighTx"
* extension[+]
  * url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-knowledgeCapability"
  * valueCode = #computable
* version = "0.1.0"
* name = "IMMZD2DTMeaslesCommunicationRequest"
* status = #draft
* experimental = false
* date = 2023-12-03
* publisher = "World Health Organization (WHO)"
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #CommunicationRequest
* intent = #proposal
* doNotPerform = false
* dynamicValue[+]
  * path = "status"
  * expression
    * language = #text-cql
    * expression = "'active'"
* dynamicValue[+]
  * path = "payload.contentAttachment.title"
  * expression
    * language = #text/cql-identifier
    * expression = "Guidance"
* dynamicValue[+]
  * path = "payload.contentAttachment.language"
  * expression
    * language = #text/cql
    * expression = "'en-US'"
* dynamicValue[+]
  * path = "payload.contentAttachment.contentType"
  * expression
    * language = #text/cql
    * expression = "'text/plain'"
* dynamicValue[+]
  * path = "category.coding"
  * expression
    * description = "Category of communication"
    * language = #text/cql
    * expression = "Code { system: 'http://terminology.hl7.org/CodeSystem/communication-category', code: 'alert' }"
* dynamicValue[+]
  * path = "priority"
  * expression
    * description = "Alert priority"
    * language = #text/cql
    * expression = "Code { system: 'http://hl7.org/fhir/request-priority', code: 'routine' }"