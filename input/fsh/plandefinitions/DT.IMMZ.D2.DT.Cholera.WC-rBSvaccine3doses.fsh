Profile: DT.IMMZ.D2.DT.Cholera.WC-rBSvaccine3doses
Parent: $SGDecisionTable
Title: "Decision Table Determine required vaccinations"
Description: """Determine required vaccinations """
Usage: #definition
* ^abstract = true
* meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareableplandefinition"
* meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishableplandefinition"
* library = Canonical(DT.IMMZ.D2.DT.Cholera.WC-rBSvaccine3doses)
* extension[+]
  * url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-knowledgeCapability"
  * valueCode = #computable
* version = "{version}"
* name = "DT.IMMZ.D2.DT.Cholera.WC-rBSvaccine3doses"
* status = #draft
* experimental = false
* publisher = "WHO"

* relatedArtifact[+]
  * type = #citation
  * citation = """WHO recommendations for routine immunization – summary tables (March 2023) (1)"""

  * action[output]
  * title = For WC-rBS vaccine (Dukoral), 3 doses should be given to children aged 2–5 years. 
   * description = {description}
   * definitionCanonical = Canonical(DTO.Clientisnotdueforcholeravaccination)
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
      * expression = """Should not vaccinate client with cholera dose as client's age is less than 2 years.
Check for any vaccines due and inform the caregiver of when to come back for the first cholera dose."""
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
  * title = For WC-rBS vaccine (Dukoral), 3 doses should be given to children aged 2–5 years of age, with an interval of 1–6 weeks between doses. 
   * description = {description}
   * definitionCanonical = Canonical(DTO.Clientisdueforcholeravaccination)
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
      * expression = """Should vaccinate client with cholera dose as no cholera doses have been administered.
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
  * title = 
   * description = {description}
   * definitionCanonical = Canonical(DTO.Clientisnotdueforcholeravaccination)
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
      * expression = """Should not vaccinate client with cholera dose as the latest cholera dose was administered less than 1 week ago.
Check for any vaccines due and inform the caregiver of when to come back for the next dose."""
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
   * definitionCanonical = Canonical(DTO.Clientisdueforcholeravaccination)
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
      * expression = """Should vaccinate client with cholera dose as the latest cholera dose was administered in the last 1 to 6 weeks.
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
  * title = 
   * description = {description}
   * definitionCanonical = Canonical(DTO.Clientisnotdueforcholeravaccination)
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
      * expression = """Should not vaccinate client with cholera dose as the latest cholera dose was administered less than 1 week ago.
Check for any vaccines due and inform the caregiver of when to come back for the next dose."""
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
   * definitionCanonical = Canonical(DTO.Clientisdueforcholeravaccination)
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
      * expression = """Should vaccinate client with cholera dose as the latest cholera dose was administered in the last 1 to 6 weeks.
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
  * title = If interval since last dose ≥ 6 weeks, restart primary series. 
   * description = {description}
   * definitionCanonical = Canonical(DTO.Clientisdueforcholeravaccination)
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
      * expression = """Should vaccinate client with cholera dose and restart primary series as the latest cholera dose was administered more than 6 weeks ago.
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
  * title = Revaccination is recommended where there is continued risk of Vibrio cholerae infection. For WC-rBS vaccine, children aged 2–5 years revaccination is recommended within 6 months. If less than 6 months have passed, 1 dose for revaccination. 
   * description = {description}
   * definitionCanonical = Canonical(DTO.Primaryseriesiscomplete.Clientisnotduefo.3e43cbd132)
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
      * expression = """Should not vaccinate client with cholera dose as the latest cholera dose was administered less than {Member States defined lower limit} days ago.
Check for any vaccines due and inform the caregiver of when to come back for the next dose."""
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
   * definitionCanonical = Canonical(DTO.Primaryseriesiscomplete.Clientisdueforch.16a4e0f1c7)
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
      * expression = """Should vaccinate client with cholera booster dose as the latest cholera dose was administered less than approximately 6 months ago.
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
  * title = For WC-rBS vaccine, children aged 2–5 years revaccination is recommended within 6 months. If more than 6 months have passed, the primary series of 3 doses should be repeated. 
   * description = {description}
   * definitionCanonical = Canonical(DTO.Clientisdueforcholeravaccination)
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
      * expression = """Should vaccinate client with cholera dose and restart primary series as the latest cholera dose was administered more than approximately 6 months ago.
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

