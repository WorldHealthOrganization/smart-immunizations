Instance: DTO.ShouldvaccinateclientwiththirdHibdoseasclcdd8081fca
InstanceOf: $SGActivityDefinition
Title: "Decision Table Output Should vaccinate client with third Hib dose as client is within appropriate age range and the latest Hib dose was administered more than 4 weeks ago."
Description: """Check for contraindications.
"""
Usage: #definition
* publisher = "World Health Organization (WHO)"
* experimental = false
* version = "0.2.0"
* name = "Should vaccinate client with third Hib dose as client is within appropriate age range and the latest Hib dose was administered more than 4 weeks ago."
* status = #draft
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #CommunicationRequest
* intent = #proposal
* doNotPerform = false

