Profile: DT.IMMZ.D2.DT.Measles.Ongoingtransmission
Parent: $SGDecisionTable
Title: "Decision Table Determine required vaccinations"
Description: """Determine required vaccinations """
Usage: #definition
* ^abstract = true
* meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareableplandefinition"
* meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishableplandefinition"
* library = Canonical(DT.IMMZ.D2.DT.Measles.Ongoingtransmission)
* extension[+]
  * url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-knowledgeCapability"
  * valueCode = #computable
* version = "{version}"
* name = "DT.IMMZ.D2.DT.Measles.Ongoingtransmission"
* status = #draft
* experimental = false
* publisher = "WHO"

* relatedArtifact[+]
  * type = #citation
  * citation = """WHO recommendations for routine immunization – summary tables (March 2023) (1)"""

  * action[output]
  * title = In countries with ongoing transmission in which the risk of measles mortality remains high, MCV1 should be given at 9 months of age.
As a general rule, live vaccines should be given either simultaneously or at intervals of 4 weeks. An exception to this rule is oral poliovirus vaccine (OPV), which can be given at any time before or after measles vaccination without interference in the response to either vaccine. 
   * description = {description}
   * definitionCanonical = Canonical(DTO.Clientisnotdueforfirstdoseofmeasles-cont.cebb90c9c1)
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
      * expression = """Should not vaccinate client as client's age is less than 9 months.
Check for any vaccines due and inform the caregiver of when to come back for MCV1."""
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
   * definitionCanonical = Canonical(DTO.ClientisdueforMCV1)
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
      * expression = """Should vaccinate client with MCV1 as no measles doses were administered, client is within appropriate age range and no live vaccine administered in the past 4 weeks.
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
   * definitionCanonical = Canonical(DTO.ClientisnotdueforMCV1)
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
      * expression = """Should not vaccinate client with MCV1 as live vaccine was administered in the past 4 weeks.
Check for any vaccines due and inform the caregiver of when to come back for MCV1."""
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
  * title = In countries with ongoing transmission in which the risk of measles mortality remains high, MCV2 should be given at 15–18 months. The minimum interval between MCV1 and MCV2 is 4 weeks.
As a general rule, live vaccines should be given either simultaneously or at intervals of 4 weeks. An exception to this rule is OPV, which can be given at any time before or after measles vaccination without interference in the response to either vaccine. 
   * description = {description}
   * definitionCanonical = Canonical(DTO.Clientisnotdueforseconddoseofmeasles-con.ed6bf2ffcc)
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
      * expression = """Should not vaccinate client with MCV2 as client's age is less than 15 months.
Check for any vaccines due and inform the caregiver of when to come back for MCV2."""
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
   * definitionCanonical = Canonical(DTO.ClientisdueforMCV2)
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
      * expression = """Should vaccinate client with MCV2 as client is within appropriate age range and no live vaccine administered in the past 4 weeks.
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
   * definitionCanonical = Canonical(DTO.ClientisnotdueforMCV2)
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
      * expression = """Should not vaccinate client with MCV2 as live vaccine was administered in the past 4 weeks.
Check for any vaccines due and inform the caregiver of when to come back for MCV2."""
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
  * title = An additional dose of MCV should be administered to children infected with HIV receiving highly active antiretroviral therapy (HAART) following immune reconstitution. If CD4+ T lymphocyte counts are monitored, an additional dose of MCV should be administered when immune reconstitution has been achieved (e.g. when the CD4+ T lymphocyte count reaches 20–25%). Where CD4+ T lymphocyte monitoring is not available, children should receive an additional dose of MCV 6–12 months after initiation of HAART. 
   * description = {description}
   * definitionCanonical = Canonical(DTO.Measlesprimaryseriesiscomplete)
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
      * expression = """Measles primary series is complete. Two measles primary series doses were administered.
Check if a measles supplementary dose is appropriate for the client."""
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

