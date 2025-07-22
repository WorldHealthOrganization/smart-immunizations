Instance: DTO.Shouldvaccinateclientwithseconddenguedose6b6fbe4fd0
InstanceOf: $SGActivityDefinition
Title: "Decision Table Output Should vaccinate client with second dengue dose as latest dengue dose was administered more than 6 months ago."
Description: """Check for contraindications.
"""
Usage: #definition
* publisher = "World Health Organization (WHO)"
* experimental = false
* version = "0.2.0"
* name = "Should vaccinate client with second dengue dose as latest dengue dose was administered more than 6 months ago."
* status = #draft
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #CommunicationRequest
* intent = #proposal
* doNotPerform = false

