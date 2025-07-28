Instance: DAK.DTO.DonotvaccinateclientwithBCGiftheclienbcecd0c70f
InstanceOf: $SGActivityDefinition
Title: "Decision Table Output Do not vaccinate client with BCG if the client had previous allergic reaction to any component of the vaccine"
Description: """Do not vaccinate client with BCG if the client had previous allergic reaction to any component of the vaccine
"""
Usage: #definition
* publisher = "World Health Organization (WHO)"
* experimental = false
* version = "0.2.0"
* name = "Do not vaccinate client with BCG if the client had previous allergic reaction to any component of the vaccine"
* status = #draft
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #CommunicationRequest
* intent = #proposal
* doNotPerform = false

