Instance: DTO.Clinicaljudgementisrequired
InstanceOf: $SGActivityDefinition
Title: "Decision Table Output Clinical judgement is required."
Description: """Create a clinical note
"Immunization recommendation status" = "Further evaluation needed"
"""
Usage: #definition
* publisher = "World Health Organization (WHO)"
* experimental = false
* version = "0.2.0"
* name = "Clinical judgement is required."
* status = #draft
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #CommunicationRequest
* intent = #proposal
* doNotPerform = false

