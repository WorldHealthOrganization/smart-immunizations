Instance: DTO.Clientshouldfollowdelayed-startdecisionlogic
InstanceOf: $SGActivityDefinition
Title: "Decision Table Output Client should follow delayed-start decision logic"
Description: """Client should follow delayed-start decision logic
"""
Usage: #definition
* publisher = "World Health Organization (WHO)"
* experimental = false
* version = "0.2.0"
* name = "Client should follow delayed-start decision logic"
* status = #draft
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #CommunicationRequest
* intent = #proposal
* doNotPerform = false

