Instance: DAK.DTO.Shouldvaccinateclientwithcholeradoseadfa1f2f5d5
InstanceOf: $SGActivityDefinition
Title: "Decision Table Output Should vaccinate client with cholera dose and restart primary series as the latest cholera dose was administered more than approximately 6 months ago."
Description: """Check for contraindications.
"""
Usage: #definition
* publisher = "World Health Organization (WHO)"
* experimental = false
* version = "0.2.0"
* name = "Should vaccinate client with cholera dose and restart primary series as the latest cholera dose was administered more than approximately 6 months ago."
* status = #draft
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #CommunicationRequest
* intent = #proposal
* doNotPerform = false

