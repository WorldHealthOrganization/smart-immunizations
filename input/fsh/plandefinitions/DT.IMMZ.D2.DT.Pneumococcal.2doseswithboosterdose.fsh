Instance: DT.IMMZ.D2.DT.Pneumococcal.2doseswithboosterdose
InstanceOf: DD.IMMZ.D2.DT.Pneumococcal.2doseswithboosterdose
Title: "Decision Table Determine required vaccinations"
Description: """Determine required vaccinations """
Usage: #definition
* meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareableplandefinition"
* meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishableplandefinition"
* library = Canonical(DTs.Pneumococcal)
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
* relatedArtifact[+]
  * type = #citation
  * citation = """Pneumococcal conjugate vaccines in infants and children under 5 years of age : WHO position paper (Feburary 2019) (10)"""
* relatedArtifact[+]
  * type = #citation
  * citation = """WHO recommendations for routine immunization – summary tables (March 2023) (1)"""

* action[+]
  * title = "Client is not due for pneumococcal vaccination"
  * description = """Client is not due for pneumococcal vaccination
"Immunization recommendation status" = "Not due"

For administration of pneumococcal vaccine to infants, WHO recommends a 3-dose schedule administered either as 2p+1 or as 3p+0, starting as early as 6 weeks of age. """
  * definitionCanonical = Canonical(DTO.Clientisnotdueforpneumococcalvaccination)
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
      * description = """Theclientsageislessthan6weeks"""
      * language = #text/cql-identifier
      * expression = """Theclientsageislessthan6weeks"""
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
      * expression = """Should not vaccinate client with first pneumococcal dose as client's age is less than 6 weeks. Check for any vaccines due and inform the caregiver of when to come back for the first dose."""
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
      * description = """Theclientsageislessthan6weeks"""
      * language = #text/cql-identifier
      * expression = """Theclientsageislessthan6weeks"""
* action[+]
  * title = "Client is due for pneumococcal vaccination"
  * description = """Client is due for pneumococcal vaccination
"Immunization recommendation status" = "Due"
"""
  * definitionCanonical = Canonical(DTO.Clientisdueforpneumococcalvaccination)
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
      * description = """Nopneumococcalprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Nopneumococcalprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Theclientsageisbetween6weeksand5years"""
      * language = #text/cql-identifier
      * expression = """Theclientsageisbetween6weeksand5years"""
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
      * expression = """Should vaccinate client with first pneumococcal dose as no pneumococcal doses were administered and client is within the appropriate age range.
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
      * description = """Nopneumococcalprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Nopneumococcalprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Theclientsageisbetween6weeksand5years"""
      * language = #text/cql-identifier
      * expression = """Theclientsageisbetween6weeksand5years"""
* action[+]
  * title = "Client is not due for pneumococcal vaccination"
  * description = """Client is not due for pneumococcal vaccination
"Immunization recommendation status" = "Not due"

If the 2p+1 schedule is selected, an interval of ≥8 weeks is recommended between the 2 primary doses. """
  * definitionCanonical = Canonical(DTO.Clientisnotdueforpneumococcalvaccination)
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
      * description = """Onepneumococcalprimaryseriesdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """Onepneumococcalprimaryseriesdosewasadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Theclientsageislessthanorequalto5years"""
      * language = #text/cql-identifier
      * expression = """Theclientsageislessthanorequalto5years"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thefirstpneumococcaldosewasadministeredwithin477c42fea2"""
      * language = #text/cql-identifier
      * expression = """Thefirstpneumococcaldosewasadministeredwithin477c42fea2"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatestpneumococcaldosewasadministeredlesst3ac08f4c59"""
      * language = #text/cql-identifier
      * expression = """Thelatestpneumococcaldosewasadministeredlesst3ac08f4c59"""
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
      * expression = """Should not vaccinate client with second pneumococcal dose as the latest pneumococcal dose was administered less than 8 weeks ago. 
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
      * description = """Onepneumococcalprimaryseriesdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """Onepneumococcalprimaryseriesdosewasadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Theclientsageislessthanorequalto5years"""
      * language = #text/cql-identifier
      * expression = """Theclientsageislessthanorequalto5years"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thefirstpneumococcaldosewasadministeredwithin477c42fea2"""
      * language = #text/cql-identifier
      * expression = """Thefirstpneumococcaldosewasadministeredwithin477c42fea2"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatestpneumococcaldosewasadministeredlesst3ac08f4c59"""
      * language = #text/cql-identifier
      * expression = """Thelatestpneumococcaldosewasadministeredlesst3ac08f4c59"""
