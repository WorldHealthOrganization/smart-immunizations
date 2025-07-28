Instance: DAK.DT.IMMZ.D2.DT.Hib.3doses
InstanceOf: DAK.IMMZ.D2.DT.Hib.3doses
Title: "Decision Table Determine required vaccinations"
Description: """Determine required vaccinations """
Usage: #definition
* meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareableplandefinition"
* meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishableplandefinition"
* library = Canonical(DAK.DTs.Hib)
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
  * title = "Client is not due for Hib vaccination"
  * description = """Client is not due for Hib vaccination
"Immunization recommendation status" = "Not due"

Because serious Hib disease occurs most commonly in children aged 4–18 months, immunization should start from 6 weeks of age, or as early as possible thereafter. The interval between doses should be at least 4 weeks if 3 primary doses are given. Hib-containing vaccine is not required for healthy children aged over  5 years. """
  * definitionCanonical = Canonical(DAK.DTO.ClientisnotdueforHibvaccination)
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
      * description = """Clientsageislessthan6weeks"""
      * language = #text/cql-identifier
      * expression = """Clientsageislessthan6weeks"""
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
      * expression = """Should not vaccinate client with first Hib dose as client's age is less than 6 weeks. 
Check for any other vaccines due and inform the caregiver of when to come back for first dose."""
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
      * description = """Clientsageislessthan6weeks"""
      * language = #text/cql-identifier
      * expression = """Clientsageislessthan6weeks"""
* action[+]
  * title = "Client is due for Hib vaccination"
  * description = """Client is due for Hib vaccination
"Immunization recommendation status" = "Due"
"""
  * definitionCanonical = Canonical(DAK.DTO.ClientisdueforHibvaccination)
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
      * description = """NoHibprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """NoHibprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Clientsageisbetween6weeksand5years"""
      * language = #text/cql-identifier
      * expression = """Clientsageisbetween6weeksand5years"""
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
      * expression = """Should vaccinate client with first Hib dose as no Hib doses were administered and client is within appropriate age range. 
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
      * description = """NoHibprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """NoHibprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Clientsageisbetween6weeksand5years"""
      * language = #text/cql-identifier
      * expression = """Clientsageisbetween6weeksand5years"""
* action[+]
  * title = "Client is not due for Hib vaccination"
  * description = """Client is not due for Hib vaccination
"Immunization recommendation status" = "Not due"
"""
  * definitionCanonical = Canonical(DAK.DTO.ClientisnotdueforHibvaccination)
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
      * description = """OneHibprimaryseriesdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """OneHibprimaryseriesdosewasadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Clientsageisatleast6weeksandnotmorethan5years"""
      * language = #text/cql-identifier
      * expression = """Clientsageisatleast6weeksandnotmorethan5years"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Clientsagewaslessthan1yearwhenfirstHibdosewasd21c5a4782"""
      * language = #text/cql-identifier
      * expression = """Clientsagewaslessthan1yearwhenfirstHibdosewasd21c5a4782"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """ThelatestHibdosewasadministeredlessthan4weeksago"""
      * language = #text/cql-identifier
      * expression = """ThelatestHibdosewasadministeredlessthan4weeksago"""
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
      * expression = """Should not vaccinate client with second Hib dose as latest Hib dose was administered less than 4 weeks ago. 
Check for any other vaccines due and inform the caregiver of when to come back for second dose."""
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
      * description = """OneHibprimaryseriesdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """OneHibprimaryseriesdosewasadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Clientsageisatleast6weeksandnotmorethan5years"""
      * language = #text/cql-identifier
      * expression = """Clientsageisatleast6weeksandnotmorethan5years"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Clientsagewaslessthan1yearwhenfirstHibdosewasd21c5a4782"""
      * language = #text/cql-identifier
      * expression = """Clientsagewaslessthan1yearwhenfirstHibdosewasd21c5a4782"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """ThelatestHibdosewasadministeredlessthan4weeksago"""
      * language = #text/cql-identifier
      * expression = """ThelatestHibdosewasadministeredlessthan4weeksago"""
* action[+]
  * title = "Client is due for Hib vaccination"
  * description = """Client is due for Hib vaccination
"Immunization recommendation status" = "Due"
"""
  * definitionCanonical = Canonical(DAK.DTO.ClientisdueforHibvaccination)
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
      * description = """OneHibprimaryseriesdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """OneHibprimaryseriesdosewasadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Clientsageisatleast6weeksandnotmorethan5years"""
      * language = #text/cql-identifier
      * expression = """Clientsageisatleast6weeksandnotmorethan5years"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Clientsagewaslessthan1yearwhenfirstHibdosewasd21c5a4782"""
      * language = #text/cql-identifier
      * expression = """Clientsagewaslessthan1yearwhenfirstHibdosewasd21c5a4782"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """ThelatestHibdosewasadministeredmorethan4weeksago"""
      * language = #text/cql-identifier
      * expression = """ThelatestHibdosewasadministeredmorethan4weeksago"""
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
      * expression = """Should vaccinate client with second Hib dose as client's age was less than 1 year when first Hib dose was administered and the latest Hib dose was administered more than 4 weeks ago. 
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
      * description = """OneHibprimaryseriesdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """OneHibprimaryseriesdosewasadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Clientsageisatleast6weeksandnotmorethan5years"""
      * language = #text/cql-identifier
      * expression = """Clientsageisatleast6weeksandnotmorethan5years"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Clientsagewaslessthan1yearwhenfirstHibdosewasd21c5a4782"""
      * language = #text/cql-identifier
      * expression = """Clientsagewaslessthan1yearwhenfirstHibdosewasd21c5a4782"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """ThelatestHibdosewasadministeredmorethan4weeksago"""
      * language = #text/cql-identifier
      * expression = """ThelatestHibdosewasadministeredmorethan4weeksago"""
* action[+]
  * title = "Hib immunization schedule is complete"
  * description = """Hib immunization schedule is complete
