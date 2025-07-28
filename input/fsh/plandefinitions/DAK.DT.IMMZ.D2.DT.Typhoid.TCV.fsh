Instance: DAK.DT.IMMZ.D2.DT.Typhoid.TCV
InstanceOf: DAK.IMMZ.D2.DT.Typhoid.TCV
Title: "Decision Table Determine required vaccinations"
Description: """Determine required vaccinations """
Usage: #definition
* meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareableplandefinition"
* meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishableplandefinition"
* library = Canonical(DAK.DTs.Typhoid)
* extension[+]
  * url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-knowledgeCapability"
  * valueCode = #computable
* version = "0.2.0"
* status = #draft
* experimental = false
* publisher = "WHO"

* relatedArtifact[+]
  * type = #citation
  * citation = """Typhoid vaccines: WHO position paper (March 2018) (16)"""
* relatedArtifact[+]
  * type = #citation
  * citation = """WHO recommendations for routine immunization – summary tables (March 2023) (1)"""

* action[+]
  * title = "Client is not due for Typhoid vaccination"
  * description = """Client is not due for Typhoid vaccination
"Immunization recommendation status" = "Not due"

WHO recommends the TCV as a 0.5 mL single dose for infants and children from 6 months of age. """
  * definitionCanonical = Canonical(DAK.DTO.ClientisnotdueforTyphoidvaccination)
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
      * description = """Clientsageislessthan6months"""
      * language = #text/cql-identifier
      * expression = """Clientsageislessthan6months"""
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
      * expression = """Should not vaccinate client with typhoid dose as client's age is less than 6 months.
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
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Clientsageislessthan6months"""
      * language = #text/cql-identifier
      * expression = """Clientsageislessthan6months"""
* action[+]
  * title = "Client is due for Typhoid vaccination"
  * description = """Client is due for Typhoid vaccination
"Immunization recommendation status" = "Due"

WHO recommends the TCV as a 0.5 mL single dose for infants and children from 6 months of age and in adults up to 45 years in typhoid endemic regions. """
  * definitionCanonical = Canonical(DAK.DTO.ClientisdueforTyphoidvaccination)
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
      * description = """Clientsageisbetween6monthsand45years"""
      * language = #text/cql-identifier
      * expression = """Clientsageisbetween6monthsand45years"""
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
      * description = """Clientsageisbetween6monthsand45years"""
      * language = #text/cql-identifier
      * expression = """Clientsageisbetween6monthsand45years"""
* action[+]
  * title = "Clinical judgement is required. Create a clinical note"
  * description = """Clinical judgement is required. Create a clinical note
"Immunization recommendation status" = "Further evaluation needed"
"""
  * definitionCanonical = Canonical(DAK.DTO.Clinicaljudgementisrequired.Createaclinicalnote)
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
      * description = """Clientsageismorethanorequalto45years"""
      * language = #text/cql-identifier
      * expression = """Clientsageismorethanorequalto45years"""
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
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Notyphoidprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Notyphoidprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Clientsageismorethanorequalto45years"""
      * language = #text/cql-identifier
      * expression = """Clientsageismorethanorequalto45years"""
* action[+]
  * title = "Typhoid immunization schedule is complete"
  * description = """Typhoid immunization schedule is complete
"Immunization recommendation status" = "Complete"
"Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Typhoid vaccines")

Routine typhoid immunization schedule is complete. The potential need for revaccination with TCV is currently unclear. """
  * definitionCanonical = Canonical(DAK.DTO.Typhoidimmunizationscheduleiscomplete)
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
      * expression = """Typhoid immunization schedule is complete. One typhoid primary series dose was administered.
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
      * description = """Onetyphoidprimaryseriesdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """Onetyphoidprimaryseriesdosewasadministered"""

