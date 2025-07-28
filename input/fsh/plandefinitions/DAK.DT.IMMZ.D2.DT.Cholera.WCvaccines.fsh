Instance: DAK.DT.IMMZ.D2.DT.Cholera.WCvaccines
InstanceOf: DAK.IMMZ.D2.DT.Cholera.WCvaccines
Title: "Decision Table Determine required vaccinations"
Description: """Determine required vaccinations """
Usage: #definition
* meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareableplandefinition"
* meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishableplandefinition"
* library = Canonical(DAK.DTs.Cholera)
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
  * title = "Client is not due for cholera vaccination"
  * description = """Client is not due for cholera vaccination
"Immunization recommendation status" = "Not due"

For WC vaccines (Shanchol, Euvchol and mORCVAX), 2 doses should be given 14 days apart to individuals aged ≥ 1 year. """
  * definitionCanonical = Canonical(DAK.DTO.Clientisnotdueforcholeravaccination)
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
      * description = """Clientsageislessthan1year"""
      * language = #text/cql-identifier
      * expression = """Clientsageislessthan1year"""
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
      * expression = """Should not vaccinate client with cholera dose as client's age is under 1 year.
Check for any vaccines due and inform the caregiver of when to come back for the first cholera dose."""
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
      * description = """Clientsageislessthan1year"""
      * language = #text/cql-identifier
      * expression = """Clientsageislessthan1year"""
* action[+]
  * title = "Client is due for cholera vaccination"
  * description = """Client is due for cholera vaccination
"Immunization recommendation status" = "Due"
"""
  * definitionCanonical = Canonical(DAK.DTO.Clientisdueforcholeravaccination)
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
      * description = """Clientsageismorethanorequalto1year"""
      * language = #text/cql-identifier
      * expression = """Clientsageismorethanorequalto1year"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Nocholeraprimaryseriesdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """Nocholeraprimaryseriesdosewasadministered"""
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
      * expression = """Should vaccinate client with cholera dose as no doses have been given."""
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
      * description = """Clientsageismorethanorequalto1year"""
      * language = #text/cql-identifier
      * expression = """Clientsageismorethanorequalto1year"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Nocholeraprimaryseriesdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """Nocholeraprimaryseriesdosewasadministered"""
* action[+]
  * title = "Client is not due for cholera vaccination"
  * description = """Client is not due for cholera vaccination
"Immunization recommendation status" = "Not due"
"""
  * definitionCanonical = Canonical(DAK.DTO.Clientisnotdueforcholeravaccination)
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
      * description = """Clientsageismorethanorequalto1year"""
      * language = #text/cql-identifier
      * expression = """Clientsageismorethanorequalto1year"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Onecholeraprimaryseriesdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """Onecholeraprimaryseriesdosewasadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatestcholeradosewasadministeredlessthan14daysago"""
      * language = #text/cql-identifier
      * expression = """Thelatestcholeradosewasadministeredlessthan14daysago"""
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
      * expression = """Should not vaccinate client with cholera dose as the latest cholera dose was administered less than 14 days ago.
Check for any vaccines due and inform the caregiver of when to come back for the next dose."""
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
      * description = """Clientsageismorethanorequalto1year"""
      * language = #text/cql-identifier
      * expression = """Clientsageismorethanorequalto1year"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Onecholeraprimaryseriesdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """Onecholeraprimaryseriesdosewasadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatestcholeradosewasadministeredlessthan14daysago"""
      * language = #text/cql-identifier
      * expression = """Thelatestcholeradosewasadministeredlessthan14daysago"""
* action[+]
  * title = "Client is due for cholera vaccination"
  * description = """Client is due for cholera vaccination
"Immunization recommendation status" = "Due"

– """
  * definitionCanonical = Canonical(DAK.DTO.Clientisdueforcholeravaccination)
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
      * description = """Clientsageismorethanorequalto1year"""
      * language = #text/cql-identifier
      * expression = """Clientsageismorethanorequalto1year"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Onecholeraprimaryseriesdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """Onecholeraprimaryseriesdosewasadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatestcholeradosewasadministeredmorethan14daysago"""
      * language = #text/cql-identifier
      * expression = """Thelatestcholeradosewasadministeredmorethan14daysago"""
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
      * expression = """Should vaccinate client with cholera dose as the latest cholera dose was administered more than 14 days ago.
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
      * description = """Clientsageismorethanorequalto1year"""
      * language = #text/cql-identifier
      * expression = """Clientsageismorethanorequalto1year"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Onecholeraprimaryseriesdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """Onecholeraprimaryseriesdosewasadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatestcholeradosewasadministeredmorethan14daysago"""
      * language = #text/cql-identifier
      * expression = """Thelatestcholeradosewasadministeredmorethan14daysago"""
* action[+]
  * title = "Primary series is complete. Client is not due for cholera booster dose"
  * description = """Primary series is complete. Client is not due for cholera booster dose
