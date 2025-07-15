Instance: DTO.MCV0wasadministered.
InstanceOf: $SGActivityDefinition
Title: "Decision Table Output MCV0 was administered."
Description: """Check measles routine immunization schedule.
"""
Usage: #definition
* publisher = "World Health Organization (WHO)"
* experimental = false
* version = "0.2.0"
* name = "MCV0 was administered."
* status = #draft
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #CommunicationRequest
* intent = #proposal
* doNotPerform = false

