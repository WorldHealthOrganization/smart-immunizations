Instance: DAK.DT.IMMZ.D2.DT.HepatitisB.Delayedstart
InstanceOf: DAK.IMMZ.D2.DT.HepatitisB.Delayedstart
Title: "Decision Table Determine required vaccinations"
Description: """Determine required vaccinations """
Usage: #definition
* meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareableplandefinition"
* meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishableplandefinition"
* library = Canonical(DAK.DTs.HepatitisB)
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
  * title = "Client is due for hepatitis B vaccination"
  * description = """Client is due for hepatitis B vaccination
"Immunization recommendation status" = "Due"

If delayed or interrupted scheduling of vaccination for children, adolescents and adults, 3 doses are recommended, with the second dose administered at least 1 month after the first, and the third dose 6 months after the first dose. If the vaccination schedule is interrupted, it is not necessary to restart the vaccine series. """
  * definitionCanonical = Canonical(DAK.DTO.ClientisdueforhepatitisBvaccination)
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
      * description = """NohepatitisBdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """NohepatitisBdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """ClientsageismorethanMemberStatesdefinedlowerlimit"""
      * language = #text/cql-identifier
      * expression = """ClientsageismorethanMemberStatesdefinedlowerlimit"""
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
      * expression = """Should vaccinate client with first hepatitis B dose as hepatitis B birth dose was not administered. The first hepatitis B dose should be administered as soon as possible.  
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
      * description = """NohepatitisBdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """NohepatitisBdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """ClientsageismorethanMemberStatesdefinedlowerlimit"""
      * language = #text/cql-identifier
      * expression = """ClientsageismorethanMemberStatesdefinedlowerlimit"""
* action[+]
  * title = "Client is not due for a hepatitis B vaccination"
  * description = """Client is not due for a hepatitis B vaccination
"Immunization recommendation status" = "Not due"
"""
  * definitionCanonical = Canonical(DAK.DTO.ClientisnotdueforahepatitisBvaccination)
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
      * description = """OnehepatitisBdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """OnehepatitisBdosewasadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """ThelatesthepatitisBdosewasadministeredlessthan4weeksago"""
      * language = #text/cql-identifier
      * expression = """ThelatesthepatitisBdosewasadministeredlessthan4weeksago"""
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
      * expression = """Should not vaccinate client with second hepatitis B dose as the latest hepatitis B dose was administered less than 4 weeks ago. 
Check for any other vaccines due, and inform the caregiver of when to come back for the next dose."""
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
      * description = """OnehepatitisBdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """OnehepatitisBdosewasadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """ThelatesthepatitisBdosewasadministeredlessthan4weeksago"""
      * language = #text/cql-identifier
      * expression = """ThelatesthepatitisBdosewasadministeredlessthan4weeksago"""
* action[+]
  * title = "Client is due for a hepatitis B vaccination"
  * description = """Client is due for a hepatitis B vaccination
"Immunization recommendation status" = "Due"
"""
  * definitionCanonical = Canonical(DAK.DTO.ClientisdueforahepatitisBvaccination)
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
      * description = """OnehepatitisBdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """OnehepatitisBdosewasadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """ThelatesthepatitisBdosewasadministeredmorethan4weeksago"""
      * language = #text/cql-identifier
      * expression = """ThelatesthepatitisBdosewasadministeredmorethan4weeksago"""
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
      * expression = """Should vaccinate client with second hepatitis B dose as the latest hepatitis B dose was administered less than 4 weeks ago. 
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
      * description = """OnehepatitisBdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """OnehepatitisBdosewasadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """ThelatesthepatitisBdosewasadministeredmorethan4weeksago"""
      * language = #text/cql-identifier
      * expression = """ThelatesthepatitisBdosewasadministeredmorethan4weeksago"""
