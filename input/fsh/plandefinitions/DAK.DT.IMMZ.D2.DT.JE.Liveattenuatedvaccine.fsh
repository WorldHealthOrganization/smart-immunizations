Instance: DAK.DT.IMMZ.D2.DT.JE.Liveattenuatedvaccine
InstanceOf: DAK.IMMZ.D2.DT.JE.Liveattenuatedvaccine
Title: "Decision Table Determine required vaccinations"
Description: """Determine required vaccinations """
Usage: #definition
* meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareableplandefinition"
* meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishableplandefinition"
* library = Canonical(DAK.DTs.JE)
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
  * title = "Client is not due for JE vaccination"
  * description = """Client is not due for JE vaccination
"Immunization recommendation status" = "Not due"

Live attenuated vaccine: Single dose administered at ≥ 8 months of age. """
  * definitionCanonical = Canonical(DAK.DTO.ClientisnotdueforJEvaccination)
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
      * description = """Clientsageislessthan8months"""
      * language = #text/cql-identifier
      * expression = """Clientsageislessthan8months"""
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
      * expression = """Should not vaccinate client with JE dose as client's age is less than 8 months. Check for any vaccines due and inform the caregiver of when to come back for the first JE dose."""
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
      * description = """Clientsageislessthan8months"""
      * language = #text/cql-identifier
      * expression = """Clientsageislessthan8months"""
* action[+]
  * title = "Client is due for JE vaccination"
  * description = """Client is due for JE vaccination
"Immunization recommendation status" = "Due"
"""
  * definitionCanonical = Canonical(DAK.DTO.ClientisdueforJEvaccination)
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
      * description = """NoJEprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """NoJEprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Clientsageismorethanorequalto8months"""
      * language = #text/cql-identifier
      * expression = """Clientsageismorethanorequalto8months"""
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
      * expression = """Should vaccinate client with JE dose as no JE dose was administered, client is within the appropriate age range and no live vaccine was administered in last 4 weeks. Check for contraindications."""
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
      * description = """NoJEprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """NoJEprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Clientsageismorethanorequalto8months"""
      * language = #text/cql-identifier
      * expression = """Clientsageismorethanorequalto8months"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Nolivevaccinewasadministeredinthelast4weeks"""
      * language = #text/cql-identifier
      * expression = """Nolivevaccinewasadministeredinthelast4weeks"""
* action[+]
  * title = "Client is not due for JE vaccination"
  * description = """Client is not due for JE vaccination
"Immunization recommendation status" = "Not due"

Live attenuated vaccine: Single dose administered at ≥8 months of age. As a general rule, any live vaccine may be given either simultaneously or at an interval of 4 weeks. """
  * definitionCanonical = Canonical(DAK.DTO.ClientisnotdueforJEvaccination)
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
      * description = """NoJEprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """NoJEprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Clientsageismorethanorequalto8months"""
      * language = #text/cql-identifier
      * expression = """Clientsageismorethanorequalto8months"""
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
      * expression = """Should not vaccinate client with JE dose as live vaccine was administered in the last 4 weeks. Check for any other vaccines due and inform the caregiver of when to come back for the first JE dose."""
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
      * description = """NoJEprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """NoJEprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Clientsageismorethanorequalto8months"""
      * language = #text/cql-identifier
      * expression = """Clientsageismorethanorequalto8months"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Livevaccinewasadministeredinthelast4weeks"""
      * language = #text/cql-identifier
      * expression = """Livevaccinewasadministeredinthelast4weeks"""
* action[+]
  * title = "JE immunization schedule is complete"
  * description = """JE immunization schedule is complete
"Immunization recommendation status" = "Complete"
"Completed the primary vaccination series" = TRUE (where "Vaccine type" = "JE vaccines")

– """
  * definitionCanonical = Canonical(DAK.DTO.JEimmunizationscheduleiscomplete)
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
      * description = """OneJEprimaryseriesdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """OneJEprimaryseriesdosewasadministered"""
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
      * expression = """JE immunization schedule is complete. One JE primary series dose was administered. Check for any other vaccines due."""
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
      * description = """OneJEprimaryseriesdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """OneJEprimaryseriesdosewasadministered"""

