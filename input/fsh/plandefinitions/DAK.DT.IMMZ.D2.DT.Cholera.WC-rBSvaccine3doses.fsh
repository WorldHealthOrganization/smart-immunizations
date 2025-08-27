Instance: DAK.DT.IMMZ.D2.DT.Cholera.WC-rBSvaccine3doses
InstanceOf: DAK.IMMZ.D2.DT.Cholera.WC-rBSvaccine3doses
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

For WC-rBS vaccine (Dukoral), 3 doses should be given to children aged 2–5 years. """
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
      * expression = """Should not vaccinate client with cholera dose as client's age is less than 2 years.
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
      * description = """Clientsageislessthan2years"""
      * language = #text/cql-identifier
      * expression = """Clientsageislessthan2years"""
* action[+]
  * title = "Client is due for cholera vaccination"
  * description = """Client is due for cholera vaccination
"Immunization recommendation status" = "Due"

For WC-rBS vaccine (Dukoral), 3 doses should be given to children aged 2–5 years of age, with an interval of 1–6 weeks between doses. """
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
      * description = """Clientsageis25years"""
      * language = #text/cql-identifier
      * expression = """Clientsageis25years"""
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
      * expression = """Should vaccinate client with cholera dose as no cholera doses have been administered.
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
      * description = """Clientsageis25years"""
      * language = #text/cql-identifier
      * expression = """Clientsageis25years"""
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
      * description = """Clientsageis25years"""
      * language = #text/cql-identifier
      * expression = """Clientsageis25years"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Atleastonecholeraprimaryseriesdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """Atleastonecholeraprimaryseriesdosewasadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Dosenumberofthelatestprimaryseriesdoseisone"""
      * language = #text/cql-identifier
      * expression = """Dosenumberofthelatestprimaryseriesdoseisone"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatestcholeradosewasadministeredlessthan1weekago"""
      * language = #text/cql-identifier
      * expression = """Thelatestcholeradosewasadministeredlessthan1weekago"""
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
      * expression = """Should not vaccinate client with cholera dose as the latest cholera dose was administered less than 1 week ago.
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
      * description = """Clientsageis25years"""
      * language = #text/cql-identifier
      * expression = """Clientsageis25years"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Atleastonecholeraprimaryseriesdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """Atleastonecholeraprimaryseriesdosewasadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Dosenumberofthelatestprimaryseriesdoseisone"""
      * language = #text/cql-identifier
      * expression = """Dosenumberofthelatestprimaryseriesdoseisone"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatestcholeradosewasadministeredlessthan1weekago"""
      * language = #text/cql-identifier
      * expression = """Thelatestcholeradosewasadministeredlessthan1weekago"""
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
      * description = """Clientsageis25years"""
      * language = #text/cql-identifier
      * expression = """Clientsageis25years"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Atleastonecholeraprimaryseriesdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """Atleastonecholeraprimaryseriesdosewasadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Dosenumberofthelatestprimaryseriesdoseisone"""
      * language = #text/cql-identifier
      * expression = """Dosenumberofthelatestprimaryseriesdoseisone"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatestcholeradosewasadministeredmorethan1wd5fc548d1f"""
      * language = #text/cql-identifier
      * expression = """Thelatestcholeradosewasadministeredmorethan1wd5fc548d1f"""
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
      * expression = """Should vaccinate client with cholera dose as the latest cholera dose was administered in the last 1 to 6 weeks.
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
      * description = """Clientsageis25years"""
      * language = #text/cql-identifier
      * expression = """Clientsageis25years"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Atleastonecholeraprimaryseriesdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """Atleastonecholeraprimaryseriesdosewasadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Dosenumberofthelatestprimaryseriesdoseisone"""
      * language = #text/cql-identifier
      * expression = """Dosenumberofthelatestprimaryseriesdoseisone"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatestcholeradosewasadministeredmorethan1wd5fc548d1f"""
      * language = #text/cql-identifier
      * expression = """Thelatestcholeradosewasadministeredmorethan1wd5fc548d1f"""
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
      * description = """Clientsageis25years"""
      * language = #text/cql-identifier
      * expression = """Clientsageis25years"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Atleastonecholeraprimaryseriesdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """Atleastonecholeraprimaryseriesdosewasadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Dosenumberofthelatestprimaryseriesdoseistwo"""
      * language = #text/cql-identifier
      * expression = """Dosenumberofthelatestprimaryseriesdoseistwo"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatestcholeradosewasadministeredlessthan1weekago"""
      * language = #text/cql-identifier
      * expression = """Thelatestcholeradosewasadministeredlessthan1weekago"""
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
      * expression = """Should not vaccinate client with cholera dose as the latest cholera dose was administered less than 1 week ago.
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
      * description = """Clientsageis25years"""
      * language = #text/cql-identifier
      * expression = """Clientsageis25years"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Atleastonecholeraprimaryseriesdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """Atleastonecholeraprimaryseriesdosewasadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Dosenumberofthelatestprimaryseriesdoseistwo"""
      * language = #text/cql-identifier
      * expression = """Dosenumberofthelatestprimaryseriesdoseistwo"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatestcholeradosewasadministeredlessthan1weekago"""
      * language = #text/cql-identifier
      * expression = """Thelatestcholeradosewasadministeredlessthan1weekago"""
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
      * description = """Clientsageis25years"""
      * language = #text/cql-identifier
      * expression = """Clientsageis25years"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Atleastonecholeraprimaryseriesdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """Atleastonecholeraprimaryseriesdosewasadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Dosenumberofthelatestprimaryseriesdoseistwo"""
      * language = #text/cql-identifier
      * expression = """Dosenumberofthelatestprimaryseriesdoseistwo"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatestcholeradosewasadministeredmorethan1wd5fc548d1f"""
      * language = #text/cql-identifier
      * expression = """Thelatestcholeradosewasadministeredmorethan1wd5fc548d1f"""
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
      * expression = """Should vaccinate client with cholera dose as the latest cholera dose was administered in the last 1 to 6 weeks.
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
      * description = """Clientsageis25years"""
      * language = #text/cql-identifier
      * expression = """Clientsageis25years"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Atleastonecholeraprimaryseriesdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """Atleastonecholeraprimaryseriesdosewasadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Dosenumberofthelatestprimaryseriesdoseistwo"""
      * language = #text/cql-identifier
      * expression = """Dosenumberofthelatestprimaryseriesdoseistwo"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatestcholeradosewasadministeredmorethan1wd5fc548d1f"""
      * language = #text/cql-identifier
      * expression = """Thelatestcholeradosewasadministeredmorethan1wd5fc548d1f"""
