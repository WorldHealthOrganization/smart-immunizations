Instance: DAK.DTO.ShouldvaccinateclientwithfirstBCGdose7cd1027972
InstanceOf: $SGActivityDefinition
Title: "Decision Table Output Should vaccinate client with first BCG dose as no BCG dose was administered, client is immunologically stable and no live vaccine was administered."
Description: """Check for contraindications.
"""
Usage: #definition
* publisher = "World Health Organization (WHO)"
* experimental = false
* version = "0.2.0"
* name = "Should vaccinate client with first BCG dose as no BCG dose was administered, client is immunologically stable and no live vaccine was administered."
* status = #draft
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #CommunicationRequest
* intent = #proposal
* doNotPerform = false

