Instance: DT.IMMZ.D2.DT.DTP.Pregnancystartingwith3doses
InstanceOf: DD.IMMZ.D2.DT.DTP.Pregnancystartingwith3doses
Title: "Decision Table Determine required vaccinations"
Description: """Determine required vaccinations """
Usage: #definition
* meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareableplandefinition"
* meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishableplandefinition"
* library = Canonical(DTs.DTP)
* extension[+]
  * url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-knowledgeCapability"
  * valueCode = #computable
* version = "{version}"
* name = "DT.IMMZ.D2.DT.DTP.Pregnancystartingwith3doses"
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

Pregnant women who have received only 3 doses of tetanus-containing vaccines during childhood without booster doses should receive 2 doses of tetanus-containing vaccines at the earliest opportunity during pregnancy with a minimal interval of 4 weeks between doses and the second dose at least 2 weeks before giving birth. To provide lifelong protection, a sixth dose would be needed at least 1 year after the fifth dose, or during the next pregnancy.

From 7 years of age, only tetanus toxoid with reduced diphtheria toxoid (Td) combinations should be used. Age-appropriate combinations-containing pertussis vaccine with low-dose diphtheria antigen are also available. Only aP-containing vaccines should be used for vaccination of persons aged 7 years and older. """
  * definitionCanonical = Canonical(DTO.Clientisduefortetanusanddiphtheriaboosterdose)
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
      * expression = """Should vaccinate client with first tetanus and diphtheria booster dose as three DTP primary series doses were already administered and client is currently pregnant. 
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
* action[+]
  * title = "Client is not due for tetanus and diphtheria booster dose"
  * description = """Client is not due for tetanus and diphtheria booster dose
"Immunization recommendation status" = "Not due" (where "Vaccine type" = "Tetanus and diphtheria-containing vaccines")
"""
  * definitionCanonical = Canonical(DTO.Clientisnotduefortetanusanddiphtheriaboosterdose)
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
      * expression = """Should not vaccinate client with second tetanus and diphtheria booster dose as the latest tetanus and booster dose was administered less than 4 weeks ago. 
Check for any other vaccines due and inform the caregiver of when to come back for second tetanus and diphtheria booster dose."""
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
* action[+]
  * title = "Client is due for tetanus and diphtheria booster dose"
  * description = """Client is due for tetanus and diphtheria booster dose
"Immunization recommendation status" = "Due" (where "Vaccine type" = "Tetanus and diphtheria-containing vaccines")
"""
  * definitionCanonical = Canonical(DTO.Clientisduefortetanusanddiphtheriaboosterdose)
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
      * expression = """Should vaccinate client with second tetanus and diphtheria booster dose as client is currently pregnant and the latest tetanus and diphtheria dose was administered more than 4 weeks ago. 
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
* action[+]
  * title = "Client is not due for tetanus and diphtheria booster dose"
  * description = """Client is not due for tetanus and diphtheria booster dose
"Immunization recommendation status" = "Not due" (where "Vaccine type" = "Tetanus and diphtheria-containing vaccines")
"""
  * definitionCanonical = Canonical(DTO.Clientisnotduefortetanusanddiphtheriaboosterdose)
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
* action[+]
  * title = "Client is due for tetanus and diphtheria booster dose"
  * description = """Client is due for tetanus and diphtheria booster dose
"Immunization recommendation status" = "Due" (where "Vaccine type" = "Tetanus and diphtheria-containing vaccines")
"""
  * definitionCanonical = Canonical(DTO.Clientisduefortetanusanddiphtheriaboosterdose)
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
* action[+]
  * title = "Tetanus and diphtheria immunization schedule is complete"
  * description = """Tetanus and diphtheria immunization schedule is complete
"Immunization recommendation status" = "Complete" (where "Vaccine type" = "Tetanus and diphtheria-containing vaccines")

– """
  * definitionCanonical = Canonical(DTO.Tetanusanddiphtheriaimmunizationscheduleiscomplete)
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

