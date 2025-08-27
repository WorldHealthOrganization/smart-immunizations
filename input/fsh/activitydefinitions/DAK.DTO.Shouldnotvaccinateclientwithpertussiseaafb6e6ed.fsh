Instance: DAK.DTO.Shouldnotvaccinateclientwithpertussiseaafb6e6ed
InstanceOf: $SGActivityDefinition
Title: "Decision Table Output Should not vaccinate client with pertussis booster dose as the latest DTP dose was administered less than 6 months ago."
Description: """Check for any other vaccines due and inform the caregiver of when to come back for pertussis booster dose.
"""
Usage: #definition
* publisher = "World Health Organization (WHO)"
* experimental = false
* version = "0.2.0"
* name = "Should not vaccinate client with pertussis booster dose as the latest DTP dose was administered less than 6 months ago."
* status = #draft
* contact[+]
  * telecom[+]
    * system = #url
    * value = "https://who.int"
* kind = #CommunicationRequest
* intent = #proposal
* doNotPerform = false