* action[+]
  * title = "Client is due for pneumococcal vaccination"
  * description = """Client is due for pneumococcal vaccination
"Immunization recommendation status" = "Due"
"""
  * definitionCanonical = Canonical(DTO.Clientisdueforpneumococcalvaccination)
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
      * description = """Onepneumococcalprimaryseriesdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """Onepneumococcalprimaryseriesdosewasadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Theclientsageislessthanorequalto5years"""
      * language = #text/cql-identifier
      * expression = """Theclientsageislessthanorequalto5years"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thefirstpneumococcaldosewasadministeredwithin477c42fea2"""
      * language = #text/cql-identifier
      * expression = """Thefirstpneumococcaldosewasadministeredwithin477c42fea2"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatestpneumococcaldosewasadministeredmoret23b657edda"""
      * language = #text/cql-identifier
      * expression = """Thelatestpneumococcaldosewasadministeredmoret23b657edda"""
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
      * expression = """Should vaccinate client with second pneumococcal dose as the latest pneumococcal dose was administered more than 8 weeks ago. 
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
      * description = """Onepneumococcalprimaryseriesdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """Onepneumococcalprimaryseriesdosewasadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Theclientsageislessthanorequalto5years"""
      * language = #text/cql-identifier
      * expression = """Theclientsageislessthanorequalto5years"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thefirstpneumococcaldosewasadministeredwithin477c42fea2"""
      * language = #text/cql-identifier
      * expression = """Thefirstpneumococcaldosewasadministeredwithin477c42fea2"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatestpneumococcaldosewasadministeredmoret23b657edda"""
      * language = #text/cql-identifier
      * expression = """Thelatestpneumococcaldosewasadministeredmoret23b657edda"""
* action[+]
  * title = "Client is not due for pneumococcal vaccination"
  * description = """Client is not due for pneumococcal vaccination
"Immunization recommendation status" = "Not due"

Unvaccinated children aged 1–5 years who are at high risk for pneumococcal infection because of underlying medical conditions, such as HIV infection or sickle-cell disease, should receive at least 2 doses separated by at least 8 weeks. """
  * definitionCanonical = Canonical(DTO.Clientisnotdueforpneumococcalvaccination)
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
      * description = """Onepneumococcalprimaryseriesdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """Onepneumococcalprimaryseriesdosewasadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Theclientsageislessthanorequalto5years"""
      * language = #text/cql-identifier
      * expression = """Theclientsageislessthanorequalto5years"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thefirstpneumococcaldosewasadministeredafter213a541f758"""
      * language = #text/cql-identifier
      * expression = """Thefirstpneumococcaldosewasadministeredafter213a541f758"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatestpneumococcaldosewasadministeredlesst3ac08f4c59"""
      * language = #text/cql-identifier
      * expression = """Thelatestpneumococcaldosewasadministeredlesst3ac08f4c59"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Clientisathighriskforpneumococcalinfection"""
      * language = #text/cql-identifier
      * expression = """Clientisathighriskforpneumococcalinfection"""
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
      * expression = """Should not vaccinate client with second pneumococcal dose as the latest pneumococcal dose was administered less than 8 weeks ago and client is at high risk for pneumococcal infection. 
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
      * description = """Onepneumococcalprimaryseriesdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """Onepneumococcalprimaryseriesdosewasadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Theclientsageislessthanorequalto5years"""
      * language = #text/cql-identifier
      * expression = """Theclientsageislessthanorequalto5years"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thefirstpneumococcaldosewasadministeredafter213a541f758"""
      * language = #text/cql-identifier
      * expression = """Thefirstpneumococcaldosewasadministeredafter213a541f758"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatestpneumococcaldosewasadministeredlesst3ac08f4c59"""
      * language = #text/cql-identifier
      * expression = """Thelatestpneumococcaldosewasadministeredlesst3ac08f4c59"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Clientisathighriskforpneumococcalinfection"""
      * language = #text/cql-identifier
      * expression = """Clientisathighriskforpneumococcalinfection"""
