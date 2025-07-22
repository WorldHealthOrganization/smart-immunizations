Instance: DTO.RecommendtheclienttoperformTBinfectiontesting
InstanceOf: $SGActivityDefinition
Title: "Decision Table Output Recommend the client to perform TB infection testing."
Description: """Re-evaluate client once the test result is available.
"""
Usage: #definition
* publisher = "World Health Organization (WHO)"
* experimental = false
* version = "0.2.0"
* name = "Recommend the client to perform TB infection testing."
* status = #draft
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #CommunicationRequest
* intent = #proposal
* doNotPerform = false

