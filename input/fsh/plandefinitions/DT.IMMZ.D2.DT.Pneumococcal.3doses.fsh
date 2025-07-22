Instance: DT.IMMZ.D2.DT.Pneumococcal.3doses
InstanceOf: DD.IMMZ.D2.DT.Pneumococcal.3doses
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
      * expression = """Should not vaccinate client with first pneumococcal dose as client's age is less than 6 weeks. 
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

If the 3p+0 schedule is used, a minimum interval of 4 weeks should be maintained between doses. """
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
      * description = """Theclientsageislessthanorequaltofiveyears"""
      * language = #text/cql-identifier
      * expression = """Theclientsageislessthanorequaltofiveyears"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thefirstpneumococcaldosewasadministeredwithin6428b56fee"""
      * language = #text/cql-identifier
      * expression = """Thefirstpneumococcaldosewasadministeredwithin6428b56fee"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatestpneumococcaldosewasadministeredlesst5736bd08d3"""
      * language = #text/cql-identifier
      * expression = """Thelatestpneumococcaldosewasadministeredlesst5736bd08d3"""
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
      * expression = """Should not vaccinate client with second pneumococcal dose as the latest pneumococcal dose was administered less than 4 weeks ago. 
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
      * description = """Theclientsageislessthanorequaltofiveyears"""
      * language = #text/cql-identifier
      * expression = """Theclientsageislessthanorequaltofiveyears"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thefirstpneumococcaldosewasadministeredwithin6428b56fee"""
      * language = #text/cql-identifier
      * expression = """Thefirstpneumococcaldosewasadministeredwithin6428b56fee"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatestpneumococcaldosewasadministeredlesst5736bd08d3"""
      * language = #text/cql-identifier
      * expression = """Thelatestpneumococcaldosewasadministeredlesst5736bd08d3"""
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
      * description = """Theclientsageislessthanorequaltofiveyears"""
      * language = #text/cql-identifier
      * expression = """Theclientsageislessthanorequaltofiveyears"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thefirstpneumococcaldosewasadministeredwithin6428b56fee"""
      * language = #text/cql-identifier
      * expression = """Thefirstpneumococcaldosewasadministeredwithin6428b56fee"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatestpneumococcaldosewasadministeredmoret2a9d221daf"""
      * language = #text/cql-identifier
      * expression = """Thelatestpneumococcaldosewasadministeredmoret2a9d221daf"""
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
      * expression = """Should vaccinate client with second pneumococcal dose as first dose was administered within 12 months post birth and latest pneumococcal dose was administered more than 4 weeks ago.
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
      * description = """Theclientsageislessthanorequaltofiveyears"""
      * language = #text/cql-identifier
      * expression = """Theclientsageislessthanorequaltofiveyears"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thefirstpneumococcaldosewasadministeredwithin6428b56fee"""
      * language = #text/cql-identifier
      * expression = """Thefirstpneumococcaldosewasadministeredwithin6428b56fee"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatestpneumococcaldosewasadministeredmoret2a9d221daf"""
      * language = #text/cql-identifier
      * expression = """Thelatestpneumococcaldosewasadministeredmoret2a9d221daf"""