* action[+]
  * title = "Client is due for pneumococcal vaccination"
  * description = """Client is due for pneumococcal vaccination
"Immunization recommendation status" = "Due"
"""
  * definitionCanonical = Canonical(DTO.Clientisdueforpneumococcalvaccination)
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
      * description = """Onepneumococcalprimaryseriesdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """Onepneumococcalprimaryseriesdosewasadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Theclientsageislessthanorequalto5years"""
      * language = #text/cql-identifier
      * expression = """Theclientsageislessthanorequalto5years"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thefirstpneumococcaldosewasadministeredafter213a541f758"""
      * language = #text/cql-identifier
      * expression = """Thefirstpneumococcaldosewasadministeredafter213a541f758"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatestpneumococcaldosewasadministeredmoret23b657edda"""
      * language = #text/cql-identifier
      * expression = """Thelatestpneumococcaldosewasadministeredmoret23b657edda"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Clientisathighriskforpneumococcalinfection"""
      * language = #text/cql-identifier
      * expression = """Clientisathighriskforpneumococcalinfection"""
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
      * expression = """Should vaccinate client with second pneumococcal dose as the latest pneumococcal dose was administered more than 8 weeks ago and client is at high risk for pneumococcal infection. 
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
      * description = """Onepneumococcalprimaryseriesdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """Onepneumococcalprimaryseriesdosewasadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Theclientsageislessthanorequalto5years"""
      * language = #text/cql-identifier
      * expression = """Theclientsageislessthanorequalto5years"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thefirstpneumococcaldosewasadministeredafter213a541f758"""
      * language = #text/cql-identifier
      * expression = """Thefirstpneumococcaldosewasadministeredafter213a541f758"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatestpneumococcaldosewasadministeredmoret23b657edda"""
      * language = #text/cql-identifier
      * expression = """Thelatestpneumococcaldosewasadministeredmoret23b657edda"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Clientisathighriskforpneumococcalinfection"""
      * language = #text/cql-identifier
      * expression = """Clientisathighriskforpneumococcalinfection"""
* action[+]
  * title = "Pneumococcal immunization schedule is complete"
  * description = """Pneumococcal immunization schedule is complete
"Immunization recommendation status" = "Complete"
"Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Pneumococcal vaccines")

Catch-up vaccination can be done with a single dose of vaccine for children aged 24 months and older. Pneumococcal immunization schedule is complete. """
  * definitionCanonical = Canonical(DTO.Pneumococcalimmunizationscheduleiscomplete)
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
      * description = """Onepneumococcalprimaryseriesdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """Onepneumococcalprimaryseriesdosewasadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Theclientsageislessthanorequalto5years"""
      * language = #text/cql-identifier
      * expression = """Theclientsageislessthanorequalto5years"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thefirstpneumococcaldosewasadministeredafter213a541f758"""
      * language = #text/cql-identifier
      * expression = """Thefirstpneumococcaldosewasadministeredafter213a541f758"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Clientisnotathighriskforpneumococcalinfection"""
      * language = #text/cql-identifier
      * expression = """Clientisnotathighriskforpneumococcalinfection"""
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
      * expression = """Pneumococcal immunization schedule is complete. One primary series dose was administered. 
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
      * description = """Onepneumococcalprimaryseriesdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """Onepneumococcalprimaryseriesdosewasadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Theclientsageislessthanorequalto5years"""
      * language = #text/cql-identifier
      * expression = """Theclientsageislessthanorequalto5years"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thefirstpneumococcaldosewasadministeredafter213a541f758"""
      * language = #text/cql-identifier
      * expression = """Thefirstpneumococcaldosewasadministeredafter213a541f758"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Clientisnotathighriskforpneumococcalinfection"""
      * language = #text/cql-identifier
      * expression = """Clientisnotathighriskforpneumococcalinfection"""
