Instance: DT.IMMZ.D2.DT.Meningococcal.Quadrivalentconju3a1ac7c4f8
InstanceOf: DD.IMMZ.D2.DT.Meningococcal.Quadrivalentconjucb7fe13691
Title: "Decision Table Determine required vaccinations"
Description: """Determine required vaccinations """
Usage: #definition
* meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareableplandefinition"
* meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishableplandefinition"
* library = Canonical(DTs.Meningococcal)
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
  * title = "Client is not due for meningococcal vaccination"
  * description = """Client is not due for meningococcal vaccination
"Immunization recommendation status" = "Not due"

Quadrivalent conjugate vaccine A,C,W135,Y-CRM should be administered as one single intramuscular dose to individuals aged ≥ 2 years. """
  * definitionCanonical = Canonical(DTO.Clientisnotdueformeningococcalvaccination)
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
      * expression = """Should not vaccinate client with first meningococcal dose as client's age is less than 2 years.
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
      * description = """Clientsageislessthan2years"""
      * language = #text/cql-identifier
      * expression = """Clientsageislessthan2years"""
* action[+]
  * title = "Client is due for meningococcal vaccination"
  * description = """Client is due for meningococcal vaccination
"Immunization recommendation status" = "Due"
"""
  * definitionCanonical = Canonical(DTO.Clientisdueformeningococcalvaccination)
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
      * description = """Nomeningococcalprimaryseriesdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """Nomeningococcalprimaryseriesdosewasadministered"""
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
      * expression = """Should vaccinate client with first meningococcal dose as no meningococcal dose was administered and client's age is within appropriate age range.
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
      * description = """Nomeningococcalprimaryseriesdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """Nomeningococcalprimaryseriesdosewasadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Clientsageismorethanorequalto2years"""
      * language = #text/cql-identifier
      * expression = """Clientsageismorethanorequalto2years"""
* action[+]
  * title = "Meningococcal immunization schedule is complete"
  * description = """Meningococcal immunization schedule is complete
"Immunization recommendation status" = "Complete"
"Completed the primary vaccination series" (where "Vaccine type" = "Meningococcal vaccines") = TRUE
"""
  * definitionCanonical = Canonical(DTO.Meningococcalimmunizationscheduleiscomplete)
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
      * description = """Onemeningococcalprimaryseriesdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """Onemeningococcalprimaryseriesdosewasadministered"""
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
      * expression = """Meningococcal immunization schedule is complete. One primary series dose was administered.
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
      * description = """Onemeningococcalprimaryseriesdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """Onemeningococcalprimaryseriesdosewasadministered"""

