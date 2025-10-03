Instance: DAK.DT.IMMZ.D2.DT.Rotavirus
InstanceOf: DAK.IMMZ.D2.DT.Rotavirus
Title: "Decision Table Determine required vaccinations"
Description: """Determine required vaccinations """
Usage: #definition
* meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareableplandefinition"
* meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishableplandefinition"
* library = Canonical(DAK.DTs.Rotavirus)
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
  * title = "Client is not due for rotavirus vaccination"
  * description = """Client is not due for rotavirus vaccination
"Immunization recommendation status" = "Not due"

WHO recommends that the first dose of rotavirus vaccine be administered as soon as possible after 6 weeks of age. """
  * definitionCanonical = Canonical(DAK.DTO.Clientisnotdueforrotavirusvaccination)
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
      * expression = """Should not vaccinate client with first rotavirus dose as client's age is less than 6 weeks. Check for any other vaccines due and inform the caregiver of when to come back for the first dose."""
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
  * title = "Client is due for rotavirus vaccination"
  * description = """Client is due for rotavirus vaccination
"Immunization recommendation status" = "Due"
"""
  * definitionCanonical = Canonical(DAK.DTO.Clientisdueforrotavirusvaccination)
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
      * description = """Norotavirusprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Norotavirusprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Clientsageisbetween6weeksand24months"""
      * language = #text/cql-identifier
      * expression = """Clientsageisbetween6weeksand24months"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Nolivevaccinewasadministeredinthelast4weeks"""
      * language = #text/cql-identifier
      * expression = """Nolivevaccinewasadministeredinthelast4weeks"""
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
      * expression = """Should vaccinate client with  first rotavirus dose as no rotavirus doses were administered, client's age is within appropriate age range and no live vaccine was administered in last 4 weeks.
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
      * description = """Norotavirusprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Norotavirusprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Clientsageisbetween6weeksand24months"""
      * language = #text/cql-identifier
      * expression = """Clientsageisbetween6weeksand24months"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Nolivevaccinewasadministeredinthelast4weeks"""
      * language = #text/cql-identifier
      * expression = """Nolivevaccinewasadministeredinthelast4weeks"""
* action[+]
  * title = "Client is not due for rotavirus vaccination"
  * description = """Client is not due for rotavirus vaccination
"Immunization recommendation status" = "Not due"
"""
  * definitionCanonical = Canonical(DAK.DTO.Clientisnotdueforrotavirusvaccination)
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
      * description = """Norotavirusprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Norotavirusprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Clientsageisbetween6weeksand24months"""
      * language = #text/cql-identifier
      * expression = """Clientsageisbetween6weeksand24months"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Livevaccinewasadministeredinthelast4weeks"""
      * language = #text/cql-identifier
      * expression = """Livevaccinewasadministeredinthelast4weeks"""
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
      * expression = """Should not vaccinate client with  first rotavirus dose as live vaccine was administered in last 4 weeks. Check for any vaccines due and inform the caregiver of when to come back for the first dose."""
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
      * description = """Norotavirusprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Norotavirusprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Clientsageisbetween6weeksand24months"""
      * language = #text/cql-identifier
      * expression = """Clientsageisbetween6weeksand24months"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Livevaccinewasadministeredinthelast4weeks"""
      * language = #text/cql-identifier
      * expression = """Livevaccinewasadministeredinthelast4weeks"""
