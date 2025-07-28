Instance: DAK.DTO.ShouldvaccinateclientwithMCV2asclientdebac65995
InstanceOf: $SGActivityDefinition
Title: "Decision Table Output Should vaccinate client with MCV2 as client is within appropriate age range and no live vaccine administered in the past 4 weeks."
Description: """Check for contraindications.
"""
Usage: #definition
* publisher = "World Health Organization (WHO)"
* experimental = false
* version = "0.2.0"
* name = "Should vaccinate client with MCV2 as client is within appropriate age range and no live vaccine administered in the past 4 weeks."
* status = #draft
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #CommunicationRequest
* intent = #proposal
* doNotPerform = false

