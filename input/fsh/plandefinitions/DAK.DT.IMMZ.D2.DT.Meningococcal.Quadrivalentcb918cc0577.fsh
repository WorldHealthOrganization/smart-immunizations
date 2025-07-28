Instance: DAK.DT.IMMZ.D2.DT.Meningococcal.Quadrivalentcb918cc0577
InstanceOf: DAK.IMMZ.D2.DT.Meningococcal.Quadrivalentconjaff237c087
Title: "Decision Table Determine required vaccinations"
Description: """Determine required vaccinations """
Usage: #definition
* meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareableplandefinition"
* meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishableplandefinition"
* library = Canonical(DAK.DTs.Meningococcal)
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

Quadrivalent conjugate vaccines (A,C,W135,Y-D and A,C,W135,Y-CRM) should be administered as one single intramuscular dose to individuals aged ≥ 2 years.
A,C,W135,Y-D is also licensed for children aged 9–23 months and given as a 2-dose series 3 months apart, beginning at 9 months of age. """
  * definitionCanonical = Canonical(DAK.DTO.Clientisnotdueformeningococcalvaccination)
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
      * expression = """Should not vaccinate client with first meningococcal dose as client's age is less than 9 months. 
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
      * description = """Clientsageislessthan9months"""
      * language = #text/cql-identifier
      * expression = """Clientsageislessthan9months"""
* action[+]
  * title = "Client is due for meningococcal vaccination"
  * description = """Client is due for meningococcal vaccination
"Immunization recommendation status" = "Due"
"""
  * definitionCanonical = Canonical(DAK.DTO.Clientisdueformeningococcalvaccination)
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
      * description = """Clientsageismorethanorequalto9months"""
      * language = #text/cql-identifier
      * expression = """Clientsageismorethanorequalto9months"""
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
      * expression = """Should vaccinate client with first meningococcal dose as no meningococcal doses were administered and client is within appropriate age range.
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
      * description = """Clientsageismorethanorequalto9months"""
      * language = #text/cql-identifier
      * expression = """Clientsageismorethanorequalto9months"""
* action[+]
  * title = "Client is not due for meningococcal vaccination"
  * description = """Client is not due for meningococcal vaccination
"Immunization recommendation status" = "Not due"
"""
  * definitionCanonical = Canonical(DAK.DTO.Clientisnotdueformeningococcalvaccination)
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
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Clientsagewaslessthanorequalto23monthswhenthe4726ccffea"""
      * language = #text/cql-identifier
      * expression = """Clientsagewaslessthanorequalto23monthswhenthe4726ccffea"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatestmeningococcaldosewasadministeredlesse921e7d38e"""
      * language = #text/cql-identifier
      * expression = """Thelatestmeningococcaldosewasadministeredlesse921e7d38e"""
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
      * expression = """Should not vaccinate client with second meningococcal dose as the latest meningococcal dose was administered less than 3 months ago. 
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
      * description = """Onemeningococcalprimaryseriesdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """Onemeningococcalprimaryseriesdosewasadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Clientsagewaslessthanorequalto23monthswhenthe4726ccffea"""
      * language = #text/cql-identifier
      * expression = """Clientsagewaslessthanorequalto23monthswhenthe4726ccffea"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatestmeningococcaldosewasadministeredlesse921e7d38e"""
      * language = #text/cql-identifier
      * expression = """Thelatestmeningococcaldosewasadministeredlesse921e7d38e"""
* action[+]
  * title = "Client is due for meningococcal vaccination"
  * description = """Client is due for meningococcal vaccination
"Immunization recommendation status" = "Due"
"""
  * definitionCanonical = Canonical(DAK.DTO.Clientisdueformeningococcalvaccination)
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
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Clientsagewaslessthanorequalto23monthswhenthe4726ccffea"""
      * language = #text/cql-identifier
      * expression = """Clientsagewaslessthanorequalto23monthswhenthe4726ccffea"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatestmeningococcaldosewasadministeredmore1847a634bc"""
      * language = #text/cql-identifier
      * expression = """Thelatestmeningococcaldosewasadministeredmore1847a634bc"""
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
      * expression = """Should vaccinate client with second meningococcal dose as client's age was less than 23 months when the primary series was started and the latest meningococcal dose was administered more than 3 months ago. 
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
      * description = """Onemeningococcalprimaryseriesdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """Onemeningococcalprimaryseriesdosewasadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Clientsagewaslessthanorequalto23monthswhenthe4726ccffea"""
      * language = #text/cql-identifier
      * expression = """Clientsagewaslessthanorequalto23monthswhenthe4726ccffea"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatestmeningococcaldosewasadministeredmore1847a634bc"""
      * language = #text/cql-identifier
      * expression = """Thelatestmeningococcaldosewasadministeredmore1847a634bc"""
* action[+]
  * title = "Meningococcal immunization schedule is complete"
  * description = """Meningococcal immunization schedule is complete
"Immunization recommendation status" = "Complete"
"Completed the primary vaccination series" (where "Vaccine type" = "Meningococcal vaccines") = TRUE
"""
  * definitionCanonical = Canonical(DAK.DTO.Meningococcalimmunizationscheduleiscomplete)
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
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Clientsagewasmorethan23monthswhentheprimaryse2b57d6a349"""
      * language = #text/cql-identifier
      * expression = """Clientsagewasmorethan23monthswhentheprimaryse2b57d6a349"""
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
      * expression = """Meningococcal immunization schedule is complete as client's age was more than 23 months when primary series was started. One primary series dose was administered. 
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
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Clientsagewasmorethan23monthswhentheprimaryse2b57d6a349"""
      * language = #text/cql-identifier
      * expression = """Clientsagewasmorethan23monthswhentheprimaryse2b57d6a349"""
* action[+]
  * title = "Meningococcal immunization schedule is complete"
  * description = """Meningococcal immunization schedule is complete
"Immunization recommendation status" = "Complete"
"Completed the primary vaccination series" (where "Vaccine type" = "Meningococcal vaccines") = TRUE
"""
  * definitionCanonical = Canonical(DAK.DTO.Meningococcalimmunizationscheduleiscomplete)
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
      * description = """Twomeningococcalprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Twomeningococcalprimaryseriesdoseswereadministered"""
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
      * expression = """Meningococcal immunization schedule is complete. Two primary series doses were administered. 
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
      * description = """Twomeningococcalprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Twomeningococcalprimaryseriesdoseswereadministered"""

