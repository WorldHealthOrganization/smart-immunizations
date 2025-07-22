Instance: DT.IMMZ.D2.DT.Seasonalinfluenza
InstanceOf: DD.IMMZ.D2.DT.Seasonalinfluenza
Title: "Decision Table Determine required vaccinations"
Description: """Determine required vaccinations """
Usage: #definition
* meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareableplandefinition"
* meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishableplandefinition"
* library = Canonical(DTs.Seasonalinfluenza)
* extension[+]
  * url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-knowledgeCapability"
  * valueCode = #computable
* version = "0.2.0"
* status = #draft
* experimental = false
* publisher = "WHO"

* relatedArtifact[+]
  * type = #citation
  * citation = """Vaccines against influenza: WHO position paper (May 2022) (28)"""
* relatedArtifact[+]
  * type = #citation
  * citation = """WHO recommendations for routine immunization – summary tables (March 2023) (1)"""

* action[+]
  * title = "Client is not due for seasonal influenza vaccination"
  * description = """Client is not due for seasonal influenza vaccination
"Immunization recommendation status" = "Not due"

Influenza vaccines are safe and effective in children from 6 months of age. Children aged under 6 months can be protected through maternal immunization during pregnancy. """
  * definitionCanonical = Canonical(DTO.Clientisnotdueforseasonalinfluenzavaccination)
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
      * description = """Clientsageislessthan6months"""
      * language = #text/cql-identifier
      * expression = """Clientsageislessthan6months"""
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
      * expression = """Should not vaccinate client with first seasonal influenza dose as client's age is less than 6 months. 
Check for any other vaccines due and inform the caregiver of when to come back for first dose."""
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
      * description = """Clientsageislessthan6months"""
      * language = #text/cql-identifier
      * expression = """Clientsageislessthan6months"""
* action[+]
  * title = "Client is due for seasonal influenza vaccination"
  * description = """Client is due for seasonal influenza vaccination
"Immunization recommendation status" = "Due"

Children aged 6 months to 8 years should receive 2 doses at least 4 weeks apart. A single dose is appropriate for those ≥ 9 years of age and healthy adults. """
  * definitionCanonical = Canonical(DTO.Clientisdueforseasonalinfluenzavaccination)
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
      * description = """Noseasonalinfluenzaprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Noseasonalinfluenzaprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Clientsageismorethanorequalto6months"""
      * language = #text/cql-identifier
      * expression = """Clientsageismorethanorequalto6months"""
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
      * expression = """Should vaccinate client with first seasonal influenza dose as no seasonal infuenza doses were administered and client is within appropriate age range. 
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
      * description = """Noseasonalinfluenzaprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Noseasonalinfluenzaprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Clientsageismorethanorequalto6months"""
      * language = #text/cql-identifier
      * expression = """Clientsageismorethanorequalto6months"""
* action[+]
  * title = "Client is not due for seasonal influenza vaccination"
  * description = """Client is not due for seasonal influenza vaccination
"Immunization recommendation status" = "Not due"

Children aged 6 months to 8 years should receive 2 doses at least 4 weeks apart. """
  * definitionCanonical = Canonical(DTO.Clientisnotdueforseasonalinfluenzavaccination)
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
      * description = """Oneseasonalinfluenzaprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Oneseasonalinfluenzaprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Clientsageislessthan9years"""
      * language = #text/cql-identifier
      * expression = """Clientsageislessthan9years"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatestseasonalinfluenzadosewasadministered9c4d21f688"""
      * language = #text/cql-identifier
      * expression = """Thelatestseasonalinfluenzadosewasadministered9c4d21f688"""
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
      * expression = """Should not vaccinate client with second seasonal influenza dose as latest seasonal influenza dose was administered less than 4 weeks ago. 
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
      * description = """Oneseasonalinfluenzaprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Oneseasonalinfluenzaprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Clientsageislessthan9years"""
      * language = #text/cql-identifier
      * expression = """Clientsageislessthan9years"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatestseasonalinfluenzadosewasadministered9c4d21f688"""
      * language = #text/cql-identifier
      * expression = """Thelatestseasonalinfluenzadosewasadministered9c4d21f688"""
* action[+]
  * title = "Client is due for seasonal influenza vaccination"
  * description = """Client is due for seasonal influenza vaccination
"Immunization recommendation status" = "Due"
"""
  * definitionCanonical = Canonical(DTO.Clientisdueforseasonalinfluenzavaccination)
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
      * description = """Oneseasonalinfluenzaprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Oneseasonalinfluenzaprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Clientsageislessthan9years"""
      * language = #text/cql-identifier
      * expression = """Clientsageislessthan9years"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatestseasonalinfluenzadosewasadministered5ab3aa42a0"""
      * language = #text/cql-identifier
      * expression = """Thelatestseasonalinfluenzadosewasadministered5ab3aa42a0"""
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
      * expression = """Should vaccinate client with second seasonal influenza dose as client is within appropriate age range and latest seasonal influenza dose was administerered more than 4 weeks ago.
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
      * description = """Oneseasonalinfluenzaprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Oneseasonalinfluenzaprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Clientsageislessthan9years"""
      * language = #text/cql-identifier
      * expression = """Clientsageislessthan9years"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatestseasonalinfluenzadosewasadministered5ab3aa42a0"""
      * language = #text/cql-identifier
      * expression = """Thelatestseasonalinfluenzadosewasadministered5ab3aa42a0"""
