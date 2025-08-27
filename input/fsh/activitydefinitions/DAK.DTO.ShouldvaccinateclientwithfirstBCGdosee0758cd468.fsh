Instance: DAK.DTO.ShouldvaccinateclientwithfirstBCGdosee0758cd468
InstanceOf: $SGActivityDefinition
Title: "Decision Table Output Should vaccinate client with first BCG dose as no BCG dose was administered, clients TB test result is negative and no live vaccine was administered in the past 4 weeks."
Description: """Check for contraindications.
"""
Usage: #definition
* publisher = "World Health Organization (WHO)"
* experimental = false
* version = "0.2.0"
* name = "Should vaccinate client with first BCG dose as no BCG dose was administered, clients TB test result is negative and no live vaccine was administered in the past 4 weeks."
* status = #draft
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #CommunicationRequest
* intent = #proposal
* doNotPerform = false

