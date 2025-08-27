Instance: DAK.DT.IMMZ.D2.DT.HepatitisB.4doses
InstanceOf: DAK.IMMZ.D2.DT.HepatitisB.4doses
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
  * title = "Client is not due for a hepatitis B vaccination"
  * description = """Client is not due for a hepatitis B vaccination
"Immunization recommendation status" = "Not due"

Monovalent birth dose is followed by 3 (monovalent or combined
vaccine) doses, usually given with other routine infant vaccines; the additional dose does not cause any harm. The interval between doses should be at least 4 weeks. """
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
      * description = """NohepatitisBprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """NohepatitisBprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """ClientsageislessthanMemberStatesdefinedlowerlimit"""
      * language = #text/cql-identifier
      * expression = """ClientsageislessthanMemberStatesdefinedlowerlimit"""
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
      * expression = """Should not vaccinate client with first hepatitis B dose as client's age is not within appropriate age range.
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
      * description = """NohepatitisBprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """NohepatitisBprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """ClientsageislessthanMemberStatesdefinedlowerlimit"""
      * language = #text/cql-identifier
      * expression = """ClientsageislessthanMemberStatesdefinedlowerlimit"""
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
      * description = """NohepatitisBprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """NohepatitisBprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """ClientsageismorethanorequaltoMemberStatesdefi1977bcfb70"""
      * language = #text/cql-identifier
      * expression = """ClientsageismorethanorequaltoMemberStatesdefi1977bcfb70"""
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
      * expression = """Should vaccinate client with first hepatitis B dose as client's age is within appropriate age range.
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
      * description = """NohepatitisBprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """NohepatitisBprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """ClientsageismorethanorequaltoMemberStatesdefi1977bcfb70"""
      * language = #text/cql-identifier
      * expression = """ClientsageismorethanorequaltoMemberStatesdefi1977bcfb70"""
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
      * description = """OnehepatitisBprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """OnehepatitisBprimaryseriesdoseswereadministered"""
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
      * description = """OnehepatitisBprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """OnehepatitisBprimaryseriesdoseswereadministered"""
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
      * description = """OnehepatitisBprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """OnehepatitisBprimaryseriesdoseswereadministered"""
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
      * expression = """Should vaccinate client with second hepatitis B dose as the latest hepatitis B dose was administered more than 4 weeks ago.
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
      * description = """OnehepatitisBprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """OnehepatitisBprimaryseriesdoseswereadministered"""
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
      * description = """TwohepatitisBprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """TwohepatitisBprimaryseriesdoseswereadministered"""
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
      * expression = """Should not vaccinate client with third hepatitis B dose as the latest Hepatitis B dose was administered less than 4 weeks ago.
Check for any other vaccines due, and inform the caregiver of when to come back for the third dose."""
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
      * description = """TwohepatitisBprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """TwohepatitisBprimaryseriesdoseswereadministered"""
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
      * description = """TwohepatitisBprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """TwohepatitisBprimaryseriesdoseswereadministered"""
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
      * expression = """Should vaccinate client with third hepatitis B dose as the latest Hepatitis B dose was administered more than 4 weeks ago.
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
      * description = """TwohepatitisBprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """TwohepatitisBprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """ThelatesthepatitisBdosewasadministeredmorethan4weeksago"""
      * language = #text/cql-identifier
      * expression = """ThelatesthepatitisBdosewasadministeredmorethan4weeksago"""
* action[+]
  * title = "Hepatitis B immunization schedule is complete"
  * description = """Hepatitis B immunization schedule is complete
'"Immunization recommendation status" = "Complete"
"Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Hepatitis B-containing vaccines")

- """
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
      * description = """ThreehepatitisBprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """ThreehepatitisBprimaryseriesdoseswereadministered"""
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
      * expression = """The hepatitis B immunization schedule is complete. Three hepatitis B primary series doses were administered.
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
      * description = """ThreehepatitisBprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """ThreehepatitisBprimaryseriesdoseswereadministered"""

