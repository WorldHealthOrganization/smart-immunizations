Instance: DAK.DT.IMMZ.D2.DT.Polio.IPV-only
InstanceOf: DAK.IMMZ.D2.DT.Polio.IPV-only
Title: "Decision Table Determine required vaccinations"
Description: """Determine required vaccinations """
Usage: #definition
* meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareableplandefinition"
* meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishableplandefinition"
* library = Canonical(DAK.DTs.Polio)
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
  * title = "Client is not due for IPV vaccination"
  * description = """Client is not due for IPV vaccination
"Immunization recommendation status" = "Not due"

A primary 3-dose series of IPV administered beginning at 6 or 8 weeks of age, with a minimum 4-week interval between doses, is recommended. """
  * definitionCanonical = Canonical(DAK.DTO.ClientisnotdueforIPVvaccination)
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
      * description = """Nopoliovirusprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Nopoliovirusprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Clientsageislessthan6weeks"""
      * language = #text/cql-identifier
      * expression = """Clientsageislessthan6weeks"""
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
      * expression = """Shold not vaccinate client with first IPV dose as client's age is less than 6 weeks. 
Check for any other vaccines due and inform the caregiver of when to come back for the first IPV dose."""
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
      * description = """Nopoliovirusprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Nopoliovirusprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Clientsageislessthan6weeks"""
      * language = #text/cql-identifier
      * expression = """Clientsageislessthan6weeks"""
* action[+]
  * title = "Client is due for IPV vaccination"
  * description = """Client is due for IPV vaccination
"Immunization recommendation status" = "Due"
"""
  * definitionCanonical = Canonical(DAK.DTO.ClientisdueforIPVvaccination)
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
      * description = """Nopoliovirusprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Nopoliovirusprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Clientsageismorethanorequalto6weeks"""
      * language = #text/cql-identifier
      * expression = """Clientsageismorethanorequalto6weeks"""
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
      * expression = """Should vaccinate client with first IPV dose as client is within appropriate age range. 
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
      * description = """Nopoliovirusprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Nopoliovirusprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Clientsageismorethanorequalto6weeks"""
      * language = #text/cql-identifier
      * expression = """Clientsageismorethanorequalto6weeks"""
* action[+]
  * title = "Client is not due for IPV vaccination"
  * description = """Client is not due for IPV vaccination
"Immunization recommendation status" = "Not due"
"""
  * definitionCanonical = Canonical(DAK.DTO.ClientisnotdueforIPVvaccination)
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
      * description = """Onepoliovirusprimaryseriesdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """Onepoliovirusprimaryseriesdosewasadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatestpoliovirusdosewasadministeredlessthan4weeksago"""
      * language = #text/cql-identifier
      * expression = """Thelatestpoliovirusdosewasadministeredlessthan4weeksago"""
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
      * expression = """Should not vaccinate client with second IPV dose as the latest IPV dose was administered less than 4 weeks ago. 
Check for any other vaccines due and inform the caregiver when to come back for the second dose."""
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
      * description = """Onepoliovirusprimaryseriesdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """Onepoliovirusprimaryseriesdosewasadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatestpoliovirusdosewasadministeredlessthan4weeksago"""
      * language = #text/cql-identifier
      * expression = """Thelatestpoliovirusdosewasadministeredlessthan4weeksago"""
* action[+]
  * title = "Client is due for IPV vaccination"
  * description = """Client is due for IPV vaccination
"Immunization recommendation status" = "Due"
"""
  * definitionCanonical = Canonical(DAK.DTO.ClientisdueforIPVvaccination)
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
      * description = """Onepoliovirusprimaryseriesdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """Onepoliovirusprimaryseriesdosewasadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatestpoliovirusdosewasadministeredmorethan4weeksago"""
      * language = #text/cql-identifier
      * expression = """Thelatestpoliovirusdosewasadministeredmorethan4weeksago"""
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
      * expression = """Should vaccinate client with second IPV dose as the latest IPV dose was administered more than 4 weeks ago.
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
      * description = """Onepoliovirusprimaryseriesdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """Onepoliovirusprimaryseriesdosewasadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatestpoliovirusdosewasadministeredmorethan4weeksago"""
      * language = #text/cql-identifier
      * expression = """Thelatestpoliovirusdosewasadministeredmorethan4weeksago"""
* action[+]
  * title = "Client is not due for IPV vaccination"
  * description = """Client is not due for IPV vaccination
"Immunization recommendation status" = "Not due"
"""
  * definitionCanonical = Canonical(DAK.DTO.ClientisnotdueforIPVvaccination)
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
      * description = """Twopoliovirusprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Twopoliovirusprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatestpoliovirusdosewasadministeredlessthan4weeksago"""
      * language = #text/cql-identifier
      * expression = """Thelatestpoliovirusdosewasadministeredlessthan4weeksago"""
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
      * expression = """Should not vaccinate client with third IPV dose as the latest IPV dose was administered less than 4 weeks ago. 
Check for any other vaccines due and inform the caregiver when to come back for the third dose."""
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
      * description = """Twopoliovirusprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Twopoliovirusprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatestpoliovirusdosewasadministeredlessthan4weeksago"""
      * language = #text/cql-identifier
      * expression = """Thelatestpoliovirusdosewasadministeredlessthan4weeksago"""