* action[+]
  * title = "Client is due for rotavirus vaccination"
  * description = """Client is due for rotavirus vaccination
"Immunization recommendation status" = "Due"

A minimum interval of 4 weeks should be maintained between doses.

Note: The rotavirus vaccination series for each child should be completed with the same product whenever feasible. However, if the product used for a prior dose is unavailable or unknown, the series should be completed with any available licensed product. """
  * definitionCanonical = Canonical(DAK.DTO.Clientisdueforrotavirusvaccination)
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
      * description = """Onerotavirusprimaryseriesdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """Onerotavirusprimaryseriesdosewasadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Clientsageisbetween6weeksand24months"""
      * language = #text/cql-identifier
      * expression = """Clientsageisbetween6weeksand24months"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Nolivevaccinewasadministeredinthelast4weeks"""
      * language = #text/cql-identifier
      * expression = """Nolivevaccinewasadministeredinthelast4weeks"""
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
      * expression = """Should vaccinate client with second rotavirus dose as client's age is within appropriate age range and no live vaccine was administered in the last 4 weeks.
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
      * description = """Onerotavirusprimaryseriesdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """Onerotavirusprimaryseriesdosewasadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Clientsageisbetween6weeksand24months"""
      * language = #text/cql-identifier
      * expression = """Clientsageisbetween6weeksand24months"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Nolivevaccinewasadministeredinthelast4weeks"""
      * language = #text/cql-identifier
      * expression = """Nolivevaccinewasadministeredinthelast4weeks"""
* action[+]
  * title = "Client is not due for rotavirus vaccination"
  * description = """Client is not due for rotavirus vaccination
"Immunization recommendation status" = "Not due"
"""
  * definitionCanonical = Canonical(DAK.DTO.Clientisnotdueforrotavirusvaccination)
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
      * description = """Onerotavirusprimaryseriesdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """Onerotavirusprimaryseriesdosewasadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Clientsageisbetween6weeksand24months"""
      * language = #text/cql-identifier
      * expression = """Clientsageisbetween6weeksand24months"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Livevaccinewasadministeredinthelast4weeks"""
      * language = #text/cql-identifier
      * expression = """Livevaccinewasadministeredinthelast4weeks"""
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
      * expression = """Should not vaccinate client with second rotavirus dose as live vaccine was administered in the last 4 weeks. Check for any other vaccines due and inform the caregiver of when to come back for the next dose"""
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
      * description = """Onerotavirusprimaryseriesdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """Onerotavirusprimaryseriesdosewasadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Clientsageisbetween6weeksand24months"""
      * language = #text/cql-identifier
      * expression = """Clientsageisbetween6weeksand24months"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Livevaccinewasadministeredinthelast4weeks"""
      * language = #text/cql-identifier
      * expression = """Livevaccinewasadministeredinthelast4weeks"""
* action[+]
  * title = "Client is due for rotavirus vaccination"
  * description = """Client is due for rotavirus vaccination
"Immunization recommendation status" = "Due"

For a mixed series or a series with any unknown vaccine products, a total of 3 doses of rotavirus vaccine should be administered for a complete vaccination series. """
  * definitionCanonical = Canonical(DAK.DTO.Clientisdueforrotavirusvaccination)
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
      * description = """Tworotavirusprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Tworotavirusprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Clientsageisbetween6monthsand24months"""
      * language = #text/cql-identifier
      * expression = """Clientsageisbetween6monthsand24months"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Nolivevaccinewasadministeredinthelast4weeks"""
      * language = #text/cql-identifier
      * expression = """Nolivevaccinewasadministeredinthelast4weeks"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Theseriesadministeredtotheclientisamixedserie5005705dfd"""
      * language = #text/cql-identifier
      * expression = """Theseriesadministeredtotheclientisamixedserie5005705dfd"""
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
      * expression = """Should vaccinate client with third rotavirus dose as no live vaccine was administered in the last 4 weeks and series administered to client is a mixed or unknown series.
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
      * description = """Tworotavirusprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Tworotavirusprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Clientsageisbetween6monthsand24months"""
      * language = #text/cql-identifier
      * expression = """Clientsageisbetween6monthsand24months"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Nolivevaccinewasadministeredinthelast4weeks"""
      * language = #text/cql-identifier
      * expression = """Nolivevaccinewasadministeredinthelast4weeks"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Theseriesadministeredtotheclientisamixedserie5005705dfd"""
      * language = #text/cql-identifier
      * expression = """Theseriesadministeredtotheclientisamixedserie5005705dfd"""