"Immunization recommendation status" = "Not due"
"Completed the primary vaccination series" (where "Vaccine type" = "Cholera vaccines") = TRUE

Revaccination is recommended where there is continued risk of Vibrio cholerae infection. For WC vaccines, revaccination is recommended after 3 years. """
  * definitionCanonical = Canonical(DAK.DTO.Primaryseriesiscomplete.Clientisnotdub81778991b)
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
      * description = """Clientsageismorethanorequalto1year"""
      * language = #text/cql-identifier
      * expression = """Clientsageismorethanorequalto1year"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Twocholeraprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Twocholeraprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Nocholeraboosterseriesdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """Nocholeraboosterseriesdosewasadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatestcholeradosewasadministeredlessthan3yearsago"""
      * language = #text/cql-identifier
      * expression = """Thelatestcholeradosewasadministeredlessthan3yearsago"""
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
      * expression = """Should not vaccinate client with cholera booster dose as primary series was completed less than 3 years ago.
Check for any vaccines due and inform the caregiver of when to come back for the first booster dose."""
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
      * description = """Clientsageismorethanorequalto1year"""
      * language = #text/cql-identifier
      * expression = """Clientsageismorethanorequalto1year"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Twocholeraprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Twocholeraprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Nocholeraboosterseriesdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """Nocholeraboosterseriesdosewasadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatestcholeradosewasadministeredlessthan3yearsago"""
      * language = #text/cql-identifier
      * expression = """Thelatestcholeradosewasadministeredlessthan3yearsago"""
* action[+]
  * title = "Primary series is complete. Client is due for cholera booster dose"
  * description = """Primary series is complete. Client is due for cholera booster dose
"Immunization recommendation status" = "Due"
"Completed the primary vaccination series" (where "Vaccine type" = "Cholera vaccines") = TRUE
"""
  * definitionCanonical = Canonical(DAK.DTO.Primaryseriesiscomplete.Clientisduefobe1222f320)
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
      * description = """Clientsageismorethanorequalto1year"""
      * language = #text/cql-identifier
      * expression = """Clientsageismorethanorequalto1year"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Twocholeraprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Twocholeraprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Nocholeraboosterseriesdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """Nocholeraboosterseriesdosewasadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatestcholeradosewasadministeredmorethan3yearsago"""
      * language = #text/cql-identifier
      * expression = """Thelatestcholeradosewasadministeredmorethan3yearsago"""
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
      * expression = """Should vaccinate client with cholera dose as the primary series for cholera was completed more than 3 years ago. 
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
      * description = """Clientsageismorethanorequalto1year"""
      * language = #text/cql-identifier
      * expression = """Clientsageismorethanorequalto1year"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Twocholeraprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Twocholeraprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Nocholeraboosterseriesdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """Nocholeraboosterseriesdosewasadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatestcholeradosewasadministeredmorethan3yearsago"""
      * language = #text/cql-identifier
      * expression = """Thelatestcholeradosewasadministeredmorethan3yearsago"""
* action[+]
  * title = "Client is not due for cholera booster dose"
  * description = """Client is not due for cholera booster dose
"Immunization recommendation status" = "Not due"
"""
  * definitionCanonical = Canonical(DAK.DTO.Clientisnotdueforcholeraboosterdose)
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
      * description = """Clientsageismorethanorequalto1year"""
      * language = #text/cql-identifier
      * expression = """Clientsageismorethanorequalto1year"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Twocholeraprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Twocholeraprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Atleastoneboosterseriesdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """Atleastoneboosterseriesdosewasadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Dosenumberofthelatestdoseisone"""
      * language = #text/cql-identifier
      * expression = """Dosenumberofthelatestdoseisone"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatestcholeradosewasadministeredlessthan14daysago"""
      * language = #text/cql-identifier
      * expression = """Thelatestcholeradosewasadministeredlessthan14daysago"""
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
      * expression = """Should not vaccinate client with cholera booster dose as the latest dose was administered less than 14 days ago.
Check for any vaccines due and inform the caregiver of when to come back for the next dose."""
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
      * description = """Clientsageismorethanorequalto1year"""
      * language = #text/cql-identifier
      * expression = """Clientsageismorethanorequalto1year"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Twocholeraprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Twocholeraprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Atleastoneboosterseriesdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """Atleastoneboosterseriesdosewasadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Dosenumberofthelatestdoseisone"""
      * language = #text/cql-identifier
      * expression = """Dosenumberofthelatestdoseisone"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatestcholeradosewasadministeredlessthan14daysago"""
      * language = #text/cql-identifier
      * expression = """Thelatestcholeradosewasadministeredlessthan14daysago"""
