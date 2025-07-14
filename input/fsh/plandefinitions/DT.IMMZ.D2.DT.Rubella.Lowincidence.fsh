Profile: DT.IMMZ.D2.DT.Rubella.Lowincidence
Parent: $SGDecisionTable
Title: "Decision Table Determine required vaccinations"
Description: """Determine required vaccinations """
Usage: #definition
* ^abstract = true
* meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareableplandefinition"
* meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishableplandefinition"
* library = Canonical(DT.IMMZ.D2.DT.Rubella.Lowincidence)
* extension[+]
  * url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-knowledgeCapability"
  * valueCode = #computable
* version = "{version}"
* name = "DT.IMMZ.D2.DT.Rubella.Lowincidence"
* status = #draft
* experimental = false
* publisher = "WHO"

* relatedArtifact[+]
  * type = #citation
  * citation = """WHO recommendations for routine immunization – summary tables (March 2023) (1)"""

  * action[output]
  * title = The first dose of rubella-containing vaccine can be delivered at 12 months of age. 
   * description = {description}
   * definitionCanonical = Canonical(DTO.Clientisnotdueforrubellavaccination)
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
      * expression = """Should not vaccinate client with rubella dose. 
Check for any vaccines due and inform the caregiver of when to come back for the first dose."""
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
  * title = The first dose of rubella-containing vaccine can be delivered at 12 months of age, due to a low level of measles virus transmission. 
   * description = {description}
   * definitionCanonical = Canonical(DTO.Clientisdueforrubellavaccination)
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
      * expression = """Should vaccinate client with rubella dose as no rubella doses were administered, client is within appropriate age range and no live vaccine was administered in the last 4 weeks. 
Check for contraindications."""
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
  * title = Live vaccines should be given either simultaneously with rubella-containing vaccines, or at least 4 weeks apart. An exception to this is oral poliovirus vaccine, which can be given at any time before or after rubella-containing vaccines without interfering in the response to either vaccine. WHO recommends co-administration of rubella-containing vaccine and yellow fever-containing vaccines. 
   * description = {description}
   * definitionCanonical = Canonical(DTO.Clientisnotdueforrubellavaccination)
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
      * expression = """Should not vaccinate client with rubella dose as live vaccine was administered in the last 4 weeks. 
Check for any other vaccines due."""
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
  * title = – 
   * description = {description}
   * definitionCanonical = Canonical(DTO.Rubellaimmunizationscheduleiscomplete)
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
      * expression = """Rubella immunization schedule is complete. One rubella primary series dose was administered. 
Check for any other vaccines due."""
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