* action[+]
  * title = "Client is not due for rotavirus vaccination"
  * description = """Client is not due for rotavirus vaccination
"Immunization recommendation status" = "Not due"
"""
  * definitionCanonical = Canonical(DAK.DTO.Clientisnotdueforrotavirusvaccination)
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
      * description = """Tworotavirusprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Tworotavirusprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Clientsageisbetween6monthsand24months"""
      * language = #text/cql-identifier
      * expression = """Clientsageisbetween6monthsand24months"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Livevaccineswasadministeredinthelast4weeks"""
      * language = #text/cql-identifier
      * expression = """Livevaccineswasadministeredinthelast4weeks"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Theseriesadministeredtotheclientisamixedserie5005705dfd"""
      * language = #text/cql-identifier
      * expression = """Theseriesadministeredtotheclientisamixedserie5005705dfd"""
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
      * expression = """Should not vaccinate client with third rotavirus dose as live vaccine was administered in the last 4 weeks and series administered to client is a mixed or unknown series. Check for any other vaccines due and inform the caregiver of when to come back for the next dose"""
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
      * description = """Tworotavirusprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Tworotavirusprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Clientsageisbetween6monthsand24months"""
      * language = #text/cql-identifier
      * expression = """Clientsageisbetween6monthsand24months"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Livevaccineswasadministeredinthelast4weeks"""
      * language = #text/cql-identifier
      * expression = """Livevaccineswasadministeredinthelast4weeks"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Theseriesadministeredtotheclientisamixedserie5005705dfd"""
      * language = #text/cql-identifier
      * expression = """Theseriesadministeredtotheclientisamixedserie5005705dfd"""
* action[+]
  * title = "Client is due for rotavirus vaccination"
  * description = """Client is due for rotavirus vaccination
"Immunization recommendation status" = "Due"

RotaTeq, Rotavac and Rotasiil should be administered in a 3-dose schedule, while a 2-dose schedule should be used for Rotarix. """
  * definitionCanonical = Canonical(DAK.DTO.Clientisdueforrotavirusvaccination)
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
      * description = """Tworotavirusprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Tworotavirusprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Clientsageisbetween6monthsand24months"""
      * language = #text/cql-identifier
      * expression = """Clientsageisbetween6monthsand24months"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Nolivevaccinewasadministeredinlast4weeks"""
      * language = #text/cql-identifier
      * expression = """Nolivevaccinewasadministeredinlast4weeks"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Theseriesadministeredtotheclientcontainsthesameproduct"""
      * language = #text/cql-identifier
      * expression = """Theseriesadministeredtotheclientcontainsthesameproduct"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Theseriescontainmorethantwodoses"""
      * language = #text/cql-identifier
      * expression = """Theseriescontainmorethantwodoses"""
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
      * expression = """Should vaccinate client with third rotavirus dose as series contains more than two doses and no live vaccine was administered in the last 4 weeks.
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
      * description = """Tworotavirusprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Tworotavirusprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Clientsageisbetween6monthsand24months"""
      * language = #text/cql-identifier
      * expression = """Clientsageisbetween6monthsand24months"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Nolivevaccinewasadministeredinlast4weeks"""
      * language = #text/cql-identifier
      * expression = """Nolivevaccinewasadministeredinlast4weeks"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Theseriesadministeredtotheclientcontainsthesameproduct"""
      * language = #text/cql-identifier
      * expression = """Theseriesadministeredtotheclientcontainsthesameproduct"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Theseriescontainmorethantwodoses"""
      * language = #text/cql-identifier
      * expression = """Theseriescontainmorethantwodoses"""
