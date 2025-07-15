Instance: DTO.Shouldvaccinateclientwithcholeradoseandr.1cefabb79a
InstanceOf: $SGActivityDefinition
Title: "Decision Table Output Should vaccinate client with cholera dose and restart primary series as the latest cholera dose was administered more than 6 weeks ago."
Description: """Check for contraindications.
"""
Usage: #definition
* publisher = "World Health Organization (WHO)"
* experimental = false
* version = "0.2.0"
* name = "Should vaccinate client with cholera dose and restart primary series as the latest cholera dose was administered more than 6 weeks ago."
* status = #draft
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #CommunicationRequest
* intent = #proposal
* doNotPerform = false