* action[+]
  * title = "Client is not due for pneumococcal vaccination"
  * description = """Client is not due for pneumococcal vaccination
"Immunization recommendation status" = "Not due"
"""
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
      * description = """Theclientsageislessthanorequaltofiveyears"""
      * language = #text/cql-identifier
      * expression = """Theclientsageislessthanorequaltofiveyears"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thefirstpneumococcaldosewasadministeredat12240702e38a96"""
      * language = #text/cql-identifier
      * expression = """Thefirstpneumococcaldosewasadministeredat12240702e38a96"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatestpneumococcaldosewasadministeredlesst5736bd08d3"""
      * language = #text/cql-identifier
      * expression = """Thelatestpneumococcaldosewasadministeredlesst5736bd08d3"""
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
      * expression = """Should not vaccinate client with second pneumococcal dose as the latest pneumococcal dose was administered less than 4 weeks ago. Check for any other vaccines due and inform the caregiver of when to come back for the next dose."""
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
      * description = """Theclientsageislessthanorequaltofiveyears"""
      * language = #text/cql-identifier
      * expression = """Theclientsageislessthanorequaltofiveyears"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thefirstpneumococcaldosewasadministeredat12240702e38a96"""
      * language = #text/cql-identifier
      * expression = """Thefirstpneumococcaldosewasadministeredat12240702e38a96"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatestpneumococcaldosewasadministeredlesst5736bd08d3"""
      * language = #text/cql-identifier
      * expression = """Thelatestpneumococcaldosewasadministeredlesst5736bd08d3"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Clientisnotathighriskforpneumococcalinfection"""
      * language = #text/cql-identifier
      * expression = """Clientisnotathighriskforpneumococcalinfection"""
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
      * description = """Theclientsageislessthanorequaltofiveyears"""
      * language = #text/cql-identifier
      * expression = """Theclientsageislessthanorequaltofiveyears"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thefirstpneumococcaldosewasadministeredat12240702e38a96"""
      * language = #text/cql-identifier
      * expression = """Thefirstpneumococcaldosewasadministeredat12240702e38a96"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatestpneumococcaldosewasadministeredmoret2a9d221daf"""
      * language = #text/cql-identifier
      * expression = """Thelatestpneumococcaldosewasadministeredmoret2a9d221daf"""
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
      * expression = """Should vaccinate client with second pneumococcal dose as the latest pneumococcal dose was administered more than 4 weeks ago and client is not at high risk for pneumococcal infection.
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
      * description = """Theclientsageislessthanorequaltofiveyears"""
      * language = #text/cql-identifier
      * expression = """Theclientsageislessthanorequaltofiveyears"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thefirstpneumococcaldosewasadministeredat12240702e38a96"""
      * language = #text/cql-identifier
      * expression = """Thefirstpneumococcaldosewasadministeredat12240702e38a96"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatestpneumococcaldosewasadministeredmoret2a9d221daf"""
      * language = #text/cql-identifier
      * expression = """Thelatestpneumococcaldosewasadministeredmoret2a9d221daf"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Clientisnotathighriskforpneumococcalinfection"""
      * language = #text/cql-identifier
      * expression = """Clientisnotathighriskforpneumococcalinfection"""
* action[+]
  * title = "Client is not due for pneumococcal vaccination"
  * description = """Client is not due for pneumococcal vaccination
"Immunization recommendation status" = "Not due"

Unvaccinated children aged 1–5 years who are at high risk for pneumococcal infection because of underlying medical conditions, such as HIV infection or sickle-cell disease, should receive at least 2 doses separated by at least 8 weeks """
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
      * description = """Theclientsageislessthanorequaltofiveyears"""
      * language = #text/cql-identifier
      * expression = """Theclientsageislessthanorequaltofiveyears"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thefirstpneumococcaldosewasadministeredat12240702e38a96"""
      * language = #text/cql-identifier
      * expression = """Thefirstpneumococcaldosewasadministeredat12240702e38a96"""
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
      * description = """Theclientsageislessthanorequaltofiveyears"""
      * language = #text/cql-identifier
      * expression = """Theclientsageislessthanorequaltofiveyears"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thefirstpneumococcaldosewasadministeredat12240702e38a96"""
      * language = #text/cql-identifier
      * expression = """Thefirstpneumococcaldosewasadministeredat12240702e38a96"""
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
      * description = """Theclientsageislessthanorequaltofiveyears"""
      * language = #text/cql-identifier
      * expression = """Theclientsageislessthanorequaltofiveyears"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thefirstpneumococcaldosewasadministeredat12240702e38a96"""
      * language = #text/cql-identifier
      * expression = """Thefirstpneumococcaldosewasadministeredat12240702e38a96"""
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
      * description = """Theclientsageislessthanorequaltofiveyears"""
      * language = #text/cql-identifier
      * expression = """Theclientsageislessthanorequaltofiveyears"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thefirstpneumococcaldosewasadministeredat12240702e38a96"""
      * language = #text/cql-identifier
      * expression = """Thefirstpneumococcaldosewasadministeredat12240702e38a96"""
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
  * title = "Client is not due for pneumococcal vaccination"
  * description = """Client is not due for pneumococcal vaccination
"Immunization recommendation status" = "Not due"
"""
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
      * description = """Theclientsageislessthanorequaltofiveyears"""
      * language = #text/cql-identifier
      * expression = """Theclientsageislessthanorequaltofiveyears"""
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
      * description = """Theclientsageislessthanorequaltofiveyears"""
      * language = #text/cql-identifier
      * expression = """Theclientsageislessthanorequaltofiveyears"""
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
      * description = """Theclientsageislessthanorequaltofiveyears"""
      * language = #text/cql-identifier
      * expression = """Theclientsageislessthanorequaltofiveyears"""
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
      * expression = """Should vaccinate client with second pneumococcal dose as first dose was administered 24 months post birth, latest pneumococcal dose was administered more than 8 weeks ago and client is at high risk for pneumococcal infection.
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
      * description = """Theclientsageislessthanorequaltofiveyears"""
      * language = #text/cql-identifier
      * expression = """Theclientsageislessthanorequaltofiveyears"""
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

Catch-up vaccination can be done with a single dose of vaccine for children ≥24 months. Pneumococcal immunization schedule is complete. """
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
      * description = """Theclientsageislessthanorequaltofiveyears"""
      * language = #text/cql-identifier
      * expression = """Theclientsageislessthanorequaltofiveyears"""
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
      * expression = """Pneumococcal immunization schedule is complete. One pneumococcal dose was administered. 
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
      * description = """Theclientsageislessthanorequaltofiveyears"""
      * language = #text/cql-identifier
      * expression = """Theclientsageislessthanorequaltofiveyears"""
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
  * title = "Client is not due for pneumococcal vaccination"
  * description = """Client is not due for pneumococcal vaccination
