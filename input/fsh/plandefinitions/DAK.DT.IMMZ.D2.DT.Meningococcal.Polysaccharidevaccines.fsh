Instance: DAK.DT.IMMZ.D2.DT.Meningococcal.Polysaccharidevaccines
InstanceOf: DAK.IMMZ.D2.DT.Meningococcal.Polysaccharidevaccines
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
* relatedArtifact[+]
  * type = #citation
  * citation = """WHO recommendations for routine immunization – summary tables (March 2023) (1)"""
* relatedArtifact[+]
  * type = #citation
  * citation = """WHO recommendations for routine immunization – summary tables (March 2023) (1)"""
* relatedArtifact[+]
  * type = #citation
  * citation = """WHO recommendations for routine immunization – summary tables (March 2023) (1)"""
* relatedArtifact[+]
  * type = #citation
  * citation = """WHO recommendations for routine immunization – summary tables (March 2023) (1)"""

* action[+]
  * title = "Client is not due for meningococcal vaccination"
  * description = """Client is not due for meningococcal vaccination
"Immunization recommendation status" = "Not due"

Polysaccharide vaccines should be administered to individuals aged ≥ 2 years as one single dose. """
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
      * description = """Numberofmeningococcalprimaryseriesdosesadministered"""
      * language = #text/cql-identifier
      * expression = """Numberofmeningococcalprimaryseriesdosesadministered"""
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
      * expression = """Should not vaccinate client with first meningococcal dose as client's age is less than 2 years. Check for any other vaccines due and inform the caregiver of when to come back for the first dose."""
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
      * description = """Numberofmeningococcalprimaryseriesdosesadministered"""
      * language = #text/cql-identifier
      * expression = """Numberofmeningococcalprimaryseriesdosesadministered"""
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
      * description = """Clientsageismorethan2years"""
      * language = #text/cql-identifier
      * expression = """Clientsageismorethan2years"""
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
      * description = """Clientsageismorethan2years"""
      * language = #text/cql-identifier
      * expression = """Clientsageismorethan2years"""
* action[+]
  * title = "The primary series is complete. Client is not due for meningococcal booster dose."
  * description = """The primary series is complete. Client is not due for meningococcal booster dose.
"Immunization recommendation status" = "Not due"
"Completed the primary vaccination series" (where "Vaccine type" = "Meningococcal vaccines") = TRUE

One booster 3–5 years after the primary dose may be given to persons considered to be a continued high risk of exposure, including some health workers. """
  * definitionCanonical = Canonical(DAK.DTO.Theprimaryseriesiscomplete.Clientisno4a98ee5dad)
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
      * description = """Thelatestmeningococcaldosewasadministeredlessce2656741d"""
      * language = #text/cql-identifier
      * expression = """Thelatestmeningococcaldosewasadministeredlessce2656741d"""
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
      * expression = """Should not vaccinate client with meningococcal booster dose as the latest meningococcal dose was administered less than 3 years ago.
Check for any other vaccines due and inform the caregiver of when to come back for the booster dose."""
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
      * description = """Thelatestmeningococcaldosewasadministeredlessce2656741d"""
      * language = #text/cql-identifier
      * expression = """Thelatestmeningococcaldosewasadministeredlessce2656741d"""
* action[+]
  * title = "The primary series is complete. Clinical judgement is required for meningococcal booster dose. Create a clinical note"
  * description = """The primary series is complete. Clinical judgement is required for meningococcal booster dose. Create a clinical note
"Immunization recommendation status" = "Further evaluation needed"
"Completed the primary vaccination series" (where "Vaccine type" = "Meningococcal vaccines") = TRUE
"""
  * definitionCanonical = Canonical(DAK.DTO.Theprimaryseriesiscomplete.Clinicaljuc448289675)
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
      * description = """Thelatestmeningococcaldosewasadministeredmore750db6ed0d"""
      * language = #text/cql-identifier
      * expression = """Thelatestmeningococcaldosewasadministeredmore750db6ed0d"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Nomeningococcalboosterdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """Nomeningococcalboosterdosewasadministered"""
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
      * expression = """May administer meningococcal booster dose if the client is considered to be at continued high risk of exposure. Evaluate the client and use clinical judgement."""
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
      * description = """Thelatestmeningococcaldosewasadministeredmore750db6ed0d"""
      * language = #text/cql-identifier
      * expression = """Thelatestmeningococcaldosewasadministeredmore750db6ed0d"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Nomeningococcalboosterdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """Nomeningococcalboosterdosewasadministered"""
* action[+]
  * title = "Meningococcal immunization schedule is complete"
  * description = """Meningococcal immunization schedule is complete
"Immunization recommendation status" = "Complete"

– """
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
      * description = """Thelatestmeningococcaldosewasadministeredmore750db6ed0d"""
      * language = #text/cql-identifier
      * expression = """Thelatestmeningococcaldosewasadministeredmore750db6ed0d"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Meningococcalboosterdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """Meningococcalboosterdosewasadministered"""
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
      * expression = """Meningococcal immunization schedule is complete. One primary series dose and one booster dose have been administered.
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
      * description = """Thelatestmeningococcaldosewasadministeredmore750db6ed0d"""
      * language = #text/cql-identifier
      * expression = """Thelatestmeningococcaldosewasadministeredmore750db6ed0d"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Meningococcalboosterdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """Meningococcalboosterdosewasadministered"""

