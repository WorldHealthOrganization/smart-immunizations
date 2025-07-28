Instance: DAK.DTO.ShouldvaccinateclientwithfirstIPVdosee7aea6cd55
InstanceOf: $SGActivityDefinition
Title: "Decision Table Output Should vaccinate client with first IPV dose as client is within appropriate age range and IPV dose was not administered."
Description: """Check for contraindications.
"""
Usage: #definition
* publisher = "World Health Organization (WHO)"
* experimental = false
* version = "0.2.0"
* name = "Should vaccinate client with first IPV dose as client is within appropriate age range and IPV dose was not administered."
* status = #draft
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #CommunicationRequest
* intent = #proposal
* doNotPerform = false

