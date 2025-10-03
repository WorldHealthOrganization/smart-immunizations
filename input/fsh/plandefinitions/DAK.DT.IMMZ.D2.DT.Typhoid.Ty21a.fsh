Instance: DAK.DT.IMMZ.D2.DT.Typhoid.Ty21a
InstanceOf: DAK.IMMZ.D2.DT.Typhoid.Ty21a
Title: "Decision Table Determine required vaccinations"
Description: """Determine required vaccinations """
Usage: #definition
* meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareableplandefinition"
* meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishableplandefinition"
* library = Canonical(DAK.DTs.Typhoid)
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
  * citation = """WHO recommendations for routine immunization – summary tables (March 2023) (1)
Typhoid vaccines: WHO position paper (March 2018) (16)"""

* action[+]
  * title = "Client is not due for Typhoid vaccination"
  * description = """Client is not due for Typhoid vaccination
"Immunization recommendation status" = "Not due"

Countries may consider the routine use of Ty21a vaccine for individuals aged over 6 years. """
  * definitionCanonical = Canonical(DAK.DTO.ClientisnotdueforTyphoidvaccination)
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
      * description = """Clientsageislessthan6years"""
      * language = #text/cql-identifier
      * expression = """Clientsageislessthan6years"""
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
      * expression = """Should not vaccinate client with typhoid dose as client's age is less than 6 years.
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
      * description = """Clientsageislessthan6years"""
      * language = #text/cql-identifier
      * expression = """Clientsageislessthan6years"""
* action[+]
  * title = "Client is due for Typhoid vaccination"
  * description = """Client is due for Typhoid vaccination
"Immunization recommendation status" = "Due"

For Ty21a, a 3-dose oral immunization schedule, administering the vaccine every second (alternate) day, is recommended above 6 years of age. If interruption between doses is > 21 days, restart primary series. """
  * definitionCanonical = Canonical(DAK.DTO.ClientisdueforTyphoidvaccination)
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
      * description = """Clientsageismorethanorequalto6years"""
      * language = #text/cql-identifier
      * expression = """Clientsageismorethanorequalto6years"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Primaryseriesisnotcomplete"""
      * language = #text/cql-identifier
      * expression = """Primaryseriesisnotcomplete"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Nolivevaccineotherthantyphoidwasadministeredi9c94b586c8"""
      * language = #text/cql-identifier
      * expression = """Nolivevaccineotherthantyphoidwasadministeredi9c94b586c8"""
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
      * expression = """Prescribe the Ty21a primary series (if not done yet). Should vaccinate client with typhoid dose as primary series has not been completed and no live vaccines was administered in the past 4 weeks.
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
      * description = """Clientsageismorethanorequalto6years"""
      * language = #text/cql-identifier
      * expression = """Clientsageismorethanorequalto6years"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Primaryseriesisnotcomplete"""
      * language = #text/cql-identifier
      * expression = """Primaryseriesisnotcomplete"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Nolivevaccineotherthantyphoidwasadministeredi9c94b586c8"""
      * language = #text/cql-identifier
      * expression = """Nolivevaccineotherthantyphoidwasadministeredi9c94b586c8"""
* action[+]
  * title = "Client is not due for Typhoid vaccination"
  * description = """Client is not due for Typhoid vaccination
"Immunization recommendation status" = "Not due"

As a general rule, any live vaccine may be given either simultaneously or at an interval of 4 weeks. """
  * definitionCanonical = Canonical(DAK.DTO.ClientisnotdueforTyphoidvaccination)
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
      * description = """Clientsageismorethanorequalto6years"""
      * language = #text/cql-identifier
      * expression = """Clientsageismorethanorequalto6years"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Primaryseriesisnotcomplete"""
      * language = #text/cql-identifier
      * expression = """Primaryseriesisnotcomplete"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Livevaccineotherthantyphoidwasadministeredint35a1ec33ee"""
      * language = #text/cql-identifier
      * expression = """Livevaccineotherthantyphoidwasadministeredint35a1ec33ee"""
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
      * expression = """Should not vaccinate client with typhoid dose as live vaccine was administered in the past 4 weeks.
Check for other vaccines due and inform the caregiver or the client when the next dose should be administered."""
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
      * description = """Clientsageismorethanorequalto6years"""
      * language = #text/cql-identifier
      * expression = """Clientsageismorethanorequalto6years"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Primaryseriesisnotcomplete"""
      * language = #text/cql-identifier
      * expression = """Primaryseriesisnotcomplete"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Livevaccineotherthantyphoidwasadministeredint35a1ec33ee"""
      * language = #text/cql-identifier
      * expression = """Livevaccineotherthantyphoidwasadministeredint35a1ec33ee"""
