Instance: DTO.ShouldvaccinateclientwithsecondHPVdoseascb190c19143
InstanceOf: $SGActivityDefinition
Title: "Decision Table Output Should vaccinate client with second HPV dose as client is immunocompromised and the latest HPV dose was administered more than 6 months ago."
Description: """Check for contraindications
"""
Usage: #definition
* publisher = "World Health Organization (WHO)"
* experimental = false
* version = "0.2.0"
* name = "Should vaccinate client with second HPV dose as client is immunocompromised and the latest HPV dose was administered more than 6 months ago."
* status = #draft
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #CommunicationRequest
* intent = #proposal
* doNotPerform = false

