Instance: DT.IMMZ.D2.DT.DTP.Delayedorinterruptedseries
InstanceOf: DD.IMMZ.D2.DT.DTP.Delayedorinterruptedseries
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
* name = "DT.IMMZ.D2.DT.DTP.Delayedorinterruptedseries"
* status = #draft
* experimental = false
* publisher = "WHO"

* relatedArtifact[+]
  * type = #citation
  * citation = """WHO recommendations for routine immunization – summary tables (March 2023) (1)
Protecting all against tetanus (December 2019) (5)"""
* relatedArtifact[+]
  * type = #citation
  * citation = """WHO recommendations for routine immunization – summary tables (March 2023) (1)
Pertussis  vaccines: WHO position paper (August 2015) (6)"""

* action[+]
  * title = "Client is due for DTP vaccination"
  * description = """Client is due for DTP vaccination
"Immunization recommendation status" = "Due" (where "Vaccine type" = "DTP-containing vaccines")

Delayed or interrupted DTP-containing series: for children whose vaccination series has been interrupted, the series should be resumed without repeating previous doses. Children aged between 1 year and 7 years who have not previously been vaccinated should receive 3 doses of vaccine following a 0, 1, 6-month schedule. Two subsequent booster doses using tetanus toxoid with reduced diphtheria toxoid (Td) or Td with acellular pertussis (TdaP) combination vaccines are needed with an interval of at least 1 year between doses.

For those starting a tetanus and diphtheria-containing vaccination series in adolescence or adulthood: from 7 years of age only Td combinations should be used. Age-appropriate combinations-containing pertussis vaccine with reduced diphtheria toxoid are also available.
If tetanus vaccination is started during adolescence or adulthood, a total of only 5 appropriately spaced doses are required to obtain lifelong protection.

Pregnant women and their newborn infants are protected from birth-associated tetanus if the mother received either 6 tetanus-containing vaccine doses during childhood or 5 doses if first vaccinated during adolescence/adulthood (documented by card, immunization registry and/or history) before the time of reproductive age. Vaccination history should be verified in order to determine whether a dose of tetanus-containing vaccine is needed in the current pregnancy.

In countries where maternal and neonatal tetanus remains a public health problem, pregnant women for whom reliable information on previous tetanus vaccinations is not available should receive at least 2 doses of tetanus-containing vaccines, preferably Td, with an interval of at least 4 weeks between doses and the second dose at least 2 weeks before the birth. To ensure protection for a minimum of 5 years, a third dose should be given at least 6 months later. A fourth and fifth dose should be given at intervals of at least 1 year, or in subsequent pregnancies, in order to ensure lifelong protection.

In countries where maternal and neonatal tetanus is not a public health problem (low prevalence/high-income settings), policy-makers may choose not to include tetanus vaccination among antenatal care interventions if effective tetanus immunization programmes and good post-exposure prophylaxis exist outside of pregnancy. In countries where maternal and neonatal tetanus is not a public health problem, the strategy may be to protect against tetanus via the infant (3 DTP-containing vaccinations) and boosters programme. For more information, see the WHO guide Protecting all against tetanus (5).

For children aged under 7 years, diphtheria and tetanus toxoids and whole-cell pertussis (DTwP) or DTaP combinations may be used. For children aged 4 years and older, Td-containing vaccine may be used and is preferred. For children aged 7 years and older, only Td combinations should be used. Age-appropriate combinations-containing pertussis vaccine with low-dose diphtheria antigen are also available. Only aP-containing vaccines should be used for vaccination of persons aged 7 years and older. """
  * definitionCanonical = Canonical(DTO.ClientisdueforDTPvaccination)
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
      * expression = """Should vaccinate client with first DTP dose as no DTP doses were administered and client's age is more than 1 year. 
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
  * title = "Client is not due for DTP vaccination"
  * description = """Client is not due for DTP vaccination
"Immunization recommendation status" = "Not due" (where "Vaccine type" = "DTP-containing vaccines")
"""
  * definitionCanonical = Canonical(DTO.ClientisnotdueforDTPvaccination)
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
      * expression = """Should not vaccinate client with second DTP dose as the latest DTP dose was administered less than 4 weeks ago. 
Check for any other vaccines due and inform the caregiver of when to come back for second DTP dose"""
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
  * title = "Client is due for DTP vaccination"
  * description = """Client is due for DTP vaccination
"Immunization recommendation status" = "Due" (where "Vaccine type" = "DTP-containing vaccines")
"""
  * definitionCanonical = Canonical(DTO.ClientisdueforDTPvaccination)
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
      * expression = """Should vaccinate client with second DTP dose as the latest DTP dose was administered more than 4 weeks ago.
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
  * title = "Client is not due for DTP vaccination"
  * description = """Client is not due for DTP vaccination
"Immunization recommendation status" = "Not due" (where "Vaccine type" = "DTP-containing vaccines")
"""
  * definitionCanonical = Canonical(DTO.ClientisnotdueforDTPvaccination)
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
      * expression = """Should not vaccinate client with third DTP dose the latest DTP dose was administered less than 6 months ago. 
Check for any other vaccines due and inform the caregiver of when to come back for third DTP dose."""
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
  * title = "Client is due for DTP vaccination"
  * description = """Client is due for DTP vaccination
"Immunization recommendation status" = "Due" (where "Vaccine type" = "DTP-containing vaccines")
"""
  * definitionCanonical = Canonical(DTO.ClientisdueforDTPvaccination)
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
      * expression = """Should vaccinate client with third DTP dose as the latest DTP dose was administered more than 6 months ago. 
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
  * title = "Primary DTP series is complete. Client is not due for tetanus and diphtheria booster dose"
  * description = """Primary DTP series is complete. Client is not due for tetanus and diphtheria booster dose
