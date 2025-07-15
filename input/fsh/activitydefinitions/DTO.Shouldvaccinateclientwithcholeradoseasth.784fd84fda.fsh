Instance: DTO.Shouldvaccinateclientwithcholeradoseasth.784fd84fda
InstanceOf: $SGActivityDefinition
Title: "Decision Table Output Should vaccinate client with cholera dose as the latest cholera dose was administered in the last 1 to 6 weeks."
Description: """Check for contraindications.
"""
Usage: #definition
* publisher = "World Health Organization (WHO)"
* experimental = false
* version = "0.2.0"
* name = "Should vaccinate client with cholera dose as the latest cholera dose was administered in the last 1 to 6 weeks."
* status = #draft
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #CommunicationRequest
* intent = #proposal
* doNotPerform = false

