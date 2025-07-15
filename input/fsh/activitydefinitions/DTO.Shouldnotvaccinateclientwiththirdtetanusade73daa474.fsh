Instance: DTO.Shouldnotvaccinateclientwiththirdtetanusade73daa474
InstanceOf: $SGActivityDefinition
Title: "Decision Table Output Should not vaccinate client with third tetanus and diphtheria booster dose as clients age is less than 9 years."
Description: """Check for any vaccines due, and inform the caregiver of when to come back for third tetanus and diphtheria booster dose.
"""
Usage: #definition
* publisher = "World Health Organization (WHO)"
* experimental = false
* version = "0.2.0"
* name = "Should not vaccinate client with third tetanus and diphtheria booster dose as clients age is less than 9 years."
* status = #draft
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #CommunicationRequest
* intent = #proposal
* doNotPerform = false

