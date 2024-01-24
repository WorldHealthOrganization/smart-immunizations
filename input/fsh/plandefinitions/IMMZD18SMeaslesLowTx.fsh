Instance: IMMZD18SMeaslesLowTx
InstanceOf: http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-recommendationdefinition
Title: "IMMZ.D18.S.Measles.LowTx"
Description: """
Determine if the client is due for a measles vaccination according to the national immunization protocol.
Countries with low levels of measles transmission.
"""
Usage: #definition

* library = "http://smart.who.int/ig/smart-immunizations/Library/IMMZD18SMeaslesLowTx"
* extension[+]
  * url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-knowledgeCapability"
  * valueCode = #computable
* version = "0.1.0"
* name = "IMMZD18SMeaslesLowTx"
* status = #draft
* experimental = false
* publisher = "World Health Organization (WHO)"
* action[+]
  * title = "Provision of first measles dose from the primary schedule."
  * description = """
    Provision of first measles dose from the primary schedule.
    Countries with low levels of measles transmission.
    """
  * condition[+]
    * kind = #applicability
    * expression
      * description = "Measles dose 1"
      * language = #text/cql-identifier
      * expression = "Measles dose 1"
  * definitionCanonical = Canonical(IMMZD2DTCR)
  * dynamicValue[+]
    * path = "status"
    * expression
      * language = #text-cql
      * expression = "'active'"
  * dynamicValue[+]
    * path = "payload.contentAttachment.title"
    * expression
      * language = #text/cql-identifier
      * expression = "Measles dose 1 Create"
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
* action[+]
  * title = "Provision of second measles dose from the primary schedule."
  * description = """
    Provision of second measles dose from the primary schedule.
    Countries with low levels of measles transmission.
    """
  * condition[+]
    * kind = #applicability
    * expression
      * description = "Measles dose 2"
      * language = #text/cql-identifier
      * expression = "Measles dose 2"
  * definitionCanonical = Canonical(IMMZD2DTCR)
  * dynamicValue[+]
    * path = "status"
    * expression
      * language = #text-cql
      * expression = "'active'"
  * dynamicValue[+]
    * path = "payload.contentAttachment.title"
    * expression
      * language = #text/cql-identifier
      * expression = "Measles dose 2 Create"
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