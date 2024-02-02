
RuleSet: PlanDefMain( library, version )
* library = "http://smart.who.int/ig/smart-immunizations/Library/{library}"
* extension[+]
  * url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-knowledgeCapability"
  * valueCode = #computable
* version = "{version}"
* name = "{library}"
* status = #draft
* experimental = false
* publisher = "World Health Organization (WHO)"

RuleSet: PlanDefMedicationRequestAction( title, description, condition, library )
* action[+]
  * title = "{title}"
  * description = {description}
  * condition[+]
    * kind = #applicability
    * expression
      * description = "{condition}"
      * language = #text/cql-identifier
      * expression = "{condition}"
  * definitionCanonical = Canonical({library})
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

RuleSet: PlanDefMedicationRequestUpdate( title, description, condition, library, mrid )
* action[+]
  * title = "{title}"
  * description = {description}
  * type = #update
  * condition[+]
    * kind = #applicability
    * expression
      * description = "{condition}"
      * language = #text/cql-identifier
      * expression = "{condition}"
  * definitionCanonical = Canonical({library})
  * dynamicValue[+]
    * path = "id"
    * expression
      * description = "{mrid}"
      * language = #text/cql-identifier
      * expression = "{mrid}"


RuleSet: PlanDefCommunicationRequestAction( title, description, condition, text )
* action[+]
  * title = "{title}"
  * description = {description}
  * condition[+]
    * kind = #applicability
    * expression
      * description = "{condition}"
      * language = #text/cql-identifier
      * expression = "{condition}"
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
      * expression = "{text}"
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