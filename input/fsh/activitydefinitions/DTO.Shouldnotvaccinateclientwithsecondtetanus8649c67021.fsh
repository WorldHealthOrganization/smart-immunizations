Instance: DTO.Shouldnotvaccinateclientwithsecondtetanus8649c67021
InstanceOf: $SGActivityDefinition
Title: "Decision Table Output Should not vaccinate client with second tetanus and diphtheria booster dose as the latest tetanus and diphtheria dose was administered less than 1 year ago."
Description: """Check for any other vaccines due and inform the caregiver of when to come back for second tetanus and diphtheria booster dose.
"""
Usage: #definition
* publisher = "World Health Organization (WHO)"
* experimental = false
* version = "0.2.0"
* name = "Should not vaccinate client with second tetanus and diphtheria booster dose as the latest tetanus and diphtheria dose was administered less than 1 year ago."
* status = #draft
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #CommunicationRequest
* intent = #proposal
* doNotPerform = false

