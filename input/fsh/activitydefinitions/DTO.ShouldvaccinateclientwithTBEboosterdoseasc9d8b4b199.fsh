Instance: DTO.ShouldvaccinateclientwithTBEboosterdoseasc9d8b4b199
InstanceOf: $SGActivityDefinition
Title: "Decision Table Output Should vaccinate client with TBE booster dose as the latest TBE dose was administered more than 3 years ago."
Description: """Check for contraindications.
"""
Usage: #definition
* publisher = "World Health Organization (WHO)"
* experimental = false
* version = "0.2.0"
* name = "Should vaccinate client with TBE booster dose as the latest TBE dose was administered more than 3 years ago."
* status = #draft
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #CommunicationRequest
* intent = #proposal
* doNotPerform = false

