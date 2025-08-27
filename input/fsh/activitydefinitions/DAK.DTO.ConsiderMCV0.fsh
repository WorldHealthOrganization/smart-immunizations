Instance: DAK.DTO.ConsiderMCV0
InstanceOf: $SGActivityDefinition
Title: "Decision Table Output Consider MCV0."
Description: """Create a clinical note.
"Immunization recommendation status" = "Further evaluation needed"
"""
Usage: #definition
* publisher = "World Health Organization (WHO)"
* experimental = false
* version = "0.2.0"
* name = "Consider MCV0."
* status = #draft
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #CommunicationRequest
* intent = #proposal
* doNotPerform = false