"Immunization recommendation status" = "Complete"
"Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Hib-containing vaccines")

When a first dose is given to a child aged over 12 months, only one dose is recommended """
  * definitionCanonical = Canonical(DAK.DTO.Hibimmunizationscheduleiscomplete)
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
      * description = """OneHibprimaryseriesdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """OneHibprimaryseriesdosewasadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Clientsageisatleast6weeksandnotmorethan5years"""
      * language = #text/cql-identifier
      * expression = """Clientsageisatleast6weeksandnotmorethan5years"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Clientsagewasmorethan1yearwhenfirstHibdosewas80c81c688c"""
      * language = #text/cql-identifier
      * expression = """Clientsagewasmorethan1yearwhenfirstHibdosewas80c81c688c"""
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
      * expression = """Hib immunization schedule is complete as client's age was more than 1 year when first Hib dose was administered. One Hib primary series dose was administered.
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
      * description = """OneHibprimaryseriesdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """OneHibprimaryseriesdosewasadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Clientsageisatleast6weeksandnotmorethan5years"""
      * language = #text/cql-identifier
      * expression = """Clientsageisatleast6weeksandnotmorethan5years"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Clientsagewasmorethan1yearwhenfirstHibdosewas80c81c688c"""
      * language = #text/cql-identifier
      * expression = """Clientsagewasmorethan1yearwhenfirstHibdosewas80c81c688c"""
* action[+]
  * title = "Client is not due for Hib vaccination"
  * description = """Client is not due for Hib vaccination
"Immunization recommendation status" = "Not due"

The interval between doses should be at least 4 weeks if 3 primary doses are given.
Hib-containing vaccine is not required for healthy children aged over 5 years. """
  * definitionCanonical = Canonical(DAK.DTO.ClientisnotdueforHibvaccination)
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
      * description = """TwoHibprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """TwoHibprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Clientsageisbetween6weeksandnotmorethan5years"""
      * language = #text/cql-identifier
      * expression = """Clientsageisbetween6weeksandnotmorethan5years"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """ThelatestHibdosewasadministeredlessthan4weeksago"""
      * language = #text/cql-identifier
      * expression = """ThelatestHibdosewasadministeredlessthan4weeksago"""
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
      * expression = """Should not vaccinate client with third Hib dose as latest Hib dose was administered less than 4 weeks ago. 
Check for any other vaccines due and inform the caregiver of when to come back for third dose."""
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
      * description = """TwoHibprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """TwoHibprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Clientsageisbetween6weeksandnotmorethan5years"""
      * language = #text/cql-identifier
      * expression = """Clientsageisbetween6weeksandnotmorethan5years"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """ThelatestHibdosewasadministeredlessthan4weeksago"""
      * language = #text/cql-identifier
      * expression = """ThelatestHibdosewasadministeredlessthan4weeksago"""
* action[+]
  * title = "Client is due for Hib vaccination"
  * description = """Client is due for Hib vaccination
"Immunization recommendation status" = "Due"
"""
  * definitionCanonical = Canonical(DAK.DTO.ClientisdueforHibvaccination)
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
      * description = """TwoHibprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """TwoHibprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Clientsageisbetween6weeksandnotmorethan5years"""
      * language = #text/cql-identifier
      * expression = """Clientsageisbetween6weeksandnotmorethan5years"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """ThelatestHibdosewasadministeredmorethan4weeksago"""
      * language = #text/cql-identifier
      * expression = """ThelatestHibdosewasadministeredmorethan4weeksago"""
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
      * expression = """Should vaccinate client with third Hib dose as client is within appropriate age range and latest Hib dose was administered more than 4 weeks ago. 
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
      * description = """TwoHibprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """TwoHibprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Clientsageisbetween6weeksandnotmorethan5years"""
      * language = #text/cql-identifier
      * expression = """Clientsageisbetween6weeksandnotmorethan5years"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """ThelatestHibdosewasadministeredmorethan4weeksago"""
      * language = #text/cql-identifier
      * expression = """ThelatestHibdosewasadministeredmorethan4weeksago"""
* action[+]
  * title = "Hib immunization schedule is complete"
  * description = """Hib immunization schedule is complete
"Immunization recommendation status" = "Complete"
"Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Hib-containing vaccines")

– """
  * definitionCanonical = Canonical(DAK.DTO.Hibimmunizationscheduleiscomplete)
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
      * description = """ThreeHibprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """ThreeHibprimaryseriesdoseswereadministered"""
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
      * expression = """Hib immunization schedule is complete. Three Hib primary series doses were administered. 
Check for any vaccines due."""
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
      * description = """ThreeHibprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """ThreeHibprimaryseriesdoseswereadministered"""
* action[+]
  * title = "Client is not due for Hib vaccination"
  * description = """Client is not due for Hib vaccination
"Immunization recommendation status" = "Not due"

– """
  * definitionCanonical = Canonical(DAK.DTO.ClientisnotdueforHibvaccination)
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
      * description = """Clientsageismorethan5years"""
      * language = #text/cql-identifier
      * expression = """Clientsageismorethan5years"""
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
      * expression = """Should not vaccinate client with Hib dose as client is more than 5 years old and Hib vaccination is not required for healthy children aged over 5 years. 
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
      * description = """Clientsageismorethan5years"""
      * language = #text/cql-identifier
      * expression = """Clientsageismorethan5years"""

