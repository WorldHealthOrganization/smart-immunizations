Instance: DT.IMMZ.D2.DT.Typhoid.ViPS
InstanceOf: DD.IMMZ.D2.DT.Typhoid.ViPS
Title: "Decision Table Determine required vaccinations"
Description: """Determine required vaccinations """
Usage: #definition
* meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareableplandefinition"
* meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishableplandefinition"
* library = Canonical(DTs.Typhoid)
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
  * title = "Client is not due for Typhoid vaccination"
  * description = """Client is not due for Typhoid vaccination
"Immunization recommendation status" = "Not due"

Countries may consider the routine use of ViPS vaccine in individuals aged 2 years and older. """
  * definitionCanonical = Canonical(DTO.ClientisnotdueforTyphoidvaccination)
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
      * description = """Clientsageislessthan2years"""
      * language = #text/cql-identifier
      * expression = """Clientsageislessthan2years"""
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
      * expression = """Should not vaccinate client with typhoid dose as client's age is less than 2 years.
Check for any other vaccines due and inform the caregiver of when to come back for the first dose."""
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
      * description = """Clientsageislessthan2years"""
      * language = #text/cql-identifier
      * expression = """Clientsageislessthan2years"""
* action[+]
  * title = "Client is due for Typhoid vaccination"
  * description = """Client is due for Typhoid vaccination
"Immunization recommendation status" = "Due"
"""
  * definitionCanonical = Canonical(DTO.ClientisdueforTyphoidvaccination)
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
      * description = """Notyphoidprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Notyphoidprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Clientsageismorethanorequalto2years"""
      * language = #text/cql-identifier
      * expression = """Clientsageismorethanorequalto2years"""
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
      * expression = """Should vaccinate client with typhoid dose as no typhoid doses were administered and client is within appropriate age range.
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
      * description = """Notyphoidprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Notyphoidprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Clientsageismorethanorequalto2years"""
      * language = #text/cql-identifier
      * expression = """Clientsageismorethanorequalto2years"""
* action[+]
  * title = "Primary series is complete. Client is not due for typhoid booster dose"
  * description = """Primary series is complete. Client is not due for typhoid booster dose
"Immunization recommendation status" = "Not due"
"Completed the primary vaccination series" (where "Vaccine type" = "Typhoid vaccines") = TRUE

– """
  * definitionCanonical = Canonical(DTO.Primaryseriesiscomplete.Clientisnotduefor5b22c9f7b3)
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
      * description = """Onetyphoidprimaryseriesdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """Onetyphoidprimaryseriesdosewasadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatesttyphoiddosewasadministeredlessthan3yearsago"""
      * language = #text/cql-identifier
      * expression = """Thelatesttyphoiddosewasadministeredlessthan3yearsago"""
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
      * expression = """Should not vaccinate client with typhoid booster dose as the latest typhoid dose was administered less than 3 years ago.
Check for any other vaccines due and inform the caregiver of when to come back for the next dose."""
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
      * description = """Onetyphoidprimaryseriesdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """Onetyphoidprimaryseriesdosewasadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatesttyphoiddosewasadministeredlessthan3yearsago"""
      * language = #text/cql-identifier
      * expression = """Thelatesttyphoiddosewasadministeredlessthan3yearsago"""
* action[+]
  * title = "Primary series is complete. Client is due for typhoid booster dose"
  * description = """Primary series is complete. Client is due for typhoid booster dose
"Immunization recommendation status" = "Due"
"Completed the primary vaccination series" (where "Vaccine type" = "Typhoid vaccines") = TRUE

Revaccination is recommended every 3 years for ViPS. """
  * definitionCanonical = Canonical(DTO.Primaryseriesiscomplete.Clientisduefortypbc65e0f313)
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
      * description = """Onetyphoidprimaryseriesdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """Onetyphoidprimaryseriesdosewasadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatesttyphoiddosewasadministeredmorethan3yearsago"""
      * language = #text/cql-identifier
      * expression = """Thelatesttyphoiddosewasadministeredmorethan3yearsago"""
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
      * expression = """Should vaccinate client with typhoid booster dose as the latest dose was administered more than 3 years ago.
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
      * description = """Onetyphoidprimaryseriesdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """Onetyphoidprimaryseriesdosewasadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatesttyphoiddosewasadministeredmorethan3yearsago"""
      * language = #text/cql-identifier
      * expression = """Thelatesttyphoiddosewasadministeredmorethan3yearsago"""

