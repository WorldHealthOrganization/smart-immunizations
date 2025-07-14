Profile: DT.IMMZ.D2.DT.HPV.Singledose
Parent: $SGDecisionTable
Title: "Decision Table Determine required vaccinations"
Description: """Determine required vaccinations """
Usage: #definition
* ^abstract = true
* meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareableplandefinition"
* meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishableplandefinition"
* library = Canonical(DT.IMMZ.D2.DT.HPV.Singledose)
* extension[+]
  * url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-knowledgeCapability"
  * valueCode = #computable
* version = "{version}"
* name = "DT.IMMZ.D2.DT.HPV.Singledose"
* status = #draft
* experimental = false
* publisher = "WHO"

* relatedArtifact[+]
  * type = #citation
  * citation = """WHO recommendations for routine immunization – summary tables (March 2023) (1)"""

  * action[output]
  * title = As an off-label option, a single-dose schedule can be used in girls and boys aged 9–20 years. 
   * description = {description}
   * definitionCanonical = Canonical(DTO.ClientisnotdueforHPVvaccination)
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
      * expression = """Should not vaccinate client with first HPV dose as client's age is less than 9 years. 
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
   * definitionCanonical = Canonical(DTO.ClientisdueforHPVvaccination)
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
      * expression = """Should vaccinate client with first HPV dose as no HPV doses were administered and client is within appropriate age range. 
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
   * definitionCanonical = Canonical(DTO.Clinicaljudgementisrequired.Createaclinicalnote.)
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
      * expression = """Member States should update this action according to the national immunization programme."""
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
  * title = Individuals known to be immunocompromised or infected with HIV (regardless of age or antiretroviral therapy status) should receive at least two HPV vaccine doses (minimum 6 months interval) and, where possible, three doses. 
   * description = {description}
   * definitionCanonical = Canonical(DTO.ClientisnotdueforHPVvaccination)
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
      * expression = """Should not vaccinate client with second HPV dose as the latest HPV dose was administered less than 6 months ago. 
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
   * definitionCanonical = Canonical(DTO.ClientisdueforHPVvaccination)
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
      * expression = """Should vaccinate client with second HPV dose as client is HIV positive and the latest HPV dose was administered more than 6 months ago. 
Check for contraindications"""
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
   * definitionCanonical = Canonical(DTO.ClientisnotdueforHPVvaccination)
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
      * expression = """Should not vaccinate client with second HPV dose as the latest HPV dose was administered less than 6 months ago. 
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
   * definitionCanonical = Canonical(DTO.ClientisdueforHPVvaccination)
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
      * expression = """Should vaccinate client with second HPV dose as client is immunocompromised and the latest HPV dose was administered more than 6 months ago. 
Check for contraindications"""
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
   * definitionCanonical = Canonical(DTO.HPVimmunizationscheduleiscomplete)
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
      * expression = """HPV immunization schedule is complete. One HPV primary series dose was administered. 
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
  * title = Individuals known to be immunocompromised or infected with HIV (regardless of age or antiretroviral therapy status) should receive at least two HPV vaccine doses (minimum 6 months interval) and, where possible, three doses. 
   * description = {description}
   * definitionCanonical = Canonical(DTO.ClientisnotdueforHPVvaccination)
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
      * expression = """Should not vaccinate client with third HPV dose as the latest HPV dose was administered less than 6 months ago. 
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
   * definitionCanonical = Canonical(DTO.ClientisdueforHPVvaccination)
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
      * expression = """Should vaccinate client with third HPV dose as client is HIV positive and the latest HPV dose was administered more than 6 months ago. 
Check for contraindications"""
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
   * definitionCanonical = Canonical(DTO.ClientisnotdueforHPVvaccination)
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
      * expression = """Should not vaccinate client with third HPV dose as the latest HPV dose was administered less than 6 months ago. 
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
   * definitionCanonical = Canonical(DTO.ClientisdueforHPVvaccination)
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
      * expression = """Should vaccinate client with third HPV dose as client is immunocompromised and the latest HPV dose was administered more than 6 months ago. 
Check for contraindications"""
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
  * title = - 
   * description = {description}
   * definitionCanonical = Canonical(DTO.HPVimmunizationscheduleiscomplete)
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
      * expression = """HPV immunization schedule is complete. Three HPV primary series doses were administered. 
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

