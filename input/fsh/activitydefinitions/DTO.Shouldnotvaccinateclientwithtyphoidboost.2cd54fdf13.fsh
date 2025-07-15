Instance: DTO.Shouldnotvaccinateclientwithtyphoidboost.2cd54fdf13
InstanceOf: $SGActivityDefinition
Title: "Decision Table Output Should not vaccinate client with typhoid booster dose as live vaccine was administered in the past 4 weeks."
Description: """Check for any other vaccines due and inform the caregiver or the client when the next dose should be administered
"""
Usage: #definition
* publisher = "World Health Organization (WHO)"
* experimental = false
* version = "0.2.0"
* name = "Should not vaccinate client with typhoid booster dose as live vaccine was administered in the past 4 weeks."
* status = #draft
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #CommunicationRequest
* intent = #proposal
* doNotPerform = false

