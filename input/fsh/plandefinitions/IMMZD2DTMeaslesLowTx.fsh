Instance: IMMZD2DTMeaslesLowTx
InstanceOf: http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-recommendationdefinition
Title: "IMMZ.D2.DT.Measles.LowTx"
Description: """
Determine if the client is due for a measles vaccination according to the national immunization protocol.
Countries with low levels of measles transmission.
"""
Usage: #definition

* library = "http://smart.who.int/ig/smart-immunizations/Library/IMMZD2DTMeaslesLowTx"
* extension[+]
  * url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-knowledgeCapability"
  * valueCode = #computable
* version = "0.1.0"
* name = "IMMZD2DTMeaslesLowTx"
* status = #draft
* experimental = false
* publisher = "World Health Organization (WHO)"
* action[+]
  * title = "Determine if the client is due for MCV1 in countries with ongoing transmission."
  * description = """
    Determine if the client is due for measles vaccination MCV1 according to the national immunization protocol.
    Countries with low levels of measles transmission.
    """
  * condition[+]
    * kind = #applicability
    * expression
      * description = "Client is due for MCV1"
      * language = #text/cql-identifier
      * expression = "Client is due for MCV1"
  * definitionCanonical = Canonical(IMMZD2DTMeaslesMR)
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
      * expression = "Due date of the dose"
* action[+]
  * title = "Determine if the client is due for MCV2 in countries with ongoing transmission."
  * description = """
    Determine if the client is due for measles vaccination MCV2 according to the national immunization protocol.
    Countries with low levels of measles transmission.
    """
  * condition[+]
    * kind = #applicability
    * expression
      * description = "Client is due for MCV2"
      * language = #text/cql-identifier
      * expression = "Client is due for MCV2"
  * definitionCanonical = Canonical(IMMZD2DTMeaslesMR)
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
      * expression = "Due date of the dose"
* action[+]
  * title = "Send Guidance for the patient regarding MCV primary series."
  * description = """
      Show Guidance for the patient regarding the primary MCV series.
    """
  * condition[+]
    * kind = #applicability
    * expression
      * description = "Guidance"
      * language = #text/cql-identifier
      * expression = "Guidance"
  * definitionCanonical = Canonical(IMMZD2DTMeaslesCR)
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