* action[+]
  * title = "Client is due for cholera booster dose"
  * description = """Client is due for cholera booster dose
"Immunization recommendation status" = "Due"
"""
  * definitionCanonical = Canonical(DAK.DTO.Clientisdueforcholeraboosterdose)
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
      * description = """Clientsageismorethanorequalto1year"""
      * language = #text/cql-identifier
      * expression = """Clientsageismorethanorequalto1year"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Twocholeraprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Twocholeraprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Atleastoneboosterseriesdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """Atleastoneboosterseriesdosewasadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Dosenumberofthelatestdoseisone"""
      * language = #text/cql-identifier
      * expression = """Dosenumberofthelatestdoseisone"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatestcholeradosewasadministeredmorethan14a74769d985"""
      * language = #text/cql-identifier
      * expression = """Thelatestcholeradosewasadministeredmorethan14a74769d985"""
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
      * expression = """Should vaccinate client with cholera booster dose as the booster series is not completed and the latest cholera dose was administered more than 14 days ago.
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
      * description = """Clientsageismorethanorequalto1year"""
      * language = #text/cql-identifier
      * expression = """Clientsageismorethanorequalto1year"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Twocholeraprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Twocholeraprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Atleastoneboosterseriesdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """Atleastoneboosterseriesdosewasadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Dosenumberofthelatestdoseisone"""
      * language = #text/cql-identifier
      * expression = """Dosenumberofthelatestdoseisone"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatestcholeradosewasadministeredmorethan14a74769d985"""
      * language = #text/cql-identifier
      * expression = """Thelatestcholeradosewasadministeredmorethan14a74769d985"""
* action[+]
  * title = "Booster series is complete"
  * description = """Booster series is complete
"Completed the booster series" (where "Vaccine type" = "Cholera vaccines") = TRUE
"""
  * definitionCanonical = Canonical(DAK.DTO.Boosterseriesiscomplete)
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
      * description = """Clientsageismorethanorequalto1year"""
      * language = #text/cql-identifier
      * expression = """Clientsageismorethanorequalto1year"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Twocholeraprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Twocholeraprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Atleastoneboosterseriesdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """Atleastoneboosterseriesdosewasadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Dosenumberofthelatestdoseistwo"""
      * language = #text/cql-identifier
      * expression = """Dosenumberofthelatestdoseistwo"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatestcholeradosewasadministeredlessthan3yearsago"""
      * language = #text/cql-identifier
      * expression = """Thelatestcholeradosewasadministeredlessthan3yearsago"""
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
      * expression = """Should not vaccinate client with cholera dose as the booster series for cholera was completed less than 3 years ago. 
Check for any vaccines due and inform the caregiver of when to come back for the next booster series."""
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
      * description = """Clientsageismorethanorequalto1year"""
      * language = #text/cql-identifier
      * expression = """Clientsageismorethanorequalto1year"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Twocholeraprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Twocholeraprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Atleastoneboosterseriesdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """Atleastoneboosterseriesdosewasadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Dosenumberofthelatestdoseistwo"""
      * language = #text/cql-identifier
      * expression = """Dosenumberofthelatestdoseistwo"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatestcholeradosewasadministeredlessthan3yearsago"""
      * language = #text/cql-identifier
      * expression = """Thelatestcholeradosewasadministeredlessthan3yearsago"""
* action[+]
  * title = "Client is due for cholera vaccination"
  * description = """Client is due for cholera vaccination
"Immunization recommendation status" = "Due"
"Completed the booster series" (where "Vaccine type" = "Cholera vaccines") = FALSE when dose 1 is administered
"""
  * definitionCanonical = Canonical(DAK.DTO.Clientisdueforcholeravaccination)
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
      * description = """Clientsageismorethanorequalto1year"""
      * language = #text/cql-identifier
      * expression = """Clientsageismorethanorequalto1year"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Twocholeraprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Twocholeraprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Atleastoneboosterseriesdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """Atleastoneboosterseriesdosewasadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatestcholeradosewasadministeredmorethan3yearsago"""
      * language = #text/cql-identifier
      * expression = """Thelatestcholeradosewasadministeredmorethan3yearsago"""
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
      * expression = """Should vaccinate client with cholera dose as the booster series for cholera was completed more than 3 years ago. 
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
      * description = """Clientsageismorethanorequalto1year"""
      * language = #text/cql-identifier
      * expression = """Clientsageismorethanorequalto1year"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Twocholeraprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Twocholeraprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Atleastoneboosterseriesdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """Atleastoneboosterseriesdosewasadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatestcholeradosewasadministeredmorethan3yearsago"""
      * language = #text/cql-identifier
      * expression = """Thelatestcholeradosewasadministeredmorethan3yearsago"""