* action[+]
  * title = "Client is due for pneumococcal booster dose"
  * description = """Client is due for pneumococcal booster dose
"Immunization recommendation status" = "Due"

For the 2p+1 schedule, the booster dose should be given at 9–18 months of age, according to programmatic considerations; there is no defined minimum or maximum interval between the primary series and the booster dose. """
  * definitionCanonical = Canonical(DTO.Clientisdueforpneumococcalboosterdose)
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
      * description = """Twopneumococcalprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Twopneumococcalprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Nopneumococcalboosterdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """Nopneumococcalboosterdosewasadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Theclientsageislessthanorequalto5years"""
      * language = #text/cql-identifier
      * expression = """Theclientsageislessthanorequalto5years"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thefirstpneumococcaldosewasadministeredwithin6428b56fee"""
      * language = #text/cql-identifier
      * expression = """Thefirstpneumococcaldosewasadministeredwithin6428b56fee"""
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
      * expression = """Should vaccinate client with first pneumococcal booster dose as first pneumococcal dose was administered within 12 months post birth. 
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
      * description = """Twopneumococcalprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Twopneumococcalprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Nopneumococcalboosterdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """Nopneumococcalboosterdosewasadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Theclientsageislessthanorequalto5years"""
      * language = #text/cql-identifier
      * expression = """Theclientsageislessthanorequalto5years"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thefirstpneumococcaldosewasadministeredwithin6428b56fee"""
      * language = #text/cql-identifier
      * expression = """Thefirstpneumococcaldosewasadministeredwithin6428b56fee"""
* action[+]
  * title = "Pneumococcal immunization schedule is complete"
  * description = """Pneumococcal immunization schedule is complete
"Immunization recommendation status" = "Complete"
"Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Pneumococcal vaccines")

Doses for those who start vaccination late: 2 doses for children aged 12–24 months and 2 doses for children aged 1–5 years who are at high risk. Pneumococcal immunization schedule is complete. """
  * definitionCanonical = Canonical(DTO.Pneumococcalimmunizationscheduleiscomplete)
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
      * description = """Twopneumococcalprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Twopneumococcalprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Nopneumococcalboosterdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """Nopneumococcalboosterdosewasadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Theclientsageislessthanorequalto5years"""
      * language = #text/cql-identifier
      * expression = """Theclientsageislessthanorequalto5years"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thefirstpneumococcaldosewasadministeredafter1246bd6e5dd"""
      * language = #text/cql-identifier
      * expression = """Thefirstpneumococcaldosewasadministeredafter1246bd6e5dd"""
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
      * expression = """Pneumococcal immunization schedule is complete. Two pneumococcal primary series doses were administered. 
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
      * description = """Twopneumococcalprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Twopneumococcalprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Nopneumococcalboosterdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """Nopneumococcalboosterdosewasadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Theclientsageislessthanorequalto5years"""
      * language = #text/cql-identifier
      * expression = """Theclientsageislessthanorequalto5years"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thefirstpneumococcaldosewasadministeredafter1246bd6e5dd"""
      * language = #text/cql-identifier
      * expression = """Thefirstpneumococcaldosewasadministeredafter1246bd6e5dd"""
