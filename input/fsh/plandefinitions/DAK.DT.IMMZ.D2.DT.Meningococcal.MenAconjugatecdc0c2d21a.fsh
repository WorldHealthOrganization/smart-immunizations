Instance: DAK.DT.IMMZ.D2.DT.Meningococcal.MenAconjugatecdc0c2d21a
InstanceOf: DAK.IMMZ.D2.DT.Meningococcal.MenAconjugatevaccine1dose
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
  * citation = """WHO recommendations for routine immunization – summary tables (March 2023) (1)
Meningococcal A conjugate vaccine: updated guidance (Feburary 2015) (21)"""

* action[+]
  * title = "Client is not due for meningococcal vaccination"
  * description = """Client is not due for meningococcal vaccination
"Immunization recommendation status" = "Not due"

For MenA conjugate vaccine (5µg), a 1-dose schedule is recommended at 9–18 months of age based on local programmatic and epidemiologic considerations. 
Any children who miss vaccination at the recommended age should be vaccinated as soon as possible thereafter.
MenAfriVac 5 µg should be used for routine immunization of infants and young children aged 3 to 24 months. 
MenAfriVac 10 µg should be used for catch-up and periodic campaigns from 12 months of age onwards. """
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
      * expression = """Should not vaccinate client with meningococcal dose as client's age is under 9 months. 
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
      * description = """Clientsageismorethan9months"""
      * language = #text/cql-identifier
      * expression = """Clientsageismorethan9months"""
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
      * expression = """Should vaccinate client with meningococcal dose as no meningococcal dose was administered and client is within appropriate age range. 
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
      * description = """Clientsageismorethan9months"""
      * language = #text/cql-identifier
      * expression = """Clientsageismorethan9months"""
* action[+]
  * title = "Meningococcal immunization schedule is complete"
  * description = """Meningococcal immunization schedule is complete
"Immunization recommendation status" = "Complete"
"Completed the primary vaccination series" (where "Vaccine type" = "Meningococcal vaccines") = TRUE

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
      * expression = """Meningococcal immunization schedule is complete. One meningococcal primary series dose was administered. 
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

