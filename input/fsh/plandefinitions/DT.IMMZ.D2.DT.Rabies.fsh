Instance: DT.IMMZ.D2.DT.Rabies
InstanceOf: DD.IMMZ.D2.DT.Rabies
Title: "Decision Table Determine required vaccinations"
Description: """Determine required vaccinations """
Usage: #definition
* meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareableplandefinition"
* meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishableplandefinition"
* library = Canonical(DTs.Rabies)
* extension[+]
  * url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-knowledgeCapability"
  * valueCode = #computable
* version = "0.2.0"
* status = #draft
* experimental = false
* publisher = "WHO"

* relatedArtifact[+]
  * type = #citation
  * citation = """WHO recommendations for routine immunization – summary tables (March 2023) (1)"""

* action[+]
  * title = "Client is due for rabies vaccination"
  * description = """Client is due for rabies vaccination
"Immunization recommendation status" = "Due"

The schedule is for a 2-site intradermal vaccine administered on days 0 and 7. If intramuscular administration is used, WHO recommends a 1-site intramuscular vaccine administration on days 0 and 7.

Note: This PrEP dose is recommended for individuals at high risk of rabies virus exposure. These include subpopulations in highly endemic settings with limited access to timely and adequate PrEP, individuals at occupational risk and travellers who may be at risk of exposure. WHO recommendations apply only to inactivated modern, concentrated, purified cell culture and embryonated egg-based rabies vaccines (CCEEVs). """
  * definitionCanonical = Canonical(DTO.Clientisdueforrabiesvaccination)
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
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Norabiesprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Norabiesprimaryseriesdoseswereadministered"""
* action[+]
  * title = "Health worker guidance"
  * description = "Communicate guidance to the health worker"
  * definitionCanonical = Canonical(SGDecisionTableGuidance)
  * dynamicValue[+]
    * path = "status"
    * expression
      * language = #text/cql-expression
      * expression = "active"
  * dynamicValue[+]
    * path = "payload.contentString"
    * expression
      * language = #text/cql-identifier
      * expression = """Should vaccinate client with first rabies dose as no rabies doses were administered and client is at high risk of exposure. 
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
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Norabiesprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Norabiesprimaryseriesdoseswereadministered"""
* action[+]
  * title = "Client is not due for rabies vaccination"
  * description = """Client is not due for rabies vaccination
"Immunization recommendation status" = "Not due"

PrEP schedule: 2-site intradermal vaccine administered on days 0 and 7. If intramuscular administration is used, WHO recommends a 1-site intramuscular vaccine administration on days 0 and 7. """
  * definitionCanonical = Canonical(DTO.Clientisnotdueforrabiesvaccination)
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
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Onerabiesprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Onerabiesprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatestrabiesdosewasadministeredlessthan7daysago"""
      * language = #text/cql-identifier
      * expression = """Thelatestrabiesdosewasadministeredlessthan7daysago"""
* action[+]
  * title = "Health worker guidance"
  * description = "Communicate guidance to the health worker"
  * definitionCanonical = Canonical(SGDecisionTableGuidance)
  * dynamicValue[+]
    * path = "status"
    * expression
      * language = #text/cql-expression
      * expression = "active"
  * dynamicValue[+]
    * path = "payload.contentString"
    * expression
      * language = #text/cql-identifier
      * expression = """Should not vaccinate client with second rabies dose as the latest rabies dose was administered less than 7 days ago. 
Check for any other vaccines due and inform the caregiver of when to come back for the second dose."""
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
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Onerabiesprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Onerabiesprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatestrabiesdosewasadministeredlessthan7daysago"""
      * language = #text/cql-identifier
      * expression = """Thelatestrabiesdosewasadministeredlessthan7daysago"""
* action[+]
  * title = "Client is due for rabies vaccination"
  * description = """Client is due for rabies vaccination
"Immunization recommendation status" = "Due"

If any doses are delayed, vaccination should be resumed, not restarted. A change in the route of administration or in vaccine product during a course is acceptable if such a change is unavoidable.
The schedule is for a 2-site intradermal vaccine administered on days 0 and 7. If intramuscular administration is used, WHO recommends a 1-site intramuscular vaccine administration on days 0 and 7. """
  * definitionCanonical = Canonical(DTO.Clientisdueforrabiesvaccination)
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
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Onerabiesprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Onerabiesprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatestrabiesdosewasadministeredmorethan7daysago"""
      * language = #text/cql-identifier
      * expression = """Thelatestrabiesdosewasadministeredmorethan7daysago"""
* action[+]
  * title = "Health worker guidance"
  * description = "Communicate guidance to the health worker"
  * definitionCanonical = Canonical(SGDecisionTableGuidance)
  * dynamicValue[+]
    * path = "status"
    * expression
      * language = #text/cql-expression
      * expression = "active"
  * dynamicValue[+]
    * path = "payload.contentString"
    * expression
      * language = #text/cql-identifier
      * expression = """Should vaccinate client with second rabies dose as the latest rabies dose was administerd 7 or more days ago. 
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
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Onerabiesprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Onerabiesprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatestrabiesdosewasadministeredmorethan7daysago"""
      * language = #text/cql-identifier
      * expression = """Thelatestrabiesdosewasadministeredmorethan7daysago"""
* action[+]
  * title = "Rabies immunization schedule is complete"
  * description = """Rabies immunization schedule is complete
"Immunization recommendation status" = "Complete"
"Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Rabies vaccines")

No further PrEP booster doses following a primary series of PrEP or PEP are required for individuals living in, or travelling to, high-risk areas.
Professionals who are at continual or frequent risk of exposure through their activities should have regular serological monitoring. """
  * definitionCanonical = Canonical(DTO.Rabiesimmunizationscheduleiscomplete)
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
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Tworabiesprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Tworabiesprimaryseriesdoseswereadministered"""
* action[+]
  * title = "Health worker guidance"
  * description = "Communicate guidance to the health worker"
  * definitionCanonical = Canonical(SGDecisionTableGuidance)
  * dynamicValue[+]
    * path = "status"
    * expression
      * language = #text/cql-expression
      * expression = "active"
  * dynamicValue[+]
    * path = "payload.contentString"
    * expression
      * language = #text/cql-identifier
      * expression = """Rabies immunization schedule is complete. Two rabies primary series doses were administered. 
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
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Tworabiesprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Tworabiesprimaryseriesdoseswereadministered"""

