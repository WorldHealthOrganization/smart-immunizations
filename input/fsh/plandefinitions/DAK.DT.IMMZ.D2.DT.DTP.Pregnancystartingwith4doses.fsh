Instance: DAK.DT.IMMZ.D2.DT.DTP.Pregnancystartingwith4doses
InstanceOf: DAK.IMMZ.D2.DT.DTP.Pregnancystartingwith4doses
Title: "Decision Table Determine required vaccinations"
Description: """Determine required vaccinations """
Usage: #definition
* meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareableplandefinition"
* meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishableplandefinition"
* library = Canonical(DAK.DTs.DTP)
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
Tetanus vaccines: WHO position paper (February 2017) (7)"""

* action[+]
  * title = "Client is due for tetanus and diphtheria booster dose"
  * description = """Client is due for tetanus and diphtheria booster dose
"Immunization recommendation status" = "Due" (where "Vaccine type" = "Tetanus and diphtheria-containing vaccines")

Pregnant women who received 4 tetanus-containing vaccines doses during childhood or pre-adulthood need only 1 booster dose, which should be given at the first opportunity. To provide lifelong protection, a sixth dose would be needed at least 1 year after the fifth dose, or during the next pregnancy.

From 7 years of age, only tetanus toxoid with reduced diphtheria toxoid (Td) combinations should be used. Age-appropriate combinations-containing pertussis vaccine with reduced diphtheria toxoid are also available. Only acellular pertussis (aP)-containing vaccines should be used for vaccination of persons aged 7 years and older. """
  * definitionCanonical = Canonical(DAK.DTO.Clientisduefortetanusanddiphtheriaboosterdose)
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
      * description = """ThreeDTPprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """ThreeDTPprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Onetetanusanddiphtheriaboosterdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """Onetetanusanddiphtheriaboosterdosewasadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Clientiscurrentlypregnant"""
      * language = #text/cql-identifier
      * expression = """Clientiscurrentlypregnant"""
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
      * expression = """Should vaccinate client with second tetanus and diphtheria booster dose as three DTP primary series doses and one tetanus and diphtheria booster dose were administered and client is currently pregnant. 
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
      * description = """ThreeDTPprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """ThreeDTPprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Onetetanusanddiphtheriaboosterdosewasadministered"""
      * language = #text/cql-identifier
      * expression = """Onetetanusanddiphtheriaboosterdosewasadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Clientiscurrentlypregnant"""
      * language = #text/cql-identifier
      * expression = """Clientiscurrentlypregnant"""
* action[+]
  * title = "Client is not due for tetanus and diphtheria booster dose"
  * description = """Client is not due for tetanus and diphtheria booster dose
"Immunization recommendation status" = "Not due" (where "Vaccine type" = "Tetanus and diphtheria-containing vaccines")
"""
  * definitionCanonical = Canonical(DAK.DTO.Clientisnotduefortetanusanddiphtheria3dd4669e8e)
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
      * description = """ThreeDTPprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """ThreeDTPprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Twotetanusanddiphtheriaboosterdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Twotetanusanddiphtheriaboosterdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatesttetanusanddiphtheriadosewasadministeaed189e865"""
      * language = #text/cql-identifier
      * expression = """Thelatesttetanusanddiphtheriadosewasadministeaed189e865"""
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
      * expression = """Should not vaccinate client with third tetanus and diphtheria booster dose as the latest tetanus and booster dose was administered less than 1 year ago. This dose should be administered at least 1 year after second booster dose or during next pregnancy. 
Check for any other vaccines due and inform the caregiver of when to come back for third tetanus and diphtheria booster dose."""
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
      * description = """ThreeDTPprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """ThreeDTPprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Twotetanusanddiphtheriaboosterdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Twotetanusanddiphtheriaboosterdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatesttetanusanddiphtheriadosewasadministeaed189e865"""
      * language = #text/cql-identifier
      * expression = """Thelatesttetanusanddiphtheriadosewasadministeaed189e865"""
* action[+]
  * title = "Client is due for tetanus and diphtheria booster dose"
  * description = """Client is due for tetanus and diphtheria booster dose
"Immunization recommendation status" = "Due" (where "Vaccine type" = "Tetanus and diphtheria-containing vaccines")
"""
  * definitionCanonical = Canonical(DAK.DTO.Clientisduefortetanusanddiphtheriaboosterdose)
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
      * description = """ThreeDTPprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """ThreeDTPprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Twotetanusanddiphtheriaboosterdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Twotetanusanddiphtheriaboosterdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatesttetanusanddiphtheriadosewasadministe8bdf44f0dd"""
      * language = #text/cql-identifier
      * expression = """Thelatesttetanusanddiphtheriadosewasadministe8bdf44f0dd"""
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
      * expression = """Should vaccinate client with third tetanus and diphtheria booster dose as the latest tetanus and diphtheria dose was administered more than 1 year ago. This dose should be administered at least 1 year after second booster dose or during next pregnancy. 
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
      * description = """ThreeDTPprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """ThreeDTPprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Twotetanusanddiphtheriaboosterdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Twotetanusanddiphtheriaboosterdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Thelatesttetanusanddiphtheriadosewasadministe8bdf44f0dd"""
      * language = #text/cql-identifier
      * expression = """Thelatesttetanusanddiphtheriadosewasadministe8bdf44f0dd"""
* action[+]
  * title = "Tetanus and diphtheria immunization schedule is complete"
  * description = """Tetanus and diphtheria immunization schedule is complete
"Immunization recommendation status" = "Complete" (where "Vaccine type" = "Tetanus and diphtheria-containing vaccines")

– """
  * definitionCanonical = Canonical(DAK.DTO.Tetanusanddiphtheriaimmunizationschede00410ac37)
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
      * description = """ThreeDTPprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """ThreeDTPprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Threetetanusanddiphtheriaboosterdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Threetetanusanddiphtheriaboosterdoseswereadministered"""
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
      * expression = """Tetanus and diphtheria immunization schedule is complete. Three DTP primary series doses and three tetanus and diphtheria booster doses were administered.
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
      * description = """ThreeDTPprimaryseriesdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """ThreeDTPprimaryseriesdoseswereadministered"""
  * condition[+]
    * kind = #applicability
    * expression
      * description = """Threetetanusanddiphtheriaboosterdoseswereadministered"""
      * language = #text/cql-identifier
      * expression = """Threetetanusanddiphtheriaboosterdoseswereadministered"""