* action[+]
  * title = "Client is not due for typhoid booster dose"
  * description = """Client is not due for typhoid booster dose
"Immunization recommendation status" = "Not due"

Revaccination is recommended every 3–7 years for Ty21a (every 1 to 7 years for travellers from non-endemic to endemic areas, depending on national policies). As a general rule, any live vaccine may be given either simultaneously or at an interval of 4 weeks. """
  * definitionCanonical = Canonical(DAK.DTO.Clientisnotduefortyphoidboosterdose)
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
      * description = """Clientsageismorethanorequalto6years"""
      * language = #text/cql-identifier
      * expression = """Clientsageismorethanorequalto6years"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Primaryseriesiscomplete"""
      * language = #text/cql-identifier
      * expression = """Primaryseriesiscomplete"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatesttyphoiddosewasadministeredlessthan3yearsago"""
      * language = #text/cql-identifier
      * expression = """Thelatesttyphoiddosewasadministeredlessthan3yearsago"""
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
      * expression = """Should not vaccinate client with typhoid booster dose as the latest typhoid dose was administered less than 3 years ago.
Check for any other vaccines due and inform the caregiver or the client when the next dose should be administered."""
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
      * description = """Clientsageismorethanorequalto6years"""
      * language = #text/cql-identifier
      * expression = """Clientsageismorethanorequalto6years"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Primaryseriesiscomplete"""
      * language = #text/cql-identifier
      * expression = """Primaryseriesiscomplete"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatesttyphoiddosewasadministeredlessthan3yearsago"""
      * language = #text/cql-identifier
      * expression = """Thelatesttyphoiddosewasadministeredlessthan3yearsago"""
* action[+]
  * title = "Client is due for typhoid booster dose"
  * description = """Client is due for typhoid booster dose
"Immunization recommendation status" = "Due"
"""
  * definitionCanonical = Canonical(DAK.DTO.Clientisduefortyphoidboosterdose)
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
      * description = """Clientsageismorethanorequalto6years"""
      * language = #text/cql-identifier
      * expression = """Clientsageismorethanorequalto6years"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Primaryseriesiscomplete"""
      * language = #text/cql-identifier
      * expression = """Primaryseriesiscomplete"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatesttyphoiddosewasadministeredmorethan3yearsago"""
      * language = #text/cql-identifier
      * expression = """Thelatesttyphoiddosewasadministeredmorethan3yearsago"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Nolivevaccineotherthantyphoidwasadministeredi9c94b586c8"""
      * language = #text/cql-identifier
      * expression = """Nolivevaccineotherthantyphoidwasadministeredi9c94b586c8"""
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
      * expression = """Prescribe the Ty21a booster series. Should vaccinate client with typhoid booster dose as primary series has been completed, the latest typhoid dose was administered more than 3 years ago and no live vaccine was administered in the past 4 weeks.
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
      * description = """Clientsageismorethanorequalto6years"""
      * language = #text/cql-identifier
      * expression = """Clientsageismorethanorequalto6years"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Primaryseriesiscomplete"""
      * language = #text/cql-identifier
      * expression = """Primaryseriesiscomplete"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatesttyphoiddosewasadministeredmorethan3yearsago"""
      * language = #text/cql-identifier
      * expression = """Thelatesttyphoiddosewasadministeredmorethan3yearsago"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Nolivevaccineotherthantyphoidwasadministeredi9c94b586c8"""
      * language = #text/cql-identifier
      * expression = """Nolivevaccineotherthantyphoidwasadministeredi9c94b586c8"""
* action[+]
  * title = "Client is not due for typhoid booster dose"
  * description = """Client is not due for typhoid booster dose
"Immunization recommendation status" = "Not due"
"""
  * definitionCanonical = Canonical(DAK.DTO.Clientisnotduefortyphoidboosterdose)
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
      * description = """Clientsageismorethanorequalto6years"""
      * language = #text/cql-identifier
      * expression = """Clientsageismorethanorequalto6years"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Primaryseriesiscomplete"""
      * language = #text/cql-identifier
      * expression = """Primaryseriesiscomplete"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatesttyphoiddosewasadministeredmorethan3yearsago"""
      * language = #text/cql-identifier
      * expression = """Thelatesttyphoiddosewasadministeredmorethan3yearsago"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Livevaccineotherthantyphoidwasadministeredint35a1ec33ee"""
      * language = #text/cql-identifier
      * expression = """Livevaccineotherthantyphoidwasadministeredint35a1ec33ee"""
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
      * expression = """Should not vaccinate client with typhoid booster dose as live vaccine was administered in the past 4 weeks.
Check for any other vaccines due and inform the caregiver or the client when the next dose should be administered"""
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
      * description = """Clientsageismorethanorequalto6years"""
      * language = #text/cql-identifier
      * expression = """Clientsageismorethanorequalto6years"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Primaryseriesiscomplete"""
      * language = #text/cql-identifier
      * expression = """Primaryseriesiscomplete"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatesttyphoiddosewasadministeredmorethan3yearsago"""
      * language = #text/cql-identifier
      * expression = """Thelatesttyphoiddosewasadministeredmorethan3yearsago"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Livevaccineotherthantyphoidwasadministeredint35a1ec33ee"""
      * language = #text/cql-identifier
      * expression = """Livevaccineotherthantyphoidwasadministeredint35a1ec33ee"""