* action[+]
  * title = "Client is due for IPV vaccination"
  * description = """Client is due for IPV vaccination
"Immunization recommendation status" = "Due"
"""
  * definitionCanonical = Canonical(DAK.DTO.ClientisdueforIPVvaccination)
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
      * description = """Twopoliovirusprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Twopoliovirusprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatestpoliovirusdosewasadministeredmorethan4weeksago"""
      * language = #text/cql-identifier
      * expression = """Thelatestpoliovirusdosewasadministeredmorethan4weeksago"""
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
      * expression = """Should vaccinate client with third IPV dose as the latest poliovirus dose was administered more than 4 weeks ago. 
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
      * description = """Twopoliovirusprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Twopoliovirusprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatestpoliovirusdosewasadministeredmorethan4weeksago"""
      * language = #text/cql-identifier
      * expression = """Thelatestpoliovirusdosewasadministeredmorethan4weeksago"""
* action[+]
  * title = "Polio immunization schedule is complete"
  * description = """Polio immunization schedule is complete
"Immunization recommendation status" = "Complete"
"Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Poliovirus-containing vaccines")

If the primary series begins at 6 weeks, a booster dose should be given 6 months or more after the third dose. """
  * definitionCanonical = Canonical(DAK.DTO.Polioimmunizationscheduleiscomplete)
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
      * description = """Threepoliovirusprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Threepoliovirusprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Clientsagewasmorethan6weekswhentheprimaryserif041280a33"""
      * language = #text/cql-identifier
      * expression = """Clientsagewasmorethan6weekswhentheprimaryserif041280a33"""
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
      * expression = """Polio immunization schedule is complete as client's age was more than 6 weeks when the primary series was started. Three poliovirus primary series doses were administered."""
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
      * description = """Threepoliovirusprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Threepoliovirusprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Clientsagewasmorethan6weekswhentheprimaryserif041280a33"""
      * language = #text/cql-identifier
      * expression = """Clientsagewasmorethan6weekswhentheprimaryserif041280a33"""
* action[+]
  * title = "Primary series is complete. Client is not due for IPV booster dose"
  * description = """Primary series is complete. Client is not due for IPV booster dose
"Immunization recommendation status" = "Not due"
"Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Poliovirus-containing vaccines")
"""
  * definitionCanonical = Canonical(DAK.DTO.Primaryseriesiscomplete.Clientisnotduffe8422b07)
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
      * description = """Threepoliovirusprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Threepoliovirusprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Clientsagewas6weekswhentheprimaryserieswasstarted"""
      * language = #text/cql-identifier
      * expression = """Clientsagewas6weekswhentheprimaryserieswasstarted"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatestpoliovirusdosewasadministeredlesstha88bbc6db4b"""
      * language = #text/cql-identifier
      * expression = """Thelatestpoliovirusdosewasadministeredlesstha88bbc6db4b"""
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
      * expression = """Should not vaccinate client with IPV booster dose as the latest poliovirus dose was administered less than 6 months ago.
Check for any other vaccines due and inform the caregiver when to come back for the booster dose."""
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
      * description = """Threepoliovirusprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Threepoliovirusprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Clientsagewas6weekswhentheprimaryserieswasstarted"""
      * language = #text/cql-identifier
      * expression = """Clientsagewas6weekswhentheprimaryserieswasstarted"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatestpoliovirusdosewasadministeredlesstha88bbc6db4b"""
      * language = #text/cql-identifier
      * expression = """Thelatestpoliovirusdosewasadministeredlesstha88bbc6db4b"""
* action[+]
  * title = "Primary series is complete. Client is due for IPV booster dose"
  * description = """Primary series is complete. Client is due for IPV booster dose
"Immunization recommendation status" = "Due"
"Completed the primary vaccination series" = TRUE (where "Vaccine type" = "Poliovirus-containing vaccines")
"""
  * definitionCanonical = Canonical(DAK.DTO.Primaryseriesiscomplete.Clientisduefoc9f1f107a4)
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
      * description = """Threepoliovirusprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Threepoliovirusprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Clientsagewas6weekswhentheprimaryserieswasstarted"""
      * language = #text/cql-identifier
      * expression = """Clientsagewas6weekswhentheprimaryserieswasstarted"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatestpoliovirusdosewasadministeredmorethade6bd2b497"""
      * language = #text/cql-identifier
      * expression = """Thelatestpoliovirusdosewasadministeredmorethade6bd2b497"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Nopolioboosterdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """Nopolioboosterdosewasadministered"""
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
      * expression = """Should vaccinate client with IPV booster dose as three poliovirus primary series doses were administered, client's age was 6 weeks when the primary series was started and the latest poliovirus dose was administered more than 6 months ago. 
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
      * description = """Threepoliovirusprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Threepoliovirusprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Clientsagewas6weekswhentheprimaryserieswasstarted"""
      * language = #text/cql-identifier
      * expression = """Clientsagewas6weekswhentheprimaryserieswasstarted"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatestpoliovirusdosewasadministeredmorethade6bd2b497"""
      * language = #text/cql-identifier
      * expression = """Thelatestpoliovirusdosewasadministeredmorethade6bd2b497"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Nopolioboosterdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """Nopolioboosterdosewasadministered"""
* action[+]
  * title = "Polio immunization schedule is complete"
  * description = """Polio immunization schedule is complete
"Immunization recommendation status" = "Complete"
"""
  * definitionCanonical = Canonical(DAK.DTO.Polioimmunizationscheduleiscomplete)
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
      * description = """Threepoliovirusprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Threepoliovirusprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Polioboosterdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """Polioboosterdosewasadministered"""
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
      * expression = """Polio immunization schedule is complete. Three poliovirus primary series doses and a booster dose were administered."""
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
      * description = """Threepoliovirusprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Threepoliovirusprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Polioboosterdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """Polioboosterdosewasadministered"""