* action[+]
  * title = "Client is not due for a hepatitis B vaccination"
  * description = """Client is not due for a hepatitis B vaccination
"Immunization recommendation status" = "Not due"
"""
  * definitionCanonical = Canonical(DAK.DTO.ClientisnotdueforahepatitisBvaccination)
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
      * description = """TwohepatitisBdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """TwohepatitisBdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """ThelatesthepatitisBdosewasadministeredlessthan4weeksago"""
      * language = #text/cql-identifier
      * expression = """ThelatesthepatitisBdosewasadministeredlessthan4weeksago"""
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
      * expression = """Should not vaccinate client with second hepatitis B dose as the latest hepatitis B dose was administered less than 4 weeks ago. Two hepatitis B doses have been administered to the client. 
Check for any other vaccines due, and inform the caregiver of when to come back for the next dose."""
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
      * description = """TwohepatitisBdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """TwohepatitisBdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """ThelatesthepatitisBdosewasadministeredlessthan4weeksago"""
      * language = #text/cql-identifier
      * expression = """ThelatesthepatitisBdosewasadministeredlessthan4weeksago"""
* action[+]
  * title = "Client is not due for a hepatitis B vaccination"
  * description = """Client is not due for a hepatitis B vaccination
"Immunization recommendation status" = "Not due"
"""
  * definitionCanonical = Canonical(DAK.DTO.ClientisnotdueforahepatitisBvaccination)
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
      * description = """TwohepatitisBdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """TwohepatitisBdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """ThelatesthepatitisBdosewasadministeredmorethan4weeksago"""
      * language = #text/cql-identifier
      * expression = """ThelatesthepatitisBdosewasadministeredmorethan4weeksago"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """ThefirsthepatitisBdosewasadministeredlessthan6monthsago"""
      * language = #text/cql-identifier
      * expression = """ThefirsthepatitisBdosewasadministeredlessthan6monthsago"""
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
      * expression = """Should not vaccinate client with third hepatitis B dose as the first hepatitis B dose was administered less than 6 months ago. 
Check for any other vaccines due, and inform the caregiver of when to come back for the next dose."""
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
      * description = """TwohepatitisBdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """TwohepatitisBdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """ThelatesthepatitisBdosewasadministeredmorethan4weeksago"""
      * language = #text/cql-identifier
      * expression = """ThelatesthepatitisBdosewasadministeredmorethan4weeksago"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """ThefirsthepatitisBdosewasadministeredlessthan6monthsago"""
      * language = #text/cql-identifier
      * expression = """ThefirsthepatitisBdosewasadministeredlessthan6monthsago"""
* action[+]
  * title = "Client is due for a hepatitis B vaccination"
  * description = """Client is due for a hepatitis B vaccination
"Immunization recommendation status" = "Due"
"""
  * definitionCanonical = Canonical(DAK.DTO.ClientisdueforahepatitisBvaccination)
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
      * description = """TwohepatitisBdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """TwohepatitisBdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """ThelatesthepatitisBdosewasadministeredmorethan4weeksago"""
      * language = #text/cql-identifier
      * expression = """ThelatesthepatitisBdosewasadministeredmorethan4weeksago"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """ThefirsthepatitisBdosewasadministeredmorethan6monthsago"""
      * language = #text/cql-identifier
      * expression = """ThefirsthepatitisBdosewasadministeredmorethan6monthsago"""
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
      * expression = """Should vaccinate client with third hepatitis B dose as the first hepatitis B dose was administered more than 6 months ago and the latest hepatitis B dose was administered more than 4 weeks ago. 
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
      * description = """TwohepatitisBdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """TwohepatitisBdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """ThelatesthepatitisBdosewasadministeredmorethan4weeksago"""
      * language = #text/cql-identifier
      * expression = """ThelatesthepatitisBdosewasadministeredmorethan4weeksago"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """ThefirsthepatitisBdosewasadministeredmorethan6monthsago"""
      * language = #text/cql-identifier
      * expression = """ThefirsthepatitisBdosewasadministeredmorethan6monthsago"""
* action[+]
  * title = "Hepatitis B immunization schedule is complete"
  * description = """Hepatitis B immunization schedule is complete
'"Immunization recommendation status" = "Complete"
"Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Hepatitis B-containing vaccines")

– """
  * definitionCanonical = Canonical(DAK.DTO.HepatitisBimmunizationscheduleiscomplete)
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
      * description = """ThreehepatitisBdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """ThreehepatitisBdoseswereadministered"""
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
      * expression = """Hepatitis B immunization schedule is complete. Three hepatitis B primary series doses were administered. 
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
      * description = """ThreehepatitisBdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """ThreehepatitisBdoseswereadministered"""

