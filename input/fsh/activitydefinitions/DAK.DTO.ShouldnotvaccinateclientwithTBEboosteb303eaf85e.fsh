Instance: DAK.DTO.ShouldnotvaccinateclientwithTBEboosteb303eaf85e
InstanceOf: $SGActivityDefinition
Title: "Decision Table Output Should not vaccinate client with TBE booster dose as the latest TBE dose was administered less than 3 years ago."
Description: """Check for contraindications.
"""
Usage: #definition
* publisher = "World Health Organization (WHO)"
* experimental = false
* version = "0.2.0"
* name = "Should not vaccinate client with TBE booster dose as the latest TBE dose was administered less than 3 years ago."
* status = #draft
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #CommunicationRequest
* intent = #proposal
* doNotPerform = false