"Immunization recommendation status" = "Not due"

If the 3p+0 schedule is used, a minimum interval of 4 weeks should be maintained between doses. """
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
      * description = """Twopneumococcalprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Twopneumococcalprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Theclientsageislessthanorequaltofiveyears"""
      * language = #text/cql-identifier
      * expression = """Theclientsageislessthanorequaltofiveyears"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thefirstpneumococcaldosewasadministeredwithin6428b56fee"""
      * language = #text/cql-identifier
      * expression = """Thefirstpneumococcaldosewasadministeredwithin6428b56fee"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatestpneumococcaldosewasadministeredlesst5736bd08d3"""
      * language = #text/cql-identifier
      * expression = """Thelatestpneumococcaldosewasadministeredlesst5736bd08d3"""
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
      * expression = """Should not vaccinate client with third pneumococcal dose as client's age is less than 5 years and latest pneumococcal dose was administered less than 4 weeks ago. 
Check for any vaccines due and inform the caregiver of when to come back for the next dose"""
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
      * description = """Theclientsageislessthanorequaltofiveyears"""
      * language = #text/cql-identifier
      * expression = """Theclientsageislessthanorequaltofiveyears"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thefirstpneumococcaldosewasadministeredwithin6428b56fee"""
      * language = #text/cql-identifier
      * expression = """Thefirstpneumococcaldosewasadministeredwithin6428b56fee"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatestpneumococcaldosewasadministeredlesst5736bd08d3"""
      * language = #text/cql-identifier
      * expression = """Thelatestpneumococcaldosewasadministeredlesst5736bd08d3"""
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
      * description = """Twopneumococcalprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Twopneumococcalprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Theclientsageislessthanorequaltofiveyears"""
      * language = #text/cql-identifier
      * expression = """Theclientsageislessthanorequaltofiveyears"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thefirstpneumococcaldosewasadministeredwithin6428b56fee"""
      * language = #text/cql-identifier
      * expression = """Thefirstpneumococcaldosewasadministeredwithin6428b56fee"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatestpneumococcaldosewasadministeredmoret2a9d221daf"""
      * language = #text/cql-identifier
      * expression = """Thelatestpneumococcaldosewasadministeredmoret2a9d221daf"""
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
      * expression = """Should vaccinate client with third pneumococcal dose as client's age is less than 5 yers and latest pneumococcal dose was administered more than 4 weeks ago.
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
      * description = """Theclientsageislessthanorequaltofiveyears"""
      * language = #text/cql-identifier
      * expression = """Theclientsageislessthanorequaltofiveyears"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thefirstpneumococcaldosewasadministeredwithin6428b56fee"""
      * language = #text/cql-identifier
      * expression = """Thefirstpneumococcaldosewasadministeredwithin6428b56fee"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatestpneumococcaldosewasadministeredmoret2a9d221daf"""
      * language = #text/cql-identifier
      * expression = """Thelatestpneumococcaldosewasadministeredmoret2a9d221daf"""
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
      * description = """Theclientsageislessthanorequaltofiveyears"""
      * language = #text/cql-identifier
      * expression = """Theclientsageislessthanorequaltofiveyears"""
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
      * expression = """Pneumococcal immunization schedule is complete. Two pneumococcal pneumococcal doses were administered. 
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
      * description = """Theclientsageislessthanorequaltofiveyears"""
      * language = #text/cql-identifier
      * expression = """Theclientsageislessthanorequaltofiveyears"""
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

HIV-positive infants and preterm neonates who have received their 3 primary vaccine doses before 12 months of age may benefit from a booster dose in the second year of life. """
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
      * description = """Threepneumococcalprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Threepneumococcalprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Nopneumococcalboosterdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """Nopneumococcalboosterdosewasadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Theclientsageislessthan24months"""
      * language = #text/cql-identifier
      * expression = """Theclientsageislessthan24months"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatestpneumococcaldosewasadministeredwithia9c6b634e9"""
      * language = #text/cql-identifier
      * expression = """Thelatestpneumococcaldosewasadministeredwithia9c6b634e9"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatestpneumococcaldosewasadministeredlesst3ac08f4c59"""
      * language = #text/cql-identifier
      * expression = """Thelatestpneumococcaldosewasadministeredlesst3ac08f4c59"""
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
      * expression = """Should not vaccinate client with pneumococcal booster dose as latest pneumococcal dose was administered within 12 months post birth and administered less than 8 weeks ago. 
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
      * description = """Threepneumococcalprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Threepneumococcalprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Nopneumococcalboosterdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """Nopneumococcalboosterdosewasadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Theclientsageislessthan24months"""
      * language = #text/cql-identifier
      * expression = """Theclientsageislessthan24months"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatestpneumococcaldosewasadministeredwithia9c6b634e9"""
      * language = #text/cql-identifier
      * expression = """Thelatestpneumococcaldosewasadministeredwithia9c6b634e9"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatestpneumococcaldosewasadministeredlesst3ac08f4c59"""
      * language = #text/cql-identifier
      * expression = """Thelatestpneumococcaldosewasadministeredlesst3ac08f4c59"""
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
      * description = """Threepneumococcalprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Threepneumococcalprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Nopneumococcalboosterdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """Nopneumococcalboosterdosewasadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Theclientsageislessthan24months"""
      * language = #text/cql-identifier
      * expression = """Theclientsageislessthan24months"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatestpneumococcaldosewasadministeredwithia9c6b634e9"""
      * language = #text/cql-identifier
      * expression = """Thelatestpneumococcaldosewasadministeredwithia9c6b634e9"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatestpneumococcaldosewasadministeredlesst3ac08f4c59"""
      * language = #text/cql-identifier
      * expression = """Thelatestpneumococcaldosewasadministeredlesst3ac08f4c59"""
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
      * expression = """Should not vaccinate client with pneumococcal booster dose as latest pneumococcal dose was administered within 12 months post birth and administered less than 8 weeks ago. 
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
      * description = """Threepneumococcalprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Threepneumococcalprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Nopneumococcalboosterdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """Nopneumococcalboosterdosewasadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Theclientsageislessthan24months"""
      * language = #text/cql-identifier
      * expression = """Theclientsageislessthan24months"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatestpneumococcaldosewasadministeredwithia9c6b634e9"""
      * language = #text/cql-identifier
      * expression = """Thelatestpneumococcaldosewasadministeredwithia9c6b634e9"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatestpneumococcaldosewasadministeredlesst3ac08f4c59"""
      * language = #text/cql-identifier
      * expression = """Thelatestpneumococcaldosewasadministeredlesst3ac08f4c59"""
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
      * description = """Threepneumococcalprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Threepneumococcalprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Nopneumococcalboosterdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """Nopneumococcalboosterdosewasadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Theclientsageislessthan24months"""
      * language = #text/cql-identifier
      * expression = """Theclientsageislessthan24months"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatestpneumococcaldosewasadministeredwithia9c6b634e9"""
      * language = #text/cql-identifier
      * expression = """Thelatestpneumococcaldosewasadministeredwithia9c6b634e9"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatestpneumococcaldosewasadministeredmoret23b657edda"""
      * language = #text/cql-identifier
      * expression = """Thelatestpneumococcaldosewasadministeredmoret23b657edda"""
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
      * expression = """Should vaccinate client with pneumococcal booster dose as client is HIV positive and latest pneumococcal dose was administered within 12 months post birth and administered more than 8 weeks ago .
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
      * description = """Threepneumococcalprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Threepneumococcalprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Nopneumococcalboosterdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """Nopneumococcalboosterdosewasadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Theclientsageislessthan24months"""
      * language = #text/cql-identifier
      * expression = """Theclientsageislessthan24months"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatestpneumococcaldosewasadministeredwithia9c6b634e9"""
      * language = #text/cql-identifier
      * expression = """Thelatestpneumococcaldosewasadministeredwithia9c6b634e9"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatestpneumococcaldosewasadministeredmoret23b657edda"""
      * language = #text/cql-identifier
      * expression = """Thelatestpneumococcaldosewasadministeredmoret23b657edda"""
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
      * description = """Threepneumococcalprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Threepneumococcalprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Nopneumococcalboosterdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """Nopneumococcalboosterdosewasadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Theclientsageislessthan24months"""
      * language = #text/cql-identifier
      * expression = """Theclientsageislessthan24months"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatestpneumococcaldosewasadministeredwithia9c6b634e9"""
      * language = #text/cql-identifier
      * expression = """Thelatestpneumococcaldosewasadministeredwithia9c6b634e9"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatestpneumococcaldosewasadministeredmoret23b657edda"""
      * language = #text/cql-identifier
      * expression = """Thelatestpneumococcaldosewasadministeredmoret23b657edda"""
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
      * expression = """Should vaccinate client with pneumococcal booster dose as client had preterm birth and latest pneumococcal dose was administered within 12 months post birth and administered more than 8 weeks ago.
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
      * description = """Threepneumococcalprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Threepneumococcalprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Nopneumococcalboosterdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """Nopneumococcalboosterdosewasadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Theclientsageislessthan24months"""
      * language = #text/cql-identifier
      * expression = """Theclientsageislessthan24months"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatestpneumococcaldosewasadministeredwithia9c6b634e9"""
      * language = #text/cql-identifier
      * expression = """Thelatestpneumococcaldosewasadministeredwithia9c6b634e9"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatestpneumococcaldosewasadministeredmoret23b657edda"""
      * language = #text/cql-identifier
      * expression = """Thelatestpneumococcaldosewasadministeredmoret23b657edda"""
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
"Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Pneumococcal vaccines")
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
      * description = """Threepneumococcalprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Threepneumococcalprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Nopneumococcalboosterdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """Nopneumococcalboosterdosewasadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Theclientsageislessthan24months"""
      * language = #text/cql-identifier
      * expression = """Theclientsageislessthan24months"""
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
      * expression = """Pneumococcal immunization schedule is complete. Three pneumococcal primary serie doses were administered. 
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
      * description = """Threepneumococcalprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Threepneumococcalprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Nopneumococcalboosterdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """Nopneumococcalboosterdosewasadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Theclientsageislessthan24months"""
      * language = #text/cql-identifier
      * expression = """Theclientsageislessthan24months"""
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
"Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Pneumococcal vaccines")

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
      * description = """Threepneumococcalprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Threepneumococcalprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Nopneumococcalboosterdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """Nopneumococcalboosterdosewasadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Theclientsageislessthan24months"""
      * language = #text/cql-identifier
      * expression = """Theclientsageislessthan24months"""
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
      * expression = """Pneumococcal immunization schedule is complete. Three pneumococcal primary series doses were administered. 
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
      * description = """Threepneumococcalprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Threepneumococcalprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Nopneumococcalboosterdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """Nopneumococcalboosterdosewasadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Theclientsageislessthan24months"""
      * language = #text/cql-identifier
      * expression = """Theclientsageislessthan24months"""
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
"Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Pneumococcal vaccines")
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
      * description = """Threepneumococcalprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Threepneumococcalprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Nopneumococcalboosterdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """Nopneumococcalboosterdosewasadministered"""
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
      * expression = """Pneumococcal immunization schedule is complete. Three pneumococcal primary series doses were administered. 
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
      * description = """Threepneumococcalprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Threepneumococcalprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Nopneumococcalboosterdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """Nopneumococcalboosterdosewasadministered"""
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
      * description = """Threepneumococcalprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Threepneumococcalprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Onepneumococcalboosterdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """Onepneumococcalboosterdosewasadministered"""
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
      * expression = """Pneumococcal immunization schedule is complete. Three pneumococcal primary series doses and one booster dose were administered. 
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
      * description = """Threepneumococcalprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Threepneumococcalprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Onepneumococcalboosterdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """Onepneumococcalboosterdosewasadministered"""
* action[+]
  * title = "Clinical judgement is required. Create a clinical note."
  * description = """Clinical judgement is required. Create a clinical note.
"Immunization recommendation status" = "Further evaluation needed"

WHO does not currently have recommendations on the use of pneumococcal vaccine in individuals over 5 years of age.
For considerations on pneumococcal vaccination in older adults, see the concept note Considerations for pneumococcal vaccination in older adults (11). """
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
      * expression = """Members States should update this action according to the national immunization programme"""
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