* action[+]
  * title = "Client is not due for rotavirus vaccination"
  * description = """Client is not due for rotavirus vaccination
"Immunization recommendation status" = "Not due"
"""
  * definitionCanonical = Canonical(DAK.DTO.Clientisnotdueforrotavirusvaccination)
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
      * description = """Tworotavirusprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Tworotavirusprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Clientsageisbetween6monthsand24months"""
      * language = #text/cql-identifier
      * expression = """Clientsageisbetween6monthsand24months"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Livevaccinewasadministeredinlast4weeks"""
      * language = #text/cql-identifier
      * expression = """Livevaccinewasadministeredinlast4weeks"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Theseriesadministeredtotheclientcontainsthesameproduct"""
      * language = #text/cql-identifier
      * expression = """Theseriesadministeredtotheclientcontainsthesameproduct"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Theseriescontainmorethantwodoses"""
      * language = #text/cql-identifier
      * expression = """Theseriescontainmorethantwodoses"""
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
      * expression = """Should not vaccinate client with third rotavirus dose as live vaccine was administered in the last 4 weeks. Check for any other vaccines due and inform the caregiver of when to come back for the next dose."""
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
      * description = """Tworotavirusprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Tworotavirusprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Clientsageisbetween6monthsand24months"""
      * language = #text/cql-identifier
      * expression = """Clientsageisbetween6monthsand24months"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Livevaccinewasadministeredinlast4weeks"""
      * language = #text/cql-identifier
      * expression = """Livevaccinewasadministeredinlast4weeks"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Theseriesadministeredtotheclientcontainsthesameproduct"""
      * language = #text/cql-identifier
      * expression = """Theseriesadministeredtotheclientcontainsthesameproduct"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Theseriescontainmorethantwodoses"""
      * language = #text/cql-identifier
      * expression = """Theseriescontainmorethantwodoses"""
* action[+]
  * title = "Rotavirus immunization schedule is complete"
  * description = """Rotavirus immunization schedule is complete
"Immunization recommendation status" = "Complete"
"""
  * definitionCanonical = Canonical(DAK.DTO.Rotavirusimmunizationscheduleiscomplete)
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
      * description = """Tworotavirusprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Tworotavirusprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Clientsageisbetween6monthsand24months"""
      * language = #text/cql-identifier
      * expression = """Clientsageisbetween6monthsand24months"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Theseriesadministeredtotheclientcontainsthesameproduct"""
      * language = #text/cql-identifier
      * expression = """Theseriesadministeredtotheclientcontainsthesameproduct"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Theseriescontainlessthanorequaltotwodoses"""
      * language = #text/cql-identifier
      * expression = """Theseriescontainlessthanorequaltotwodoses"""
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
      * expression = """Rotavirus immunization schedule is complete. Two rotavirus doses were administered. Check for any other vaccines due."""
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
      * description = """Tworotavirusprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Tworotavirusprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Clientsageisbetween6monthsand24months"""
      * language = #text/cql-identifier
      * expression = """Clientsageisbetween6monthsand24months"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Theseriesadministeredtotheclientcontainsthesameproduct"""
      * language = #text/cql-identifier
      * expression = """Theseriesadministeredtotheclientcontainsthesameproduct"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Theseriescontainlessthanorequaltotwodoses"""
      * language = #text/cql-identifier
      * expression = """Theseriescontainlessthanorequaltotwodoses"""
* action[+]
  * title = "Rotavirus immunization schedule is complete"
  * description = """Rotavirus immunization schedule is complete
'"Immunization recommendation status" = "Complete"

– """
  * definitionCanonical = Canonical(DAK.DTO.Rotavirusimmunizationscheduleiscomplete)
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
      * description = """Threerotavirusprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Threerotavirusprimaryseriesdoseswereadministered"""
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
      * expression = """Rotavirus immunization schedule is complete. Three rotavirus primary series doses were administered. Check for any other vaccines due."""
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
      * description = """Threerotavirusprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Threerotavirusprimaryseriesdoseswereadministered"""
* action[+]
  * title = "Client is not due for rotavirus vaccination if immunization schedule is not complete."
  * description = """Client is not due for rotavirus vaccination if immunization schedule is not complete.
"Immunization recommendation status" = "Not due" IF current "Immunization recommendation status" ≠ "Complete"

Because of the typical age distribution of rotavirus gastroenteritis, rotavirus vaccination of children aged over 24 months is not recommended. """
  * definitionCanonical = Canonical(DAK.DTO.Clientisnotdueforrotavirusvaccinationbfb0c9dd04)
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
      * description = """Clientsageismorethan24months"""
      * language = #text/cql-identifier
      * expression = """Clientsageismorethan24months"""
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
      * expression = """Should not vaccinate client with rotavirus dose as client's age is more than 24 months. Check for any other vaccines due."""
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
      * description = """Clientsageismorethan24months"""
      * language = #text/cql-identifier
      * expression = """Clientsageismorethan24months"""

