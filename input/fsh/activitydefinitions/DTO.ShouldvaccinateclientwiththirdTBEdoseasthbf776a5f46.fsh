Instance: DTO.ShouldvaccinateclientwiththirdTBEdoseasthbf776a5f46
InstanceOf: $SGActivityDefinition
Title: "Decision Table Output Should vaccinate client with third TBE dose as the latest dose was administered more than 9 months ago."
Description: """Check for contraindications.
"""
Usage: #definition
* publisher = "World Health Organization (WHO)"
* experimental = false
* version = "0.2.0"
* name = "Should vaccinate client with third TBE dose as the latest dose was administered more than 9 months ago."
* status = #draft
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #CommunicationRequest
* intent = #proposal
* doNotPerform = false