* action[+]
  * title = "Client is due for cholera vaccination"
  * description = """Client is due for cholera vaccination
"Immunization recommendation status" = "Due"
"Completed the booster series" (where "Vaccine type" = "Cholera vaccines") = FALSE when dose 1 is administered

If interval since last dose ≥ 6 weeks, restart primary series. """
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
      * description = """Clientsageis25years"""
      * language = #text/cql-identifier
      * expression = """Clientsageis25years"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Atleastonecholeraprimaryseriesdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """Atleastonecholeraprimaryseriesdosewasadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Dosenumberofthelatestprimaryseriesdoseislessthanthree"""
      * language = #text/cql-identifier
      * expression = """Dosenumberofthelatestprimaryseriesdoseislessthanthree"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatestcholeradosewasadministeredmorethan6weeksago"""
      * language = #text/cql-identifier
      * expression = """Thelatestcholeradosewasadministeredmorethan6weeksago"""
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
      * expression = """Should vaccinate client with cholera dose and restart primary series as the latest cholera dose was administered more than 6 weeks ago.
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
      * description = """Clientsageis25years"""
      * language = #text/cql-identifier
      * expression = """Clientsageis25years"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Atleastonecholeraprimaryseriesdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """Atleastonecholeraprimaryseriesdosewasadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Dosenumberofthelatestprimaryseriesdoseislessthanthree"""
      * language = #text/cql-identifier
      * expression = """Dosenumberofthelatestprimaryseriesdoseislessthanthree"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatestcholeradosewasadministeredmorethan6weeksago"""
      * language = #text/cql-identifier
      * expression = """Thelatestcholeradosewasadministeredmorethan6weeksago"""