* action[+]
  * title = "Client is not due for pneumococcal booster dose"
  * description = """Client is not due for pneumococcal booster dose
"Immunization recommendation status" = "Not due"

HIV-positive infants and preterm neonates who have received their 3 primary vaccine doses before 12 months of age may benefit from a booster dose in the second year of life. There is no defined minimum or maximum interval between the primary series 
and the booster dose. """
  * definitionCanonical = Canonical(DTO.Clientisnotdueforpneumococcalboosterdose)
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
      * description = """Twopneumococcalprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Twopneumococcalprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Onepneumococcalboosterdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """Onepneumococcalboosterdosewasadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Theclientsageislessthan12months"""
      * language = #text/cql-identifier
      * expression = """Theclientsageislessthan12months"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """ClientsHIVstatusispositive"""
      * language = #text/cql-identifier
      * expression = """ClientsHIVstatusispositive"""
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
      * expression = """Should not vaccinate client with second pneumococcal booster dose as client's age is less than 12 months and client is HIV positive. 
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
      * description = """Twopneumococcalprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Twopneumococcalprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Onepneumococcalboosterdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """Onepneumococcalboosterdosewasadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Theclientsageislessthan12months"""
      * language = #text/cql-identifier
      * expression = """Theclientsageislessthan12months"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """ClientsHIVstatusispositive"""
      * language = #text/cql-identifier
      * expression = """ClientsHIVstatusispositive"""
* action[+]
  * title = "Client is not due for pneumococcal booster dose"
  * description = """Client is not due for pneumococcal booster dose
"Immunization recommendation status" = "Not due"
"""
  * definitionCanonical = Canonical(DTO.Clientisnotdueforpneumococcalboosterdose)
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
      * description = """Twopneumococcalprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Twopneumococcalprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Onepneumococcalboosterdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """Onepneumococcalboosterdosewasadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Theclientsageislessthan12months"""
      * language = #text/cql-identifier
      * expression = """Theclientsageislessthan12months"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Clienthadpretermbirth"""
      * language = #text/cql-identifier
      * expression = """Clienthadpretermbirth"""
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
      * expression = """Should not vaccinate client with second pneumococcal booster dose as client's age is less than 12 months and client had preterm birth. 
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
      * description = """Twopneumococcalprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Twopneumococcalprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Onepneumococcalboosterdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """Onepneumococcalboosterdosewasadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Theclientsageislessthan12months"""
      * language = #text/cql-identifier
      * expression = """Theclientsageislessthan12months"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Clienthadpretermbirth"""
      * language = #text/cql-identifier
      * expression = """Clienthadpretermbirth"""
* action[+]
  * title = "Client is due for pneumococcal booster dose"
  * description = """Client is due for pneumococcal booster dose
"Immunization recommendation status" = "Due"
"""
  * definitionCanonical = Canonical(DTO.Clientisdueforpneumococcalboosterdose)
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
      * description = """Twopneumococcalprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Twopneumococcalprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Onepneumococcalboosterdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """Onepneumococcalboosterdosewasadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Theclientsageismorethanorequalto12monthsandlea2a2ef4e18"""
      * language = #text/cql-identifier
      * expression = """Theclientsageismorethanorequalto12monthsandlea2a2ef4e18"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatestpneumococcaldosewasadministeredwithia9c6b634e9"""
      * language = #text/cql-identifier
      * expression = """Thelatestpneumococcaldosewasadministeredwithia9c6b634e9"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """ClientsHIVstatusispositive"""
      * language = #text/cql-identifier
      * expression = """ClientsHIVstatusispositive"""
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
      * expression = """Should vaccinate client with second pneumococcal booster dose as client is HIV positive and latest pneumococcal dose was administered within 12 months post birth.
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
      * description = """Twopneumococcalprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Twopneumococcalprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Onepneumococcalboosterdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """Onepneumococcalboosterdosewasadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Theclientsageismorethanorequalto12monthsandlea2a2ef4e18"""
      * language = #text/cql-identifier
      * expression = """Theclientsageismorethanorequalto12monthsandlea2a2ef4e18"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatestpneumococcaldosewasadministeredwithia9c6b634e9"""
      * language = #text/cql-identifier
      * expression = """Thelatestpneumococcaldosewasadministeredwithia9c6b634e9"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """ClientsHIVstatusispositive"""
      * language = #text/cql-identifier
      * expression = """ClientsHIVstatusispositive"""
* action[+]
  * title = "Client is due for pneumococcal booster dose"
  * description = """Client is due for pneumococcal booster dose