* action[+]
  * title = "The primary series is complete. Client is not due for seasonal influenza annual dose"
  * description = """The primary series is complete. Client is not due for seasonal influenza annual dose
"Immunization recommendation status" = "Not due"
"Completed the primary vaccination series" (where "Vaccine type" = "Seasonal influenza vaccines") = TRUE

A single dose is appropriate for children aged ≥ 9 years and healthy adults. Those who have previously been vaccinated at least once should subsequently receive an annual dose, as should children and adolescents aged 9 years or over and healthy adults. """
  * definitionCanonical = Canonical(DTO.Theprimaryseriesiscomplete.Clientisnotdue909a9041b0)
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
      * description = """Oneseasonalinfluenzaprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Oneseasonalinfluenzaprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Clientsageismorethanorequalto9years"""
      * language = #text/cql-identifier
      * expression = """Clientsageismorethanorequalto9years"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatestseasonalinfluenzadosewasadministered3d3f6f67ed"""
      * language = #text/cql-identifier
      * expression = """Thelatestseasonalinfluenzadosewasadministered3d3f6f67ed"""
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
      * expression = """Should not vaccinate client with annual dose as the latest seasonal influenza dose was administered less than 1 year ago. 
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
      * description = """Oneseasonalinfluenzaprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Oneseasonalinfluenzaprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Clientsageismorethanorequalto9years"""
      * language = #text/cql-identifier
      * expression = """Clientsageismorethanorequalto9years"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatestseasonalinfluenzadosewasadministered3d3f6f67ed"""
      * language = #text/cql-identifier
      * expression = """Thelatestseasonalinfluenzadosewasadministered3d3f6f67ed"""
* action[+]
  * title = "The primary series is complete. Client is due for seasonal influenza annual dose"
  * description = """The primary series is complete. Client is due for seasonal influenza annual dose
"Immunization recommendation status" = "Due"
"Completed the primary vaccination series" (where "Vaccine type" = "Seasonal influenza vaccines") = TRUE
"""
  * definitionCanonical = Canonical(DTO.Theprimaryseriesiscomplete.Clientisduefor041c5bfa9e)
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
      * description = """Oneseasonalinfluenzaprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Oneseasonalinfluenzaprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Clientsageismorethanorequalto9years"""
      * language = #text/cql-identifier
      * expression = """Clientsageismorethanorequalto9years"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatestseasonalinfluenzadosewasadministered3e2f31df81"""
      * language = #text/cql-identifier
      * expression = """Thelatestseasonalinfluenzadosewasadministered3e2f31df81"""
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
      * expression = """Should vaccinate client with annual dose as the latest seasonal influenza dose was administered more than 1 year ago. 
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
      * description = """Oneseasonalinfluenzaprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Oneseasonalinfluenzaprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Clientsageismorethanorequalto9years"""
      * language = #text/cql-identifier
      * expression = """Clientsageismorethanorequalto9years"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatestseasonalinfluenzadosewasadministered3e2f31df81"""
      * language = #text/cql-identifier
      * expression = """Thelatestseasonalinfluenzadosewasadministered3e2f31df81"""
* action[+]
  * title = "The primary series is complete. Client is not due for seasonal influenza annual dose"
  * description = """The primary series is complete. Client is not due for seasonal influenza annual dose
"Immunization recommendation status" = "Not due"
"Completed the primary vaccination series" (where "Vaccine type" = "Seasonal influenza vaccines") = TRUE
"""
  * definitionCanonical = Canonical(DTO.Theprimaryseriesiscomplete.Clientisnotdue909a9041b0)
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
      * description = """Twoseasonalinfluenzaprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Twoseasonalinfluenzaprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatestseasonalinfluenzadosewasadministered3d3f6f67ed"""
      * language = #text/cql-identifier
      * expression = """Thelatestseasonalinfluenzadosewasadministered3d3f6f67ed"""
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
      * expression = """Should not vaccinate client with annual dose as latest seasonal influenza dose was administered less than 1 year ago. 
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
      * description = """Twoseasonalinfluenzaprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Twoseasonalinfluenzaprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatestseasonalinfluenzadosewasadministered3d3f6f67ed"""
      * language = #text/cql-identifier
      * expression = """Thelatestseasonalinfluenzadosewasadministered3d3f6f67ed"""
* action[+]
  * title = "The primary series is complete. Client is due for seasonal influenza annual dose"
  * description = """The primary series is complete. Client is due for seasonal influenza annual dose
"Immunization recommendation status" = "Due"
"Completed the primary vaccination series" (where "Vaccine type" = "Seasonal influenza vaccines") = TRUE
"""
  * definitionCanonical = Canonical(DTO.Theprimaryseriesiscomplete.Clientisduefor041c5bfa9e)
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
      * description = """Twoseasonalinfluenzaprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Twoseasonalinfluenzaprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatestseasonalinfluenzadosewasadministered3e2f31df81"""
      * language = #text/cql-identifier
      * expression = """Thelatestseasonalinfluenzadosewasadministered3e2f31df81"""
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
      * expression = """Should vaccinate client with  annual dose as latest seasonal influenza dose was administered more than 1 year ago. 
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
      * description = """Twoseasonalinfluenzaprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Twoseasonalinfluenzaprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatestseasonalinfluenzadosewasadministered3e2f31df81"""
      * language = #text/cql-identifier
      * expression = """Thelatestseasonalinfluenzadosewasadministered3e2f31df81"""

