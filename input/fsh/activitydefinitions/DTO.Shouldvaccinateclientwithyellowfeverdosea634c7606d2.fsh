Instance: DTO.Shouldvaccinateclientwithyellowfeverdosea634c7606d2
InstanceOf: $SGActivityDefinition
Title: "Decision Table Output Should vaccinate client with yellow fever dose as no yellow fever dose was administered, client is within appropriate age range and no live vaccine was administered in the past 4 weeks."
Description: """Check for contraindications.
"""
Usage: #definition
* publisher = "World Health Organization (WHO)"
* experimental = false
* version = "0.2.0"
* name = "Should vaccinate client with yellow fever dose as no yellow fever dose was administered, client is within appropriate age range and no live vaccine was administered in the past 4 weeks."
* status = #draft
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #CommunicationRequest
* intent = #proposal
* doNotPerform = false