"Immunization recommendation status" = "Due"
"""
  * definitionCanonical = Canonical(DTO.Clientisdueforpneumococcalboosterdose)
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
      * description = """Twopneumococcalprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Twopneumococcalprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Onepneumococcalboosterdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """Onepneumococcalboosterdosewasadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Theclientsageismorethanorequalto12monthsandlea2a2ef4e18"""
      * language = #text/cql-identifier
      * expression = """Theclientsageismorethanorequalto12monthsandlea2a2ef4e18"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatestpneumococcaldosewasadministeredwithia9c6b634e9"""
      * language = #text/cql-identifier
      * expression = """Thelatestpneumococcaldosewasadministeredwithia9c6b634e9"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Clienthadpretermbirth"""
      * language = #text/cql-identifier
      * expression = """Clienthadpretermbirth"""
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
      * expression = """Should vaccinate client with second pneumococcal booster dose as client had preterm birth and latest pneumococcal dose was administered within 12 months post birth.
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
      * description = """Twopneumococcalprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Twopneumococcalprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Onepneumococcalboosterdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """Onepneumococcalboosterdosewasadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Theclientsageismorethanorequalto12monthsandlea2a2ef4e18"""
      * language = #text/cql-identifier
      * expression = """Theclientsageismorethanorequalto12monthsandlea2a2ef4e18"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatestpneumococcaldosewasadministeredwithia9c6b634e9"""
      * language = #text/cql-identifier
      * expression = """Thelatestpneumococcaldosewasadministeredwithia9c6b634e9"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Clienthadpretermbirth"""
      * language = #text/cql-identifier
      * expression = """Clienthadpretermbirth"""
* action[+]
  * title = "Pneumococcal immunization schedule is complete"
  * description = """Pneumococcal immunization schedule is complete
"Immunization recommendation status" = "Complete"
"""
  * definitionCanonical = Canonical(DTO.Pneumococcalimmunizationscheduleiscomplete)
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
      * description = """Twopneumococcalprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Twopneumococcalprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Onepneumococcalboosterdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """Onepneumococcalboosterdosewasadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Theclientsageismorethanorequalto12monthsandlea2a2ef4e18"""
      * language = #text/cql-identifier
      * expression = """Theclientsageismorethanorequalto12monthsandlea2a2ef4e18"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatestpneumococcaldosewasadministeredafter61726bfb88"""
      * language = #text/cql-identifier
      * expression = """Thelatestpneumococcaldosewasadministeredafter61726bfb88"""
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
      * expression = """Pneumococcal immunization schedule is complete.  Two pneumococcal primary series doses and one booster dose were administered.
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
      * description = """Twopneumococcalprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Twopneumococcalprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Onepneumococcalboosterdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """Onepneumococcalboosterdosewasadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Theclientsageismorethanorequalto12monthsandlea2a2ef4e18"""
      * language = #text/cql-identifier
      * expression = """Theclientsageismorethanorequalto12monthsandlea2a2ef4e18"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatestpneumococcaldosewasadministeredafter61726bfb88"""
      * language = #text/cql-identifier
      * expression = """Thelatestpneumococcaldosewasadministeredafter61726bfb88"""
