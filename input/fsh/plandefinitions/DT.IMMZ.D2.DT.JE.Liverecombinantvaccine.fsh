Instance: DT.IMMZ.D2.DT.JE.Liverecombinantvaccine
InstanceOf: DD.IMMZ.D2.DT.JE.Liverecombinantvaccine
Title: "Decision Table Determine required vaccinations"
Description: """Determine required vaccinations """
Usage: #definition
* meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareableplandefinition"
* meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishableplandefinition"
* library = Canonical(DTs.JE)
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

Live recombinant vaccine: Single dose administered at ≥ 9 months of age. """
  * definitionCanonical = Canonical(DTO.ClientisnotdueforJEvaccination)
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
      * description = """Clientsageislessthan9months"""
      * language = #text/cql-identifier
      * expression = """Clientsageislessthan9months"""
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
      * expression = """Should not vaccinate client with JE dose as client's age is less than 9 months. 
Check for any vaccines due and inform the caregiver of when to come back for the first JE dose."""
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
      * description = """Clientsageislessthan9months"""
      * language = #text/cql-identifier
      * expression = """Clientsageislessthan9months"""
* action[+]
  * title = "Client is due for JE vaccination"
  * description = """Client is due for JE vaccination
"Immunization recommendation status" = "Due"
"""
  * definitionCanonical = Canonical(DTO.ClientisdueforJEvaccination)
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
      * description = """Clientsageismorethanorequalto9months"""
      * language = #text/cql-identifier
      * expression = """Clientsageismorethanorequalto9months"""
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
      * expression = """Should vaccinate client with JE dose as no JE dose was administered, client is within the appropriate age range and no live vaccine was administered in past 4 weeks. 
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
      * description = """NoJEprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """NoJEprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Clientsageismorethanorequalto9months"""
      * language = #text/cql-identifier
      * expression = """Clientsageismorethanorequalto9months"""
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

Live recombinant vaccine: Single dose administered at ≥ 9 months of age. As a general rule, any live vaccine may be given either simultaneously or at an interval of 4 weeks. """
  * definitionCanonical = Canonical(DTO.ClientisnotdueforJEvaccination)
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
      * description = """Clientsageismorethanorequalto9months"""
      * language = #text/cql-identifier
      * expression = """Clientsageismorethanorequalto9months"""
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
      * expression = """Should not vaccinate client with JE dose as live vaccine was administered in the last 4 weeks. 
Check for any other vaccines due and inform the caregiver of when to come back for the first JE dose."""
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
      * description = """Clientsageismorethanorequalto9months"""
      * language = #text/cql-identifier
      * expression = """Clientsageismorethanorequalto9months"""
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
  * definitionCanonical = Canonical(DTO.JEimmunizationscheduleiscomplete)
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
      * description = """OneJEprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """OneJEprimaryseriesdoseswereadministered"""
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
      * expression = """JE immunization schedule is complete. One JE primary series dose was administered. 
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
      * description = """OneJEprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """OneJEprimaryseriesdoseswereadministered"""

