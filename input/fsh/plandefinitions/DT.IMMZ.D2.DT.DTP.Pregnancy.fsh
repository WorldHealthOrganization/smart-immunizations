Instance: DT.IMMZ.D2.DT.DTP.Pregnancy
InstanceOf: DD-{dt_id}
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
* name = "DT.IMMZ.D2.DT.DTP.Pregnancy"
* status = #draft
* experimental = false
* publisher = "WHO"

* relatedArtifact[+]
  * type = #citation
  * citation = """WHO recommendations for routine immunization – summary tables (March 2023) (1)
Tetanus vaccines: WHO position paper (February 2017) (7)"""

* action[+]
  * title = "Client should follow 'delayed or interrupted series' decision logic"
  * description = """Client should follow 'delayed or interrupted series' decision logic

If tetanus vaccination is started during adolescence or adulthood, including pregnancy, a total of only 5 appropriately spaced doses are required to obtain lifelong protection. """
  * definitionCanonical = Canonical(DTO.Clientshouldfollowdelayedorinterruptedserfc00accaf2)
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
      * expression = """The client has a delayed start. Please follow the 'delayed or interrupted' schedule."""
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
  * title = "Client should follow 'pregnancy starting with 3 doses' decision logic"
  * description = """Client should follow 'pregnancy starting with 3 doses' decision logic

Pregnant women who have received only 3 doses of tetanus-containing vaccines during childhood without booster doses should receive 2 doses of tetanus-containing vaccines at the earliest opportunity during pregnancy with a minimal interval of 4 weeks between doses and the second dose at least 2 weeks before giving birth. To provide lifelong protection, a sixth dose would be needed at least 1 year after the fifth dose, or during the next pregnancy. """
  * definitionCanonical = Canonical(DTO.Clientshouldfollowpregnancystartingwith3dee3e2c3bc3)
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
      * expression = """The client has received 3 tetanus-contzining vaccine doses during childhood. Please follow the 'pregnancy starting with 3 doses' schedule."""
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
  * title = "Client should follow 'pregnancy starting with 4 doses' decision logic"
  * description = """Client should follow 'pregnancy starting with 4 doses' decision logic

Pregnant women who received 4 tetanus-containing vaccine doses during childhood or pre-adulthood need only 1 booster dose, which should be given at the first opportunity. To provide lifelong protection, a sixth dose would be needed at least 1 year after the fifth dose, or duing the next pregnancy. """
  * definitionCanonical = Canonical(DTO.Clientshouldfollowpregnancystartingwith4d0e10237d53)
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
      * expression = """The client has received 4 tetanus-containing vaccines doses during childhood or pre-adulthood. Please follow the 'pregnancy starting with 4 doses' schedule."""
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

Pregnant women and their newborn infants are protected from birth-associated tetanus if the mother received either 6 tetanus-containing vaccine doses during childhood or 5 doses if first vaccinated during adolescence/adulthood (documented by card, immunization registry and/or history) before the time of reproductive age.
 
In countries where maternal and neonatal tetanus remains a public health problem, pregnant women for whom reliable information on previous tetanus vaccinations is not available should receive at least 2 doses of tetanus-containing vaccines, preferably tetanus toxoid with reduced diphtheria toxoid (Td), with an interval of at least 4 weeks between doses and the second dose at least 2 weeks before the birth. To ensure protection for a minimum of 5 years, a third dose should be given at least 6 months later. A fourth and fifth dose should be given at intervals of at least 1 year, or in subsequent pregnancies, to ensure lifelong protection. """
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
      * expression = """Tetanus and diphtheria immunization schedule is complete.Three DTP primary series doses and two tetanus and diphtheria booster doses were administered. There is no need for any additional tetanus and diphtheria doses.
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
* action[+]
  * title = "Tetanus and diphtheria immunization schedule is complete"
  * description = """Tetanus and diphtheria immunization schedule is complete
"Immunization recommendation status" = "Complete" (where "Vaccine type" = "Tetanus and diphtheria-containing vaccines")

Pregnant women who have received only 3 doses of tetanus-containing vaccines during childhood without booster doses should receive 2 doses of tetanus-containing vaccines at the earliest opportunity during pregnancy with a minimal interval of 4 weeks between doses and the second dose at least 2 weeks before giving birth. Although 1 booster dose should result in a rapid increase in antibody, the level of tetanus-specific antibodies in women who received only a 3-dose primary series during infancy is similar to that of unimmunized individuals 15 years post-immunization. Therefore, 2 doses are recommended to ensure a total of 5 doses before delivery. Women who received 4 tetanus-containing vaccine doses during childhood or pre-adulthood need only 1 booster dose, which should be given at the first opportunity. In both scenarios, to provide lifelong protection, a sixth dose would be needed at least 1 year after the fifth dose. """
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
      * expression = """Tetanus and diphtheria immunization schedule is complete.Three DTP primary series doses and three tetanus and diphtheria booster doses were administered. There is no need for any additional tetanus and diphtheria doses.
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