* action[+]
  * title = "Primary series is complete. Client is not due for cholera booster dose"
  * description = """Primary series is complete. Client is not due for cholera booster dose
"Immunization recommendation status" = "Not due"
"Completed the booster series" (where "Vaccine type" = "Cholera vaccines") = TRUE

Revaccination is recommended where there is continued risk of Vibrio cholerae infection. For WC-rBS vaccine, children aged 2–5 years revaccination is recommended within 6 months. If less than 6 months have passed, 1 dose for revaccination. """
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
      * description = """Clientsageis25years"""
      * language = #text/cql-identifier
      * expression = """Clientsageis25years"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Atleastonecholeraprimaryseriesdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """Atleastonecholeraprimaryseriesdosewasadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Dosenumberofthelatestprimaryseriesdoseisthree"""
      * language = #text/cql-identifier
      * expression = """Dosenumberofthelatestprimaryseriesdoseisthree"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """ThelatestcholeradosewasadministeredlessthanMe93637569f8"""
      * language = #text/cql-identifier
      * expression = """ThelatestcholeradosewasadministeredlessthanMe93637569f8"""
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
      * expression = """Should not vaccinate client with cholera dose as the latest cholera dose was administered less than {Member States defined lower limit} days ago.
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
      * description = """Clientsageis25years"""
      * language = #text/cql-identifier
      * expression = """Clientsageis25years"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Atleastonecholeraprimaryseriesdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """Atleastonecholeraprimaryseriesdosewasadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Dosenumberofthelatestprimaryseriesdoseisthree"""
      * language = #text/cql-identifier
      * expression = """Dosenumberofthelatestprimaryseriesdoseisthree"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """ThelatestcholeradosewasadministeredlessthanMe93637569f8"""
      * language = #text/cql-identifier
      * expression = """ThelatestcholeradosewasadministeredlessthanMe93637569f8"""
* action[+]
  * title = "Primary series is complete. Client is due for cholera booster dose"
  * description = """Primary series is complete. Client is due for cholera booster dose
"Immunization recommendation status" = "Due"
"Completed the booster series" (where "Vaccine type" = "Cholera vaccines") = TRUE
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
      * description = """Clientsageis25years"""
      * language = #text/cql-identifier
      * expression = """Clientsageis25years"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Atleastonecholeraprimaryseriesdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """Atleastonecholeraprimaryseriesdosewasadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Dosenumberofthelatestprimaryseriesdoseisthree"""
      * language = #text/cql-identifier
      * expression = """Dosenumberofthelatestprimaryseriesdoseisthree"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatestcholeradosewasadministeredapproximat127fae7314"""
      * language = #text/cql-identifier
      * expression = """Thelatestcholeradosewasadministeredapproximat127fae7314"""
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
      * expression = """Should vaccinate client with cholera booster dose as the latest cholera dose was administered less than approximately 6 months ago.
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
      * description = """Clientsageis25years"""
      * language = #text/cql-identifier
      * expression = """Clientsageis25years"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Atleastonecholeraprimaryseriesdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """Atleastonecholeraprimaryseriesdosewasadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Dosenumberofthelatestprimaryseriesdoseisthree"""
      * language = #text/cql-identifier
      * expression = """Dosenumberofthelatestprimaryseriesdoseisthree"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatestcholeradosewasadministeredapproximat127fae7314"""
      * language = #text/cql-identifier
      * expression = """Thelatestcholeradosewasadministeredapproximat127fae7314"""
* action[+]
  * title = "Client is due for cholera vaccination"
  * description = """Client is due for cholera vaccination
"Immunization recommendation status" = "Due"
"Completed the primary vaccination series" (where "Vaccine type" = "Cholera vaccines") = FALSE when dose 1 is administered

For WC-rBS vaccine, children aged 2–5 years revaccination is recommended within 6 months. If more than 6 months have passed, the primary series of 3 doses should be repeated. """
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
      * description = """Clientsageis25years"""
      * language = #text/cql-identifier
      * expression = """Clientsageis25years"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Atleastonecholeraprimaryseriesdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """Atleastonecholeraprimaryseriesdosewasadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Dosenumberofthelatestprimaryseriesdoseisthree"""
      * language = #text/cql-identifier
      * expression = """Dosenumberofthelatestprimaryseriesdoseisthree"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatestcholeradosewasadministeredapproximat2e7e803517"""
      * language = #text/cql-identifier
      * expression = """Thelatestcholeradosewasadministeredapproximat2e7e803517"""
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
      * expression = """Should vaccinate client with cholera dose and restart primary series as the latest cholera dose was administered more than approximately 6 months ago.
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
      * description = """Clientsageis25years"""
      * language = #text/cql-identifier
      * expression = """Clientsageis25years"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Atleastonecholeraprimaryseriesdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """Atleastonecholeraprimaryseriesdosewasadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Dosenumberofthelatestprimaryseriesdoseisthree"""
      * language = #text/cql-identifier
      * expression = """Dosenumberofthelatestprimaryseriesdoseisthree"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatestcholeradosewasadministeredapproximat2e7e803517"""
      * language = #text/cql-identifier
      * expression = """Thelatestcholeradosewasadministeredapproximat2e7e803517"""