"Immunization recommendation status" = "Not due" (where "Vaccine type" = "Tetanus and diphtheria-containing vaccines")
"Completed the primary vaccination series" = TRUE (where "Vaccine type" = "DTP-containing vaccines")
"""
  * definitionCanonical = Canonical(DTO.PrimaryDTPseriesiscomplete.Clientisnotdue96abddfbd3)
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
      * expression = """Should not vaccinate client with first tetanus and diphtheria booster dose as the latest DTP dose was administered less than 1 year ago. 
Check for any other vaccines due and inform the caregiver of when to come back for first tetanus and diphtheria booster dose."""
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
  * title = "Primary DTP series is complete. Client is due for tetanus and diphtheria booster dose"
  * description = """Primary DTP series is complete. Client is due for tetanus and diphtheria booster dose
"Immunization recommendation status" = "Due" (where "Vaccine type" = "Tetanus and diphtheria-containing vaccines")
"Completed the primary vaccination series" = TRUE (where "Vaccine type" = "DTP-containing vaccines")
"""
  * definitionCanonical = Canonical(DTO.PrimaryDTPseriesiscomplete.Clientisdueford01b3687e4)
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
      * expression = """Should vaccinate client with first tetanus and diphtheria booster dose as the latest DTP dose was administered more than 1 year ago. 
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
      * expression = """Should not vaccinate client with second tetanus and diphtheria booster dose as the latest tetanus and diphtheria dose was administered less than 1 year ago. 
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
      * expression = """Should vaccinate client with second tetanus and diphtheria booster dose as the latest tetanus and diphtheria dose was administered more than 1 year ago. 
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
"""
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
      * expression = """Tetanus and diphtheria immunization schedule is complete. Three DTP primary series doses and two tetanus and diphtheria booster doses were administered.
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
  * title = "Primary DTP series is complete. Client is not due for pertussis booster dose"
  * description = """Primary DTP series is complete. Client is not due for pertussis booster dose
"Immunization recommendation status" = "Not due" (where "Vaccine type" = "Pertussis-containing vaccines")
"Completed the primary vaccination series" = TRUE (where "Vaccine type" = "DTP-containing vaccines")

The duration of protection following primary immunization varies considerably depending upon factors such as local epidemiology, vaccination schedule and choice of vaccine. Therefore, a booster dose is recommended for children aged 1–6 years, preferably during the second year of life (≥ 6 months after last primary dose), unless otherwise indicated by local epidemiology; the contact could also be used to catch up on any missed doses of other vaccines.

This schedule should provide protection for at least 6 years for countries using wP-containing vaccine. For countries using aP-containing vaccine, protection may decline appreciably before 6 years of age. Only aP-containing vaccines should be used for vaccination of persons aged 7 years and older.

Although a booster dose in adolescence was shown to decrease disease in adolescents, this is not generally recommended as a means of controlling pertussis in infants.
A decision to introduce adolescent and/or adult boosters should only be taken after careful assessment of local epidemiology, estimation of the contribution of adolescents as source of infections of young infants, and selection of adolescents and/or adults as target groups for vaccination. Decisions concerning such programmes should be based on the incidence and cost–effectiveness data. High coverage of routine immunization in infants must be in place prior to the introduction of vaccination of adolescents and adults. """
  * definitionCanonical = Canonical(DTO.PrimaryDTPseriesiscomplete.Clientisnotduef5aeffc5ac)
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
      * expression = """Should not vaccinate client with pertussis booster dose as the latest DTP dose was administered less than 6 months ago. 
Check for any other vaccines due and inform the caregiver of when to come back for pertussis booster dose."""
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
  * title = "Primary DTP series is complete. Client is due for pertussis booster dose"
  * description = """Primary DTP series is complete. Client is due for pertussis booster dose
"Immunization recommendation status" = "Due" (where "Vaccine type" = "Pertussis-containing vaccines")
"Completed the primary vaccination series" = TRUE (where "Vaccine type" = "DTP-containing vaccines")
"""
  * definitionCanonical = Canonical(DTO.PrimaryDTPseriesiscomplete.Clientisdueforeb4b6446d8)
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
      * expression = """Should vaccinate client with pertussis booster dose as no pertussis booster doses were administered, client is within appropriate age range and the latest DTP dose was administered more than 6 months ago. 
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
  * title = "Pertussis immunization schedule is complete"
  * description = """Pertussis immunization schedule is complete
"Immunization recommendation status" = "Complete" (where "Vaccine type" = "Pertussis-containing vaccines")
"""
  * definitionCanonical = Canonical(DTO.Pertussisimmunizationscheduleiscomplete)
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
      * expression = """Pertussis immunization schedule is complete. Three DTP primary series doses were administered.
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
  * title = "Pertussis immunization schedule is complete"
  * description = """Pertussis immunization schedule is complete
"Immunization recommendation status" = "Complete" (where "Vaccine type" = "Pertussis-containing vaccines")
"""
  * definitionCanonical = Canonical(DTO.Pertussisimmunizationscheduleiscomplete)
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
      * expression = """Pertussis immunization schedule is complete. Three DTP primary series doses and one pertussis booster dose were administered.
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

