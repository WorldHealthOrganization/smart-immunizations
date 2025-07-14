Profile: DT.IMMZ.D2.DT.HepatitisB.Birthdose
Parent: $SGDecisionTable
Title: "Decision Table Determine required vaccinations"
Description: """Determine required vaccinations """
Usage: #definition
* ^abstract = true
* meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareableplandefinition"
* meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishableplandefinition"
* library = Canonical(DT.IMMZ.D2.DT.HepatitisB.Birthdose)
* extension[+]
  * url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-knowledgeCapability"
  * valueCode = #computable
* version = "{version}"
* name = "DT.IMMZ.D2.DT.HepatitisB.Birthdose"
* status = #draft
* experimental = false
* publisher = "WHO"

* relatedArtifact[+]
  * type = #citation
  * citation = """WHO recommendations for routine immunization – summary tables (March 2023) (1)"""

  * action[output]
  * title = Hepatitis B vaccination is recommended for all children worldwide. Since perinatal or early postnatal transmission is the most important source of chronic hepatitis B virus infection globally, all infants (including low-birth-weight and premature infants) should receive their first dose of hepatitis B-containing vaccine as soon as possible after birth, ideally within 24 hours.

If administration within 24 hours is not feasible, a late birth dose has some effectiveness. WHO recommends that all infants receive the late birth dose during the first contact with health-care providers at any time up to the time of the next dose of the primary schedule. 
   * description = {description}
   * definitionCanonical = Canonical(DTO.ClientisdueforhepatitisBmonovalentvaccine)
  * dynamicValue[+]
    * path = "status"
    * expression
    * language = #text/cql-expression
    * expression = "draft"
  * dynamicValue[+]
    * path = "intent"
    * expression
      * language = #text/cql-expression
      * expression = "proposal"
* action[guidance]
  * title = "Health worker guidance"
  * description = "Communicate guidance to the health worker"
  * definitionCanonical = Canonical(SGDecisionTableGuidance)
  * dynamicValue[+]
    * path = "status"
    * expression
      * language = #text/cql-expression
      * expression = 'active'
  * dynamicValue[+]
    * path = "payload.contentString"
    * expression
      * language = #text/cql-identifier
      * expression = """Should vaccinate client with hepatitis B birth dose, as a monovalent dose. Check for contraindications."""
 * dynamicValue[+]
   * path = "category.coding"
   * expression
     * description = "Category of communication"
     * language = #text/cql-expression
     * expression = "Code { system: 'http://terminology.hl7.org/CodeSystem/communication-category', code: 'alert' }"
 * dynamicValue[+]
   * path = "priority"
   * expression
     * description = "Alert priority"
     * language = #text/cql-expression
     * expression = "Code { system: 'http://hl7.org/fhir/request-priority', code: 'routine' }"
  * action[output]
  * title = 
   * description = {description}
   * definitionCanonical = Canonical(DTO.Clientshouldfollowdelayed-startdecisionlogic)
  * dynamicValue[+]
    * path = "status"
    * expression
    * language = #text/cql-expression
    * expression = "draft"
  * dynamicValue[+]
    * path = "intent"
    * expression
      * language = #text/cql-expression
      * expression = "proposal"
* action[guidance]
  * title = "Health worker guidance"
  * description = "Communicate guidance to the health worker"
  * definitionCanonical = Canonical(SGDecisionTableGuidance)
  * dynamicValue[+]
    * path = "status"
    * expression
      * language = #text/cql-expression
      * expression = 'active'
  * dynamicValue[+]
    * path = "payload.contentString"
    * expression
      * language = #text/cql-identifier
      * expression = """The client has a delayed start. Please follow the delayed start schedule."""
 * dynamicValue[+]
   * path = "category.coding"
   * expression
     * description = "Category of communication"
     * language = #text/cql-expression
     * expression = "Code { system: 'http://terminology.hl7.org/CodeSystem/communication-category', code: 'alert' }"
 * dynamicValue[+]
   * path = "priority"
   * expression
     * description = "Alert priority"
     * language = #text/cql-expression
     * expression = "Code { system: 'http://hl7.org/fhir/request-priority', code: 'routine' }"
  * action[output]
  * title = 
   * description = {description}
   * definitionCanonical = Canonical(DTO.ClientisnotdueforthehepatitisBbirthdose)
  * dynamicValue[+]
    * path = "status"
    * expression
    * language = #text/cql-expression
    * expression = "draft"
  * dynamicValue[+]
    * path = "intent"
    * expression
      * language = #text/cql-expression
      * expression = "proposal"
* action[guidance]
  * title = "Health worker guidance"
  * description = "Communicate guidance to the health worker"
  * definitionCanonical = Canonical(SGDecisionTableGuidance)
  * dynamicValue[+]
    * path = "status"
    * expression
      * language = #text/cql-expression
      * expression = 'active'
  * dynamicValue[+]
    * path = "payload.contentString"
    * expression
      * language = #text/cql-identifier
      * expression = """Hepatitis B birth dose was already administered. Check hepatitis B immunization schedule."""
 * dynamicValue[+]
   * path = "category.coding"
   * expression
     * description = "Category of communication"
     * language = #text/cql-expression
     * expression = "Code { system: 'http://terminology.hl7.org/CodeSystem/communication-category', code: 'alert' }"
 * dynamicValue[+]
   * path = "priority"
   * expression
     * description = "Alert priority"
     * language = #text/cql-expression
     * expression = "Code { system: 'http://hl7.org/fhir/request-priority', code: 'routine' }"