* action[+]
  * title = "Pneumococcal immunization schedule is complete"
  * description = """Pneumococcal immunization schedule is complete
"Immunization recommendation status" = "Complete"

- """
  * definitionCanonical = Canonical(DTO.Pneumococcalimmunizationscheduleiscomplete)
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
      * description = """Twopneumococcalprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Twopneumococcalprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Onepneumococcalboosterdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """Onepneumococcalboosterdosewasadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """ClientsHIVstatusisnegativeorunknown"""
      * language = #text/cql-identifier
      * expression = """ClientsHIVstatusisnegativeorunknown"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Clientdidnothavepretermbirth"""
      * language = #text/cql-identifier
      * expression = """Clientdidnothavepretermbirth"""
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
      * expression = """Pneumococcal immunization schedule is complete.  Two pneumococcal primary series doses and one booster dose were administered.
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
      * description = """Twopneumococcalprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Twopneumococcalprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Onepneumococcalboosterdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """Onepneumococcalboosterdosewasadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """ClientsHIVstatusisnegativeorunknown"""
      * language = #text/cql-identifier
      * expression = """ClientsHIVstatusisnegativeorunknown"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Clientdidnothavepretermbirth"""
      * language = #text/cql-identifier
      * expression = """Clientdidnothavepretermbirth"""
* action[+]
  * title = "Pneumococcal immunization schedule is complete"
  * description = """Pneumococcal immunization schedule is complete
"Immunization recommendation status" = "Complete"
"""
  * definitionCanonical = Canonical(DTO.Pneumococcalimmunizationscheduleiscomplete)
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
      * description = """Twopneumococcalprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Twopneumococcalprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Onepneumococcalboosterdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """Onepneumococcalboosterdosewasadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Theclientsageismorethanorequalto24months"""
      * language = #text/cql-identifier
      * expression = """Theclientsageismorethanorequalto24months"""
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
      * expression = """Pneumococcal immunization schedule is complete.  Two pneumococcal primary series doses and one booster dose were administered.
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
      * description = """Twopneumococcalprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Twopneumococcalprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Onepneumococcalboosterdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """Onepneumococcalboosterdosewasadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Theclientsageismorethanorequalto24months"""
      * language = #text/cql-identifier
      * expression = """Theclientsageismorethanorequalto24months"""
* action[+]
  * title = "Pneumococcal immunization schedule is complete"
  * description = """Pneumococcal immunization schedule is complete
"Immunization recommendation status" = "Complete"
"""
  * definitionCanonical = Canonical(DTO.Pneumococcalimmunizationscheduleiscomplete)
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
      * description = """Twopneumococcalprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Twopneumococcalprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Twopneumococcalboosterdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Twopneumococcalboosterdoseswereadministered"""
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
      * expression = """Pneumococcal immunization schedule is complete. Two pneumococcal primary series doses and two booster doses were administered. 
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
      * description = """Twopneumococcalprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Twopneumococcalprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Twopneumococcalboosterdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Twopneumococcalboosterdoseswereadministered"""
* action[+]
  * title = "Clinical judgement is required. Create a clinical note"
  * description = """Clinical judgement is required. Create a clinical note
"Immunization recommendation status" = "Further evaluation needed"

WHO does not currently have recommendations on the use of pneumococcal vaccine in individuals aged over 5 years.
For considerations on pneumococcal vaccination in older adults, see the WHO position paper Pneumococcal conjugate vaccines in infants and children under 5 years of age (10). """
  * definitionCanonical = Canonical(DTO.Clinicaljudgementisrequired.Createaclinicalnote)
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
      * description = """Theclientsageismorethan5years"""
      * language = #text/cql-identifier
      * expression = """Theclientsageismorethan5years"""
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
      * expression = """Members States should update this action according to the national immunization programme."""
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
      * description = """Theclientsageismorethan5years"""
      * language = #text/cql-identifier
      * expression = """Theclientsageismorethan5years"""

