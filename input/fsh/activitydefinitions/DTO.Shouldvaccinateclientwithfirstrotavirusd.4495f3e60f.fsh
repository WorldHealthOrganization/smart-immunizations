Instance: DTO.Shouldvaccinateclientwithfirstrotavirusd.4495f3e60f
InstanceOf: $SGActivityDefinition
Title: "Decision Table Output Should vaccinate client with first rotavirus dose as no rotavirus doses were administered, clients age is within appropriate age range and no live vaccine was administered in last 4 weeks."
Description: """Check for contraindications.
"""
Usage: #definition
* publisher = "World Health Organization (WHO)"
* experimental = false
* version = "0.2.0"
* name = "Should vaccinate client with first rotavirus dose as no rotavirus doses were administered, clients age is within appropriate age range and no live vaccine was administered in last 4 weeks."
* status = #draft
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #CommunicationRequest
* intent = #proposal
* doNotPerform = false

